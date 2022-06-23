package multiplexer_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  `include "tb_defs.svh"

  // static variables shared by resources
  semaphore run_stop_flags = new();
  string DDR_CMD[7]={"PRECHARGE","ACTIVATE","READ","WRITE","MASKED WRITE","REFRESH","ERROR"};

  // bankmachine sequence item
  class bm_trans extends uvm_sequence_item;
    //rand bit reset;
    rand bit[2:0] bank_address;
    rand bit[16:0] row_address;
    rand bit[5:0] col_address[];
    rand bit we[];//read or write

    //bit[2:0] bank_address[];
    
    rand bit cas[];
    rand bit ras[];
    rand bit is_cmd[];
    rand bit is_write[];
    rand bit is_read[];
    rand bit is_mw[];
    bit rsp;

    constraint ba_cst{
      soft bank_address == 0;
    };

    //constraint rst{reset==1;}
    //positive access time
    constraint col_cmd_num_cst{
      col_address.size>0;
      col_address.size<8;
    }

    //one col_address/rw one access
    
    constraint col_address_size_cst{
      cas.size==(col_address.size+2);
      ras.size==(col_address.size+2);
      we.size==(col_address.size+2);
      is_cmd.size==(col_address.size+2);
      is_write.size==(col_address.size+2);
      is_read.size==(col_address.size+2);
      is_mw.size==(col_address.size+2);
    }
    
    constraint bm_cmd_cst{
      //precharge
      cas[0]==0;
      ras[0]==1;
      we[0]==1;
      //activate;
      cas[1]==0;
      ras[1]==1;
      we[1]==0;
      //rw
      foreach(cas[i]){
        if(i>=2){
          cas[i]==1;
          ras[i]==0;
        }
      }
    }

    constraint bm_is_cmd_cst{
      foreach(cas[i]){
        if((cas[i]==0) && (ras[i]==1)){
          is_cmd[i]==1;
          is_read[i]==0;
          is_write[i]==0;
          is_mw[i]==0;
        }
        else {
          is_cmd[i]==0;
          if((cas[i]==1) &&(ras[i]==0)){
            if(we[i]==1) {
              is_write[i]==1;
              is_read[i]==0;
            }
            else {
              is_read[i]==1;
              is_write[i]==0;
              is_mw[i]==0;
            }
          }
          else{
            is_read[i]==0;
            is_write[i]==0;
            is_mw[i]==0;
          }
        }
      }
    }

    `uvm_object_utils_begin(bm_trans)
      `uvm_field_int(row_address, UVM_ALL_ON)
      `uvm_field_int(bank_address, UVM_ALL_ON)
      `uvm_field_array_int(col_address, UVM_ALL_ON)
      `uvm_field_array_int(cas, UVM_ALL_ON)
      `uvm_field_array_int(ras, UVM_ALL_ON)
      `uvm_field_array_int(we, UVM_ALL_ON)
      `uvm_field_array_int(is_cmd, UVM_ALL_ON)
      `uvm_field_array_int(is_write, UVM_ALL_ON)
      `uvm_field_array_int(is_read, UVM_ALL_ON)
      `uvm_field_array_int(is_mw, UVM_ALL_ON)
      //`uvm_field_int(reset, UVM_ALL_ON)
      `uvm_field_int(rsp, UVM_ALL_ON)
    `uvm_object_utils_end

    function new (string name = "bm_trans");
      super.new(name);
    endfunction
  endclass: bm_trans
  

  // sequencer
  class bm_sequencer extends uvm_sequencer #(bm_trans);
    `uvm_component_utils(bm_sequencer)
    function new (string name = "bm_sequencer", uvm_component parent);
      super.new(name, parent);
    endfunction
  endclass: bm_sequencer

  //sequence
  class bm_cmd_sequence extends uvm_sequence #(bm_trans);
    //rand bit reset;
    rand int cmd_size=-1;
    rand bit[2:0] bank_address;
    rand bit[16:0] row_address;
    rand bit[5:0] col_address[];
    rand bit we[];//read or write

    //bit[2:0] bank_address[];
    
    rand bit cas[];
    rand bit ras[];
    rand bit is_cmd[];
    rand bit is_write[];
    rand bit is_read[];
    rand bit is_mw[];
    rand int ntrans = 1;

    //constraint rst{reset==1;}
    //positive access time
    constraint cstr{
      soft cmd_size == -1;
      soft col_address.size()==cmd_size;
      foreach(col_address[i]) soft col_address[i] == -1;
      soft bank_address == -1;
      soft row_address == -1;
      soft we.size()==(cmd_size+2);
      foreach(we[i]) soft we[i] == -1;
      soft cas.size()==(cmd_size+2);
      foreach(cas[i]) soft cas[i] == -1;
      soft ras.size()==(cmd_size+2);
      foreach(ras[i]) soft ras[i] == -1;
      soft is_cmd.size()==(cmd_size+2);
      foreach(is_cmd[i]) soft is_cmd[i] == -1;
      soft is_read.size()==(cmd_size+2);
      foreach(is_read[i]) soft is_read[i] == -1;
      soft is_write.size()==(cmd_size+2);
      foreach(is_write[i]) soft is_write[i] == -1;
      soft is_mw.size()==(cmd_size+2);
      foreach(is_mw[i]) soft is_mw[i] == -1;
    };

    constraint col_cmd_num_cst{
      col_address.size>0;
      col_address.size<8;
    }

    //one col_address/rw one access
    
    constraint col_address_size_cst{
      cas.size==(col_address.size+2);
      ras.size==(col_address.size+2);
      we.size==(col_address.size+2);
      is_cmd.size==(col_address.size+2);
      is_write.size==(col_address.size+2);
      is_read.size==(col_address.size+2);
      is_mw.size==(col_address.size+2);
    }
    
    constraint bm_cmd_cst{
      //precharge
      cas[0]==0;
      ras[0]==1;
      we[0]==1;
      //activate;
      cas[1]==0;
      ras[1]==1;
      we[1]==0;
      //rw
      foreach(cas[i]){
        if(i>=2){
          cas[i]==1;
          ras[i]==0;
        }
      }
    }

    constraint bm_is_cmd_cst{
      foreach(cas[i]){
        if((cas[i]==0) && (ras[i]==1)){
          is_cmd[i]==1;
          is_read[i]==0;
          is_write[i]==0;
          is_mw[i]==0;
        }
        else {
          is_cmd[i]==0;
          if((cas[i]==1) &&(ras[i]==0)){
            if(we[i]==1) {
              is_write[i]==1;
              is_read[i]==0;
            }
            else {
              is_read[i]==1;
              is_write[i]==0;
              is_mw[i]==0;
            }
          }
          else{
            is_read[i]==0;
            is_write[i]==0;
            is_mw[i]==0;
          }
        }
      }
    }
    `uvm_object_utils_begin(bm_cmd_sequence)
      `uvm_field_int(row_address, UVM_ALL_ON)
      `uvm_field_int(cmd_size, UVM_ALL_ON)
      `uvm_field_int(bank_address, UVM_ALL_ON)
      `uvm_field_array_int(col_address, UVM_ALL_ON)
      `uvm_field_array_int(cas, UVM_ALL_ON)
      `uvm_field_array_int(ras, UVM_ALL_ON)
      `uvm_field_array_int(we, UVM_ALL_ON)
      `uvm_field_array_int(is_cmd, UVM_ALL_ON)
      `uvm_field_array_int(is_write, UVM_ALL_ON)
      `uvm_field_array_int(is_read, UVM_ALL_ON)
      `uvm_field_array_int(is_mw, UVM_ALL_ON)
      //`uvm_field_int(reset, UVM_ALL_ON)
      `uvm_field_int(ntrans, UVM_ALL_ON)
    `uvm_object_utils_end
    function new (string name = "bm_cmd_sequence");
      super.new(name);
    endfunction

    task body();
      repeat(ntrans) send_trans();
    endtask

    task send_trans();
      bm_trans req, rsp;
      `uvm_do_with(req, {local::bank_address >= 0 -> bank_address == local::bank_address; 
                         local::row_address >=0  -> row_address == local::row_address;
                         local::cmd_size >0 -> col_address.size() == local::cmd_size; 
                         foreach(local::col_address[j]) local::col_address[j] >= 0 -> col_address[j] == local::col_address[j];
                         local::cmd_size >0 -> we.size() == (local::cmd_size+2); 
                         foreach(local::we[i]) local::we[i] >= 0 ->we[i] == local::we[i];
                         local::cmd_size >0 -> cas.size() == (local::cmd_size+2);
                         foreach(local::cas[i]) local::cas[i] >= 0 ->cas[i] == local::cas[i];
                         local::cmd_size >0 -> ras.size() == (local::cmd_size+2);
                         foreach(local::ras[i]) local::ras[i] >= 0 -> ras[i] == local::ras[i];
                         local::cmd_size >0 -> is_cmd.size() == (local::cmd_size+2);
                         foreach(local::is_cmd[i]) local::is_cmd[i] >= 0 ->is_cmd[i] == local::is_cmd[i];
                         local::cmd_size >0 -> is_write.size() == (local::cmd_size+2);
                         foreach(local::is_write[i]) local::is_write[i] >= 0 -> is_write[i] == local::is_write[i];
                         local::cmd_size >0 -> is_read.size() == (local::cmd_size+2);
                         foreach(local::is_read[i]) local::is_read[i] >= 0 ->is_read[i] == local::is_read[i];
                         local::cmd_size >0 -> is_mw.size() == (local::cmd_size+2);
                         foreach(local::is_mw[i]) local::is_mw[i] >= 0 -> is_mw[i] == local::is_mw[i]; 
                         })
      `uvm_info(get_type_name(), req.sprint(), UVM_HIGH)
      get_response(rsp);
      `uvm_info(get_type_name(), rsp.sprint(), UVM_HIGH)
      assert(rsp.rsp)
        else $error("[RSPERR] %0t error response received!", $time);
    endtask

    function void post_randomize();
      string s;
      s = {s, "AFTER RANDOMIZATION \n"};
      s = {s, "=======================================\n"};
      s = {s, "bm_cmd_sequence object content is as below: \n"};
      s = {s, super.sprint()};
      s = {s, "=======================================\n"};
      `uvm_info(get_type_name(), s, UVM_HIGH)
    endfunction
  endclass: bm_cmd_sequence

  // Bankmachine driver
  class bm_driver extends uvm_driver #(bm_trans);
    virtual cmd_rw_interface intf;
    //bit[2:0] bank_address;
    mailbox #(bm_trans) req_mb;
    mailbox #(bm_trans) rsp_mb;

    `uvm_component_utils(bm_driver)
  
    function new (string name = "bm_driver", uvm_component parent);
      super.new(name, parent);
    endfunction

    /*
    function set_bank_address(int bank_id);
      bank_address=bank_id;
    endfunction
    */
    function void set_interface(virtual cmd_rw_interface intf);
      if(intf == null)
        `uvm_error("GETVIF","cmd_rw_interface interface handle is NULL, please check if target interface has been intantiated")
      else
        this.intf = intf;
    endfunction

    task run_phase(uvm_phase phase);
      fork
       this.do_drive();
       this.do_reset();
      join
    endtask

    task do_reset();
      forever begin
        @(posedge intf.rst);
        intf.drv_ck.cmd_valid <= 0;
        intf.drv_ck.cmd_payload_a<= 0;
	      intf.drv_ck.cmd_payload_ba<= 0;
	      intf.drv_ck.cmd_payload_cas<= 0;
	      intf.drv_ck.cmd_payload_ras<= 0;
	      intf.drv_ck.cmd_payload_we<= 0;
	      intf.drv_ck.cmd_payload_is_cmd<= 0;
	      intf.drv_ck.cmd_payload_is_read<= 0;
	      intf.drv_ck.cmd_payload_is_write<= 0;
	      intf.drv_ck.cmd_payload_is_mw<= 0;
      end
    endtask

    task do_drive();
      bm_trans req, rsp;
      @(negedge intf.rst);
      forever begin
        seq_item_port.get_next_item(req);
        this.bm_write(req);
        void'($cast(rsp, req.clone()));
        rsp.rsp = 1;
        rsp.set_sequence_id(req.get_sequence_id());
        seq_item_port.item_done(rsp);
      end
    endtask
  
    task bm_write(input bm_trans t);
      for(int i=0;i<t.cas.size;i++) begin
        //drive precharge
        if(i==0) begin
          @(posedge intf.clk);
          intf.drv_ck.cmd_valid <= 1'b1;
          intf.drv_ck.cmd_payload_a<= 0;
	        intf.drv_ck.cmd_payload_ba<= t.bank_address;
	        intf.drv_ck.cmd_payload_cas<= t.cas[i];
	        intf.drv_ck.cmd_payload_ras<= t.ras[i];
	        intf.drv_ck.cmd_payload_we<= t.we[i];
          intf.drv_ck.cmd_payload_is_cmd<= t.is_cmd[i];
	        intf.drv_ck.cmd_payload_is_read<= t.is_read[i];
	        intf.drv_ck.cmd_payload_is_write<= t.is_write[i];
	        intf.drv_ck.cmd_payload_is_mw<= t.is_mw[i];
          @(negedge intf.clk);
          wait(intf.mon_ck.cmd_ready === 'b1);
          `uvm_info(get_type_name(), $sformatf("Bank %h sent command PRECHARGE",t.bank_address), UVM_HIGH)
          //tRP
          repeat(12) bm_idle();
        end
        else if (i==1) begin
          @(posedge intf.clk);
          intf.drv_ck.cmd_valid <= 1'b1;
          intf.drv_ck.cmd_payload_a<= t.row_address;
	        intf.drv_ck.cmd_payload_ba<= t.bank_address;
	        intf.drv_ck.cmd_payload_cas<= t.cas[i];
	        intf.drv_ck.cmd_payload_ras<= t.ras[i];
	        intf.drv_ck.cmd_payload_we<= t.we[i];
          intf.drv_ck.cmd_payload_is_cmd<= t.is_cmd[i];
	        intf.drv_ck.cmd_payload_is_read<= t.is_read[i];
	        intf.drv_ck.cmd_payload_is_write<= t.is_write[i];
	        intf.drv_ck.cmd_payload_is_mw<= t.is_mw[i];
          @(negedge intf.clk);
          wait(intf.mon_ck.cmd_ready === 'b1);
          `uvm_info(get_type_name(), $sformatf("Bank %h sent command ACTIVATE row 0x%0h",t.bank_address,t.row_address), UVM_HIGH)
          //tRCD
          repeat(11) bm_idle();
        end
        else begin
          @(posedge intf.clk);
          intf.drv_ck.cmd_valid <= 1'b1;
          intf.drv_ck.cmd_payload_a<= {7'd0,t.col_address[i-2],4'd0};
	        intf.drv_ck.cmd_payload_ba<= t.bank_address;
	        intf.drv_ck.cmd_payload_cas<= t.cas[i];
	        intf.drv_ck.cmd_payload_ras<= t.ras[i];
	        intf.drv_ck.cmd_payload_we<= t.we[i];
          intf.drv_ck.cmd_payload_is_cmd<= t.is_cmd[i];
	        intf.drv_ck.cmd_payload_is_read<= t.is_read[i];
	        intf.drv_ck.cmd_payload_is_write<= t.is_write[i];
	        intf.drv_ck.cmd_payload_is_mw<= t.is_mw[i];
          @(negedge intf.clk);
          wait(intf.mon_ck.cmd_ready === 'b1);
          if(t.we[i]==1)
            `uvm_info(get_type_name(), $sformatf("Bank %h sent command WRITE col 0x%0h",t.bank_address,t.col_address[i-2]), UVM_HIGH)
          else
            `uvm_info(get_type_name(), $sformatf("Bank %h sent command READ col 0x%0hS",t.bank_address,t.col_address[i-2]), UVM_HIGH)
          //tCCD
          repeat(2) bm_idle();
        end
      end
      //tCCD
      repeat(2) bm_idle();
    endtask
    
    task bm_idle();
      @(posedge intf.clk);
      intf.drv_ck.cmd_valid <= 0;
      intf.drv_ck.cmd_payload_a<= 0;
	    intf.drv_ck.cmd_payload_ba<= 0;
	    intf.drv_ck.cmd_payload_cas<= 0;
	    intf.drv_ck.cmd_payload_ras<= 0;
	    intf.drv_ck.cmd_payload_we<= 0;
      intf.drv_ck.cmd_payload_is_cmd<= 0;
	    intf.drv_ck.cmd_payload_is_read<= 0;
	    intf.drv_ck.cmd_payload_is_write<= 0;
	    intf.drv_ck.cmd_payload_is_mw<= 0;
    endtask
  endclass: bm_driver

  typedef struct packed {
    ddr_cmd_t cmd;
    bit cas;
    bit ras;
    bit we;
    bit mw;
    bit[16:0] address;
    bit[2:0] bank;
  } cmd_t;

  // bankmachine monitor
  class bm_monitor extends uvm_monitor;
    virtual cmd_rw_interface intf;
    uvm_analysis_port #(cmd_t) mon_cmd_port;

    `uvm_component_utils(bm_monitor)

    function new(string name="bm_monitor", uvm_component parent);
      super.new(name, parent);
      mon_cmd_port = new("mon_cmd_port", this);
    endfunction

    function void set_interface(virtual cmd_rw_interface intf);
      if(intf == null)
        `uvm_error("GETVIF", "interface handle is NULL, please check if target interface has been intantiated")
      else
        this.intf = intf;
    endfunction

    task run_phase(uvm_phase phase);
      this.mon_trans();
    endtask

    task mon_trans();
      cmd_t m;
      forever begin
        @(posedge intf.clk iff (intf.mon_ck.cmd_valid==='b1 && intf.mon_ck.cmd_ready==='b1));
        m.cas = intf.mon_ck.cmd_payload_cas;
        m.ras = intf.mon_ck.cmd_payload_ras;
        m.we = intf.mon_ck.cmd_payload_we;
        m.mw = intf.mon_ck.cmd_payload_is_mw;
        case({intf.mon_ck.cmd_payload_ras,intf.mon_ck.cmd_payload_cas,intf.mon_ck.cmd_payload_we,intf.mon_ck.cmd_payload_is_mw})
          4'b1010: m.cmd=PRECHARGE;
          4'b1000: m.cmd=ACTIVATE;
          4'b0100: m.cmd=COL_READ;
          4'b0110: m.cmd=COL_WRITE;
          4'b0111: m.cmd=MASKED_WRITE;
          default: m.cmd=ERROR_0;
        endcase
        m.address = intf.mon_ck.cmd_payload_a;
        m.bank=intf.mon_ck.cmd_payload_ba;
        mon_cmd_port.write(m);
        `uvm_info(get_type_name(), $sformatf("Monitored BM cmd %s at bank %h, address %h", DDR_CMD[m.cmd],m.bank,m.address), UVM_HIGH)
      end
    endtask
  endclass: bm_monitor
  
  // bankmachine agent
  class bm_agent extends uvm_agent;
    bm_driver driver;
    bm_monitor monitor;
    bm_sequencer sequencer;
    virtual cmd_rw_interface vif;

    `uvm_component_utils(bm_agent)

    function new(string name = "bm_agent", uvm_component parent);
      super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      driver = bm_driver::type_id::create("driver", this);
      monitor = bm_monitor::type_id::create("monitor", this);
      sequencer = bm_sequencer::type_id::create("sequencer", this);
    endfunction

    function void set_interface(virtual cmd_rw_interface vif);
      this.vif = vif;
      driver.set_interface(vif);
      monitor.set_interface(vif);
    endfunction

    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      driver.seq_item_port.connect(sequencer.seq_item_export);
    endfunction
  endclass: bm_agent
  
  typedef struct packed {
    ddr_cmd_t cmd;
    bit cas_n;
    bit ras_n;
    bit we_n;
    bit mw;
    bit[16:0] address;
    bit[2:0] bank;
  } dfi_cmd_t;

  class dfi_monitor extends uvm_monitor;
    virtual dfi_interface intf;
    uvm_analysis_port #(dfi_cmd_t) mon_dfi_port;

    `uvm_component_utils(dfi_monitor)

    function new(string name="dfi_monitor", uvm_component parent);
      super.new(name, parent);
      mon_dfi_port = new("mon_dfi_port", this);
    endfunction

    task run_phase(uvm_phase phase);
      this.mon_trans();
    endtask

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
    endfunction

    function void set_interface(virtual dfi_interface intf);
      if(intf == null)
        `uvm_error("GETVIF", "dfi interface handle is NULL, please check if target interface has been intantiated")
      else
        this.intf = intf;
    endfunction

    task mon_trans();
      dfi_cmd_t m0;
      dfi_cmd_t m1;
      dfi_cmd_t m2;
      dfi_cmd_t m3;
      //p0
      forever begin
        @(posedge intf.clk iff ((intf.dfi_phase0_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase0_interface_if.mon_ck.cas_n==='b0)||(intf.dfi_phase1_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase1_interface_if.mon_ck.cas_n==='b0)||(intf.dfi_phase2_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase2_interface_if.mon_ck.cas_n==='b0)||(intf.dfi_phase3_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase3_interface_if.mon_ck.cas_n==='b0)));
        m0.cas_n = intf.dfi_phase0_interface_if.mon_ck.cas_n;
        m0.ras_n = intf.dfi_phase0_interface_if.mon_ck.ras_n;
        m0.we_n = intf.dfi_phase0_interface_if.mon_ck.we_n;
        m0.mw = intf.dfi_phase0_interface_if.mon_ck.mw;
        m0.bank= intf.dfi_phase0_interface_if.mon_ck.bank;
        m0.address = intf.dfi_phase0_interface_if.mon_ck.address;
        case({intf.dfi_phase0_interface_if.mon_ck.ras_n,intf.dfi_phase0_interface_if.mon_ck.cas_n,intf.dfi_phase0_interface_if.mon_ck.we_n,intf.dfi_phase0_interface_if.mon_ck.mw})
          4'b0100: m0.cmd=PRECHARGE;
          4'b0110: m0.cmd=ACTIVATE;
          4'b1010: m0.cmd=COL_READ;
          4'b1000: m0.cmd=COL_WRITE;
          4'b1001: m0.cmd=MASKED_WRITE;
          default: m0.cmd=ERROR_0;
        endcase
        if(m0.cmd!=ERROR_0) begin
          mon_dfi_port.write(m0);
          `uvm_info(get_type_name(), $sformatf("monitored DFI p0 cmd %s at bank %d, address 0x%h", DDR_CMD[m0.cmd],m0.bank,m0.address), UVM_HIGH)
        end
        //p1
        //@(posedge intf.clk iff ((intf.dfi_phase1_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase1_interface_if.mon_ck.cas_n==='b0)));
        m1.cas_n = intf.dfi_phase1_interface_if.mon_ck.cas_n;
        m1.ras_n = intf.dfi_phase1_interface_if.mon_ck.ras_n;
        m1.we_n = intf.dfi_phase1_interface_if.mon_ck.we_n;
        m1.mw = intf.dfi_phase1_interface_if.mon_ck.mw;
        m1.bank= intf.dfi_phase1_interface_if.mon_ck.bank;
        m1.address = intf.dfi_phase1_interface_if.mon_ck.address;
        case({intf.dfi_phase1_interface_if.mon_ck.ras_n,intf.dfi_phase1_interface_if.mon_ck.cas_n,intf.dfi_phase1_interface_if.mon_ck.we_n,intf.dfi_phase1_interface_if.mon_ck.mw})
          4'b0100: m1.cmd=PRECHARGE;
          4'b0110: m1.cmd=ACTIVATE;
          4'b1010: m1.cmd=COL_READ;
          4'b1000: m1.cmd=COL_WRITE;
          4'b1001: m1.cmd=MASKED_WRITE;
          default: m1.cmd=ERROR_0;
        endcase
        if(m1.cmd!=ERROR_0) begin
          mon_dfi_port.write(m1);
          `uvm_info(get_type_name(), $sformatf("monitored DFI p1 cmd %s at bank %d, address 0x%h", DDR_CMD[m1.cmd],m1.bank,m1.address), UVM_HIGH)
        end

        //p2
        //@(posedge intf.clk iff ((intf.dfi_phase2_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase2_interface_if.mon_ck.cas_n==='b0)));
        m2.cas_n = intf.dfi_phase2_interface_if.mon_ck.cas_n;
        m2.ras_n = intf.dfi_phase2_interface_if.mon_ck.ras_n;
        m2.we_n = intf.dfi_phase2_interface_if.mon_ck.we_n;
        m2.mw = intf.dfi_phase2_interface_if.mon_ck.mw;
        m2.bank= intf.dfi_phase2_interface_if.mon_ck.bank;
        m2.address = intf.dfi_phase2_interface_if.mon_ck.address;
        case({intf.dfi_phase2_interface_if.mon_ck.ras_n,intf.dfi_phase2_interface_if.mon_ck.cas_n,intf.dfi_phase2_interface_if.mon_ck.we_n,intf.dfi_phase2_interface_if.mon_ck.mw})
          4'b0100: m2.cmd=PRECHARGE;
          4'b0110: m2.cmd=ACTIVATE;
          4'b1010: m2.cmd=COL_READ;
          4'b1000: m2.cmd=COL_WRITE;
          4'b1001: m2.cmd=MASKED_WRITE;
          default: m2.cmd=ERROR_0;
        endcase
        if(m2.cmd!=ERROR_0) begin
          mon_dfi_port.write(m2);
          `uvm_info(get_type_name(), $sformatf("monitored DFI p2 cmd %s at bank %d, address 0x%h", DDR_CMD[m2.cmd],m2.bank,m2.address), UVM_HIGH)
        end
        //p3
        //@(posedge intf.clk iff ((intf.dfi_phase3_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase3_interface_if.mon_ck.cas_n==='b0)));
        m3.cas_n = intf.dfi_phase3_interface_if.mon_ck.cas_n;
        m3.ras_n = intf.dfi_phase3_interface_if.mon_ck.ras_n;
        m3.we_n = intf.dfi_phase3_interface_if.mon_ck.we_n;
        m3.mw = intf.dfi_phase3_interface_if.mon_ck.mw;
        m3.bank= intf.dfi_phase3_interface_if.mon_ck.bank;
        m3.address = intf.dfi_phase3_interface_if.mon_ck.address;
        case({intf.dfi_phase3_interface_if.mon_ck.ras_n,intf.dfi_phase3_interface_if.mon_ck.cas_n,intf.dfi_phase3_interface_if.mon_ck.we_n,intf.dfi_phase3_interface_if.mon_ck.mw})
          4'b0100: m3.cmd=PRECHARGE;
          4'b0110: m3.cmd=ACTIVATE;
          4'b1010: m3.cmd=COL_READ;
          4'b1000: m3.cmd=COL_WRITE;
          4'b1001: m3.cmd=MASKED_WRITE;
          default: m3.cmd=ERROR_0;
        endcase
        if(m3.cmd!=ERROR_0) begin
          mon_dfi_port.write(m3);
          `uvm_info(get_type_name(), $sformatf("monitored DFI p3 cmd %s at bank %d, address 0x%h",DDR_CMD[m3.cmd],m3.bank,m3.address), UVM_HIGH)
        end
      end
      
    endtask
  endclass

  class dfi_checker extends uvm_scoreboard;
    int error_count;
    int cmp_count;
    bit[2:0] bank_ad;
    local virtual dfi_interface dfi_vif;
    local virtual cmd_rw_interface bm_vifs[8];
    uvm_tlm_analysis_fifo #(cmd_t) in_tlm_fifos[8];
    uvm_tlm_analysis_fifo #(dfi_cmd_t) out_tlm_fifo;

    `uvm_component_utils(dfi_checker)

    function new (string name = "dfi_checker", uvm_component parent);
      super.new(name, parent);
      foreach(in_tlm_fifos[i]) in_tlm_fifos[i] = new($sformatf("in_tlm_fifos[%0d]", i), this);
      out_tlm_fifo = new("out_tlm_fifo", this);
      this.error_count = 0;
      this.cmp_count = 0;
    endfunction

    function void set_interface(virtual dfi_interface dfi_vif, virtual cmd_rw_interface bm_vifs[8]);
      if(dfi_vif == null)
        $error("dfi interface handle is NULL, please check if target interface has been intantiated");
      else begin
        this.dfi_vif = dfi_vif;
      end

      foreach(bm_vifs[i]) begin
        if(bm_vifs[i] == null)
          $error("cmd interface handle is NULL, please check if target interface has been intantiated");
        else begin
          this.bm_vifs[i] = bm_vifs[i];
      end
      end
    endfunction

    task run_phase(uvm_phase phase);
      this.do_data_compare();
    endtask

    task do_data_compare();
      cmd_t im;
      dfi_cmd_t om;
      forever begin
        out_tlm_fifo.get(om);
        case(om.bank)
          0: begin in_tlm_fifos[0].get(im); this.bank_ad=0; end
          1: begin in_tlm_fifos[1].get(im); this.bank_ad=1; end
          2: begin in_tlm_fifos[2].get(im); this.bank_ad=2; end
          3: begin in_tlm_fifos[3].get(im); this.bank_ad=3; end
          4: begin in_tlm_fifos[4].get(im); this.bank_ad=4; end
          5: begin in_tlm_fifos[5].get(im); this.bank_ad=5; end
          6: begin in_tlm_fifos[6].get(im); this.bank_ad=6; end
          7: begin in_tlm_fifos[7].get(im); this.bank_ad=7; end
          default: `uvm_fatal(get_type_name(), $sformatf("bank %0d is not available", om.bank))
        endcase
        if((om.cmd != im.cmd) || (om.address != im.address) ) begin
          this.error_count++;
          `uvm_error("CMPFAIL", $sformatf("Compared failed! multiplexer out DFI cmd %s at bank %0d at address %h is not equal with bankmachine %d in cmd %s at address %h", DDR_CMD[om.cmd], om.bank, om.address,this.bank_ad,DDR_CMD[im.cmd],im.address))
        end
        else begin
          `uvm_info("CMPSUCD", $sformatf("Compared Success! multiplexer out DFI cmd %s at bank %0d at address %h is transmitted correctly!", DDR_CMD[om.cmd], om.bank, om.address), UVM_HIGH)
        end
        this.cmp_count++;
      end
    endtask
  endclass


  // vsqr
  class multiplexer_virtual_sequencer extends uvm_sequencer #(uvm_sequence_item);
    bm_sequencer bm_sqrs[8];
    virtual dfi_interface dfi_vif;
    `uvm_component_utils(multiplexer_virtual_sequencer)

    function new (string name = "multiplexer_virtual_sequencer", uvm_component parent);
      super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
    endfunction

    function void set_interface(virtual dfi_interface vif);
      this.dfi_vif = vif;
    endfunction
  endclass
  
  //uvm_env
  class multiplexer_env extends uvm_env;
    bm_agent agents[8];
    dfi_monitor dfi_mon;
    dfi_checker dfi_chker;
    multiplexer_virtual_sequencer virt_sqr;
    //dfi_coverage dfi_cvrg;

    `uvm_component_utils(multiplexer_env)

    function new (string name = "multiplexer_env", uvm_component parent);
      super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      this.dfi_chker = dfi_checker::type_id::create("dfi_chker", this);
      foreach(agents[i]) begin
        this.agents[i] = bm_agent::type_id::create($sformatf("bm_agents[%0d]",i), this);
        //this.agents[i].driver.set_bank_address(i);
      end
      this.dfi_mon = dfi_monitor::type_id::create("dfi_mon", this);
      //this.dfi_cvrg = dfi_coverage::type_id::create("dfi_cvrg", this);
      virt_sqr = multiplexer_virtual_sequencer::type_id::create("virt_sqr", this);
    endfunction

    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      foreach(agents[i]) begin
        this.agents[i].monitor.mon_cmd_port.connect(this.dfi_chker.in_tlm_fifos[i].analysis_export);
      end
      this.dfi_mon.mon_dfi_port.connect(this.dfi_chker.out_tlm_fifo.analysis_export);
      foreach(virt_sqr.bm_sqrs[i]) begin
        virt_sqr.bm_sqrs[i]=agents[i].sequencer;
      end
    endfunction
  endclass

  class multiplexer_root_virtual_sequence extends uvm_sequence #(uvm_sequence_item);
    bm_cmd_sequence bm_cmd_seq;
    `uvm_object_utils(multiplexer_root_virtual_sequence)
    `uvm_declare_p_sequencer(multiplexer_virtual_sequencer)

    function new (string name = "multiplexer_root_virtual_sequence");
      super.new(name);
    endfunction

    virtual task body();
      `uvm_info(get_type_name(), "=====================STARTED=====================", UVM_LOW)
      this.do_data();
      `uvm_info(get_type_name(), "=====================FINISHED=====================", UVM_LOW)
    endtask

    // do data transition from 3 channel slaves
    virtual task do_data();
      //User to implment the task in the child virtual sequence
    endtask

    task wait_cycles(int n);
      repeat(n) @(posedge p_sequencer.dfi_vif.clk);
    endtask
  endclass

  class multiplexer_root_test extends uvm_test;
    multiplexer_env env;
    virtual cmd_rw_interface bm0_vif;
    virtual cmd_rw_interface bm1_vif;
    virtual cmd_rw_interface bm2_vif;
    virtual cmd_rw_interface bm3_vif;
    virtual cmd_rw_interface bm4_vif;
    virtual cmd_rw_interface bm5_vif;
    virtual cmd_rw_interface bm6_vif;
    virtual cmd_rw_interface bm7_vif;
    virtual dfi_interface dfi_vif;

    `uvm_component_utils(multiplexer_root_test)

    function new(string name = "multiplexer_root_test", uvm_component parent);
      super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
      super.build_phase(phase);
      // get virtual interface from top TB
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm0_vif", bm0_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm1_vif", bm1_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm2_vif", bm2_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm3_vif", bm3_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm4_vif", bm4_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm5_vif", bm5_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm6_vif", bm6_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","bm7_vif", bm7_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      if(!uvm_config_db#(virtual dfi_interface)::get(this,"","dfi_vif", dfi_vif)) begin
        `uvm_fatal("GETVIF","cannot get cmd vif handle from config DB")
      end
      env = multiplexer_env::type_id::create("env", this);
    endfunction

    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      // After get virtual interface from config_db, and then set them to
      // child components
      this.set_interface(bm0_vif, bm1_vif, bm2_vif, bm3_vif, bm4_vif, bm5_vif, bm6_vif,bm7_vif,dfi_vif);
    endfunction

    function void end_of_elaboration_phase(uvm_phase phase);
      super.end_of_elaboration_phase(phase);
      uvm_root::get().set_report_verbosity_level_hier(UVM_HIGH);
      uvm_root::get().set_report_max_quit_count(1);
      uvm_root::get().set_timeout(10ms);
    endfunction

    task run_phase(uvm_phase phase);
      // NOTE:: raise objection to prevent simulation stopping
      phase.raise_objection(this);
      this.run_top_virtual_sequence();
      // NOTE:: drop objection to request simulation stopping
      phase.drop_objection(this);
    endtask

    virtual task run_top_virtual_sequence();
      // User
    endtask

    virtual function void set_interface(virtual cmd_rw_interface bm0_vif 
                                        ,virtual cmd_rw_interface bm1_vif
                                        ,virtual cmd_rw_interface bm2_vif 
                                        ,virtual cmd_rw_interface bm3_vif
                                        ,virtual cmd_rw_interface bm4_vif
                                        ,virtual cmd_rw_interface bm5_vif
                                        ,virtual cmd_rw_interface bm6_vif
                                        ,virtual cmd_rw_interface bm7_vif
                                        ,virtual dfi_interface dfi_vif
                                      );
      this.env.agents[0].set_interface(bm0_vif);
      this.env.agents[1].set_interface(bm1_vif);
      this.env.agents[2].set_interface(bm2_vif);
      this.env.agents[3].set_interface(bm3_vif);
      this.env.agents[4].set_interface(bm4_vif);
      this.env.agents[5].set_interface(bm5_vif);
      this.env.agents[6].set_interface(bm6_vif);
      this.env.agents[7].set_interface(bm7_vif);
      this.env.dfi_mon.set_interface(dfi_vif);
      this.env.dfi_chker.set_interface(dfi_vif, '{bm0_vif, bm1_vif, bm2_vif,bm3_vif, bm4_vif, bm5_vif,bm6_vif, bm7_vif});
      //this.env.cvrg.set_interface('{ch0_vif, ch1_vif, ch2_vif}, reg_vif, arb_vif, fmt_vif, mcdf_vif);
      this.env.virt_sqr.set_interface(dfi_vif);
    endfunction
  endclass: multiplexer_root_test

  class multiplexer_basic_virtual_sequence extends multiplexer_root_virtual_sequence;
    `uvm_object_utils(multiplexer_basic_virtual_sequence)
    function new (string name = "multiplexer_basic_virtual_sequence");
      super.new(name);
    endfunction
    task do_data();
      // User
      @(negedge p_sequencer.dfi_vif.rst);
      this.wait_cycles(10);
      fork
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[0], 
                        {ntrans== 10; bank_address==0;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[1], 
                        {ntrans== 10; bank_address==1;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[2], 
                        {ntrans== 10; bank_address==2;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[3], 
                        {ntrans== 10; bank_address==3;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[4], 
                        {ntrans== 10; bank_address==4;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[5], 
                        {ntrans== 10; bank_address==5;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[6], 
                        {ntrans== 10; bank_address==6;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[7], 
                        {ntrans== 10; bank_address==7;cmd_size==6;}
                       )
       
      join
      #10us; // wait until all data haven been transfered through MCDF
    endtask
  endclass


  class multiplexer_basic_test extends multiplexer_root_test;
    `uvm_component_utils(multiplexer_basic_test)
    function new(string name = "multiplexer_basic_test", uvm_component parent);
      super.new(name, parent);
    endfunction
    task run_top_virtual_sequence();
      multiplexer_basic_virtual_sequence top_seq = new();
      top_seq.start(env.virt_sqr);
    endtask
  endclass: multiplexer_basic_test

  /*
  class multiplexer_burst_test extends multiplexer_root_test;
    `uvm_component_utils(multiplexer_burst_test)

    function new(string name = "multiplexer_burst_test", uvm_component parent);
      super.new(name, parent);
    endfunction

    // virtual function void do_config();
    //   super.do_config();
    //   assert(gens[0].randomize() with {ntrans inside {[80:100]}; data_nidles==0; pkt_nidles==1; data_size inside {8, 16, 32};})
    //     else `uvm_fatal("RNDFAIL", "gen[0] randomization failure!") 
    //   assert(gens[1].randomize() with {ntrans inside {[80:100]}; data_nidles==0; pkt_nidles==1; data_size inside {8, 16, 32};})
    //     else `uvm_fatal("RNDFAIL", "gen[1] randomization failure!") 
    //   assert(gens[2].randomize() with {ntrans inside {[80:100]}; data_nidles==0; pkt_nidles==1; data_size inside {8, 16, 32};})
    //     else `uvm_fatal("RNDFAIL", "gen[2] randomization failure!") 
    // endfunction
  endclass: multiplexer_burst_test

  // TODO: please add multiplexer_fifo_full_virtual_sequence and update
  // multiplexer_fifo_full_test
  class multiplexer_fifo_full_test extends multiplexer_root_test;
    `uvm_component_utils(multiplexer_fifo_full_test)

    function new(string name = "multiplexer_fifo_full_test", uvm_component parent);
      super.new(name, parent);
    endfunction

    // virtual function void do_config();
    //   super.do_config();
    //   assert(gens[0].randomize() with {ntrans inside {[1000:2000]}; data_nidles==0; pkt_nidles==1; data_size inside {8, 16, 32};})
    //     else `uvm_fatal("RNDFAIL", "gen[0] randomization failure!") 
    //   assert(gens[1].randomize() with {ntrans inside {[1000:2000]}; data_nidles==0; pkt_nidles==1; data_size inside {8, 16, 32};})
    //     else `uvm_fatal("RNDFAIL", "gen[1] randomization failure!") 
    //   assert(gens[2].randomize() with {ntrans inside {[1000:2000]}; data_nidles==0; pkt_nidles==1; data_size inside {8, 16, 32};})
    //     else `uvm_fatal("RNDFAIL", "gen[2] randomization failure!") 
    // endfunction

    // virtual task run_stop_callback();
    //   `uvm_info(get_type_name(), "run_stop_callback enterred", UVM_HIGH)
    //   `uvm_info(get_type_name(), "waiting DUT transfering all of data", UVM_HIGH)
    //   fork
    //     wait(env.agents[0].vif.ch_margin == 'h20);
    //     wait(env.agents[1].vif.ch_margin == 'h20);
    //     wait(env.agents[2].vif.ch_margin == 'h20);
    //   join
    //   `uvm_info(get_type_name(), "3 channel fifos have transferred all data", UVM_HIGH)
    // endtask
  endclass: multiplexer_fifo_full_test
  */
endpackage