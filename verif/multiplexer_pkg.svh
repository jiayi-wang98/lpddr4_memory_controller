package multiplexer_pkg;
  import uvm_pkg::*;
  `include "uvm_macros.svh"
  `include "tb_defs.svh"

  // static variables shared by resources
  semaphore run_stop_flags = new();
  string DDR_CMD[16]={"PRECHARGE","ACTIVATE","READ","WRITE","MASKED WRITE","READ_AP","WRITE_AP","MASKED_WRITE_AP","REFRESH_ALL","ERROR_0","ERROR_1","PRECHARGE_ALL","RSU_1","RSU_2","RSU_3","RSU_4"};

  // bankmachine sequence item
  class bm_trans extends uvm_sequence_item;
    //rand bit reset;
    rand bit[2:0] bank_address;
    rand bit[16:0] row_address;
    rand bit[5:0] col_address[];
    rand bit we[];//read or write
    rand bit with_autoprecharge;
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
      `uvm_field_int(with_autoprecharge, UVM_ALL_ON)
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
    rand bit with_autoprecharge;

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
      `uvm_field_int(with_autoprecharge, UVM_ALL_ON)
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
      `uvm_do_with(req, {local::with_autoprecharge >= 0 -> with_autoprecharge == local::with_autoprecharge;
                         local::bank_address >= 0 -> bank_address == local::bank_address; 
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
      //`uvm_info(get_type_name(), s, UVM_HIGH)
    endfunction
  endclass: bm_cmd_sequence

  // Bankmachine driver
  class bm_driver extends uvm_driver #(bm_trans);
    bit precharged=0;
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
        precharged=req.with_autoprecharge;
      end
    endtask
  
    task bm_write(input bm_trans t);
      bit begin_with_refresh=0;
      @(negedge intf.clk);
      if(intf.mon_ck.refresh_req) begin
        @(posedge intf.clk);
        intf.drv_ck.refresh_gnt<=1'b1;
        `uvm_info("REFRESH IN", $sformatf("Bank %h into REFRESH",t.bank_address), UVM_HIGH)
        @(negedge intf.clk);
        wait(intf.mon_ck.refresh_req===1'b0);
        intf.drv_ck.refresh_gnt<=1'b0;
        `uvm_info("REFRESH OUT", $sformatf("Bank %h out of REFRESH",t.bank_address), UVM_HIGH)
        begin_with_refresh=1;
      end

      for(int i=0;i<t.cas.size;i++) begin
        //drive precharge
        if(i==0) begin

          if((precharged==0)||(begin_with_refresh==1)) begin
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
            repeat(tRP) bm_idle();
          end
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
          repeat(tRCD) bm_idle();
        end
        else if(i<t.cas.size-1) begin
          //masked write
          if(t.is_mw[i]==1) begin
            repeat(tCCDMW-2) bm_idle();
          end
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
            `uvm_info(get_type_name(), $sformatf("Bank %h sent command WRITE/MASKED_WRITE col 0x%0h0",t.bank_address,t.col_address[i-2]), UVM_HIGH)
          else
            `uvm_info(get_type_name(), $sformatf("Bank %h sent command READ col 0x%0h0",t.bank_address,t.col_address[i-2]), UVM_HIGH)
          //tCCD
          repeat(tCCD) bm_idle();

        //last cmd, check if it with auto precharge
        end else begin    
          if(t.is_mw[i]==1) begin
            repeat(tCCDMW-2) bm_idle();
          end

          if(t.with_autoprecharge) begin
            @(posedge intf.clk);
            intf.drv_ck.cmd_valid <= 1'b1;
            intf.drv_ck.cmd_payload_a<= {6'd0,1'b1,t.col_address[i-2],4'd0};
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
              `uvm_info(get_type_name(), $sformatf("Bank %h sent command WRITE_AP/MASKED_WRITE_AP col 0x%0h",t.bank_address,t.col_address[i-2]), UVM_HIGH)
            else
              `uvm_info(get_type_name(), $sformatf("Bank %h sent command READ_AP col 0x%0h0",t.bank_address,t.col_address[i-2]), UVM_HIGH)
            //tCCD
            repeat(tCCD) bm_idle();
            if(t.we[i]==1)
              repeat(tWTP_sb+tRP) bm_idle();
            else 
              repeat(tRTP_sb+tRP) bm_idle();
          end else begin
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
              `uvm_info(get_type_name(), $sformatf("Bank %h sent command WRITE/MASKED_WRITE col 0x%0h0",t.bank_address,t.col_address[i-2]), UVM_HIGH)
            else
              `uvm_info(get_type_name(), $sformatf("Bank %h sent command READ col 0x%0h0",t.bank_address,t.col_address[i-2]), UVM_HIGH)
            //tCCD
            repeat(tCCD) bm_idle();
            if(t.we[i]==1)
              repeat(tWTP_sb) bm_idle();
            else 
              repeat(tRTP_sb) bm_idle();
          end
        end
      end
      //tWTP
      precharged=t.with_autoprecharge;
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
    time t;
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
    cmd_t m_last;

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


    task check_cycle(int cycle_interval,int cycle_cst,string cmd_a,string cmd_b,string timing_name);
      if(cycle_interval<cycle_cst) begin
        `uvm_error($sformatf("%s VIOLATION",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d nCK < %s= %0d nCK.",cmd_b,cmd_a,cycle_interval, timing_name,cycle_cst))
      end else begin
        `uvm_info($sformatf("%s MET",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d nCK >= %s= %0d nCK.",cmd_b,cmd_a,cycle_interval, timing_name,cycle_cst),UVM_HIGH)
      end
    endtask

    task check_timing(time t_diff,time t_cst,string cmd_a,string cmd_b,string timing_name);
      if(t_diff<t_cst) begin
        `uvm_error($sformatf("%s VIOLATION",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d ns < %s= %0d ns.",cmd_b,cmd_a,t_diff, timing_name,t_cst))
      end else begin
        `uvm_info($sformatf("%s MET",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d ns >= %s= %0d ns.",cmd_b,cmd_a,t_diff, timing_name,t_cst),UVM_HIGH)
      end
    endtask

    task check_bm_timing(cmd_t m,cmd_t m_last);
      int cycle_interval;
      int t_diff;
      t_diff=m.t-m_last.t;//t ns
      cycle_interval=(m.t-m_last.t)/2; // system clock cycle
      case(m_last.cmd) 
          COL_READ_AP: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_cycle(cycle_interval,(tRTP_sb+tRP),DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTP_sb+tRP");
              end
              PRECHARGE: begin
                this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end

          COL_WRITE_AP: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_cycle(cycle_interval,(tWTP_sb+tRP),DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTP_sb+tRP");
              end
              PRECHARGE: begin
                this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end

          MASKED_WRITE_AP: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_cycle(cycle_interval,(tWTP_sb+tRP),DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTP_sb+tRP");
              end
              PRECHARGE: begin
                this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end

          PRECHARGE: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_timing(t_diff,tRP_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRP_ns");
              end
              PRECHARGE: begin
                this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          ACTIVATE: begin
            case(m.cmd)
              COL_READ: begin
                this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              COL_READ_AP: begin
                this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              COL_WRITE: begin
                this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              COL_WRITE_AP: begin
                this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              MASKED_WRITE_AP: begin
                this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              MASKED_WRITE: begin
                this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              PRECHARGE: begin
                this.check_timing(t_diff,tRAS_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRAS_ns");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
            
          end
          COL_READ: begin
            case(m.cmd)
              PRECHARGE: begin
                this.check_timing(t_diff,tRTP_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTP_ns");
              end
              ACTIVATE:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
              COL_READ: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_READ_AP: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_WRITE: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              COL_WRITE_AP: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              MASKED_WRITE: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              MASKED_WRITE_AP: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          COL_WRITE: begin
            case(m.cmd)
              PRECHARGE: begin
                this.check_cycle(cycle_interval,tWTP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTP_sb");
              end
              ACTIVATE:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
              COL_READ: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_READ_AP: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_WRITE: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_WRITE_AP: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              MASKED_WRITE: begin
                this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
              end
              MASKED_WRITE_AP: begin
                this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          MASKED_WRITE: begin
            case(m.cmd)
              PRECHARGE: begin
                this.check_cycle(cycle_interval,tWTP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTP_sb");
              end
              ACTIVATE:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
              COL_READ: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_READ_AP: begin
                //comment out when checking bankmachine
                //this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_WRITE: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_WRITE_AP: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              MASKED_WRITE: begin
                this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
              end
              MASKED_WRITE_AP: begin
                this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          default:begin
          end
      endcase
    endtask

    task mon_trans();
      cmd_t m;
      m_last.cmd=ERROR_1;

      forever begin
        @(posedge intf.clk iff (intf.mon_ck.cmd_valid==='b1 && intf.mon_ck.cmd_ready==='b1));
        m.cas = intf.mon_ck.cmd_payload_cas;
        m.ras = intf.mon_ck.cmd_payload_ras;
        m.we = intf.mon_ck.cmd_payload_we;
        m.mw = intf.mon_ck.cmd_payload_is_mw;
        case({intf.mon_ck.cmd_payload_ras,intf.mon_ck.cmd_payload_cas,intf.mon_ck.cmd_payload_we,intf.mon_ck.cmd_payload_is_mw})
          4'b1010: m.cmd=PRECHARGE;
          4'b1000: m.cmd=ACTIVATE;
          4'b0100: begin
            m.cmd=COL_READ;
            if(intf.mon_ck.cmd_payload_a[10]==1'b1) m.cmd=COL_READ_AP;
          end
          4'b0110: begin
            m.cmd=COL_WRITE;
            if(intf.mon_ck.cmd_payload_a[10]==1'b1) m.cmd=COL_WRITE_AP;
          end
          4'b0111: begin
            m.cmd=MASKED_WRITE;
            if(intf.mon_ck.cmd_payload_a[10]==1'b1) m.cmd=MASKED_WRITE_AP;
          end
          default: m.cmd=ERROR_0;
        endcase
        m.address = intf.mon_ck.cmd_payload_a;
        m.bank=intf.mon_ck.cmd_payload_ba;
        m.t=$time;
        mon_cmd_port.write(m);
        `uvm_info(get_type_name(), $sformatf("Time %0t Monitored BM cmd %s at bank %h, address %h", m.t ,DDR_CMD[m.cmd],m.bank,m.address), UVM_HIGH)

        //check timing
        this.check_bm_timing(m,m_last);
        m_last=m;
      end
    endtask
  endclass: bm_monitor
  
  class refresher_monitor extends uvm_monitor;
    virtual cmd_rw_interface intf;
    uvm_analysis_port #(cmd_t) mon_cmd_port;
    cmd_t m_last;

    `uvm_component_utils(refresher_monitor)

    function new(string name="refresher_monitor", uvm_component parent);
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

    /*
    task check_cycle(int cycle_interval,int cycle_cst,string cmd_a,string cmd_b,string timing_name);
      if(cycle_interval<cycle_cst) begin
        `uvm_error($sformatf("%s VIOLATION",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d nCK < %s= %0d nCK.",cmd_b,cmd_a,cycle_interval, timing_name,cycle_cst))
      end else begin
        `uvm_info($sformatf("%s MET",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d nCK >= %s= %0d nCK.",cmd_b,cmd_a,cycle_interval, timing_name,cycle_cst),UVM_HIGH)
      end
    endtask

    task check_timing(time t_diff,time t_cst,string cmd_a,string cmd_b,string timing_name);
      if(t_diff<t_cst) begin
        `uvm_error($sformatf("%s VIOLATION",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d ns < %s= %0d ns.",cmd_b,cmd_a,t_diff, timing_name,t_cst))
      end else begin
        `uvm_info($sformatf("%s MET",timing_name), $sformatf("[SB]Time interval between %s and %s is %0d ns >= %s= %0d ns.",cmd_b,cmd_a,t_diff, timing_name,t_cst),UVM_HIGH)
      end
    endtask

    task check_bm_timing(cmd_t m,cmd_t m_last);
      int cycle_interval;
      int t_diff;
      t_diff=m.t-m_last.t;//t ns
      cycle_interval=(m.t-m_last.t)/2; // system clock cycle
      case(m_last.cmd) 
          COL_READ_AP: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_cycle(cycle_interval,(tRTP_sb+tRP),DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTP_sb+tRP");
              end
              PRECHARGE: begin
                this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          default:begin
          end
      endcase
    endtask
    */
    task mon_trans();
      cmd_t m;
      m_last.cmd=ERROR_1;
      forever begin
        @(posedge intf.clk iff (intf.mon_ck.cmd_valid===1'b1 && intf.mon_ck.cmd_ready===1'b1 &&intf.mon_ck.cmd_payload_ras==1'b1));
        case({intf.mon_ck.cmd_payload_ras,intf.mon_ck.cmd_payload_cas,intf.mon_ck.cmd_payload_we})
          3'b101: m.cmd=PRECHARGE_ALL;
          3'b110: m.cmd=REFRESH_ALL;
          default: m.cmd=ERROR_0;
        endcase
        m.address=intf.mon_ck.cmd_payload_a;
        m.t=$time;
        mon_cmd_port.write(m);
        `uvm_info(get_type_name(), $sformatf("Time %0t Monitored BM cmd %s at address %h", m.t ,DDR_CMD[m.cmd],m.address), UVM_HIGH)
        //check timing
        //this.check_bm_timing(m,m_last);
        m_last=m;
      end
    endtask
  endclass: refresher_monitor

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
    time t;
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
    dfi_cmd_t m;
    dfi_cmd_t m_last;
    time last_activate_cmd=0;
    time last_activate_cmd_pb[8]={0,0,0,0,0,0,0,0};

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
    //update cmd and check DFI timing
    task update_cmd(dfi_cmd_t m0,dfi_cmd_t m1,dfi_cmd_t m2,dfi_cmd_t m3);
      int valid_num=0;
      if(m0.cmd!=ERROR_0) begin
        m.cmd=m0.cmd;
        m.t=m0.t;
        m.bank=m0.bank;
        m.address=m0.address;
        valid_num+=1;
      end else if(m1.cmd!=ERROR_0) begin
        m.cmd=m1.cmd;
        m.t=m1.t;
        m.bank=m1.bank;
        m.address=m1.address;
        valid_num+=1;
      end else if(m2.cmd!=ERROR_0) begin
        m.cmd=m2.cmd;
        m.t=m2.t;
        m.bank=m2.bank;
        m.address=m2.address;
        valid_num+=1;
      end else if(m3.cmd!=ERROR_0) begin
        m.cmd=m3.cmd;
        m.t=m3.t;
        m.bank=m3.bank;
        m.address=m3.address;
        valid_num+=1;
      end

      if(valid_num==1) begin
        this.check_dfi_timing(m,m_last);
        m_last=m;
      end else if(valid_num>1) begin
        `uvm_error("DFI COMMAND OVERLAP", "DFI COMMAND OVERLAP DETECTED")
      end
    endtask

    task check_tRRD(time t,time t_last);
      int t_diff;
      t_diff=t-t_last;
      if(t_diff<tRRD_ns) begin
        `uvm_error("tRRD VIOLATION", $sformatf("[DB]Time interval between ACTIVATE and ACTIVATE is %0d ns < tRRD= %0d ns.", t_diff, tRRD_ns))
      end else begin
        `uvm_info("tRRD MET", $sformatf("[DB]Time interval between ACTIVATE and ACTIVATE is %0d ns >= tRRD= %0d ns.",t_diff, tRRD_ns),UVM_HIGH)
      end
    endtask

    task check_tFAW();
      int i=0;
      int j=0;
      int t_diff;
      time sorted_time[8];
      time temp;
      for(i=0;i<8;i++) begin
        sorted_time[i]=last_activate_cmd_pb[i];
      end
      for(i=8;i>1;i--) begin
        for(j=0;j<i;j++) begin
          if(sorted_time[j]<sorted_time[j+1]) begin
            temp=sorted_time[j+1];
            sorted_time[j+1]=sorted_time[j];
            sorted_time[j]=temp;
          end
        end
      end

      if(sorted_time[4]!=0) begin
        t_diff=sorted_time[0]-sorted_time[4];
        if(t_diff<tFAW_ns) begin
          `uvm_error("tFAW VIOLATION", $sformatf("[FAW]Current Four Activate Bank window is %0d ns < tFAW= %0d ns.", t_diff, tFAW_ns))
        end else begin
          `uvm_info("tFAW MET", $sformatf("[FAW]Current Four Activate Bank window is %0d ns >= tFAW= %0d ns.",t_diff, tFAW_ns),UVM_HIGH)
        end
      end
    endtask

    task check_tRC(time t,time t_last);
      int t_diff;
      t_diff=t-t_last;
      if(t_diff<tRC_ns) begin
        `uvm_error("tRC VIOLATION", $sformatf("[SB]Time interval ACTIVATE and ACTIVATE is %0d ns < tRC= %0d ns.", t_diff, tRC_ns))
      end else begin
        `uvm_info("tRC MET", $sformatf("[SB]Time interval between ACTIVATE and ACTIVATE is %0d ns >= tRC= %0d ns.",t_diff, tRC_ns),UVM_HIGH)
      end
    endtask

    task check_cycle(int cycle_interval,int cycle_cst,string cmd_a,string cmd_b,string timing_name);
      if(cycle_interval<cycle_cst) begin
        `uvm_error($sformatf("DFI %s VIOLATION",timing_name), $sformatf("[DFI]Time interval between %s and %s is %0d nCK < %s= %0d nCK.",cmd_b,cmd_a,cycle_interval, timing_name,cycle_cst))
      end else begin
        `uvm_info($sformatf("DFI %s MET",timing_name), $sformatf("[DFI]Time interval between %s and %s is %0d nCK >= %s= %0d nCK.",cmd_b,cmd_a,cycle_interval, timing_name,cycle_cst),UVM_HIGH)
      end
    endtask

    task check_timing(time t_diff,time t_cst,string cmd_a,string cmd_b,string timing_name);
      if(t_diff<t_cst) begin
        `uvm_error($sformatf("DFI %s VIOLATION",timing_name), $sformatf("[DFI]Time interval between %s and %s is %0d ns < %s= %0d ns.",cmd_b,cmd_a,t_diff, timing_name,t_cst))
      end else begin
        `uvm_info($sformatf("DFI %s MET",timing_name), $sformatf("[DFI]Time interval between %s and %s is %0d ns >= %s= %0d ns.",cmd_b,cmd_a,t_diff, timing_name,t_cst),UVM_HIGH)
      end
    endtask

    task check_dfi_timing(dfi_cmd_t m,dfi_cmd_t m_last);
      int cycle_interval;
      int t_diff;
      bit same_bank;
      same_bank=(m.bank==m_last.bank);
      t_diff=m.t-m_last.t;//t ns
      cycle_interval=(m.t-m_last.t)/2; // system clock cycle
      case(m_last.cmd) 
          COL_READ_AP: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) this.check_cycle(cycle_interval,(tRP+tRTP_sb),DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRP+tRTP_sb");
              end
              PRECHARGE: begin
                if (same_bank) this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI-SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end

          COL_WRITE_AP: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) this.check_cycle(cycle_interval,(tRP+tWTP_sb),DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRP+tWTP_sb");
              end
              PRECHARGE: begin
                if (same_bank) this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI-SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end

          MASKED_WRITE_AP: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) this.check_cycle(cycle_interval,(tRP+tWTP_sb),DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRP+tWTP_sb");
              end
              PRECHARGE: begin
                if (same_bank) this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI-SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end

          PRECHARGE: begin
            case(m.cmd)
              ACTIVATE: begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) this.check_timing(t_diff,tRP_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRP_ns");
              end
              PRECHARGE: begin
                if (same_bank) this.check_cycle(cycle_interval,tPP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tPP_sb");
              end
              default:begin
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI-SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          ACTIVATE: begin
            case(m.cmd)
              COL_READ: begin
                if(same_bank) this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              COL_WRITE: begin
                if(same_bank) this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              MASKED_WRITE: begin
                if(same_bank) this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              COL_READ_AP: begin
                if(same_bank) this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              COL_WRITE_AP: begin
                if(same_bank) this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              MASKED_WRITE_AP: begin
                if(same_bank) this.check_timing(t_diff,tRCD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRCD_ns");
              end
              PRECHARGE: begin
                if(same_bank) this.check_timing(t_diff,tRAS_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRAS_ns");
              end
              ACTIVATE: begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI-SB]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
                else begin
                  this.check_timing(t_diff,tRRD_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRRD_ns");
                end
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[DFI]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          COL_READ: begin
            case(m.cmd)
              PRECHARGE: begin
                if(same_bank) this.check_timing(t_diff,tRTP_ns,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTP_ns");
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              ACTIVATE:begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_READ: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_WRITE: begin
                this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              MASKED_WRITE: begin
                this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              COL_READ_AP: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_WRITE_AP: begin
                this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              MASKED_WRITE_AP: begin
                this.check_cycle(cycle_interval,tRTW_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tRTW_sb");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[DFI]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          COL_WRITE: begin
            case(m.cmd)
              PRECHARGE: begin
                if(same_bank) this.check_cycle(cycle_interval,tWTP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTP_sb");
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              ACTIVATE:begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_READ: begin
                this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_WRITE: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              MASKED_WRITE: begin
                if(same_bank) this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_READ_AP: begin
                this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_WRITE_AP: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              MASKED_WRITE_AP: begin
                if(same_bank) this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[DFI]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          MASKED_WRITE: begin
            case(m.cmd)
              PRECHARGE: begin
                if(same_bank) this.check_cycle(cycle_interval,tWTP_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTP_sb");
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              ACTIVATE:begin
                this.check_tRRD(m.t,last_activate_cmd);
                this.check_tRC(m.t,last_activate_cmd_pb[m.bank]);
                last_activate_cmd=m.t;
                last_activate_cmd_pb[m.bank]=m.t;
                this.check_tFAW();
                if(same_bank) `uvm_error("COMMAND VIOLATION", $sformatf("[DFI]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_READ: begin
                this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_WRITE: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              MASKED_WRITE: begin
                if(same_bank) this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              COL_READ_AP: begin
                this.check_cycle(cycle_interval,tWTR_sb,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tWTR_sb");
              end
              COL_WRITE_AP: begin
                this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              MASKED_WRITE_AP: begin
                if(same_bank) this.check_cycle(cycle_interval,tCCDMW,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCDMW");
                else this.check_cycle(cycle_interval,tCCD,DDR_CMD[m.cmd],DDR_CMD[m_last.cmd],"tCCD");
              end
              default:begin
                `uvm_error("COMMAND VIOLATION", $sformatf("[DFI]CMD VIOLATION BETWEEN %s and %s",DDR_CMD[m_last.cmd],DDR_CMD[m.cmd]))
              end
            endcase
          end
          default:begin
          end
      endcase
    endtask

    task mon_trans();
      dfi_cmd_t m0;
      dfi_cmd_t m1;
      dfi_cmd_t m2;
      dfi_cmd_t m3;
      
      m0.cmd=ERROR_0;
      m1.cmd=ERROR_0;
      m2.cmd=ERROR_0;
      m3.cmd=ERROR_0;

      m_last.cmd=ERROR_0;
      //p0
      forever begin
        @(posedge intf.clk iff ((intf.dfi_phase0_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase0_interface_if.mon_ck.cas_n==='b0)||(intf.dfi_phase1_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase1_interface_if.mon_ck.cas_n==='b0)||(intf.dfi_phase2_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase2_interface_if.mon_ck.cas_n==='b0)||(intf.dfi_phase3_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase3_interface_if.mon_ck.cas_n==='b0)));
        m0.cas_n = intf.dfi_phase0_interface_if.mon_ck.cas_n;
        m0.ras_n = intf.dfi_phase0_interface_if.mon_ck.ras_n;
        m0.we_n = intf.dfi_phase0_interface_if.mon_ck.we_n;
        m0.mw = intf.dfi_phase0_interface_if.mon_ck.mw;
        m0.bank= intf.dfi_phase0_interface_if.mon_ck.bank;
        m0.address = intf.dfi_phase0_interface_if.mon_ck.address;
        m0.t=$time;
        case({intf.dfi_phase0_interface_if.mon_ck.ras_n,intf.dfi_phase0_interface_if.mon_ck.cas_n,intf.dfi_phase0_interface_if.mon_ck.we_n,intf.dfi_phase0_interface_if.mon_ck.mw})
          4'b0011: m0.cmd=REFRESH_ALL;
          4'b0100: begin
            m0.cmd=PRECHARGE;
            if(intf.dfi_phase0_interface_if.mon_ck.address[10]==1'b1) m0.cmd=PRECHARGE_ALL;
          end
          4'b0110: m0.cmd=ACTIVATE;
          4'b1010: begin
            m0.cmd=COL_READ;
            if(intf.dfi_phase0_interface_if.mon_ck.address[10]==1'b1) m0.cmd=COL_READ_AP;
          end
          4'b1000: begin
            m0.cmd=COL_WRITE;
            if(intf.dfi_phase0_interface_if.mon_ck.address[10]==1'b1) m0.cmd=COL_WRITE_AP;
          end
          4'b1001: begin
            m0.cmd=MASKED_WRITE;
            if(intf.dfi_phase0_interface_if.mon_ck.address[10]==1'b1) m0.cmd=MASKED_WRITE_AP;
          end
          default: m0.cmd=ERROR_0;
        endcase
        if(m0.cmd!=ERROR_0) begin
          mon_dfi_port.write(m0);
          `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI p0 cmd %s at bank %d, address 0x%h", m0.t,DDR_CMD[m0.cmd],m0.bank,m0.address), UVM_HIGH)
        end
        //p1
        //@(posedge intf.clk iff ((intf.dfi_phase1_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase1_interface_if.mon_ck.cas_n==='b0)));
        m1.cas_n = intf.dfi_phase1_interface_if.mon_ck.cas_n;
        m1.ras_n = intf.dfi_phase1_interface_if.mon_ck.ras_n;
        m1.we_n = intf.dfi_phase1_interface_if.mon_ck.we_n;
        m1.mw = intf.dfi_phase1_interface_if.mon_ck.mw;
        m1.bank= intf.dfi_phase1_interface_if.mon_ck.bank;
        m1.address = intf.dfi_phase1_interface_if.mon_ck.address;
        m1.t=$time;
        case({intf.dfi_phase1_interface_if.mon_ck.ras_n,intf.dfi_phase1_interface_if.mon_ck.cas_n,intf.dfi_phase1_interface_if.mon_ck.we_n,intf.dfi_phase1_interface_if.mon_ck.mw})
          4'b0011: m1.cmd=REFRESH_ALL;
          4'b0100: begin
            m1.cmd=PRECHARGE;
            if(intf.dfi_phase1_interface_if.mon_ck.address[10]==1'b1) m1.cmd=PRECHARGE_ALL;
          end
          4'b0110: m1.cmd=ACTIVATE;
          4'b1010: begin
            m1.cmd=COL_READ;
            if(intf.dfi_phase1_interface_if.mon_ck.address[10]==1'b1) m1.cmd=COL_READ_AP;
          end
          4'b1000: begin
            m1.cmd=COL_WRITE;
            if(intf.dfi_phase1_interface_if.mon_ck.address[10]==1'b1) m1.cmd=COL_WRITE_AP;
          end
          4'b1001: begin
            m1.cmd=MASKED_WRITE;
            if(intf.dfi_phase1_interface_if.mon_ck.address[10]==1'b1) m1.cmd=MASKED_WRITE_AP;
          end
          default: m1.cmd=ERROR_0;
        endcase
        if(m1.cmd!=ERROR_0) begin
          mon_dfi_port.write(m1);
          `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI p1 cmd %s at bank %d, address 0x%h",m1.t, DDR_CMD[m1.cmd],m1.bank,m1.address), UVM_HIGH)
        end

        //p2
        //@(posedge intf.clk iff ((intf.dfi_phase2_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase2_interface_if.mon_ck.cas_n==='b0)));
        m2.cas_n = intf.dfi_phase2_interface_if.mon_ck.cas_n;
        m2.ras_n = intf.dfi_phase2_interface_if.mon_ck.ras_n;
        m2.we_n = intf.dfi_phase2_interface_if.mon_ck.we_n;
        m2.mw = intf.dfi_phase2_interface_if.mon_ck.mw;
        m2.bank= intf.dfi_phase2_interface_if.mon_ck.bank;
        m2.address = intf.dfi_phase2_interface_if.mon_ck.address;
        m2.t=$time;
        case({intf.dfi_phase2_interface_if.mon_ck.ras_n,intf.dfi_phase2_interface_if.mon_ck.cas_n,intf.dfi_phase2_interface_if.mon_ck.we_n,intf.dfi_phase2_interface_if.mon_ck.mw})
          4'b0011: m2.cmd=REFRESH_ALL;
          4'b0100: begin
            m2.cmd=PRECHARGE;
            if(intf.dfi_phase2_interface_if.mon_ck.address[10]==1'b1) m2.cmd=PRECHARGE_ALL;
          end
          4'b0110: m2.cmd=ACTIVATE;
          4'b1010: begin
            m2.cmd=COL_READ;
            if(intf.dfi_phase2_interface_if.mon_ck.address[10]==1'b1) m2.cmd=COL_READ_AP;
          end
          4'b1000: begin
            m2.cmd=COL_WRITE;
            if(intf.dfi_phase2_interface_if.mon_ck.address[10]==1'b1) m2.cmd=COL_WRITE_AP;
          end
          4'b1001: begin
            m2.cmd=MASKED_WRITE;
            if(intf.dfi_phase2_interface_if.mon_ck.address[10]==1'b1) m2.cmd=MASKED_WRITE_AP;
          end
          default: m2.cmd=ERROR_0;
        endcase
        if(m2.cmd!=ERROR_0) begin
          mon_dfi_port.write(m2);
          `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI p2 cmd %s at bank %d, address 0x%h", m2.t,DDR_CMD[m2.cmd],m2.bank,m2.address), UVM_HIGH)
        end
        //p3
        //@(posedge intf.clk iff ((intf.dfi_phase3_interface_if.mon_ck.ras_n==='b0)||(intf.dfi_phase3_interface_if.mon_ck.cas_n==='b0)));
        m3.cas_n = intf.dfi_phase3_interface_if.mon_ck.cas_n;
        m3.ras_n = intf.dfi_phase3_interface_if.mon_ck.ras_n;
        m3.we_n = intf.dfi_phase3_interface_if.mon_ck.we_n;
        m3.mw = intf.dfi_phase3_interface_if.mon_ck.mw;
        m3.bank= intf.dfi_phase3_interface_if.mon_ck.bank;
        m3.address = intf.dfi_phase3_interface_if.mon_ck.address;
        m3.t=$time;
        case({intf.dfi_phase3_interface_if.mon_ck.ras_n,intf.dfi_phase3_interface_if.mon_ck.cas_n,intf.dfi_phase3_interface_if.mon_ck.we_n,intf.dfi_phase3_interface_if.mon_ck.mw})
          4'b0011: m3.cmd=REFRESH_ALL;
          4'b0100: begin
            m3.cmd=PRECHARGE;
            if(intf.dfi_phase3_interface_if.mon_ck.address[10]==1'b1) m3.cmd=PRECHARGE_ALL;
          end
          4'b0110: m3.cmd=ACTIVATE;
          4'b1010: begin
            m3.cmd=COL_READ;
            if(intf.dfi_phase3_interface_if.mon_ck.address[10]==1'b1) m3.cmd=COL_READ_AP;
          end
          4'b1000: begin
            m3.cmd=COL_WRITE;
            if(intf.dfi_phase3_interface_if.mon_ck.address[10]==1'b1) m3.cmd=COL_WRITE_AP;
          end
          4'b1001: begin
            m3.cmd=MASKED_WRITE;
            if(intf.dfi_phase3_interface_if.mon_ck.address[10]==1'b1) m3.cmd=MASKED_WRITE_AP;
          end
          default: m3.cmd=ERROR_0;
        endcase
        if(m3.cmd!=ERROR_0) begin
          mon_dfi_port.write(m3);
          `uvm_info(get_type_name(), $sformatf("Time: %0t monitored DFI p3 cmd %s at bank %d, address 0x%h",m3.t,DDR_CMD[m3.cmd],m3.bank,m3.address), UVM_HIGH)
        end

        //this.update_cmd(m0,m1,m2,m3);
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
    uvm_tlm_analysis_fifo #(cmd_t) in_tlm_fifo_refresher;
    uvm_tlm_analysis_fifo #(dfi_cmd_t) out_tlm_fifo;

    `uvm_component_utils(dfi_checker)

    function new (string name = "dfi_checker", uvm_component parent);
      super.new(name, parent);
      foreach(in_tlm_fifos[i]) in_tlm_fifos[i] = new($sformatf("in_tlm_fifos[%0d]", i), this);
      in_tlm_fifo_refresher= new("in_tlm_fifo_refresher", this);
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
        if((om.cmd==PRECHARGE_ALL)||(om.cmd==REFRESH_ALL)) begin
          in_tlm_fifo_refresher.get(im);
        end else begin
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
        end
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
    refresher_monitor refresher_mon;
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
      this.refresher_mon = refresher_monitor::type_id::create("refresher_mon", this);
      //this.dfi_cvrg = dfi_coverage::type_id::create("dfi_cvrg", this);
      virt_sqr = multiplexer_virtual_sequencer::type_id::create("virt_sqr", this);
    endfunction

    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      foreach(agents[i]) begin
        this.agents[i].monitor.mon_cmd_port.connect(this.dfi_chker.in_tlm_fifos[i].analysis_export);
      end
      this.dfi_mon.mon_dfi_port.connect(this.dfi_chker.out_tlm_fifo.analysis_export);
      this.refresher_mon.mon_cmd_port.connect(this.dfi_chker.in_tlm_fifo_refresher.analysis_export);
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
    virtual cmd_rw_interface refresher_vif;
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
        `uvm_fatal("GETVIF","cannot get dfi vif handle from config DB")
      end
      if(!uvm_config_db#(virtual cmd_rw_interface)::get(this,"","refresher_vif", refresher_vif)) begin
        `uvm_fatal("GETVIF","cannot get refresher vif handle from config DB")
      end
      env = multiplexer_env::type_id::create("env", this);
    endfunction

    function void connect_phase(uvm_phase phase);
      super.connect_phase(phase);
      // After get virtual interface from config_db, and then set them to
      // child components
      this.set_interface(bm0_vif, bm1_vif, bm2_vif, bm3_vif, bm4_vif, bm5_vif, bm6_vif,bm7_vif,refresher_vif,dfi_vif);
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
                                        ,virtual cmd_rw_interface refresher_vif
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
      this.env.refresher_mon.set_interface(refresher_vif);
      this.env.dfi_mon.set_interface(dfi_vif);
      this.env.dfi_chker.set_interface(dfi_vif,'{bm0_vif, bm1_vif, bm2_vif,bm3_vif, bm4_vif, bm5_vif,bm6_vif, bm7_vif});
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
                        {ntrans== 200; bank_address==0;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[1], 
                        {ntrans== 200; bank_address==1;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[2], 
                        {ntrans== 200; bank_address==2;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[3], 
                        {ntrans== 200; bank_address==3;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[4], 
                        {ntrans== 200; bank_address==4;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[5], 
                        {ntrans== 200; bank_address==5;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[6], 
                        {ntrans== 200; bank_address==6;cmd_size==6;}
                       )
        `uvm_do_on_with(bm_cmd_seq, p_sequencer.bm_sqrs[7], 
                        {ntrans== 200; bank_address==7;cmd_size==6;}
                       )
       
      join
      #10us; // wait until all data haven been transfered
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