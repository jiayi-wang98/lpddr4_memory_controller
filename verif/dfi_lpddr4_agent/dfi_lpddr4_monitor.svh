  class dfi_lpddr4_monitor extends uvm_monitor;
    virtual dfi_lpddr4_interface intf;
    uvm_analysis_port #(dfi_cmd_t) mon_cmd_port;
    logic [5:0] ca;
    logic [2:0] bank;
    dfi_cmd_t m_ddr;
    bit [3:0] state=0;
    bit [3:0] next_state;
    //0: init/idle
    //1: precharge_high
    //2: RFU
    //3: activate_1_high
    //4: activate_1_low
    //5: activate_2_high
    //6: RFU
    //7: read/write/masked_write_high
    //8: read/write/masked_write_low
    //9: cas_2_high
    //10 RFU
    //11 refresh_high
    //12 RFU
    //13 error
    //14 15: RFU

    `uvm_component_utils(dfi_lpddr4_monitor)

    function new(string name="dfi_lpddr4_monitor", uvm_component parent);
      super.new(name, parent);
      mon_cmd_port = new("mon_cmd_port", this);
    endfunction

    task run_phase(uvm_phase phase);
      this.mon_trans();
    endtask

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
    endfunction

    function void set_interface(virtual dfi_lpddr4_interface intf);
      if(intf == null)
        `uvm_error("GETVIF", "dfi interface handle is NULL, please check if target interface has been intantiated")
      else
        this.intf = intf;
    endfunction

    task update_state(bit cs_x, bit[5:0] ca_x);
      ca=ca_x;
      bank=ca[2:0];
      case(this.state)
        //idle
        0: begin
          if(cs_x===1'b1) begin
            m_ddr.t=$time;
            casez(ca[4:0])
            //precharge
            5'b10000: begin
              next_state=1;
              if(ca[5]===1'b0) m_ddr.cmd=PRECHARGE;
              else if(ca[5]===1'b1) m_ddr.cmd=PRECHARGE_ALL;
            end
            //act_1
            5'b???01: begin
              next_state=3;
              m_ddr.cmd=ACTIVATE;
              m_ddr.address[15:12]=ca[5:2];
            end
            //read
            5'b00010: begin
              m_ddr.cmd=COL_READ;
              next_state=7;
            end
            //write
            5'b00100: begin
              m_ddr.cmd=COL_WRITE;
              next_state=7;
            end
            //masked-write
            5'b01100: begin
              m_ddr.cmd=MASKED_WRITE;
              next_state=7;
            end
            //refresh
            5'b01000:begin
              if(ca[5]===1'b1) begin
                m_ddr.cmd=REFRESH_ALL;
                next_state=11;
              end else begin
                `uvm_error("COMMAND ERROR", $sformatf("REFRESH_ALL ca[5]= %0b, should be 1.",ca[5]))
              end
            end
            default: begin
              `uvm_error("COMMAND ERROR", $sformatf("CMD ca= 0b%b in IDLE STATE with cs=1",ca))
            end
            endcase
          end else begin
            next_state=0;
          end
        end
        //precharge_high
        1:begin
          if(cs_x===1'b0) begin
            m_ddr.bank=bank;
            next_state=0;
            mon_cmd_port.write(m_ddr);
            `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI LPDDR4 cmd %s at bank %d", m_ddr.t,DDR_CMD[m_ddr.cmd],m_ddr.bank), UVM_HIGH)
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b in second command cycle",cs_x))
          end
        end
        //activate_1_high
        3:begin
          if(cs_x===1'b0) begin
            m_ddr.bank=bank;
            m_ddr.address[16]=ca[3];
            m_ddr.address[11:10]=ca[5:4];
            next_state=4;
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b in second command cycle",cs_x))
          end
        end
        //activate_1_low
        4:begin
          if(cs_x===1'b1 && ca[1:0]==2'b11) begin
            m_ddr.address[9:6]=ca[5:2];
            next_state=5;
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b, ca=0b%b in act_2 cycle",cs_x,ca))
          end
        end
        //activate_2_high
        5:begin
          if(cs_x===1'b0) begin
            m_ddr.address[5:0]=ca[5:0];
            next_state=0;
            mon_cmd_port.write(m_ddr);
            `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI LPDDR4 cmd %s at bank %d,row 0x%0h", m_ddr.t,DDR_CMD[m_ddr.cmd],m_ddr.bank,m_ddr.address), UVM_HIGH)
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b in second command cycle",cs_x))
          end
        end
        //rw/mw_high
        7:begin
          if(cs_x===1'b0) begin
            m_ddr.bank=bank;
            m_ddr.address[9]=ca[4];
            if(ca[5]===1'b1) begin
              case(m_ddr.cmd)
                COL_READ: m_ddr.cmd=COL_READ_AP;
                COL_WRITE: m_ddr.cmd=COL_WRITE_AP;
                MASKED_WRITE: m_ddr.cmd=MASKED_WRITE_AP;
                default: `uvm_error("COMMAND ERROR", $sformatf("current command %s in rw/mw state",DDR_CMD[m_ddr.cmd]))
              endcase
            end
            next_state=8;
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b in second command cycle",cs_x))
          end
        end
        //rw/mw_low
        8:begin
          if(cs_x===1'b1 && ca[4:0]==5'b10010) begin
            m_ddr.address[8]=ca[5];
            next_state=9;
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b, ca=0b%b in cas_2 cycle",cs_x,ca))
          end
        end
        //cas-2_high
        9:begin
          if(cs_x===1'b0) begin
            m_ddr.address[7:2]=ca[5:0];
            m_ddr.address[1:0]=2'd0;
            m_ddr.address[16:10]=7'd0;
            next_state=0;
            mon_cmd_port.write(m_ddr);
            `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI LPDDR4 cmd %s at bank %d,col 0x%0h", m_ddr.t,DDR_CMD[m_ddr.cmd],m_ddr.bank,m_ddr.address), UVM_HIGH)
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b in second command cycle",cs_x))
          end
        end
        //refresh_high
        11:begin
          if(cs_x===1'b0) begin
            m_ddr.bank=bank;
            next_state=0;
            mon_cmd_port.write(m_ddr);
            `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI LPDDR4 cmd %s", m_ddr.t,DDR_CMD[m_ddr.cmd]), UVM_HIGH)
          end else begin
            `uvm_error("COMMAND ERROR", $sformatf("cs= %0b in second command cycle",cs_x))
          end
        end

        default: begin
          `uvm_error("COMMAND ERROR", "UNEXPECTED STATE")
        end
      endcase
      this.state=next_state;
    endtask

    task mon_trans();
      bit cs_0,cs_1,cs_2,cs_3;
      bit [5:0] ca_0,ca_1,ca_2,ca_3;
      forever begin
        @(posedge intf.clk);
        cs_0=intf.dfi_phase0_lpddr4_if.mon_ck.cs;
        ca_0=intf.dfi_phase0_lpddr4_if.mon_ck.ca;

        cs_1=intf.dfi_phase1_lpddr4_if.mon_ck.cs;
        ca_1=intf.dfi_phase1_lpddr4_if.mon_ck.ca;

        cs_2=intf.dfi_phase2_lpddr4_if.mon_ck.cs;
        ca_2=intf.dfi_phase2_lpddr4_if.mon_ck.ca;

        cs_3=intf.dfi_phase3_lpddr4_if.mon_ck.cs;
        ca_3=intf.dfi_phase3_lpddr4_if.mon_ck.ca;

        this.update_state(cs_0,ca_0);
        this.update_state(cs_1,ca_1);
        this.update_state(cs_2,ca_2);
        this.update_state(cs_3,ca_3);
      end
    endtask
  endclass: dfi_lpddr4_monitor