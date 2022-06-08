/* Machine-generated using Migen */
module litedram_core(
	output reg [16:0] dfi_p0_address,
	output reg [2:0] dfi_p0_bank,
	output reg dfi_p0_cas_n,
	output reg dfi_p0_cs_n,
	output reg dfi_p0_ras_n,
	output reg dfi_p0_we_n,
	output dfi_p0_cke,
	output dfi_p0_odt,
	output dfi_p0_reset_n,
	input dfi_p0_act_n,
	output [63:0] dfi_p0_wrdata,
	output reg dfi_p0_wrdata_en,
	output [7:0] dfi_p0_wrdata_mask,
	output reg dfi_p0_rddata_en,
	input [63:0] dfi_p0_rddata,
	input dfi_p0_rddata_valid,
	output reg [16:0] dfi_p1_address,
	output reg [2:0] dfi_p1_bank,
	output reg dfi_p1_cas_n,
	output reg dfi_p1_cs_n,
	output reg dfi_p1_ras_n,
	output reg dfi_p1_we_n,
	output dfi_p1_cke,
	output dfi_p1_odt,
	output dfi_p1_reset_n,
	input dfi_p1_act_n,
	output [63:0] dfi_p1_wrdata,
	output reg dfi_p1_wrdata_en,
	output [7:0] dfi_p1_wrdata_mask,
	output reg dfi_p1_rddata_en,
	input [63:0] dfi_p1_rddata,
	input dfi_p1_rddata_valid,
	output reg [16:0] dfi_p2_address,
	output reg [2:0] dfi_p2_bank,
	output reg dfi_p2_cas_n,
	output reg dfi_p2_cs_n,
	output reg dfi_p2_ras_n,
	output reg dfi_p2_we_n,
	output dfi_p2_cke,
	output dfi_p2_odt,
	output dfi_p2_reset_n,
	input dfi_p2_act_n,
	output [63:0] dfi_p2_wrdata,
	output reg dfi_p2_wrdata_en,
	output [7:0] dfi_p2_wrdata_mask,
	output reg dfi_p2_rddata_en,
	input [63:0] dfi_p2_rddata,
	input dfi_p2_rddata_valid,
	output reg [16:0] dfi_p3_address,
	output reg [2:0] dfi_p3_bank,
	output reg dfi_p3_cas_n,
	output reg dfi_p3_cs_n,
	output reg dfi_p3_ras_n,
	output reg dfi_p3_we_n,
	output dfi_p3_cke,
	output dfi_p3_odt,
	output dfi_p3_reset_n,
	input dfi_p3_act_n,
	output [63:0] dfi_p3_wrdata,
	output reg dfi_p3_wrdata_en,
	output [7:0] dfi_p3_wrdata_mask,
	output reg dfi_p3_rddata_en,
	input [63:0] dfi_p3_rddata,
	input dfi_p3_rddata_valid,
	input axi_aw_valid,
	output axi_aw_ready,
	input axi_aw_first,
	input axi_aw_last,
	input [31:0] axi_aw_payload_addr,
	input [1:0] axi_aw_payload_burst,
	input [7:0] axi_aw_payload_len,
	input [3:0] axi_aw_payload_size,
	input [1:0] axi_aw_payload_lock,
	input [2:0] axi_aw_payload_prot,
	input [3:0] axi_aw_payload_cache,
	input [3:0] axi_aw_payload_qos,
	input axi_aw_payload_id,
	input axi_w_valid,
	output reg axi_w_ready,
	input axi_w_first,
	input axi_w_last,
	input [255:0] axi_w_payload_data,
	input [31:0] axi_w_payload_strb,
	input axi_w_payload_id,
	output axi_b_valid,
	input axi_b_ready,
	output axi_b_first,
	output axi_b_last,
	output [1:0] axi_b_payload_resp,
	output axi_b_payload_id,
	input axi_ar_valid,
	output axi_ar_ready,
	input axi_ar_first,
	input axi_ar_last,
	input [31:0] axi_ar_payload_addr,
	input [1:0] axi_ar_payload_burst,
	input [7:0] axi_ar_payload_len,
	input [3:0] axi_ar_payload_size,
	input [1:0] axi_ar_payload_lock,
	input [2:0] axi_ar_payload_prot,
	input [3:0] axi_ar_payload_cache,
	input [3:0] axi_ar_payload_qos,
	input axi_ar_payload_id,
	output axi_r_valid,
	input axi_r_ready,
	output axi_r_first,
	output axi_r_last,
	output reg [1:0] axi_r_payload_resp,
	output [255:0] axi_r_payload_data,
	output axi_r_payload_id,
	input [31:0] wishbone_adr,
	input [255:0] wishbone_dat_w,
	output reg [255:0] wishbone_dat_r,
	input [31:0] wishbone_sel,
	input wishbone_cyc,
	input wishbone_stb,
	output reg wishbone_ack,
	input wishbone_we,
	input [2:0] wishbone_cti,
	input [1:0] wishbone_bte,
	input wishbone_err,
	input sys_clk,
	input sys_rst
);

reg main_interface_bank0_valid;
wire main_interface_bank0_ready;
reg main_interface_bank0_we;
reg [22:0] main_interface_bank0_addr;
wire main_interface_bank0_lock;
wire main_interface_bank0_wdata_ready;
wire main_interface_bank0_rdata_valid;
reg main_interface_bank1_valid;
wire main_interface_bank1_ready;
reg main_interface_bank1_we;
reg [22:0] main_interface_bank1_addr;
wire main_interface_bank1_lock;
wire main_interface_bank1_wdata_ready;
wire main_interface_bank1_rdata_valid;
reg main_interface_bank2_valid;
wire main_interface_bank2_ready;
reg main_interface_bank2_we;
reg [22:0] main_interface_bank2_addr;
wire main_interface_bank2_lock;
wire main_interface_bank2_wdata_ready;
wire main_interface_bank2_rdata_valid;
reg main_interface_bank3_valid;
wire main_interface_bank3_ready;
reg main_interface_bank3_we;
reg [22:0] main_interface_bank3_addr;
wire main_interface_bank3_lock;
wire main_interface_bank3_wdata_ready;
wire main_interface_bank3_rdata_valid;
reg main_interface_bank4_valid;
wire main_interface_bank4_ready;
reg main_interface_bank4_we;
reg [22:0] main_interface_bank4_addr;
wire main_interface_bank4_lock;
wire main_interface_bank4_wdata_ready;
wire main_interface_bank4_rdata_valid;
reg main_interface_bank5_valid;
wire main_interface_bank5_ready;
reg main_interface_bank5_we;
reg [22:0] main_interface_bank5_addr;
wire main_interface_bank5_lock;
wire main_interface_bank5_wdata_ready;
wire main_interface_bank5_rdata_valid;
reg main_interface_bank6_valid;
wire main_interface_bank6_ready;
reg main_interface_bank6_we;
reg [22:0] main_interface_bank6_addr;
wire main_interface_bank6_lock;
wire main_interface_bank6_wdata_ready;
wire main_interface_bank6_rdata_valid;
reg main_interface_bank7_valid;
wire main_interface_bank7_ready;
reg main_interface_bank7_we;
reg [22:0] main_interface_bank7_addr;
wire main_interface_bank7_lock;
wire main_interface_bank7_wdata_ready;
wire main_interface_bank7_rdata_valid;
reg [255:0] main_interface_wdata;
reg [31:0] main_interface_wdata_we;
wire [255:0] main_interface_rdata;
reg main_cmd_valid;
reg main_cmd_ready;
reg main_cmd_last;
reg [16:0] main_cmd_payload_a = 17'd0;
reg [2:0] main_cmd_payload_ba = 3'd0;
reg main_cmd_payload_cas = 1'd0;
reg main_cmd_payload_ras = 1'd0;
reg main_cmd_payload_we = 1'd0;
reg main_cmd_payload_is_read = 1'd0;
reg main_cmd_payload_is_write = 1'd0;
wire main_wants_refresh;
wire main_timer_wait;
wire main_timer_done0;
wire [11:0] main_timer_count0;
wire main_timer_done1;
reg [11:0] main_timer_count1 = 12'd2082;
wire main_postponer_req_i;
reg main_postponer_req_o = 1'd0;
reg main_postponer_count = 1'd0;
reg main_sequencer_start0;
wire main_sequencer_done0;
wire main_sequencer_start1;
reg main_sequencer_done1 = 1'd0;
reg [6:0] main_sequencer_counter = 7'd0;
reg main_sequencer_count = 1'd0;
wire main_bankmachine0_req_valid;
wire main_bankmachine0_req_ready;
wire main_bankmachine0_req_we;
wire [22:0] main_bankmachine0_req_addr;
wire main_bankmachine0_req_lock;
reg main_bankmachine0_req_wdata_ready;
reg main_bankmachine0_req_rdata_valid;
wire main_bankmachine0_refresh_req;
reg main_bankmachine0_refresh_gnt;
reg main_bankmachine0_cmd_valid;
reg main_bankmachine0_cmd_ready;
reg [16:0] main_bankmachine0_cmd_payload_a;
wire [2:0] main_bankmachine0_cmd_payload_ba;
reg main_bankmachine0_cmd_payload_cas;
reg main_bankmachine0_cmd_payload_ras;
reg main_bankmachine0_cmd_payload_we;
reg main_bankmachine0_cmd_payload_is_cmd;
reg main_bankmachine0_cmd_payload_is_read;
reg main_bankmachine0_cmd_payload_is_write;
reg main_bankmachine0_auto_precharge;
wire main_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine0_cmd_buffer_lookahead_source_valid;
wire main_bankmachine0_cmd_buffer_lookahead_source_ready;
wire main_bankmachine0_cmd_buffer_lookahead_source_first;
wire main_bankmachine0_cmd_buffer_lookahead_source_last;
wire main_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire main_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire main_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire main_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [25:0] main_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [25:0] main_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] main_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine0_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine0_cmd_buffer_sink_valid;
wire main_bankmachine0_cmd_buffer_sink_ready;
wire main_bankmachine0_cmd_buffer_sink_first;
wire main_bankmachine0_cmd_buffer_sink_last;
wire main_bankmachine0_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine0_cmd_buffer_sink_payload_addr;
reg main_bankmachine0_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine0_cmd_buffer_source_ready;
reg main_bankmachine0_cmd_buffer_source_first = 1'd0;
reg main_bankmachine0_cmd_buffer_source_last = 1'd0;
reg main_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine0_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine0_row = 17'd0;
reg main_bankmachine0_row_opened = 1'd0;
wire main_bankmachine0_row_hit;
reg main_bankmachine0_row_open;
reg main_bankmachine0_row_close;
reg main_bankmachine0_row_col_n_addr_sel;
wire main_bankmachine0_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine0_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine0_twtpcon_count = 5'd0;
wire main_bankmachine0_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine0_trccon_ready = 1'd0;
reg [5:0] main_bankmachine0_trccon_count = 6'd0;
wire main_bankmachine0_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine0_trascon_ready = 1'd0;
reg [4:0] main_bankmachine0_trascon_count = 5'd0;
wire main_bankmachine1_req_valid;
wire main_bankmachine1_req_ready;
wire main_bankmachine1_req_we;
wire [22:0] main_bankmachine1_req_addr;
wire main_bankmachine1_req_lock;
reg main_bankmachine1_req_wdata_ready;
reg main_bankmachine1_req_rdata_valid;
wire main_bankmachine1_refresh_req;
reg main_bankmachine1_refresh_gnt;
reg main_bankmachine1_cmd_valid;
reg main_bankmachine1_cmd_ready;
reg [16:0] main_bankmachine1_cmd_payload_a;
wire [2:0] main_bankmachine1_cmd_payload_ba;
reg main_bankmachine1_cmd_payload_cas;
reg main_bankmachine1_cmd_payload_ras;
reg main_bankmachine1_cmd_payload_we;
reg main_bankmachine1_cmd_payload_is_cmd;
reg main_bankmachine1_cmd_payload_is_read;
reg main_bankmachine1_cmd_payload_is_write;
reg main_bankmachine1_auto_precharge;
wire main_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine1_cmd_buffer_lookahead_source_valid;
wire main_bankmachine1_cmd_buffer_lookahead_source_ready;
wire main_bankmachine1_cmd_buffer_lookahead_source_first;
wire main_bankmachine1_cmd_buffer_lookahead_source_last;
wire main_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire main_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire main_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire main_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [25:0] main_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [25:0] main_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] main_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine1_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine1_cmd_buffer_sink_valid;
wire main_bankmachine1_cmd_buffer_sink_ready;
wire main_bankmachine1_cmd_buffer_sink_first;
wire main_bankmachine1_cmd_buffer_sink_last;
wire main_bankmachine1_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine1_cmd_buffer_sink_payload_addr;
reg main_bankmachine1_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine1_cmd_buffer_source_ready;
reg main_bankmachine1_cmd_buffer_source_first = 1'd0;
reg main_bankmachine1_cmd_buffer_source_last = 1'd0;
reg main_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine1_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine1_row = 17'd0;
reg main_bankmachine1_row_opened = 1'd0;
wire main_bankmachine1_row_hit;
reg main_bankmachine1_row_open;
reg main_bankmachine1_row_close;
reg main_bankmachine1_row_col_n_addr_sel;
wire main_bankmachine1_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine1_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine1_twtpcon_count = 5'd0;
wire main_bankmachine1_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine1_trccon_ready = 1'd0;
reg [5:0] main_bankmachine1_trccon_count = 6'd0;
wire main_bankmachine1_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine1_trascon_ready = 1'd0;
reg [4:0] main_bankmachine1_trascon_count = 5'd0;
wire main_bankmachine2_req_valid;
wire main_bankmachine2_req_ready;
wire main_bankmachine2_req_we;
wire [22:0] main_bankmachine2_req_addr;
wire main_bankmachine2_req_lock;
reg main_bankmachine2_req_wdata_ready;
reg main_bankmachine2_req_rdata_valid;
wire main_bankmachine2_refresh_req;
reg main_bankmachine2_refresh_gnt;
reg main_bankmachine2_cmd_valid;
reg main_bankmachine2_cmd_ready;
reg [16:0] main_bankmachine2_cmd_payload_a;
wire [2:0] main_bankmachine2_cmd_payload_ba;
reg main_bankmachine2_cmd_payload_cas;
reg main_bankmachine2_cmd_payload_ras;
reg main_bankmachine2_cmd_payload_we;
reg main_bankmachine2_cmd_payload_is_cmd;
reg main_bankmachine2_cmd_payload_is_read;
reg main_bankmachine2_cmd_payload_is_write;
reg main_bankmachine2_auto_precharge;
wire main_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine2_cmd_buffer_lookahead_source_valid;
wire main_bankmachine2_cmd_buffer_lookahead_source_ready;
wire main_bankmachine2_cmd_buffer_lookahead_source_first;
wire main_bankmachine2_cmd_buffer_lookahead_source_last;
wire main_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire main_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire main_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire main_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [25:0] main_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [25:0] main_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] main_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine2_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine2_cmd_buffer_sink_valid;
wire main_bankmachine2_cmd_buffer_sink_ready;
wire main_bankmachine2_cmd_buffer_sink_first;
wire main_bankmachine2_cmd_buffer_sink_last;
wire main_bankmachine2_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine2_cmd_buffer_sink_payload_addr;
reg main_bankmachine2_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine2_cmd_buffer_source_ready;
reg main_bankmachine2_cmd_buffer_source_first = 1'd0;
reg main_bankmachine2_cmd_buffer_source_last = 1'd0;
reg main_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine2_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine2_row = 17'd0;
reg main_bankmachine2_row_opened = 1'd0;
wire main_bankmachine2_row_hit;
reg main_bankmachine2_row_open;
reg main_bankmachine2_row_close;
reg main_bankmachine2_row_col_n_addr_sel;
wire main_bankmachine2_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine2_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine2_twtpcon_count = 5'd0;
wire main_bankmachine2_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine2_trccon_ready = 1'd0;
reg [5:0] main_bankmachine2_trccon_count = 6'd0;
wire main_bankmachine2_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine2_trascon_ready = 1'd0;
reg [4:0] main_bankmachine2_trascon_count = 5'd0;
wire main_bankmachine3_req_valid;
wire main_bankmachine3_req_ready;
wire main_bankmachine3_req_we;
wire [22:0] main_bankmachine3_req_addr;
wire main_bankmachine3_req_lock;
reg main_bankmachine3_req_wdata_ready;
reg main_bankmachine3_req_rdata_valid;
wire main_bankmachine3_refresh_req;
reg main_bankmachine3_refresh_gnt;
reg main_bankmachine3_cmd_valid;
reg main_bankmachine3_cmd_ready;
reg [16:0] main_bankmachine3_cmd_payload_a;
wire [2:0] main_bankmachine3_cmd_payload_ba;
reg main_bankmachine3_cmd_payload_cas;
reg main_bankmachine3_cmd_payload_ras;
reg main_bankmachine3_cmd_payload_we;
reg main_bankmachine3_cmd_payload_is_cmd;
reg main_bankmachine3_cmd_payload_is_read;
reg main_bankmachine3_cmd_payload_is_write;
reg main_bankmachine3_auto_precharge;
wire main_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine3_cmd_buffer_lookahead_source_valid;
wire main_bankmachine3_cmd_buffer_lookahead_source_ready;
wire main_bankmachine3_cmd_buffer_lookahead_source_first;
wire main_bankmachine3_cmd_buffer_lookahead_source_last;
wire main_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire main_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire main_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire main_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [25:0] main_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [25:0] main_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] main_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine3_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine3_cmd_buffer_sink_valid;
wire main_bankmachine3_cmd_buffer_sink_ready;
wire main_bankmachine3_cmd_buffer_sink_first;
wire main_bankmachine3_cmd_buffer_sink_last;
wire main_bankmachine3_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine3_cmd_buffer_sink_payload_addr;
reg main_bankmachine3_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine3_cmd_buffer_source_ready;
reg main_bankmachine3_cmd_buffer_source_first = 1'd0;
reg main_bankmachine3_cmd_buffer_source_last = 1'd0;
reg main_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine3_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine3_row = 17'd0;
reg main_bankmachine3_row_opened = 1'd0;
wire main_bankmachine3_row_hit;
reg main_bankmachine3_row_open;
reg main_bankmachine3_row_close;
reg main_bankmachine3_row_col_n_addr_sel;
wire main_bankmachine3_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine3_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine3_twtpcon_count = 5'd0;
wire main_bankmachine3_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine3_trccon_ready = 1'd0;
reg [5:0] main_bankmachine3_trccon_count = 6'd0;
wire main_bankmachine3_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine3_trascon_ready = 1'd0;
reg [4:0] main_bankmachine3_trascon_count = 5'd0;
wire main_bankmachine4_req_valid;
wire main_bankmachine4_req_ready;
wire main_bankmachine4_req_we;
wire [22:0] main_bankmachine4_req_addr;
wire main_bankmachine4_req_lock;
reg main_bankmachine4_req_wdata_ready;
reg main_bankmachine4_req_rdata_valid;
wire main_bankmachine4_refresh_req;
reg main_bankmachine4_refresh_gnt;
reg main_bankmachine4_cmd_valid;
reg main_bankmachine4_cmd_ready;
reg [16:0] main_bankmachine4_cmd_payload_a;
wire [2:0] main_bankmachine4_cmd_payload_ba;
reg main_bankmachine4_cmd_payload_cas;
reg main_bankmachine4_cmd_payload_ras;
reg main_bankmachine4_cmd_payload_we;
reg main_bankmachine4_cmd_payload_is_cmd;
reg main_bankmachine4_cmd_payload_is_read;
reg main_bankmachine4_cmd_payload_is_write;
reg main_bankmachine4_auto_precharge;
wire main_bankmachine4_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine4_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine4_cmd_buffer_lookahead_source_valid;
wire main_bankmachine4_cmd_buffer_lookahead_source_ready;
wire main_bankmachine4_cmd_buffer_lookahead_source_first;
wire main_bankmachine4_cmd_buffer_lookahead_source_last;
wire main_bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire main_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire main_bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire main_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [25:0] main_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [25:0] main_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] main_bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine4_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine4_cmd_buffer_sink_valid;
wire main_bankmachine4_cmd_buffer_sink_ready;
wire main_bankmachine4_cmd_buffer_sink_first;
wire main_bankmachine4_cmd_buffer_sink_last;
wire main_bankmachine4_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine4_cmd_buffer_sink_payload_addr;
reg main_bankmachine4_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine4_cmd_buffer_source_ready;
reg main_bankmachine4_cmd_buffer_source_first = 1'd0;
reg main_bankmachine4_cmd_buffer_source_last = 1'd0;
reg main_bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine4_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine4_row = 17'd0;
reg main_bankmachine4_row_opened = 1'd0;
wire main_bankmachine4_row_hit;
reg main_bankmachine4_row_open;
reg main_bankmachine4_row_close;
reg main_bankmachine4_row_col_n_addr_sel;
wire main_bankmachine4_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine4_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine4_twtpcon_count = 5'd0;
wire main_bankmachine4_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine4_trccon_ready = 1'd0;
reg [5:0] main_bankmachine4_trccon_count = 6'd0;
wire main_bankmachine4_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine4_trascon_ready = 1'd0;
reg [4:0] main_bankmachine4_trascon_count = 5'd0;
wire main_bankmachine5_req_valid;
wire main_bankmachine5_req_ready;
wire main_bankmachine5_req_we;
wire [22:0] main_bankmachine5_req_addr;
wire main_bankmachine5_req_lock;
reg main_bankmachine5_req_wdata_ready;
reg main_bankmachine5_req_rdata_valid;
wire main_bankmachine5_refresh_req;
reg main_bankmachine5_refresh_gnt;
reg main_bankmachine5_cmd_valid;
reg main_bankmachine5_cmd_ready;
reg [16:0] main_bankmachine5_cmd_payload_a;
wire [2:0] main_bankmachine5_cmd_payload_ba;
reg main_bankmachine5_cmd_payload_cas;
reg main_bankmachine5_cmd_payload_ras;
reg main_bankmachine5_cmd_payload_we;
reg main_bankmachine5_cmd_payload_is_cmd;
reg main_bankmachine5_cmd_payload_is_read;
reg main_bankmachine5_cmd_payload_is_write;
reg main_bankmachine5_auto_precharge;
wire main_bankmachine5_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine5_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine5_cmd_buffer_lookahead_source_valid;
wire main_bankmachine5_cmd_buffer_lookahead_source_ready;
wire main_bankmachine5_cmd_buffer_lookahead_source_first;
wire main_bankmachine5_cmd_buffer_lookahead_source_last;
wire main_bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire main_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire main_bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire main_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [25:0] main_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [25:0] main_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] main_bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine5_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine5_cmd_buffer_sink_valid;
wire main_bankmachine5_cmd_buffer_sink_ready;
wire main_bankmachine5_cmd_buffer_sink_first;
wire main_bankmachine5_cmd_buffer_sink_last;
wire main_bankmachine5_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine5_cmd_buffer_sink_payload_addr;
reg main_bankmachine5_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine5_cmd_buffer_source_ready;
reg main_bankmachine5_cmd_buffer_source_first = 1'd0;
reg main_bankmachine5_cmd_buffer_source_last = 1'd0;
reg main_bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine5_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine5_row = 17'd0;
reg main_bankmachine5_row_opened = 1'd0;
wire main_bankmachine5_row_hit;
reg main_bankmachine5_row_open;
reg main_bankmachine5_row_close;
reg main_bankmachine5_row_col_n_addr_sel;
wire main_bankmachine5_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine5_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine5_twtpcon_count = 5'd0;
wire main_bankmachine5_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine5_trccon_ready = 1'd0;
reg [5:0] main_bankmachine5_trccon_count = 6'd0;
wire main_bankmachine5_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine5_trascon_ready = 1'd0;
reg [4:0] main_bankmachine5_trascon_count = 5'd0;
wire main_bankmachine6_req_valid;
wire main_bankmachine6_req_ready;
wire main_bankmachine6_req_we;
wire [22:0] main_bankmachine6_req_addr;
wire main_bankmachine6_req_lock;
reg main_bankmachine6_req_wdata_ready;
reg main_bankmachine6_req_rdata_valid;
wire main_bankmachine6_refresh_req;
reg main_bankmachine6_refresh_gnt;
reg main_bankmachine6_cmd_valid;
reg main_bankmachine6_cmd_ready;
reg [16:0] main_bankmachine6_cmd_payload_a;
wire [2:0] main_bankmachine6_cmd_payload_ba;
reg main_bankmachine6_cmd_payload_cas;
reg main_bankmachine6_cmd_payload_ras;
reg main_bankmachine6_cmd_payload_we;
reg main_bankmachine6_cmd_payload_is_cmd;
reg main_bankmachine6_cmd_payload_is_read;
reg main_bankmachine6_cmd_payload_is_write;
reg main_bankmachine6_auto_precharge;
wire main_bankmachine6_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine6_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine6_cmd_buffer_lookahead_source_valid;
wire main_bankmachine6_cmd_buffer_lookahead_source_ready;
wire main_bankmachine6_cmd_buffer_lookahead_source_first;
wire main_bankmachine6_cmd_buffer_lookahead_source_last;
wire main_bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire main_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire main_bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire main_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [25:0] main_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [25:0] main_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] main_bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine6_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine6_cmd_buffer_sink_valid;
wire main_bankmachine6_cmd_buffer_sink_ready;
wire main_bankmachine6_cmd_buffer_sink_first;
wire main_bankmachine6_cmd_buffer_sink_last;
wire main_bankmachine6_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine6_cmd_buffer_sink_payload_addr;
reg main_bankmachine6_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine6_cmd_buffer_source_ready;
reg main_bankmachine6_cmd_buffer_source_first = 1'd0;
reg main_bankmachine6_cmd_buffer_source_last = 1'd0;
reg main_bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine6_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine6_row = 17'd0;
reg main_bankmachine6_row_opened = 1'd0;
wire main_bankmachine6_row_hit;
reg main_bankmachine6_row_open;
reg main_bankmachine6_row_close;
reg main_bankmachine6_row_col_n_addr_sel;
wire main_bankmachine6_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine6_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine6_twtpcon_count = 5'd0;
wire main_bankmachine6_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine6_trccon_ready = 1'd0;
reg [5:0] main_bankmachine6_trccon_count = 6'd0;
wire main_bankmachine6_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine6_trascon_ready = 1'd0;
reg [4:0] main_bankmachine6_trascon_count = 5'd0;
wire main_bankmachine7_req_valid;
wire main_bankmachine7_req_ready;
wire main_bankmachine7_req_we;
wire [22:0] main_bankmachine7_req_addr;
wire main_bankmachine7_req_lock;
reg main_bankmachine7_req_wdata_ready;
reg main_bankmachine7_req_rdata_valid;
wire main_bankmachine7_refresh_req;
reg main_bankmachine7_refresh_gnt;
reg main_bankmachine7_cmd_valid;
reg main_bankmachine7_cmd_ready;
reg [16:0] main_bankmachine7_cmd_payload_a;
wire [2:0] main_bankmachine7_cmd_payload_ba;
reg main_bankmachine7_cmd_payload_cas;
reg main_bankmachine7_cmd_payload_ras;
reg main_bankmachine7_cmd_payload_we;
reg main_bankmachine7_cmd_payload_is_cmd;
reg main_bankmachine7_cmd_payload_is_read;
reg main_bankmachine7_cmd_payload_is_write;
reg main_bankmachine7_auto_precharge;
wire main_bankmachine7_cmd_buffer_lookahead_sink_valid;
wire main_bankmachine7_cmd_buffer_lookahead_sink_ready;
reg main_bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg main_bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire main_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] main_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
wire main_bankmachine7_cmd_buffer_lookahead_source_valid;
wire main_bankmachine7_cmd_buffer_lookahead_source_ready;
wire main_bankmachine7_cmd_buffer_lookahead_source_first;
wire main_bankmachine7_cmd_buffer_lookahead_source_last;
wire main_bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [22:0] main_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
wire main_bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire main_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire main_bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire main_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [25:0] main_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [25:0] main_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] main_bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg main_bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] main_bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] main_bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] main_bankmachine7_cmd_buffer_lookahead_wrport_adr;
wire [25:0] main_bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire main_bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [25:0] main_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire main_bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] main_bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [25:0] main_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire main_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] main_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr;
wire main_bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire main_bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire main_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] main_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
wire main_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire main_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire main_bankmachine7_cmd_buffer_sink_valid;
wire main_bankmachine7_cmd_buffer_sink_ready;
wire main_bankmachine7_cmd_buffer_sink_first;
wire main_bankmachine7_cmd_buffer_sink_last;
wire main_bankmachine7_cmd_buffer_sink_payload_we;
wire [22:0] main_bankmachine7_cmd_buffer_sink_payload_addr;
reg main_bankmachine7_cmd_buffer_source_valid = 1'd0;
wire main_bankmachine7_cmd_buffer_source_ready;
reg main_bankmachine7_cmd_buffer_source_first = 1'd0;
reg main_bankmachine7_cmd_buffer_source_last = 1'd0;
reg main_bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] main_bankmachine7_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] main_bankmachine7_row = 17'd0;
reg main_bankmachine7_row_opened = 1'd0;
wire main_bankmachine7_row_hit;
reg main_bankmachine7_row_open;
reg main_bankmachine7_row_close;
reg main_bankmachine7_row_col_n_addr_sel;
wire main_bankmachine7_twtpcon_valid;
(* no_retiming = "true" *) reg main_bankmachine7_twtpcon_ready = 1'd0;
reg [4:0] main_bankmachine7_twtpcon_count = 5'd0;
wire main_bankmachine7_trccon_valid;
(* no_retiming = "true" *) reg main_bankmachine7_trccon_ready = 1'd0;
reg [5:0] main_bankmachine7_trccon_count = 6'd0;
wire main_bankmachine7_trascon_valid;
(* no_retiming = "true" *) reg main_bankmachine7_trascon_ready = 1'd0;
reg [4:0] main_bankmachine7_trascon_count = 5'd0;
wire main_ras_allowed;
wire main_cas_allowed;
reg main_choose_cmd_want_reads = 1'd0;
reg main_choose_cmd_want_writes = 1'd0;
reg main_choose_cmd_want_cmds = 1'd0;
reg main_choose_cmd_want_activates = 1'd0;
wire main_choose_cmd_cmd_valid;
reg main_choose_cmd_cmd_ready = 1'd0;
wire [16:0] main_choose_cmd_cmd_payload_a;
wire [2:0] main_choose_cmd_cmd_payload_ba;
reg main_choose_cmd_cmd_payload_cas;
reg main_choose_cmd_cmd_payload_ras;
reg main_choose_cmd_cmd_payload_we;
wire main_choose_cmd_cmd_payload_is_cmd;
wire main_choose_cmd_cmd_payload_is_read;
wire main_choose_cmd_cmd_payload_is_write;
reg [7:0] main_choose_cmd_valids;
wire [7:0] main_choose_cmd_request;
reg [2:0] main_choose_cmd_grant = 3'd0;
wire main_choose_cmd_ce;
reg main_choose_req_want_reads;
reg main_choose_req_want_writes;
wire main_choose_req_want_cmds;
reg main_choose_req_want_activates;
wire main_choose_req_cmd_valid;
reg main_choose_req_cmd_ready;
wire [16:0] main_choose_req_cmd_payload_a;
wire [2:0] main_choose_req_cmd_payload_ba;
reg main_choose_req_cmd_payload_cas;
reg main_choose_req_cmd_payload_ras;
reg main_choose_req_cmd_payload_we;
wire main_choose_req_cmd_payload_is_cmd;
wire main_choose_req_cmd_payload_is_read;
wire main_choose_req_cmd_payload_is_write;
reg [7:0] main_choose_req_valids;
wire [7:0] main_choose_req_request;
reg [2:0] main_choose_req_grant = 3'd0;
wire main_choose_req_ce;
reg [16:0] main_nop_a = 17'd0;
reg [2:0] main_nop_ba = 3'd0;
reg [1:0] main_steerer_sel0;
reg [1:0] main_steerer_sel1 = 2'd0;
reg [1:0] main_steerer_sel2 = 2'd0;
reg [1:0] main_steerer_sel3 = 2'd0;
reg main_steerer0 = 1'd1;
reg main_steerer1 = 1'd1;
reg main_steerer2 = 1'd1;
reg main_steerer3 = 1'd1;
reg main_steerer4 = 1'd1;
reg main_steerer5 = 1'd1;
reg main_steerer6 = 1'd1;
reg main_steerer7 = 1'd1;
wire main_trrdcon_valid;
(* no_retiming = "true" *) reg main_trrdcon_ready = 1'd0;
reg [2:0] main_trrdcon_count = 3'd0;
wire main_tfawcon_valid;
(* no_retiming = "true" *) reg main_tfawcon_ready = 1'd1;
wire [4:0] main_tfawcon_count;
reg [22:0] main_tfawcon_window = 23'd0;
wire main_tccdcon_valid;
(* no_retiming = "true" *) reg main_tccdcon_ready = 1'd0;
reg [2:0] main_tccdcon_count = 3'd0;
wire main_twtrcon_valid;
(* no_retiming = "true" *) reg main_twtrcon_ready = 1'd0;
reg [4:0] main_twtrcon_count = 5'd0;
wire main_read_available;
wire main_write_available;
reg main_en0;
wire main_max_time0;
reg [4:0] main_time0 = 5'd0;
reg main_en1;
wire main_max_time1;
reg [3:0] main_time1 = 4'd0;
wire main_go_to_refresh;
reg main_litedramnativeport0_cmd_valid;
reg main_litedramnativeport0_cmd_ready;
reg main_litedramnativeport0_cmd_last;
reg main_litedramnativeport0_cmd_payload_we;
reg [25:0] main_litedramnativeport0_cmd_payload_addr;
wire main_litedramnativeport0_wdata_valid;
reg main_litedramnativeport0_wdata_ready;
wire main_litedramnativeport0_wdata_first;
wire main_litedramnativeport0_wdata_last;
wire [255:0] main_litedramnativeport0_wdata_payload_data;
wire [31:0] main_litedramnativeport0_wdata_payload_we;
reg main_litedramnativeport0_rdata_valid;
wire main_litedramnativeport0_rdata_ready;
reg main_litedramnativeport0_rdata_first = 1'd0;
reg main_litedramnativeport0_rdata_last = 1'd0;
reg [255:0] main_litedramnativeport0_rdata_payload_data;
wire main_write_cmd_request;
wire main_write_cmd_grant;
wire main_write_can_write;
wire main_write_aw_buffer_sink_valid;
wire main_write_aw_buffer_sink_ready;
wire main_write_aw_buffer_sink_first;
wire main_write_aw_buffer_sink_last;
wire [31:0] main_write_aw_buffer_sink_payload_addr;
wire [1:0] main_write_aw_buffer_sink_payload_burst;
wire [7:0] main_write_aw_buffer_sink_payload_len;
wire [3:0] main_write_aw_buffer_sink_payload_size;
wire [1:0] main_write_aw_buffer_sink_payload_lock;
wire [2:0] main_write_aw_buffer_sink_payload_prot;
wire [3:0] main_write_aw_buffer_sink_payload_cache;
wire [3:0] main_write_aw_buffer_sink_payload_qos;
wire main_write_aw_buffer_sink_payload_id;
reg main_write_aw_buffer_source_valid = 1'd0;
reg main_write_aw_buffer_source_ready;
reg main_write_aw_buffer_source_first = 1'd0;
reg main_write_aw_buffer_source_last = 1'd0;
reg [31:0] main_write_aw_buffer_source_payload_addr = 32'd0;
reg [1:0] main_write_aw_buffer_source_payload_burst = 2'd0;
reg [7:0] main_write_aw_buffer_source_payload_len = 8'd0;
reg [3:0] main_write_aw_buffer_source_payload_size = 4'd0;
reg [1:0] main_write_aw_buffer_source_payload_lock = 2'd0;
reg [2:0] main_write_aw_buffer_source_payload_prot = 3'd0;
reg [3:0] main_write_aw_buffer_source_payload_cache = 4'd0;
reg [3:0] main_write_aw_buffer_source_payload_qos = 4'd0;
reg main_write_aw_buffer_source_payload_id = 1'd0;
wire main_write_aw_valid;
reg main_write_aw_ready;
wire main_write_aw_first;
wire main_write_aw_last;
wire [31:0] main_write_aw_payload_addr;
wire main_write_aw_payload_id;
reg [7:0] main_write_beat_count = 8'd0;
wire [11:0] main_write_beat_size;
reg signed [12:0] main_write_beat_offset = 13'sd0;
wire [11:0] main_write_beat_wrap;
reg main_write_w_buffer_sink_valid;
wire main_write_w_buffer_sink_ready;
reg main_write_w_buffer_sink_first;
reg main_write_w_buffer_sink_last;
reg [255:0] main_write_w_buffer_sink_payload_data;
reg [31:0] main_write_w_buffer_sink_payload_strb;
reg main_write_w_buffer_sink_payload_id;
wire main_write_w_buffer_source_valid;
wire main_write_w_buffer_source_ready;
wire main_write_w_buffer_source_first;
wire main_write_w_buffer_source_last;
wire [255:0] main_write_w_buffer_source_payload_data;
wire [31:0] main_write_w_buffer_source_payload_strb;
wire main_write_w_buffer_source_payload_id;
wire main_write_w_buffer_re;
reg main_write_w_buffer_readable = 1'd0;
wire main_write_w_buffer_syncfifo_we;
wire main_write_w_buffer_syncfifo_writable;
wire main_write_w_buffer_syncfifo_re;
wire main_write_w_buffer_syncfifo_readable;
wire [290:0] main_write_w_buffer_syncfifo_din;
wire [290:0] main_write_w_buffer_syncfifo_dout;
reg [4:0] main_write_w_buffer_level0 = 5'd0;
reg main_write_w_buffer_replace = 1'd0;
reg [3:0] main_write_w_buffer_produce = 4'd0;
reg [3:0] main_write_w_buffer_consume = 4'd0;
reg [3:0] main_write_w_buffer_wrport_adr;
wire [290:0] main_write_w_buffer_wrport_dat_r;
wire main_write_w_buffer_wrport_we;
wire [290:0] main_write_w_buffer_wrport_dat_w;
wire main_write_w_buffer_do_read;
wire [3:0] main_write_w_buffer_rdport_adr;
wire [290:0] main_write_w_buffer_rdport_dat_r;
wire main_write_w_buffer_rdport_re;
wire [4:0] main_write_w_buffer_level1;
wire [255:0] main_write_w_buffer_fifo_in_payload_data;
wire [31:0] main_write_w_buffer_fifo_in_payload_strb;
wire main_write_w_buffer_fifo_in_payload_id;
wire main_write_w_buffer_fifo_in_first;
wire main_write_w_buffer_fifo_in_last;
wire [255:0] main_write_w_buffer_fifo_out_payload_data;
wire [31:0] main_write_w_buffer_fifo_out_payload_strb;
wire main_write_w_buffer_fifo_out_payload_id;
wire main_write_w_buffer_fifo_out_first;
wire main_write_w_buffer_fifo_out_last;
wire main_write_id_buffer_sink_valid;
wire main_write_id_buffer_sink_ready;
reg main_write_id_buffer_sink_first = 1'd0;
reg main_write_id_buffer_sink_last = 1'd0;
wire main_write_id_buffer_sink_payload_id;
wire main_write_id_buffer_source_valid;
reg main_write_id_buffer_source_ready;
wire main_write_id_buffer_source_first;
wire main_write_id_buffer_source_last;
wire main_write_id_buffer_source_payload_id;
wire main_write_id_buffer_syncfifo_we;
wire main_write_id_buffer_syncfifo_writable;
wire main_write_id_buffer_syncfifo_re;
wire main_write_id_buffer_syncfifo_readable;
wire [2:0] main_write_id_buffer_syncfifo_din;
wire [2:0] main_write_id_buffer_syncfifo_dout;
reg [4:0] main_write_id_buffer_level = 5'd0;
reg main_write_id_buffer_replace = 1'd0;
reg [3:0] main_write_id_buffer_produce = 4'd0;
reg [3:0] main_write_id_buffer_consume = 4'd0;
reg [3:0] main_write_id_buffer_wrport_adr;
wire [2:0] main_write_id_buffer_wrport_dat_r;
wire main_write_id_buffer_wrport_we;
wire [2:0] main_write_id_buffer_wrport_dat_w;
wire main_write_id_buffer_do_read;
wire [3:0] main_write_id_buffer_rdport_adr;
wire [2:0] main_write_id_buffer_rdport_dat_r;
wire main_write_id_buffer_fifo_in_payload_id;
wire main_write_id_buffer_fifo_in_first;
wire main_write_id_buffer_fifo_in_last;
wire main_write_id_buffer_fifo_out_payload_id;
wire main_write_id_buffer_fifo_out_first;
wire main_write_id_buffer_fifo_out_last;
reg main_write_resp_buffer_sink_valid;
wire main_write_resp_buffer_sink_ready;
reg main_write_resp_buffer_sink_first = 1'd0;
reg main_write_resp_buffer_sink_last = 1'd0;
reg main_write_resp_buffer_sink_payload_id;
reg [1:0] main_write_resp_buffer_sink_payload_resp;
wire main_write_resp_buffer_source_valid;
wire main_write_resp_buffer_source_ready;
wire main_write_resp_buffer_source_first;
wire main_write_resp_buffer_source_last;
wire main_write_resp_buffer_source_payload_id;
wire [1:0] main_write_resp_buffer_source_payload_resp;
wire main_write_resp_buffer_syncfifo_we;
wire main_write_resp_buffer_syncfifo_writable;
wire main_write_resp_buffer_syncfifo_re;
wire main_write_resp_buffer_syncfifo_readable;
wire [4:0] main_write_resp_buffer_syncfifo_din;
wire [4:0] main_write_resp_buffer_syncfifo_dout;
reg [4:0] main_write_resp_buffer_level = 5'd0;
reg main_write_resp_buffer_replace = 1'd0;
reg [3:0] main_write_resp_buffer_produce = 4'd0;
reg [3:0] main_write_resp_buffer_consume = 4'd0;
reg [3:0] main_write_resp_buffer_wrport_adr;
wire [4:0] main_write_resp_buffer_wrport_dat_r;
wire main_write_resp_buffer_wrport_we;
wire [4:0] main_write_resp_buffer_wrport_dat_w;
wire main_write_resp_buffer_do_read;
wire [3:0] main_write_resp_buffer_rdport_adr;
wire [4:0] main_write_resp_buffer_rdport_dat_r;
wire main_write_resp_buffer_fifo_in_payload_id;
wire [1:0] main_write_resp_buffer_fifo_in_payload_resp;
wire main_write_resp_buffer_fifo_in_first;
wire main_write_resp_buffer_fifo_in_last;
wire main_write_resp_buffer_fifo_out_payload_id;
wire [1:0] main_write_resp_buffer_fifo_out_payload_resp;
wire main_write_resp_buffer_fifo_out_first;
wire main_write_resp_buffer_fifo_out_last;
wire main_write_w_buffer_queue;
wire main_write_w_buffer_dequeue;
reg [4:0] main_write_w_buffer_level2 = 5'd0;
reg main_write_axi_w_connect = 1'd1;
wire main_read_cmd_request;
wire main_read_cmd_grant;
wire main_read_can_read;
wire main_read_ar_buffer_sink_valid;
wire main_read_ar_buffer_sink_ready;
wire main_read_ar_buffer_sink_first;
wire main_read_ar_buffer_sink_last;
wire [31:0] main_read_ar_buffer_sink_payload_addr;
wire [1:0] main_read_ar_buffer_sink_payload_burst;
wire [7:0] main_read_ar_buffer_sink_payload_len;
wire [3:0] main_read_ar_buffer_sink_payload_size;
wire [1:0] main_read_ar_buffer_sink_payload_lock;
wire [2:0] main_read_ar_buffer_sink_payload_prot;
wire [3:0] main_read_ar_buffer_sink_payload_cache;
wire [3:0] main_read_ar_buffer_sink_payload_qos;
wire main_read_ar_buffer_sink_payload_id;
reg main_read_ar_buffer_source_valid = 1'd0;
reg main_read_ar_buffer_source_ready;
reg main_read_ar_buffer_source_first = 1'd0;
reg main_read_ar_buffer_source_last = 1'd0;
reg [31:0] main_read_ar_buffer_source_payload_addr = 32'd0;
reg [1:0] main_read_ar_buffer_source_payload_burst = 2'd0;
reg [7:0] main_read_ar_buffer_source_payload_len = 8'd0;
reg [3:0] main_read_ar_buffer_source_payload_size = 4'd0;
reg [1:0] main_read_ar_buffer_source_payload_lock = 2'd0;
reg [2:0] main_read_ar_buffer_source_payload_prot = 3'd0;
reg [3:0] main_read_ar_buffer_source_payload_cache = 4'd0;
reg [3:0] main_read_ar_buffer_source_payload_qos = 4'd0;
reg main_read_ar_buffer_source_payload_id = 1'd0;
wire main_read_ar_valid;
reg main_read_ar_ready;
wire main_read_ar_first;
wire main_read_ar_last;
wire [31:0] main_read_ar_payload_addr;
wire main_read_ar_payload_id;
reg [7:0] main_read_beat_count = 8'd0;
wire [11:0] main_read_beat_size;
reg signed [12:0] main_read_beat_offset = 13'sd0;
wire [11:0] main_read_beat_wrap;
wire main_read_r_buffer_sink_valid;
wire main_read_r_buffer_sink_ready;
wire main_read_r_buffer_sink_first;
wire main_read_r_buffer_sink_last;
reg [1:0] main_read_r_buffer_sink_payload_resp = 2'd0;
wire [255:0] main_read_r_buffer_sink_payload_data;
reg main_read_r_buffer_sink_payload_id = 1'd0;
wire main_read_r_buffer_source_valid;
wire main_read_r_buffer_source_ready;
wire main_read_r_buffer_source_first;
wire main_read_r_buffer_source_last;
wire [1:0] main_read_r_buffer_source_payload_resp;
wire [255:0] main_read_r_buffer_source_payload_data;
wire main_read_r_buffer_source_payload_id;
wire main_read_r_buffer_re;
reg main_read_r_buffer_readable = 1'd0;
wire main_read_r_buffer_syncfifo_we;
wire main_read_r_buffer_syncfifo_writable;
wire main_read_r_buffer_syncfifo_re;
wire main_read_r_buffer_syncfifo_readable;
wire [260:0] main_read_r_buffer_syncfifo_din;
wire [260:0] main_read_r_buffer_syncfifo_dout;
reg [4:0] main_read_r_buffer_level0 = 5'd0;
reg main_read_r_buffer_replace = 1'd0;
reg [3:0] main_read_r_buffer_produce = 4'd0;
reg [3:0] main_read_r_buffer_consume = 4'd0;
reg [3:0] main_read_r_buffer_wrport_adr;
wire [260:0] main_read_r_buffer_wrport_dat_r;
wire main_read_r_buffer_wrport_we;
wire [260:0] main_read_r_buffer_wrport_dat_w;
wire main_read_r_buffer_do_read;
wire [3:0] main_read_r_buffer_rdport_adr;
wire [260:0] main_read_r_buffer_rdport_dat_r;
wire main_read_r_buffer_rdport_re;
wire [4:0] main_read_r_buffer_level1;
wire [1:0] main_read_r_buffer_fifo_in_payload_resp;
wire [255:0] main_read_r_buffer_fifo_in_payload_data;
wire main_read_r_buffer_fifo_in_payload_id;
wire main_read_r_buffer_fifo_in_first;
wire main_read_r_buffer_fifo_in_last;
wire [1:0] main_read_r_buffer_fifo_out_payload_resp;
wire [255:0] main_read_r_buffer_fifo_out_payload_data;
wire main_read_r_buffer_fifo_out_payload_id;
wire main_read_r_buffer_fifo_out_first;
wire main_read_r_buffer_fifo_out_last;
wire main_read_r_buffer_queue;
wire main_read_r_buffer_dequeue;
reg [4:0] main_read_r_buffer_level2 = 5'd0;
wire main_read_id_buffer_sink_valid;
wire main_read_id_buffer_sink_ready;
reg main_read_id_buffer_sink_first = 1'd0;
wire main_read_id_buffer_sink_last;
wire main_read_id_buffer_sink_payload_id;
wire main_read_id_buffer_source_valid;
wire main_read_id_buffer_source_ready;
wire main_read_id_buffer_source_first;
wire main_read_id_buffer_source_last;
wire main_read_id_buffer_source_payload_id;
wire main_read_id_buffer_syncfifo_we;
wire main_read_id_buffer_syncfifo_writable;
wire main_read_id_buffer_syncfifo_re;
wire main_read_id_buffer_syncfifo_readable;
wire [2:0] main_read_id_buffer_syncfifo_din;
wire [2:0] main_read_id_buffer_syncfifo_dout;
reg [4:0] main_read_id_buffer_level = 5'd0;
reg main_read_id_buffer_replace = 1'd0;
reg [3:0] main_read_id_buffer_produce = 4'd0;
reg [3:0] main_read_id_buffer_consume = 4'd0;
reg [3:0] main_read_id_buffer_wrport_adr;
wire [2:0] main_read_id_buffer_wrport_dat_r;
wire main_read_id_buffer_wrport_we;
wire [2:0] main_read_id_buffer_wrport_dat_w;
wire main_read_id_buffer_do_read;
wire [3:0] main_read_id_buffer_rdport_adr;
wire [2:0] main_read_id_buffer_rdport_dat_r;
wire main_read_id_buffer_fifo_in_payload_id;
wire main_read_id_buffer_fifo_in_first;
wire main_read_id_buffer_fifo_in_last;
wire main_read_id_buffer_fifo_out_payload_id;
wire main_read_id_buffer_fifo_out_first;
wire main_read_id_buffer_fifo_out_last;
reg [1:0] main_request;
reg main_grant = 1'd0;
wire main_ce;
wire main_litedramnativeport1_flush;
reg main_litedramnativeport1_cmd_valid;
reg main_litedramnativeport1_cmd_ready;
wire main_litedramnativeport1_cmd_last;
wire main_litedramnativeport1_cmd_payload_we;
wire [25:0] main_litedramnativeport1_cmd_payload_addr;
reg main_litedramnativeport1_wdata_valid;
reg main_litedramnativeport1_wdata_ready;
wire [255:0] main_litedramnativeport1_wdata_payload_data;
wire [31:0] main_litedramnativeport1_wdata_payload_we;
reg main_litedramnativeport1_rdata_valid;
wire main_litedramnativeport1_rdata_ready;
reg [255:0] main_litedramnativeport1_rdata_payload_data;
reg main_aborted = 1'd0;
reg main_is_ongoing;
wire [1:0] main_roundrobin0_request;
reg main_roundrobin0_grant = 1'd0;
wire main_roundrobin0_ce;
wire [1:0] main_roundrobin1_request;
reg main_roundrobin1_grant = 1'd0;
wire main_roundrobin1_ce;
wire [1:0] main_roundrobin2_request;
reg main_roundrobin2_grant = 1'd0;
wire main_roundrobin2_ce;
wire [1:0] main_roundrobin3_request;
reg main_roundrobin3_grant = 1'd0;
wire main_roundrobin3_ce;
wire [1:0] main_roundrobin4_request;
reg main_roundrobin4_grant = 1'd0;
wire main_roundrobin4_ce;
wire [1:0] main_roundrobin5_request;
reg main_roundrobin5_grant = 1'd0;
wire main_roundrobin5_ce;
wire [1:0] main_roundrobin6_request;
reg main_roundrobin6_grant = 1'd0;
wire main_roundrobin6_ce;
wire [1:0] main_roundrobin7_request;
reg main_roundrobin7_grant = 1'd0;
wire main_roundrobin7_ce;
reg main_locked0 = 1'd0;
reg main_locked1 = 1'd0;
reg main_locked2 = 1'd0;
reg main_locked3 = 1'd0;
reg main_locked4 = 1'd0;
reg main_locked5 = 1'd0;
reg main_locked6 = 1'd0;
reg main_locked7 = 1'd0;
reg main_locked8 = 1'd0;
reg main_locked9 = 1'd0;
reg main_locked10 = 1'd0;
reg main_locked11 = 1'd0;
reg main_locked12 = 1'd0;
reg main_locked13 = 1'd0;
reg main_locked14 = 1'd0;
reg main_locked15 = 1'd0;
reg main_new_master_wdata_ready0 = 1'd0;
reg main_new_master_wdata_ready1 = 1'd0;
reg main_new_master_wdata_ready2 = 1'd0;
reg main_new_master_wdata_ready3 = 1'd0;
reg main_new_master_wdata_ready4 = 1'd0;
reg main_new_master_wdata_ready5 = 1'd0;
reg main_new_master_wdata_ready6 = 1'd0;
reg main_new_master_wdata_ready7 = 1'd0;
reg main_new_master_wdata_ready8 = 1'd0;
reg main_new_master_wdata_ready9 = 1'd0;
reg main_new_master_wdata_ready10 = 1'd0;
reg main_new_master_wdata_ready11 = 1'd0;
reg main_new_master_wdata_ready12 = 1'd0;
reg main_new_master_wdata_ready13 = 1'd0;
reg main_new_master_rdata_valid0 = 1'd0;
reg main_new_master_rdata_valid1 = 1'd0;
reg main_new_master_rdata_valid2 = 1'd0;
reg main_new_master_rdata_valid3 = 1'd0;
reg main_new_master_rdata_valid4 = 1'd0;
reg main_new_master_rdata_valid5 = 1'd0;
reg main_new_master_rdata_valid6 = 1'd0;
reg main_new_master_rdata_valid7 = 1'd0;
reg main_new_master_rdata_valid8 = 1'd0;
reg main_new_master_rdata_valid9 = 1'd0;
reg main_new_master_rdata_valid10 = 1'd0;
reg main_new_master_rdata_valid11 = 1'd0;
reg main_new_master_rdata_valid12 = 1'd0;
reg main_new_master_rdata_valid13 = 1'd0;
reg main_new_master_rdata_valid14 = 1'd0;
reg main_new_master_rdata_valid15 = 1'd0;
reg main_new_master_rdata_valid16 = 1'd0;
reg main_new_master_rdata_valid17 = 1'd0;
reg main_new_master_rdata_valid18 = 1'd0;
reg main_new_master_rdata_valid19 = 1'd0;
reg main_new_master_rdata_valid20 = 1'd0;
reg main_new_master_rdata_valid21 = 1'd0;
reg main_new_master_rdata_valid22 = 1'd0;
reg main_new_master_rdata_valid23 = 1'd0;
reg main_new_master_rdata_valid24 = 1'd0;
reg main_new_master_rdata_valid25 = 1'd0;
reg main_new_master_rdata_valid26 = 1'd0;
reg main_new_master_rdata_valid27 = 1'd0;
reg main_new_master_rdata_valid28 = 1'd0;
reg main_new_master_rdata_valid29 = 1'd0;
reg main_new_master_rdata_valid30 = 1'd0;
reg main_new_master_rdata_valid31 = 1'd0;
reg main_new_master_rdata_valid32 = 1'd0;
reg main_new_master_rdata_valid33 = 1'd0;
reg main_new_master_rdata_valid34 = 1'd0;
reg main_new_master_rdata_valid35 = 1'd0;
reg main_new_master_rdata_valid36 = 1'd0;
reg main_new_master_rdata_valid37 = 1'd0;
reg main_new_master_rdata_valid38 = 1'd0;
reg main_new_master_rdata_valid39 = 1'd0;
reg main_new_master_rdata_valid40 = 1'd0;
reg main_new_master_rdata_valid41 = 1'd0;
reg main_new_master_rdata_valid42 = 1'd0;
reg main_new_master_rdata_valid43 = 1'd0;
reg main_new_master_rdata_valid44 = 1'd0;
reg main_new_master_rdata_valid45 = 1'd0;
reg main_new_master_rdata_valid46 = 1'd0;
reg main_new_master_rdata_valid47 = 1'd0;
reg [1:0] convert_refresher_state = 2'd0;
reg [1:0] convert_refresher_next_state;
reg [4:0] convert_bankmachine0_state = 5'd0;
reg [4:0] convert_bankmachine0_next_state;
reg [4:0] convert_bankmachine1_state = 5'd0;
reg [4:0] convert_bankmachine1_next_state;
reg [4:0] convert_bankmachine2_state = 5'd0;
reg [4:0] convert_bankmachine2_next_state;
reg [4:0] convert_bankmachine3_state = 5'd0;
reg [4:0] convert_bankmachine3_next_state;
reg [4:0] convert_bankmachine4_state = 5'd0;
reg [4:0] convert_bankmachine4_next_state;
reg [4:0] convert_bankmachine5_state = 5'd0;
reg [4:0] convert_bankmachine5_next_state;
reg [4:0] convert_bankmachine6_state = 5'd0;
reg [4:0] convert_bankmachine6_next_state;
reg [4:0] convert_bankmachine7_state = 5'd0;
reg [4:0] convert_bankmachine7_next_state;
reg [4:0] convert_multiplexer_state = 5'd0;
reg [4:0] convert_multiplexer_next_state;
wire [1:0] convert_roundrobin0_request;
reg convert_roundrobin0_grant = 1'd0;
wire convert_roundrobin0_ce;
wire [1:0] convert_roundrobin1_request;
reg convert_roundrobin1_grant = 1'd0;
wire convert_roundrobin1_ce;
wire [1:0] convert_roundrobin2_request;
reg convert_roundrobin2_grant = 1'd0;
wire convert_roundrobin2_ce;
wire [1:0] convert_roundrobin3_request;
reg convert_roundrobin3_grant = 1'd0;
wire convert_roundrobin3_ce;
wire [1:0] convert_roundrobin4_request;
reg convert_roundrobin4_grant = 1'd0;
wire convert_roundrobin4_ce;
wire [1:0] convert_roundrobin5_request;
reg convert_roundrobin5_grant = 1'd0;
wire convert_roundrobin5_ce;
wire [1:0] convert_roundrobin6_request;
reg convert_roundrobin6_grant = 1'd0;
wire convert_roundrobin6_ce;
wire [1:0] convert_roundrobin7_request;
reg convert_roundrobin7_grant = 1'd0;
wire convert_roundrobin7_ce;
reg convert_locked0 = 1'd0;
reg convert_locked1 = 1'd0;
reg convert_locked2 = 1'd0;
reg convert_locked3 = 1'd0;
reg convert_locked4 = 1'd0;
reg convert_locked5 = 1'd0;
reg convert_locked6 = 1'd0;
reg convert_locked7 = 1'd0;
reg convert_locked8 = 1'd0;
reg convert_locked9 = 1'd0;
reg convert_locked10 = 1'd0;
reg convert_locked11 = 1'd0;
reg convert_locked12 = 1'd0;
reg convert_locked13 = 1'd0;
reg convert_locked14 = 1'd0;
reg convert_locked15 = 1'd0;
reg convert_new_master_wdata_ready0 = 1'd0;
reg convert_new_master_wdata_ready1 = 1'd0;
reg convert_new_master_wdata_ready2 = 1'd0;
reg convert_new_master_wdata_ready3 = 1'd0;
reg convert_new_master_wdata_ready4 = 1'd0;
reg convert_new_master_wdata_ready5 = 1'd0;
reg convert_new_master_wdata_ready6 = 1'd0;
reg convert_new_master_wdata_ready7 = 1'd0;
reg convert_new_master_wdata_ready8 = 1'd0;
reg convert_new_master_wdata_ready9 = 1'd0;
reg convert_new_master_wdata_ready10 = 1'd0;
reg convert_new_master_wdata_ready11 = 1'd0;
reg convert_new_master_wdata_ready12 = 1'd0;
reg convert_new_master_wdata_ready13 = 1'd0;
reg convert_new_master_rdata_valid0 = 1'd0;
reg convert_new_master_rdata_valid1 = 1'd0;
reg convert_new_master_rdata_valid2 = 1'd0;
reg convert_new_master_rdata_valid3 = 1'd0;
reg convert_new_master_rdata_valid4 = 1'd0;
reg convert_new_master_rdata_valid5 = 1'd0;
reg convert_new_master_rdata_valid6 = 1'd0;
reg convert_new_master_rdata_valid7 = 1'd0;
reg convert_new_master_rdata_valid8 = 1'd0;
reg convert_new_master_rdata_valid9 = 1'd0;
reg convert_new_master_rdata_valid10 = 1'd0;
reg convert_new_master_rdata_valid11 = 1'd0;
reg convert_new_master_rdata_valid12 = 1'd0;
reg convert_new_master_rdata_valid13 = 1'd0;
reg convert_new_master_rdata_valid14 = 1'd0;
reg convert_new_master_rdata_valid15 = 1'd0;
reg convert_new_master_rdata_valid16 = 1'd0;
reg convert_new_master_rdata_valid17 = 1'd0;
reg convert_new_master_rdata_valid18 = 1'd0;
reg convert_new_master_rdata_valid19 = 1'd0;
reg convert_new_master_rdata_valid20 = 1'd0;
reg convert_new_master_rdata_valid21 = 1'd0;
reg convert_new_master_rdata_valid22 = 1'd0;
reg convert_new_master_rdata_valid23 = 1'd0;
reg convert_new_master_rdata_valid24 = 1'd0;
reg convert_new_master_rdata_valid25 = 1'd0;
reg convert_new_master_rdata_valid26 = 1'd0;
reg convert_new_master_rdata_valid27 = 1'd0;
reg convert_new_master_rdata_valid28 = 1'd0;
reg convert_new_master_rdata_valid29 = 1'd0;
reg convert_new_master_rdata_valid30 = 1'd0;
reg convert_new_master_rdata_valid31 = 1'd0;
reg convert_new_master_rdata_valid32 = 1'd0;
reg convert_new_master_rdata_valid33 = 1'd0;
reg convert_new_master_rdata_valid34 = 1'd0;
reg convert_new_master_rdata_valid35 = 1'd0;
reg convert_new_master_rdata_valid36 = 1'd0;
reg convert_new_master_rdata_valid37 = 1'd0;
reg convert_new_master_rdata_valid38 = 1'd0;
reg convert_new_master_rdata_valid39 = 1'd0;
reg convert_new_master_rdata_valid40 = 1'd0;
reg convert_new_master_rdata_valid41 = 1'd0;
reg convert_new_master_rdata_valid42 = 1'd0;
reg convert_new_master_rdata_valid43 = 1'd0;
reg convert_new_master_rdata_valid44 = 1'd0;
reg convert_new_master_rdata_valid45 = 1'd0;
reg convert_new_master_rdata_valid46 = 1'd0;
reg convert_new_master_rdata_valid47 = 1'd0;
reg [1:0] convert_state = 2'd0;
reg [1:0] convert_next_state;
reg main_aborted_next_value;
reg main_aborted_next_value_ce;
reg convert_rhs_array_muxed0;
reg [16:0] convert_rhs_array_muxed1;
reg [2:0] convert_rhs_array_muxed2;
reg convert_rhs_array_muxed3;
reg convert_rhs_array_muxed4;
reg convert_rhs_array_muxed5;
reg convert_t_array_muxed0;
reg convert_t_array_muxed1;
reg convert_t_array_muxed2;
reg convert_rhs_array_muxed6;
reg [16:0] convert_rhs_array_muxed7;
reg [2:0] convert_rhs_array_muxed8;
reg convert_rhs_array_muxed9;
reg convert_rhs_array_muxed10;
reg convert_rhs_array_muxed11;
reg convert_t_array_muxed3;
reg convert_t_array_muxed4;
reg convert_t_array_muxed5;
reg [22:0] convert_rhs_array_muxed12;
reg convert_rhs_array_muxed13;
reg convert_rhs_array_muxed14;
reg [22:0] convert_rhs_array_muxed15;
reg convert_rhs_array_muxed16;
reg convert_rhs_array_muxed17;
reg [22:0] convert_rhs_array_muxed18;
reg convert_rhs_array_muxed19;
reg convert_rhs_array_muxed20;
reg [22:0] convert_rhs_array_muxed21;
reg convert_rhs_array_muxed22;
reg convert_rhs_array_muxed23;
reg [22:0] convert_rhs_array_muxed24;
reg convert_rhs_array_muxed25;
reg convert_rhs_array_muxed26;
reg [22:0] convert_rhs_array_muxed27;
reg convert_rhs_array_muxed28;
reg convert_rhs_array_muxed29;
reg [22:0] convert_rhs_array_muxed30;
reg convert_rhs_array_muxed31;
reg convert_rhs_array_muxed32;
reg [22:0] convert_rhs_array_muxed33;
reg convert_rhs_array_muxed34;
reg convert_rhs_array_muxed35;
reg [22:0] convert_rhs_array_muxed36;
reg convert_rhs_array_muxed37;
reg convert_rhs_array_muxed38;
reg [22:0] convert_rhs_array_muxed39;
reg convert_rhs_array_muxed40;
reg convert_rhs_array_muxed41;
reg [22:0] convert_rhs_array_muxed42;
reg convert_rhs_array_muxed43;
reg convert_rhs_array_muxed44;
reg [22:0] convert_rhs_array_muxed45;
reg convert_rhs_array_muxed46;
reg convert_rhs_array_muxed47;
reg [22:0] convert_rhs_array_muxed48;
reg convert_rhs_array_muxed49;
reg convert_rhs_array_muxed50;
reg [22:0] convert_rhs_array_muxed51;
reg convert_rhs_array_muxed52;
reg convert_rhs_array_muxed53;
reg [22:0] convert_rhs_array_muxed54;
reg convert_rhs_array_muxed55;
reg convert_rhs_array_muxed56;
reg [22:0] convert_rhs_array_muxed57;
reg convert_rhs_array_muxed58;
reg convert_rhs_array_muxed59;
reg [2:0] convert_array_muxed0;
reg [16:0] convert_array_muxed1;
reg convert_array_muxed2;
reg convert_array_muxed3;
reg convert_array_muxed4;
reg convert_array_muxed5;
reg convert_array_muxed6;
reg [2:0] convert_array_muxed7;
reg [16:0] convert_array_muxed8;
reg convert_array_muxed9;
reg convert_array_muxed10;
reg convert_array_muxed11;
reg convert_array_muxed12;
reg convert_array_muxed13;
reg [2:0] convert_array_muxed14;
reg [16:0] convert_array_muxed15;
reg convert_array_muxed16;
reg convert_array_muxed17;
reg convert_array_muxed18;
reg convert_array_muxed19;
reg convert_array_muxed20;
reg [2:0] convert_array_muxed21;
reg [16:0] convert_array_muxed22;
reg convert_array_muxed23;
reg convert_array_muxed24;
reg convert_array_muxed25;
reg convert_array_muxed26;
reg convert_array_muxed27;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign main_bankmachine0_req_valid = main_interface_bank0_valid;
assign main_interface_bank0_ready = main_bankmachine0_req_ready;
assign main_bankmachine0_req_we = main_interface_bank0_we;
assign main_bankmachine0_req_addr = main_interface_bank0_addr;
assign main_interface_bank0_lock = main_bankmachine0_req_lock;
assign main_interface_bank0_wdata_ready = main_bankmachine0_req_wdata_ready;
assign main_interface_bank0_rdata_valid = main_bankmachine0_req_rdata_valid;
assign main_bankmachine1_req_valid = main_interface_bank1_valid;
assign main_interface_bank1_ready = main_bankmachine1_req_ready;
assign main_bankmachine1_req_we = main_interface_bank1_we;
assign main_bankmachine1_req_addr = main_interface_bank1_addr;
assign main_interface_bank1_lock = main_bankmachine1_req_lock;
assign main_interface_bank1_wdata_ready = main_bankmachine1_req_wdata_ready;
assign main_interface_bank1_rdata_valid = main_bankmachine1_req_rdata_valid;
assign main_bankmachine2_req_valid = main_interface_bank2_valid;
assign main_interface_bank2_ready = main_bankmachine2_req_ready;
assign main_bankmachine2_req_we = main_interface_bank2_we;
assign main_bankmachine2_req_addr = main_interface_bank2_addr;
assign main_interface_bank2_lock = main_bankmachine2_req_lock;
assign main_interface_bank2_wdata_ready = main_bankmachine2_req_wdata_ready;
assign main_interface_bank2_rdata_valid = main_bankmachine2_req_rdata_valid;
assign main_bankmachine3_req_valid = main_interface_bank3_valid;
assign main_interface_bank3_ready = main_bankmachine3_req_ready;
assign main_bankmachine3_req_we = main_interface_bank3_we;
assign main_bankmachine3_req_addr = main_interface_bank3_addr;
assign main_interface_bank3_lock = main_bankmachine3_req_lock;
assign main_interface_bank3_wdata_ready = main_bankmachine3_req_wdata_ready;
assign main_interface_bank3_rdata_valid = main_bankmachine3_req_rdata_valid;
assign main_bankmachine4_req_valid = main_interface_bank4_valid;
assign main_interface_bank4_ready = main_bankmachine4_req_ready;
assign main_bankmachine4_req_we = main_interface_bank4_we;
assign main_bankmachine4_req_addr = main_interface_bank4_addr;
assign main_interface_bank4_lock = main_bankmachine4_req_lock;
assign main_interface_bank4_wdata_ready = main_bankmachine4_req_wdata_ready;
assign main_interface_bank4_rdata_valid = main_bankmachine4_req_rdata_valid;
assign main_bankmachine5_req_valid = main_interface_bank5_valid;
assign main_interface_bank5_ready = main_bankmachine5_req_ready;
assign main_bankmachine5_req_we = main_interface_bank5_we;
assign main_bankmachine5_req_addr = main_interface_bank5_addr;
assign main_interface_bank5_lock = main_bankmachine5_req_lock;
assign main_interface_bank5_wdata_ready = main_bankmachine5_req_wdata_ready;
assign main_interface_bank5_rdata_valid = main_bankmachine5_req_rdata_valid;
assign main_bankmachine6_req_valid = main_interface_bank6_valid;
assign main_interface_bank6_ready = main_bankmachine6_req_ready;
assign main_bankmachine6_req_we = main_interface_bank6_we;
assign main_bankmachine6_req_addr = main_interface_bank6_addr;
assign main_interface_bank6_lock = main_bankmachine6_req_lock;
assign main_interface_bank6_wdata_ready = main_bankmachine6_req_wdata_ready;
assign main_interface_bank6_rdata_valid = main_bankmachine6_req_rdata_valid;
assign main_bankmachine7_req_valid = main_interface_bank7_valid;
assign main_interface_bank7_ready = main_bankmachine7_req_ready;
assign main_bankmachine7_req_we = main_interface_bank7_we;
assign main_bankmachine7_req_addr = main_interface_bank7_addr;
assign main_interface_bank7_lock = main_bankmachine7_req_lock;
assign main_interface_bank7_wdata_ready = main_bankmachine7_req_wdata_ready;
assign main_interface_bank7_rdata_valid = main_bankmachine7_req_rdata_valid;
assign main_timer_wait = (~main_timer_done0);
assign main_postponer_req_i = main_timer_done0;
assign main_wants_refresh = main_postponer_req_o;
assign main_timer_done1 = (main_timer_count1 == 1'd0);
assign main_timer_done0 = main_timer_done1;
assign main_timer_count0 = main_timer_count1;
assign main_sequencer_start1 = (main_sequencer_start0 | (main_sequencer_count != 1'd0));
assign main_sequencer_done0 = (main_sequencer_done1 & (main_sequencer_count == 1'd0));

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	main_cmd_valid <= 1'd0;
	main_cmd_last <= 1'd0;
	main_sequencer_start0 <= 1'd0;
	convert_refresher_next_state <= 2'd0;
	convert_refresher_next_state <= convert_refresher_state;
	case (convert_refresher_state)
		1'd1: begin
			main_cmd_valid <= 1'd1;
			if (main_cmd_ready) begin
				main_sequencer_start0 <= 1'd1;
				convert_refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			main_cmd_valid <= 1'd1;
			if (main_sequencer_done0) begin
				main_cmd_valid <= 1'd0;
				main_cmd_last <= 1'd1;
				convert_refresher_next_state <= 1'd0;
			end
		end
		default: begin
			if (1'd1) begin
				if (main_wants_refresh) begin
					convert_refresher_next_state <= 1'd1;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine0_cmd_buffer_lookahead_sink_valid = main_bankmachine0_req_valid;
assign main_bankmachine0_req_ready = main_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine0_cmd_buffer_lookahead_sink_payload_we = main_bankmachine0_req_we;
assign main_bankmachine0_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine0_req_addr;
assign main_bankmachine0_cmd_buffer_sink_valid = main_bankmachine0_cmd_buffer_lookahead_source_valid;
assign main_bankmachine0_cmd_buffer_lookahead_source_ready = main_bankmachine0_cmd_buffer_sink_ready;
assign main_bankmachine0_cmd_buffer_sink_first = main_bankmachine0_cmd_buffer_lookahead_source_first;
assign main_bankmachine0_cmd_buffer_sink_last = main_bankmachine0_cmd_buffer_lookahead_source_last;
assign main_bankmachine0_cmd_buffer_sink_payload_we = main_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine0_cmd_buffer_sink_payload_addr = main_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine0_cmd_buffer_source_ready = (main_bankmachine0_req_wdata_ready | main_bankmachine0_req_rdata_valid);
assign main_bankmachine0_req_lock = (main_bankmachine0_cmd_buffer_lookahead_source_valid | main_bankmachine0_cmd_buffer_source_valid);
assign main_bankmachine0_row_hit = (main_bankmachine0_row == main_bankmachine0_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine0_cmd_payload_ba = 1'd0;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	main_bankmachine0_cmd_payload_a <= 17'd0;
	if (main_bankmachine0_row_col_n_addr_sel) begin
		main_bankmachine0_cmd_payload_a <= main_bankmachine0_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine0_cmd_payload_a <= ((main_bankmachine0_auto_precharge <<< 4'd10) | {main_bankmachine0_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine0_twtpcon_valid = ((main_bankmachine0_cmd_valid & main_bankmachine0_cmd_ready) & main_bankmachine0_cmd_payload_is_write);
assign main_bankmachine0_trccon_valid = ((main_bankmachine0_cmd_valid & main_bankmachine0_cmd_ready) & main_bankmachine0_row_open);
assign main_bankmachine0_trascon_valid = ((main_bankmachine0_cmd_valid & main_bankmachine0_cmd_ready) & main_bankmachine0_row_open);

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	main_bankmachine0_auto_precharge <= 1'd0;
	if ((main_bankmachine0_cmd_buffer_lookahead_source_valid & main_bankmachine0_cmd_buffer_source_valid)) begin
		if ((main_bankmachine0_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine0_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine0_auto_precharge <= (main_bankmachine0_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {main_bankmachine0_cmd_buffer_lookahead_fifo_in_last, main_bankmachine0_cmd_buffer_lookahead_fifo_in_first, main_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine0_cmd_buffer_lookahead_fifo_out_last, main_bankmachine0_cmd_buffer_lookahead_fifo_out_first, main_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign main_bankmachine0_cmd_buffer_lookahead_sink_ready = main_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign main_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = main_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine0_cmd_buffer_lookahead_fifo_in_first = main_bankmachine0_cmd_buffer_lookahead_sink_first;
assign main_bankmachine0_cmd_buffer_lookahead_fifo_in_last = main_bankmachine0_cmd_buffer_lookahead_sink_last;
assign main_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine0_cmd_buffer_lookahead_source_valid = main_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign main_bankmachine0_cmd_buffer_lookahead_source_first = main_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine0_cmd_buffer_lookahead_source_last = main_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine0_cmd_buffer_lookahead_source_payload_we = main_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine0_cmd_buffer_lookahead_source_payload_addr = main_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = main_bankmachine0_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	main_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine0_cmd_buffer_lookahead_replace) begin
		main_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine0_cmd_buffer_lookahead_wrport_adr <= main_bankmachine0_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign main_bankmachine0_cmd_buffer_lookahead_wrport_we = (main_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (main_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | main_bankmachine0_cmd_buffer_lookahead_replace));
assign main_bankmachine0_cmd_buffer_lookahead_do_read = (main_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & main_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign main_bankmachine0_cmd_buffer_lookahead_rdport_adr = main_bankmachine0_cmd_buffer_lookahead_consume;
assign main_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = main_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (main_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (main_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine0_cmd_buffer_sink_ready = ((~main_bankmachine0_cmd_buffer_source_valid) | main_bankmachine0_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	main_bankmachine0_req_wdata_ready <= 1'd0;
	main_bankmachine0_req_rdata_valid <= 1'd0;
	main_bankmachine0_refresh_gnt <= 1'd0;
	main_bankmachine0_cmd_valid <= 1'd0;
	main_bankmachine0_cmd_payload_cas <= 1'd0;
	main_bankmachine0_cmd_payload_ras <= 1'd0;
	main_bankmachine0_cmd_payload_we <= 1'd0;
	main_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine0_cmd_payload_is_read <= 1'd0;
	main_bankmachine0_cmd_payload_is_write <= 1'd0;
	main_bankmachine0_row_open <= 1'd0;
	main_bankmachine0_row_close <= 1'd0;
	main_bankmachine0_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine0_next_state <= 5'd0;
	convert_bankmachine0_next_state <= convert_bankmachine0_state;
	case (convert_bankmachine0_state)
		1'd1: begin
			if ((main_bankmachine0_twtpcon_ready & main_bankmachine0_trascon_ready)) begin
				main_bankmachine0_cmd_valid <= 1'd1;
				if (main_bankmachine0_cmd_ready) begin
					convert_bankmachine0_next_state <= 3'd5;
				end
				main_bankmachine0_cmd_payload_ras <= 1'd1;
				main_bankmachine0_cmd_payload_we <= 1'd1;
				main_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine0_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine0_twtpcon_ready & main_bankmachine0_trascon_ready)) begin
				convert_bankmachine0_next_state <= 3'd5;
			end
			main_bankmachine0_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine0_trccon_ready) begin
				main_bankmachine0_row_col_n_addr_sel <= 1'd1;
				main_bankmachine0_row_open <= 1'd1;
				main_bankmachine0_cmd_valid <= 1'd1;
				main_bankmachine0_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine0_cmd_ready) begin
					convert_bankmachine0_next_state <= 5'd16;
				end
				main_bankmachine0_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine0_twtpcon_ready) begin
				main_bankmachine0_refresh_gnt <= 1'd1;
			end
			main_bankmachine0_row_close <= 1'd1;
			main_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine0_refresh_req)) begin
				convert_bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine0_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine0_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine0_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine0_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine0_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine0_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine0_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine0_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine0_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine0_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine0_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine0_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine0_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine0_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine0_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine0_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine0_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine0_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine0_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine0_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine0_refresh_req) begin
				convert_bankmachine0_next_state <= 3'd4;
			end else begin
				if (main_bankmachine0_cmd_buffer_source_valid) begin
					if (main_bankmachine0_row_opened) begin
						if (main_bankmachine0_row_hit) begin
							main_bankmachine0_cmd_valid <= 1'd1;
							if (main_bankmachine0_cmd_buffer_source_payload_we) begin
								main_bankmachine0_req_wdata_ready <= main_bankmachine0_cmd_ready;
								main_bankmachine0_cmd_payload_is_write <= 1'd1;
								main_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine0_req_rdata_valid <= main_bankmachine0_cmd_ready;
								main_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine0_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine0_cmd_ready & main_bankmachine0_auto_precharge)) begin
								convert_bankmachine0_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine0_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine0_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine1_cmd_buffer_lookahead_sink_valid = main_bankmachine1_req_valid;
assign main_bankmachine1_req_ready = main_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine1_cmd_buffer_lookahead_sink_payload_we = main_bankmachine1_req_we;
assign main_bankmachine1_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine1_req_addr;
assign main_bankmachine1_cmd_buffer_sink_valid = main_bankmachine1_cmd_buffer_lookahead_source_valid;
assign main_bankmachine1_cmd_buffer_lookahead_source_ready = main_bankmachine1_cmd_buffer_sink_ready;
assign main_bankmachine1_cmd_buffer_sink_first = main_bankmachine1_cmd_buffer_lookahead_source_first;
assign main_bankmachine1_cmd_buffer_sink_last = main_bankmachine1_cmd_buffer_lookahead_source_last;
assign main_bankmachine1_cmd_buffer_sink_payload_we = main_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine1_cmd_buffer_sink_payload_addr = main_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine1_cmd_buffer_source_ready = (main_bankmachine1_req_wdata_ready | main_bankmachine1_req_rdata_valid);
assign main_bankmachine1_req_lock = (main_bankmachine1_cmd_buffer_lookahead_source_valid | main_bankmachine1_cmd_buffer_source_valid);
assign main_bankmachine1_row_hit = (main_bankmachine1_row == main_bankmachine1_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine1_cmd_payload_ba = 1'd1;

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	main_bankmachine1_cmd_payload_a <= 17'd0;
	if (main_bankmachine1_row_col_n_addr_sel) begin
		main_bankmachine1_cmd_payload_a <= main_bankmachine1_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine1_cmd_payload_a <= ((main_bankmachine1_auto_precharge <<< 4'd10) | {main_bankmachine1_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine1_twtpcon_valid = ((main_bankmachine1_cmd_valid & main_bankmachine1_cmd_ready) & main_bankmachine1_cmd_payload_is_write);
assign main_bankmachine1_trccon_valid = ((main_bankmachine1_cmd_valid & main_bankmachine1_cmd_ready) & main_bankmachine1_row_open);
assign main_bankmachine1_trascon_valid = ((main_bankmachine1_cmd_valid & main_bankmachine1_cmd_ready) & main_bankmachine1_row_open);

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	main_bankmachine1_auto_precharge <= 1'd0;
	if ((main_bankmachine1_cmd_buffer_lookahead_source_valid & main_bankmachine1_cmd_buffer_source_valid)) begin
		if ((main_bankmachine1_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine1_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine1_auto_precharge <= (main_bankmachine1_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {main_bankmachine1_cmd_buffer_lookahead_fifo_in_last, main_bankmachine1_cmd_buffer_lookahead_fifo_in_first, main_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine1_cmd_buffer_lookahead_fifo_out_last, main_bankmachine1_cmd_buffer_lookahead_fifo_out_first, main_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign main_bankmachine1_cmd_buffer_lookahead_sink_ready = main_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign main_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = main_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine1_cmd_buffer_lookahead_fifo_in_first = main_bankmachine1_cmd_buffer_lookahead_sink_first;
assign main_bankmachine1_cmd_buffer_lookahead_fifo_in_last = main_bankmachine1_cmd_buffer_lookahead_sink_last;
assign main_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine1_cmd_buffer_lookahead_source_valid = main_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign main_bankmachine1_cmd_buffer_lookahead_source_first = main_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine1_cmd_buffer_lookahead_source_last = main_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine1_cmd_buffer_lookahead_source_payload_we = main_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine1_cmd_buffer_lookahead_source_payload_addr = main_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = main_bankmachine1_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	main_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine1_cmd_buffer_lookahead_replace) begin
		main_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine1_cmd_buffer_lookahead_wrport_adr <= main_bankmachine1_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign main_bankmachine1_cmd_buffer_lookahead_wrport_we = (main_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (main_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | main_bankmachine1_cmd_buffer_lookahead_replace));
assign main_bankmachine1_cmd_buffer_lookahead_do_read = (main_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & main_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign main_bankmachine1_cmd_buffer_lookahead_rdport_adr = main_bankmachine1_cmd_buffer_lookahead_consume;
assign main_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = main_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (main_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (main_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine1_cmd_buffer_sink_ready = ((~main_bankmachine1_cmd_buffer_source_valid) | main_bankmachine1_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	main_bankmachine1_req_wdata_ready <= 1'd0;
	main_bankmachine1_req_rdata_valid <= 1'd0;
	main_bankmachine1_refresh_gnt <= 1'd0;
	main_bankmachine1_cmd_valid <= 1'd0;
	main_bankmachine1_cmd_payload_cas <= 1'd0;
	main_bankmachine1_cmd_payload_ras <= 1'd0;
	main_bankmachine1_cmd_payload_we <= 1'd0;
	main_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine1_cmd_payload_is_read <= 1'd0;
	main_bankmachine1_cmd_payload_is_write <= 1'd0;
	main_bankmachine1_row_open <= 1'd0;
	main_bankmachine1_row_close <= 1'd0;
	main_bankmachine1_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine1_next_state <= 5'd0;
	convert_bankmachine1_next_state <= convert_bankmachine1_state;
	case (convert_bankmachine1_state)
		1'd1: begin
			if ((main_bankmachine1_twtpcon_ready & main_bankmachine1_trascon_ready)) begin
				main_bankmachine1_cmd_valid <= 1'd1;
				if (main_bankmachine1_cmd_ready) begin
					convert_bankmachine1_next_state <= 3'd5;
				end
				main_bankmachine1_cmd_payload_ras <= 1'd1;
				main_bankmachine1_cmd_payload_we <= 1'd1;
				main_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine1_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine1_twtpcon_ready & main_bankmachine1_trascon_ready)) begin
				convert_bankmachine1_next_state <= 3'd5;
			end
			main_bankmachine1_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine1_trccon_ready) begin
				main_bankmachine1_row_col_n_addr_sel <= 1'd1;
				main_bankmachine1_row_open <= 1'd1;
				main_bankmachine1_cmd_valid <= 1'd1;
				main_bankmachine1_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine1_cmd_ready) begin
					convert_bankmachine1_next_state <= 5'd16;
				end
				main_bankmachine1_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine1_twtpcon_ready) begin
				main_bankmachine1_refresh_gnt <= 1'd1;
			end
			main_bankmachine1_row_close <= 1'd1;
			main_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine1_refresh_req)) begin
				convert_bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine1_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine1_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine1_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine1_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine1_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine1_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine1_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine1_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine1_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine1_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine1_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine1_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine1_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine1_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine1_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine1_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine1_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine1_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine1_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine1_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine1_refresh_req) begin
				convert_bankmachine1_next_state <= 3'd4;
			end else begin
				if (main_bankmachine1_cmd_buffer_source_valid) begin
					if (main_bankmachine1_row_opened) begin
						if (main_bankmachine1_row_hit) begin
							main_bankmachine1_cmd_valid <= 1'd1;
							if (main_bankmachine1_cmd_buffer_source_payload_we) begin
								main_bankmachine1_req_wdata_ready <= main_bankmachine1_cmd_ready;
								main_bankmachine1_cmd_payload_is_write <= 1'd1;
								main_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine1_req_rdata_valid <= main_bankmachine1_cmd_ready;
								main_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine1_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine1_cmd_ready & main_bankmachine1_auto_precharge)) begin
								convert_bankmachine1_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine1_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine1_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine2_cmd_buffer_lookahead_sink_valid = main_bankmachine2_req_valid;
assign main_bankmachine2_req_ready = main_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine2_cmd_buffer_lookahead_sink_payload_we = main_bankmachine2_req_we;
assign main_bankmachine2_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine2_req_addr;
assign main_bankmachine2_cmd_buffer_sink_valid = main_bankmachine2_cmd_buffer_lookahead_source_valid;
assign main_bankmachine2_cmd_buffer_lookahead_source_ready = main_bankmachine2_cmd_buffer_sink_ready;
assign main_bankmachine2_cmd_buffer_sink_first = main_bankmachine2_cmd_buffer_lookahead_source_first;
assign main_bankmachine2_cmd_buffer_sink_last = main_bankmachine2_cmd_buffer_lookahead_source_last;
assign main_bankmachine2_cmd_buffer_sink_payload_we = main_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine2_cmd_buffer_sink_payload_addr = main_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine2_cmd_buffer_source_ready = (main_bankmachine2_req_wdata_ready | main_bankmachine2_req_rdata_valid);
assign main_bankmachine2_req_lock = (main_bankmachine2_cmd_buffer_lookahead_source_valid | main_bankmachine2_cmd_buffer_source_valid);
assign main_bankmachine2_row_hit = (main_bankmachine2_row == main_bankmachine2_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine2_cmd_payload_ba = 2'd2;

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	main_bankmachine2_cmd_payload_a <= 17'd0;
	if (main_bankmachine2_row_col_n_addr_sel) begin
		main_bankmachine2_cmd_payload_a <= main_bankmachine2_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine2_cmd_payload_a <= ((main_bankmachine2_auto_precharge <<< 4'd10) | {main_bankmachine2_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine2_twtpcon_valid = ((main_bankmachine2_cmd_valid & main_bankmachine2_cmd_ready) & main_bankmachine2_cmd_payload_is_write);
assign main_bankmachine2_trccon_valid = ((main_bankmachine2_cmd_valid & main_bankmachine2_cmd_ready) & main_bankmachine2_row_open);
assign main_bankmachine2_trascon_valid = ((main_bankmachine2_cmd_valid & main_bankmachine2_cmd_ready) & main_bankmachine2_row_open);

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	main_bankmachine2_auto_precharge <= 1'd0;
	if ((main_bankmachine2_cmd_buffer_lookahead_source_valid & main_bankmachine2_cmd_buffer_source_valid)) begin
		if ((main_bankmachine2_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine2_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine2_auto_precharge <= (main_bankmachine2_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {main_bankmachine2_cmd_buffer_lookahead_fifo_in_last, main_bankmachine2_cmd_buffer_lookahead_fifo_in_first, main_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine2_cmd_buffer_lookahead_fifo_out_last, main_bankmachine2_cmd_buffer_lookahead_fifo_out_first, main_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign main_bankmachine2_cmd_buffer_lookahead_sink_ready = main_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign main_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = main_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine2_cmd_buffer_lookahead_fifo_in_first = main_bankmachine2_cmd_buffer_lookahead_sink_first;
assign main_bankmachine2_cmd_buffer_lookahead_fifo_in_last = main_bankmachine2_cmd_buffer_lookahead_sink_last;
assign main_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine2_cmd_buffer_lookahead_source_valid = main_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign main_bankmachine2_cmd_buffer_lookahead_source_first = main_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine2_cmd_buffer_lookahead_source_last = main_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine2_cmd_buffer_lookahead_source_payload_we = main_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine2_cmd_buffer_lookahead_source_payload_addr = main_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = main_bankmachine2_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	main_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine2_cmd_buffer_lookahead_replace) begin
		main_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine2_cmd_buffer_lookahead_wrport_adr <= main_bankmachine2_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign main_bankmachine2_cmd_buffer_lookahead_wrport_we = (main_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (main_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | main_bankmachine2_cmd_buffer_lookahead_replace));
assign main_bankmachine2_cmd_buffer_lookahead_do_read = (main_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & main_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign main_bankmachine2_cmd_buffer_lookahead_rdport_adr = main_bankmachine2_cmd_buffer_lookahead_consume;
assign main_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = main_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (main_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (main_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine2_cmd_buffer_sink_ready = ((~main_bankmachine2_cmd_buffer_source_valid) | main_bankmachine2_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	main_bankmachine2_req_wdata_ready <= 1'd0;
	main_bankmachine2_req_rdata_valid <= 1'd0;
	main_bankmachine2_refresh_gnt <= 1'd0;
	main_bankmachine2_cmd_valid <= 1'd0;
	main_bankmachine2_cmd_payload_cas <= 1'd0;
	main_bankmachine2_cmd_payload_ras <= 1'd0;
	main_bankmachine2_cmd_payload_we <= 1'd0;
	main_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine2_cmd_payload_is_read <= 1'd0;
	main_bankmachine2_cmd_payload_is_write <= 1'd0;
	main_bankmachine2_row_open <= 1'd0;
	main_bankmachine2_row_close <= 1'd0;
	main_bankmachine2_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine2_next_state <= 5'd0;
	convert_bankmachine2_next_state <= convert_bankmachine2_state;
	case (convert_bankmachine2_state)
		1'd1: begin
			if ((main_bankmachine2_twtpcon_ready & main_bankmachine2_trascon_ready)) begin
				main_bankmachine2_cmd_valid <= 1'd1;
				if (main_bankmachine2_cmd_ready) begin
					convert_bankmachine2_next_state <= 3'd5;
				end
				main_bankmachine2_cmd_payload_ras <= 1'd1;
				main_bankmachine2_cmd_payload_we <= 1'd1;
				main_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine2_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine2_twtpcon_ready & main_bankmachine2_trascon_ready)) begin
				convert_bankmachine2_next_state <= 3'd5;
			end
			main_bankmachine2_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine2_trccon_ready) begin
				main_bankmachine2_row_col_n_addr_sel <= 1'd1;
				main_bankmachine2_row_open <= 1'd1;
				main_bankmachine2_cmd_valid <= 1'd1;
				main_bankmachine2_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine2_cmd_ready) begin
					convert_bankmachine2_next_state <= 5'd16;
				end
				main_bankmachine2_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine2_twtpcon_ready) begin
				main_bankmachine2_refresh_gnt <= 1'd1;
			end
			main_bankmachine2_row_close <= 1'd1;
			main_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine2_refresh_req)) begin
				convert_bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine2_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine2_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine2_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine2_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine2_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine2_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine2_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine2_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine2_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine2_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine2_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine2_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine2_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine2_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine2_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine2_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine2_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine2_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine2_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine2_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine2_refresh_req) begin
				convert_bankmachine2_next_state <= 3'd4;
			end else begin
				if (main_bankmachine2_cmd_buffer_source_valid) begin
					if (main_bankmachine2_row_opened) begin
						if (main_bankmachine2_row_hit) begin
							main_bankmachine2_cmd_valid <= 1'd1;
							if (main_bankmachine2_cmd_buffer_source_payload_we) begin
								main_bankmachine2_req_wdata_ready <= main_bankmachine2_cmd_ready;
								main_bankmachine2_cmd_payload_is_write <= 1'd1;
								main_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine2_req_rdata_valid <= main_bankmachine2_cmd_ready;
								main_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine2_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine2_cmd_ready & main_bankmachine2_auto_precharge)) begin
								convert_bankmachine2_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine2_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine2_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine3_cmd_buffer_lookahead_sink_valid = main_bankmachine3_req_valid;
assign main_bankmachine3_req_ready = main_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine3_cmd_buffer_lookahead_sink_payload_we = main_bankmachine3_req_we;
assign main_bankmachine3_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine3_req_addr;
assign main_bankmachine3_cmd_buffer_sink_valid = main_bankmachine3_cmd_buffer_lookahead_source_valid;
assign main_bankmachine3_cmd_buffer_lookahead_source_ready = main_bankmachine3_cmd_buffer_sink_ready;
assign main_bankmachine3_cmd_buffer_sink_first = main_bankmachine3_cmd_buffer_lookahead_source_first;
assign main_bankmachine3_cmd_buffer_sink_last = main_bankmachine3_cmd_buffer_lookahead_source_last;
assign main_bankmachine3_cmd_buffer_sink_payload_we = main_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine3_cmd_buffer_sink_payload_addr = main_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine3_cmd_buffer_source_ready = (main_bankmachine3_req_wdata_ready | main_bankmachine3_req_rdata_valid);
assign main_bankmachine3_req_lock = (main_bankmachine3_cmd_buffer_lookahead_source_valid | main_bankmachine3_cmd_buffer_source_valid);
assign main_bankmachine3_row_hit = (main_bankmachine3_row == main_bankmachine3_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine3_cmd_payload_ba = 2'd3;

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	main_bankmachine3_cmd_payload_a <= 17'd0;
	if (main_bankmachine3_row_col_n_addr_sel) begin
		main_bankmachine3_cmd_payload_a <= main_bankmachine3_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine3_cmd_payload_a <= ((main_bankmachine3_auto_precharge <<< 4'd10) | {main_bankmachine3_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine3_twtpcon_valid = ((main_bankmachine3_cmd_valid & main_bankmachine3_cmd_ready) & main_bankmachine3_cmd_payload_is_write);
assign main_bankmachine3_trccon_valid = ((main_bankmachine3_cmd_valid & main_bankmachine3_cmd_ready) & main_bankmachine3_row_open);
assign main_bankmachine3_trascon_valid = ((main_bankmachine3_cmd_valid & main_bankmachine3_cmd_ready) & main_bankmachine3_row_open);

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	main_bankmachine3_auto_precharge <= 1'd0;
	if ((main_bankmachine3_cmd_buffer_lookahead_source_valid & main_bankmachine3_cmd_buffer_source_valid)) begin
		if ((main_bankmachine3_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine3_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine3_auto_precharge <= (main_bankmachine3_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {main_bankmachine3_cmd_buffer_lookahead_fifo_in_last, main_bankmachine3_cmd_buffer_lookahead_fifo_in_first, main_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine3_cmd_buffer_lookahead_fifo_out_last, main_bankmachine3_cmd_buffer_lookahead_fifo_out_first, main_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign main_bankmachine3_cmd_buffer_lookahead_sink_ready = main_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign main_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = main_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine3_cmd_buffer_lookahead_fifo_in_first = main_bankmachine3_cmd_buffer_lookahead_sink_first;
assign main_bankmachine3_cmd_buffer_lookahead_fifo_in_last = main_bankmachine3_cmd_buffer_lookahead_sink_last;
assign main_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine3_cmd_buffer_lookahead_source_valid = main_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign main_bankmachine3_cmd_buffer_lookahead_source_first = main_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine3_cmd_buffer_lookahead_source_last = main_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine3_cmd_buffer_lookahead_source_payload_we = main_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine3_cmd_buffer_lookahead_source_payload_addr = main_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = main_bankmachine3_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	main_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine3_cmd_buffer_lookahead_replace) begin
		main_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine3_cmd_buffer_lookahead_wrport_adr <= main_bankmachine3_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign main_bankmachine3_cmd_buffer_lookahead_wrport_we = (main_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (main_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | main_bankmachine3_cmd_buffer_lookahead_replace));
assign main_bankmachine3_cmd_buffer_lookahead_do_read = (main_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & main_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign main_bankmachine3_cmd_buffer_lookahead_rdport_adr = main_bankmachine3_cmd_buffer_lookahead_consume;
assign main_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = main_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (main_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (main_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine3_cmd_buffer_sink_ready = ((~main_bankmachine3_cmd_buffer_source_valid) | main_bankmachine3_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	main_bankmachine3_req_wdata_ready <= 1'd0;
	main_bankmachine3_req_rdata_valid <= 1'd0;
	main_bankmachine3_refresh_gnt <= 1'd0;
	main_bankmachine3_cmd_valid <= 1'd0;
	main_bankmachine3_cmd_payload_cas <= 1'd0;
	main_bankmachine3_cmd_payload_ras <= 1'd0;
	main_bankmachine3_cmd_payload_we <= 1'd0;
	main_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine3_cmd_payload_is_read <= 1'd0;
	main_bankmachine3_cmd_payload_is_write <= 1'd0;
	main_bankmachine3_row_open <= 1'd0;
	main_bankmachine3_row_close <= 1'd0;
	main_bankmachine3_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine3_next_state <= 5'd0;
	convert_bankmachine3_next_state <= convert_bankmachine3_state;
	case (convert_bankmachine3_state)
		1'd1: begin
			if ((main_bankmachine3_twtpcon_ready & main_bankmachine3_trascon_ready)) begin
				main_bankmachine3_cmd_valid <= 1'd1;
				if (main_bankmachine3_cmd_ready) begin
					convert_bankmachine3_next_state <= 3'd5;
				end
				main_bankmachine3_cmd_payload_ras <= 1'd1;
				main_bankmachine3_cmd_payload_we <= 1'd1;
				main_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine3_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine3_twtpcon_ready & main_bankmachine3_trascon_ready)) begin
				convert_bankmachine3_next_state <= 3'd5;
			end
			main_bankmachine3_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine3_trccon_ready) begin
				main_bankmachine3_row_col_n_addr_sel <= 1'd1;
				main_bankmachine3_row_open <= 1'd1;
				main_bankmachine3_cmd_valid <= 1'd1;
				main_bankmachine3_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine3_cmd_ready) begin
					convert_bankmachine3_next_state <= 5'd16;
				end
				main_bankmachine3_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine3_twtpcon_ready) begin
				main_bankmachine3_refresh_gnt <= 1'd1;
			end
			main_bankmachine3_row_close <= 1'd1;
			main_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine3_refresh_req)) begin
				convert_bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine3_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine3_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine3_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine3_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine3_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine3_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine3_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine3_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine3_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine3_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine3_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine3_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine3_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine3_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine3_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine3_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine3_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine3_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine3_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine3_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine3_refresh_req) begin
				convert_bankmachine3_next_state <= 3'd4;
			end else begin
				if (main_bankmachine3_cmd_buffer_source_valid) begin
					if (main_bankmachine3_row_opened) begin
						if (main_bankmachine3_row_hit) begin
							main_bankmachine3_cmd_valid <= 1'd1;
							if (main_bankmachine3_cmd_buffer_source_payload_we) begin
								main_bankmachine3_req_wdata_ready <= main_bankmachine3_cmd_ready;
								main_bankmachine3_cmd_payload_is_write <= 1'd1;
								main_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine3_req_rdata_valid <= main_bankmachine3_cmd_ready;
								main_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine3_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine3_cmd_ready & main_bankmachine3_auto_precharge)) begin
								convert_bankmachine3_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine3_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine3_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine4_cmd_buffer_lookahead_sink_valid = main_bankmachine4_req_valid;
assign main_bankmachine4_req_ready = main_bankmachine4_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine4_cmd_buffer_lookahead_sink_payload_we = main_bankmachine4_req_we;
assign main_bankmachine4_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine4_req_addr;
assign main_bankmachine4_cmd_buffer_sink_valid = main_bankmachine4_cmd_buffer_lookahead_source_valid;
assign main_bankmachine4_cmd_buffer_lookahead_source_ready = main_bankmachine4_cmd_buffer_sink_ready;
assign main_bankmachine4_cmd_buffer_sink_first = main_bankmachine4_cmd_buffer_lookahead_source_first;
assign main_bankmachine4_cmd_buffer_sink_last = main_bankmachine4_cmd_buffer_lookahead_source_last;
assign main_bankmachine4_cmd_buffer_sink_payload_we = main_bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine4_cmd_buffer_sink_payload_addr = main_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine4_cmd_buffer_source_ready = (main_bankmachine4_req_wdata_ready | main_bankmachine4_req_rdata_valid);
assign main_bankmachine4_req_lock = (main_bankmachine4_cmd_buffer_lookahead_source_valid | main_bankmachine4_cmd_buffer_source_valid);
assign main_bankmachine4_row_hit = (main_bankmachine4_row == main_bankmachine4_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine4_cmd_payload_ba = 3'd4;

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	main_bankmachine4_cmd_payload_a <= 17'd0;
	if (main_bankmachine4_row_col_n_addr_sel) begin
		main_bankmachine4_cmd_payload_a <= main_bankmachine4_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine4_cmd_payload_a <= ((main_bankmachine4_auto_precharge <<< 4'd10) | {main_bankmachine4_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine4_twtpcon_valid = ((main_bankmachine4_cmd_valid & main_bankmachine4_cmd_ready) & main_bankmachine4_cmd_payload_is_write);
assign main_bankmachine4_trccon_valid = ((main_bankmachine4_cmd_valid & main_bankmachine4_cmd_ready) & main_bankmachine4_row_open);
assign main_bankmachine4_trascon_valid = ((main_bankmachine4_cmd_valid & main_bankmachine4_cmd_ready) & main_bankmachine4_row_open);

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	main_bankmachine4_auto_precharge <= 1'd0;
	if ((main_bankmachine4_cmd_buffer_lookahead_source_valid & main_bankmachine4_cmd_buffer_source_valid)) begin
		if ((main_bankmachine4_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine4_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine4_auto_precharge <= (main_bankmachine4_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {main_bankmachine4_cmd_buffer_lookahead_fifo_in_last, main_bankmachine4_cmd_buffer_lookahead_fifo_in_first, main_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine4_cmd_buffer_lookahead_fifo_out_last, main_bankmachine4_cmd_buffer_lookahead_fifo_out_first, main_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign main_bankmachine4_cmd_buffer_lookahead_sink_ready = main_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign main_bankmachine4_cmd_buffer_lookahead_syncfifo4_we = main_bankmachine4_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine4_cmd_buffer_lookahead_fifo_in_first = main_bankmachine4_cmd_buffer_lookahead_sink_first;
assign main_bankmachine4_cmd_buffer_lookahead_fifo_in_last = main_bankmachine4_cmd_buffer_lookahead_sink_last;
assign main_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine4_cmd_buffer_lookahead_source_valid = main_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign main_bankmachine4_cmd_buffer_lookahead_source_first = main_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine4_cmd_buffer_lookahead_source_last = main_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine4_cmd_buffer_lookahead_source_payload_we = main_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine4_cmd_buffer_lookahead_source_payload_addr = main_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine4_cmd_buffer_lookahead_syncfifo4_re = main_bankmachine4_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	main_bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine4_cmd_buffer_lookahead_replace) begin
		main_bankmachine4_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine4_cmd_buffer_lookahead_wrport_adr <= main_bankmachine4_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine4_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign main_bankmachine4_cmd_buffer_lookahead_wrport_we = (main_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (main_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | main_bankmachine4_cmd_buffer_lookahead_replace));
assign main_bankmachine4_cmd_buffer_lookahead_do_read = (main_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & main_bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign main_bankmachine4_cmd_buffer_lookahead_rdport_adr = main_bankmachine4_cmd_buffer_lookahead_consume;
assign main_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = main_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (main_bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (main_bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine4_cmd_buffer_sink_ready = ((~main_bankmachine4_cmd_buffer_source_valid) | main_bankmachine4_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	main_bankmachine4_req_wdata_ready <= 1'd0;
	main_bankmachine4_req_rdata_valid <= 1'd0;
	main_bankmachine4_refresh_gnt <= 1'd0;
	main_bankmachine4_cmd_valid <= 1'd0;
	main_bankmachine4_cmd_payload_cas <= 1'd0;
	main_bankmachine4_cmd_payload_ras <= 1'd0;
	main_bankmachine4_cmd_payload_we <= 1'd0;
	main_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine4_cmd_payload_is_read <= 1'd0;
	main_bankmachine4_cmd_payload_is_write <= 1'd0;
	main_bankmachine4_row_open <= 1'd0;
	main_bankmachine4_row_close <= 1'd0;
	main_bankmachine4_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine4_next_state <= 5'd0;
	convert_bankmachine4_next_state <= convert_bankmachine4_state;
	case (convert_bankmachine4_state)
		1'd1: begin
			if ((main_bankmachine4_twtpcon_ready & main_bankmachine4_trascon_ready)) begin
				main_bankmachine4_cmd_valid <= 1'd1;
				if (main_bankmachine4_cmd_ready) begin
					convert_bankmachine4_next_state <= 3'd5;
				end
				main_bankmachine4_cmd_payload_ras <= 1'd1;
				main_bankmachine4_cmd_payload_we <= 1'd1;
				main_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine4_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine4_twtpcon_ready & main_bankmachine4_trascon_ready)) begin
				convert_bankmachine4_next_state <= 3'd5;
			end
			main_bankmachine4_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine4_trccon_ready) begin
				main_bankmachine4_row_col_n_addr_sel <= 1'd1;
				main_bankmachine4_row_open <= 1'd1;
				main_bankmachine4_cmd_valid <= 1'd1;
				main_bankmachine4_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine4_cmd_ready) begin
					convert_bankmachine4_next_state <= 5'd16;
				end
				main_bankmachine4_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine4_twtpcon_ready) begin
				main_bankmachine4_refresh_gnt <= 1'd1;
			end
			main_bankmachine4_row_close <= 1'd1;
			main_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine4_refresh_req)) begin
				convert_bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine4_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine4_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine4_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine4_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine4_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine4_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine4_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine4_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine4_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine4_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine4_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine4_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine4_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine4_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine4_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine4_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine4_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine4_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine4_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine4_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine4_refresh_req) begin
				convert_bankmachine4_next_state <= 3'd4;
			end else begin
				if (main_bankmachine4_cmd_buffer_source_valid) begin
					if (main_bankmachine4_row_opened) begin
						if (main_bankmachine4_row_hit) begin
							main_bankmachine4_cmd_valid <= 1'd1;
							if (main_bankmachine4_cmd_buffer_source_payload_we) begin
								main_bankmachine4_req_wdata_ready <= main_bankmachine4_cmd_ready;
								main_bankmachine4_cmd_payload_is_write <= 1'd1;
								main_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine4_req_rdata_valid <= main_bankmachine4_cmd_ready;
								main_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine4_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine4_cmd_ready & main_bankmachine4_auto_precharge)) begin
								convert_bankmachine4_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine4_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine4_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine5_cmd_buffer_lookahead_sink_valid = main_bankmachine5_req_valid;
assign main_bankmachine5_req_ready = main_bankmachine5_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine5_cmd_buffer_lookahead_sink_payload_we = main_bankmachine5_req_we;
assign main_bankmachine5_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine5_req_addr;
assign main_bankmachine5_cmd_buffer_sink_valid = main_bankmachine5_cmd_buffer_lookahead_source_valid;
assign main_bankmachine5_cmd_buffer_lookahead_source_ready = main_bankmachine5_cmd_buffer_sink_ready;
assign main_bankmachine5_cmd_buffer_sink_first = main_bankmachine5_cmd_buffer_lookahead_source_first;
assign main_bankmachine5_cmd_buffer_sink_last = main_bankmachine5_cmd_buffer_lookahead_source_last;
assign main_bankmachine5_cmd_buffer_sink_payload_we = main_bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine5_cmd_buffer_sink_payload_addr = main_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine5_cmd_buffer_source_ready = (main_bankmachine5_req_wdata_ready | main_bankmachine5_req_rdata_valid);
assign main_bankmachine5_req_lock = (main_bankmachine5_cmd_buffer_lookahead_source_valid | main_bankmachine5_cmd_buffer_source_valid);
assign main_bankmachine5_row_hit = (main_bankmachine5_row == main_bankmachine5_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine5_cmd_payload_ba = 3'd5;

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	main_bankmachine5_cmd_payload_a <= 17'd0;
	if (main_bankmachine5_row_col_n_addr_sel) begin
		main_bankmachine5_cmd_payload_a <= main_bankmachine5_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine5_cmd_payload_a <= ((main_bankmachine5_auto_precharge <<< 4'd10) | {main_bankmachine5_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine5_twtpcon_valid = ((main_bankmachine5_cmd_valid & main_bankmachine5_cmd_ready) & main_bankmachine5_cmd_payload_is_write);
assign main_bankmachine5_trccon_valid = ((main_bankmachine5_cmd_valid & main_bankmachine5_cmd_ready) & main_bankmachine5_row_open);
assign main_bankmachine5_trascon_valid = ((main_bankmachine5_cmd_valid & main_bankmachine5_cmd_ready) & main_bankmachine5_row_open);

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	main_bankmachine5_auto_precharge <= 1'd0;
	if ((main_bankmachine5_cmd_buffer_lookahead_source_valid & main_bankmachine5_cmd_buffer_source_valid)) begin
		if ((main_bankmachine5_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine5_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine5_auto_precharge <= (main_bankmachine5_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {main_bankmachine5_cmd_buffer_lookahead_fifo_in_last, main_bankmachine5_cmd_buffer_lookahead_fifo_in_first, main_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine5_cmd_buffer_lookahead_fifo_out_last, main_bankmachine5_cmd_buffer_lookahead_fifo_out_first, main_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign main_bankmachine5_cmd_buffer_lookahead_sink_ready = main_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign main_bankmachine5_cmd_buffer_lookahead_syncfifo5_we = main_bankmachine5_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine5_cmd_buffer_lookahead_fifo_in_first = main_bankmachine5_cmd_buffer_lookahead_sink_first;
assign main_bankmachine5_cmd_buffer_lookahead_fifo_in_last = main_bankmachine5_cmd_buffer_lookahead_sink_last;
assign main_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine5_cmd_buffer_lookahead_source_valid = main_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign main_bankmachine5_cmd_buffer_lookahead_source_first = main_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine5_cmd_buffer_lookahead_source_last = main_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine5_cmd_buffer_lookahead_source_payload_we = main_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine5_cmd_buffer_lookahead_source_payload_addr = main_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine5_cmd_buffer_lookahead_syncfifo5_re = main_bankmachine5_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	main_bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine5_cmd_buffer_lookahead_replace) begin
		main_bankmachine5_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine5_cmd_buffer_lookahead_wrport_adr <= main_bankmachine5_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine5_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign main_bankmachine5_cmd_buffer_lookahead_wrport_we = (main_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (main_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | main_bankmachine5_cmd_buffer_lookahead_replace));
assign main_bankmachine5_cmd_buffer_lookahead_do_read = (main_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & main_bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign main_bankmachine5_cmd_buffer_lookahead_rdport_adr = main_bankmachine5_cmd_buffer_lookahead_consume;
assign main_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = main_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (main_bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (main_bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine5_cmd_buffer_sink_ready = ((~main_bankmachine5_cmd_buffer_source_valid) | main_bankmachine5_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	main_bankmachine5_req_wdata_ready <= 1'd0;
	main_bankmachine5_req_rdata_valid <= 1'd0;
	main_bankmachine5_refresh_gnt <= 1'd0;
	main_bankmachine5_cmd_valid <= 1'd0;
	main_bankmachine5_cmd_payload_cas <= 1'd0;
	main_bankmachine5_cmd_payload_ras <= 1'd0;
	main_bankmachine5_cmd_payload_we <= 1'd0;
	main_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine5_cmd_payload_is_read <= 1'd0;
	main_bankmachine5_cmd_payload_is_write <= 1'd0;
	main_bankmachine5_row_open <= 1'd0;
	main_bankmachine5_row_close <= 1'd0;
	main_bankmachine5_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine5_next_state <= 5'd0;
	convert_bankmachine5_next_state <= convert_bankmachine5_state;
	case (convert_bankmachine5_state)
		1'd1: begin
			if ((main_bankmachine5_twtpcon_ready & main_bankmachine5_trascon_ready)) begin
				main_bankmachine5_cmd_valid <= 1'd1;
				if (main_bankmachine5_cmd_ready) begin
					convert_bankmachine5_next_state <= 3'd5;
				end
				main_bankmachine5_cmd_payload_ras <= 1'd1;
				main_bankmachine5_cmd_payload_we <= 1'd1;
				main_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine5_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine5_twtpcon_ready & main_bankmachine5_trascon_ready)) begin
				convert_bankmachine5_next_state <= 3'd5;
			end
			main_bankmachine5_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine5_trccon_ready) begin
				main_bankmachine5_row_col_n_addr_sel <= 1'd1;
				main_bankmachine5_row_open <= 1'd1;
				main_bankmachine5_cmd_valid <= 1'd1;
				main_bankmachine5_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine5_cmd_ready) begin
					convert_bankmachine5_next_state <= 5'd16;
				end
				main_bankmachine5_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine5_twtpcon_ready) begin
				main_bankmachine5_refresh_gnt <= 1'd1;
			end
			main_bankmachine5_row_close <= 1'd1;
			main_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine5_refresh_req)) begin
				convert_bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine5_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine5_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine5_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine5_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine5_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine5_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine5_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine5_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine5_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine5_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine5_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine5_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine5_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine5_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine5_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine5_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine5_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine5_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine5_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine5_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine5_refresh_req) begin
				convert_bankmachine5_next_state <= 3'd4;
			end else begin
				if (main_bankmachine5_cmd_buffer_source_valid) begin
					if (main_bankmachine5_row_opened) begin
						if (main_bankmachine5_row_hit) begin
							main_bankmachine5_cmd_valid <= 1'd1;
							if (main_bankmachine5_cmd_buffer_source_payload_we) begin
								main_bankmachine5_req_wdata_ready <= main_bankmachine5_cmd_ready;
								main_bankmachine5_cmd_payload_is_write <= 1'd1;
								main_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine5_req_rdata_valid <= main_bankmachine5_cmd_ready;
								main_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine5_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine5_cmd_ready & main_bankmachine5_auto_precharge)) begin
								convert_bankmachine5_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine5_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine5_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine6_cmd_buffer_lookahead_sink_valid = main_bankmachine6_req_valid;
assign main_bankmachine6_req_ready = main_bankmachine6_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine6_cmd_buffer_lookahead_sink_payload_we = main_bankmachine6_req_we;
assign main_bankmachine6_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine6_req_addr;
assign main_bankmachine6_cmd_buffer_sink_valid = main_bankmachine6_cmd_buffer_lookahead_source_valid;
assign main_bankmachine6_cmd_buffer_lookahead_source_ready = main_bankmachine6_cmd_buffer_sink_ready;
assign main_bankmachine6_cmd_buffer_sink_first = main_bankmachine6_cmd_buffer_lookahead_source_first;
assign main_bankmachine6_cmd_buffer_sink_last = main_bankmachine6_cmd_buffer_lookahead_source_last;
assign main_bankmachine6_cmd_buffer_sink_payload_we = main_bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine6_cmd_buffer_sink_payload_addr = main_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine6_cmd_buffer_source_ready = (main_bankmachine6_req_wdata_ready | main_bankmachine6_req_rdata_valid);
assign main_bankmachine6_req_lock = (main_bankmachine6_cmd_buffer_lookahead_source_valid | main_bankmachine6_cmd_buffer_source_valid);
assign main_bankmachine6_row_hit = (main_bankmachine6_row == main_bankmachine6_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine6_cmd_payload_ba = 3'd6;

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	main_bankmachine6_cmd_payload_a <= 17'd0;
	if (main_bankmachine6_row_col_n_addr_sel) begin
		main_bankmachine6_cmd_payload_a <= main_bankmachine6_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine6_cmd_payload_a <= ((main_bankmachine6_auto_precharge <<< 4'd10) | {main_bankmachine6_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine6_twtpcon_valid = ((main_bankmachine6_cmd_valid & main_bankmachine6_cmd_ready) & main_bankmachine6_cmd_payload_is_write);
assign main_bankmachine6_trccon_valid = ((main_bankmachine6_cmd_valid & main_bankmachine6_cmd_ready) & main_bankmachine6_row_open);
assign main_bankmachine6_trascon_valid = ((main_bankmachine6_cmd_valid & main_bankmachine6_cmd_ready) & main_bankmachine6_row_open);

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	main_bankmachine6_auto_precharge <= 1'd0;
	if ((main_bankmachine6_cmd_buffer_lookahead_source_valid & main_bankmachine6_cmd_buffer_source_valid)) begin
		if ((main_bankmachine6_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine6_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine6_auto_precharge <= (main_bankmachine6_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {main_bankmachine6_cmd_buffer_lookahead_fifo_in_last, main_bankmachine6_cmd_buffer_lookahead_fifo_in_first, main_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine6_cmd_buffer_lookahead_fifo_out_last, main_bankmachine6_cmd_buffer_lookahead_fifo_out_first, main_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign main_bankmachine6_cmd_buffer_lookahead_sink_ready = main_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign main_bankmachine6_cmd_buffer_lookahead_syncfifo6_we = main_bankmachine6_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine6_cmd_buffer_lookahead_fifo_in_first = main_bankmachine6_cmd_buffer_lookahead_sink_first;
assign main_bankmachine6_cmd_buffer_lookahead_fifo_in_last = main_bankmachine6_cmd_buffer_lookahead_sink_last;
assign main_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine6_cmd_buffer_lookahead_source_valid = main_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign main_bankmachine6_cmd_buffer_lookahead_source_first = main_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine6_cmd_buffer_lookahead_source_last = main_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine6_cmd_buffer_lookahead_source_payload_we = main_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine6_cmd_buffer_lookahead_source_payload_addr = main_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine6_cmd_buffer_lookahead_syncfifo6_re = main_bankmachine6_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	main_bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine6_cmd_buffer_lookahead_replace) begin
		main_bankmachine6_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine6_cmd_buffer_lookahead_wrport_adr <= main_bankmachine6_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine6_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign main_bankmachine6_cmd_buffer_lookahead_wrport_we = (main_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (main_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | main_bankmachine6_cmd_buffer_lookahead_replace));
assign main_bankmachine6_cmd_buffer_lookahead_do_read = (main_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & main_bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign main_bankmachine6_cmd_buffer_lookahead_rdport_adr = main_bankmachine6_cmd_buffer_lookahead_consume;
assign main_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = main_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (main_bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (main_bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine6_cmd_buffer_sink_ready = ((~main_bankmachine6_cmd_buffer_source_valid) | main_bankmachine6_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	main_bankmachine6_req_wdata_ready <= 1'd0;
	main_bankmachine6_req_rdata_valid <= 1'd0;
	main_bankmachine6_refresh_gnt <= 1'd0;
	main_bankmachine6_cmd_valid <= 1'd0;
	main_bankmachine6_cmd_payload_cas <= 1'd0;
	main_bankmachine6_cmd_payload_ras <= 1'd0;
	main_bankmachine6_cmd_payload_we <= 1'd0;
	main_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine6_cmd_payload_is_read <= 1'd0;
	main_bankmachine6_cmd_payload_is_write <= 1'd0;
	main_bankmachine6_row_open <= 1'd0;
	main_bankmachine6_row_close <= 1'd0;
	main_bankmachine6_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine6_next_state <= 5'd0;
	convert_bankmachine6_next_state <= convert_bankmachine6_state;
	case (convert_bankmachine6_state)
		1'd1: begin
			if ((main_bankmachine6_twtpcon_ready & main_bankmachine6_trascon_ready)) begin
				main_bankmachine6_cmd_valid <= 1'd1;
				if (main_bankmachine6_cmd_ready) begin
					convert_bankmachine6_next_state <= 3'd5;
				end
				main_bankmachine6_cmd_payload_ras <= 1'd1;
				main_bankmachine6_cmd_payload_we <= 1'd1;
				main_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine6_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine6_twtpcon_ready & main_bankmachine6_trascon_ready)) begin
				convert_bankmachine6_next_state <= 3'd5;
			end
			main_bankmachine6_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine6_trccon_ready) begin
				main_bankmachine6_row_col_n_addr_sel <= 1'd1;
				main_bankmachine6_row_open <= 1'd1;
				main_bankmachine6_cmd_valid <= 1'd1;
				main_bankmachine6_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine6_cmd_ready) begin
					convert_bankmachine6_next_state <= 5'd16;
				end
				main_bankmachine6_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine6_twtpcon_ready) begin
				main_bankmachine6_refresh_gnt <= 1'd1;
			end
			main_bankmachine6_row_close <= 1'd1;
			main_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine6_refresh_req)) begin
				convert_bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine6_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine6_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine6_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine6_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine6_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine6_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine6_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine6_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine6_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine6_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine6_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine6_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine6_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine6_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine6_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine6_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine6_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine6_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine6_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine6_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine6_refresh_req) begin
				convert_bankmachine6_next_state <= 3'd4;
			end else begin
				if (main_bankmachine6_cmd_buffer_source_valid) begin
					if (main_bankmachine6_row_opened) begin
						if (main_bankmachine6_row_hit) begin
							main_bankmachine6_cmd_valid <= 1'd1;
							if (main_bankmachine6_cmd_buffer_source_payload_we) begin
								main_bankmachine6_req_wdata_ready <= main_bankmachine6_cmd_ready;
								main_bankmachine6_cmd_payload_is_write <= 1'd1;
								main_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine6_req_rdata_valid <= main_bankmachine6_cmd_ready;
								main_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine6_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine6_cmd_ready & main_bankmachine6_auto_precharge)) begin
								convert_bankmachine6_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine6_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine6_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine7_cmd_buffer_lookahead_sink_valid = main_bankmachine7_req_valid;
assign main_bankmachine7_req_ready = main_bankmachine7_cmd_buffer_lookahead_sink_ready;
assign main_bankmachine7_cmd_buffer_lookahead_sink_payload_we = main_bankmachine7_req_we;
assign main_bankmachine7_cmd_buffer_lookahead_sink_payload_addr = main_bankmachine7_req_addr;
assign main_bankmachine7_cmd_buffer_sink_valid = main_bankmachine7_cmd_buffer_lookahead_source_valid;
assign main_bankmachine7_cmd_buffer_lookahead_source_ready = main_bankmachine7_cmd_buffer_sink_ready;
assign main_bankmachine7_cmd_buffer_sink_first = main_bankmachine7_cmd_buffer_lookahead_source_first;
assign main_bankmachine7_cmd_buffer_sink_last = main_bankmachine7_cmd_buffer_lookahead_source_last;
assign main_bankmachine7_cmd_buffer_sink_payload_we = main_bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign main_bankmachine7_cmd_buffer_sink_payload_addr = main_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
assign main_bankmachine7_cmd_buffer_source_ready = (main_bankmachine7_req_wdata_ready | main_bankmachine7_req_rdata_valid);
assign main_bankmachine7_req_lock = (main_bankmachine7_cmd_buffer_lookahead_source_valid | main_bankmachine7_cmd_buffer_source_valid);
assign main_bankmachine7_row_hit = (main_bankmachine7_row == main_bankmachine7_cmd_buffer_source_payload_addr[22:6]);
assign main_bankmachine7_cmd_payload_ba = 3'd7;

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	main_bankmachine7_cmd_payload_a <= 17'd0;
	if (main_bankmachine7_row_col_n_addr_sel) begin
		main_bankmachine7_cmd_payload_a <= main_bankmachine7_cmd_buffer_source_payload_addr[22:6];
	end else begin
		main_bankmachine7_cmd_payload_a <= ((main_bankmachine7_auto_precharge <<< 4'd10) | {main_bankmachine7_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine7_twtpcon_valid = ((main_bankmachine7_cmd_valid & main_bankmachine7_cmd_ready) & main_bankmachine7_cmd_payload_is_write);
assign main_bankmachine7_trccon_valid = ((main_bankmachine7_cmd_valid & main_bankmachine7_cmd_ready) & main_bankmachine7_row_open);
assign main_bankmachine7_trascon_valid = ((main_bankmachine7_cmd_valid & main_bankmachine7_cmd_ready) & main_bankmachine7_row_open);

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	main_bankmachine7_auto_precharge <= 1'd0;
	if ((main_bankmachine7_cmd_buffer_lookahead_source_valid & main_bankmachine7_cmd_buffer_source_valid)) begin
		if ((main_bankmachine7_cmd_buffer_lookahead_source_payload_addr[22:6] != main_bankmachine7_cmd_buffer_source_payload_addr[22:6])) begin
			main_bankmachine7_auto_precharge <= (main_bankmachine7_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {main_bankmachine7_cmd_buffer_lookahead_fifo_in_last, main_bankmachine7_cmd_buffer_lookahead_fifo_in_first, main_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr, main_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {main_bankmachine7_cmd_buffer_lookahead_fifo_out_last, main_bankmachine7_cmd_buffer_lookahead_fifo_out_first, main_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr, main_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = main_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign main_bankmachine7_cmd_buffer_lookahead_sink_ready = main_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign main_bankmachine7_cmd_buffer_lookahead_syncfifo7_we = main_bankmachine7_cmd_buffer_lookahead_sink_valid;
assign main_bankmachine7_cmd_buffer_lookahead_fifo_in_first = main_bankmachine7_cmd_buffer_lookahead_sink_first;
assign main_bankmachine7_cmd_buffer_lookahead_fifo_in_last = main_bankmachine7_cmd_buffer_lookahead_sink_last;
assign main_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = main_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign main_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr = main_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
assign main_bankmachine7_cmd_buffer_lookahead_source_valid = main_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign main_bankmachine7_cmd_buffer_lookahead_source_first = main_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign main_bankmachine7_cmd_buffer_lookahead_source_last = main_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign main_bankmachine7_cmd_buffer_lookahead_source_payload_we = main_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign main_bankmachine7_cmd_buffer_lookahead_source_payload_addr = main_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
assign main_bankmachine7_cmd_buffer_lookahead_syncfifo7_re = main_bankmachine7_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	main_bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (main_bankmachine7_cmd_buffer_lookahead_replace) begin
		main_bankmachine7_cmd_buffer_lookahead_wrport_adr <= (main_bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		main_bankmachine7_cmd_buffer_lookahead_wrport_adr <= main_bankmachine7_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end
assign main_bankmachine7_cmd_buffer_lookahead_wrport_dat_w = main_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign main_bankmachine7_cmd_buffer_lookahead_wrport_we = (main_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (main_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | main_bankmachine7_cmd_buffer_lookahead_replace));
assign main_bankmachine7_cmd_buffer_lookahead_do_read = (main_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & main_bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign main_bankmachine7_cmd_buffer_lookahead_rdport_adr = main_bankmachine7_cmd_buffer_lookahead_consume;
assign main_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = main_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign main_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (main_bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign main_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (main_bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign main_bankmachine7_cmd_buffer_sink_ready = ((~main_bankmachine7_cmd_buffer_source_valid) | main_bankmachine7_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	main_bankmachine7_req_wdata_ready <= 1'd0;
	main_bankmachine7_req_rdata_valid <= 1'd0;
	main_bankmachine7_refresh_gnt <= 1'd0;
	main_bankmachine7_cmd_valid <= 1'd0;
	main_bankmachine7_cmd_payload_cas <= 1'd0;
	main_bankmachine7_cmd_payload_ras <= 1'd0;
	main_bankmachine7_cmd_payload_we <= 1'd0;
	main_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	main_bankmachine7_cmd_payload_is_read <= 1'd0;
	main_bankmachine7_cmd_payload_is_write <= 1'd0;
	main_bankmachine7_row_open <= 1'd0;
	main_bankmachine7_row_close <= 1'd0;
	main_bankmachine7_row_col_n_addr_sel <= 1'd0;
	convert_bankmachine7_next_state <= 5'd0;
	convert_bankmachine7_next_state <= convert_bankmachine7_state;
	case (convert_bankmachine7_state)
		1'd1: begin
			if ((main_bankmachine7_twtpcon_ready & main_bankmachine7_trascon_ready)) begin
				main_bankmachine7_cmd_valid <= 1'd1;
				if (main_bankmachine7_cmd_ready) begin
					convert_bankmachine7_next_state <= 3'd5;
				end
				main_bankmachine7_cmd_payload_ras <= 1'd1;
				main_bankmachine7_cmd_payload_we <= 1'd1;
				main_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			main_bankmachine7_row_close <= 1'd1;
		end
		2'd2: begin
			if ((main_bankmachine7_twtpcon_ready & main_bankmachine7_trascon_ready)) begin
				convert_bankmachine7_next_state <= 3'd5;
			end
			main_bankmachine7_row_close <= 1'd1;
		end
		2'd3: begin
			if (main_bankmachine7_trccon_ready) begin
				main_bankmachine7_row_col_n_addr_sel <= 1'd1;
				main_bankmachine7_row_open <= 1'd1;
				main_bankmachine7_cmd_valid <= 1'd1;
				main_bankmachine7_cmd_payload_is_cmd <= 1'd1;
				if (main_bankmachine7_cmd_ready) begin
					convert_bankmachine7_next_state <= 5'd16;
				end
				main_bankmachine7_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (main_bankmachine7_twtpcon_ready) begin
				main_bankmachine7_refresh_gnt <= 1'd1;
			end
			main_bankmachine7_row_close <= 1'd1;
			main_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~main_bankmachine7_refresh_req)) begin
				convert_bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			convert_bankmachine7_next_state <= 3'd6;
		end
		3'd6: begin
			convert_bankmachine7_next_state <= 3'd7;
		end
		3'd7: begin
			convert_bankmachine7_next_state <= 4'd8;
		end
		4'd8: begin
			convert_bankmachine7_next_state <= 4'd9;
		end
		4'd9: begin
			convert_bankmachine7_next_state <= 4'd10;
		end
		4'd10: begin
			convert_bankmachine7_next_state <= 4'd11;
		end
		4'd11: begin
			convert_bankmachine7_next_state <= 4'd12;
		end
		4'd12: begin
			convert_bankmachine7_next_state <= 4'd13;
		end
		4'd13: begin
			convert_bankmachine7_next_state <= 4'd14;
		end
		4'd14: begin
			convert_bankmachine7_next_state <= 4'd15;
		end
		4'd15: begin
			convert_bankmachine7_next_state <= 2'd3;
		end
		5'd16: begin
			convert_bankmachine7_next_state <= 5'd17;
		end
		5'd17: begin
			convert_bankmachine7_next_state <= 5'd18;
		end
		5'd18: begin
			convert_bankmachine7_next_state <= 5'd19;
		end
		5'd19: begin
			convert_bankmachine7_next_state <= 5'd20;
		end
		5'd20: begin
			convert_bankmachine7_next_state <= 5'd21;
		end
		5'd21: begin
			convert_bankmachine7_next_state <= 5'd22;
		end
		5'd22: begin
			convert_bankmachine7_next_state <= 5'd23;
		end
		5'd23: begin
			convert_bankmachine7_next_state <= 5'd24;
		end
		5'd24: begin
			convert_bankmachine7_next_state <= 5'd25;
		end
		5'd25: begin
			convert_bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (main_bankmachine7_refresh_req) begin
				convert_bankmachine7_next_state <= 3'd4;
			end else begin
				if (main_bankmachine7_cmd_buffer_source_valid) begin
					if (main_bankmachine7_row_opened) begin
						if (main_bankmachine7_row_hit) begin
							main_bankmachine7_cmd_valid <= 1'd1;
							if (main_bankmachine7_cmd_buffer_source_payload_we) begin
								main_bankmachine7_req_wdata_ready <= main_bankmachine7_cmd_ready;
								main_bankmachine7_cmd_payload_is_write <= 1'd1;
								main_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								main_bankmachine7_req_rdata_valid <= main_bankmachine7_cmd_ready;
								main_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							main_bankmachine7_cmd_payload_cas <= 1'd1;
							if ((main_bankmachine7_cmd_ready & main_bankmachine7_auto_precharge)) begin
								convert_bankmachine7_next_state <= 2'd2;
							end
						end else begin
							convert_bankmachine7_next_state <= 1'd1;
						end
					end else begin
						convert_bankmachine7_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end
assign main_choose_req_want_cmds = 1'd1;
assign main_trrdcon_valid = ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & ((main_choose_req_cmd_payload_ras & (~main_choose_req_cmd_payload_cas)) & (~main_choose_req_cmd_payload_we)));
assign main_tfawcon_valid = ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & ((main_choose_req_cmd_payload_ras & (~main_choose_req_cmd_payload_cas)) & (~main_choose_req_cmd_payload_we)));
assign main_ras_allowed = (main_trrdcon_ready & main_tfawcon_ready);
assign main_tccdcon_valid = ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_cmd_payload_is_write | main_choose_req_cmd_payload_is_read));
assign main_cas_allowed = main_tccdcon_ready;
assign main_twtrcon_valid = ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
assign main_read_available = ((((((((main_bankmachine0_cmd_valid & main_bankmachine0_cmd_payload_is_read) | (main_bankmachine1_cmd_valid & main_bankmachine1_cmd_payload_is_read)) | (main_bankmachine2_cmd_valid & main_bankmachine2_cmd_payload_is_read)) | (main_bankmachine3_cmd_valid & main_bankmachine3_cmd_payload_is_read)) | (main_bankmachine4_cmd_valid & main_bankmachine4_cmd_payload_is_read)) | (main_bankmachine5_cmd_valid & main_bankmachine5_cmd_payload_is_read)) | (main_bankmachine6_cmd_valid & main_bankmachine6_cmd_payload_is_read)) | (main_bankmachine7_cmd_valid & main_bankmachine7_cmd_payload_is_read));
assign main_write_available = ((((((((main_bankmachine0_cmd_valid & main_bankmachine0_cmd_payload_is_write) | (main_bankmachine1_cmd_valid & main_bankmachine1_cmd_payload_is_write)) | (main_bankmachine2_cmd_valid & main_bankmachine2_cmd_payload_is_write)) | (main_bankmachine3_cmd_valid & main_bankmachine3_cmd_payload_is_write)) | (main_bankmachine4_cmd_valid & main_bankmachine4_cmd_payload_is_write)) | (main_bankmachine5_cmd_valid & main_bankmachine5_cmd_payload_is_write)) | (main_bankmachine6_cmd_valid & main_bankmachine6_cmd_payload_is_write)) | (main_bankmachine7_cmd_valid & main_bankmachine7_cmd_payload_is_write));
assign main_max_time0 = (main_time0 == 1'd0);
assign main_max_time1 = (main_time1 == 1'd0);
assign main_bankmachine0_refresh_req = main_cmd_valid;
assign main_bankmachine1_refresh_req = main_cmd_valid;
assign main_bankmachine2_refresh_req = main_cmd_valid;
assign main_bankmachine3_refresh_req = main_cmd_valid;
assign main_bankmachine4_refresh_req = main_cmd_valid;
assign main_bankmachine5_refresh_req = main_cmd_valid;
assign main_bankmachine6_refresh_req = main_cmd_valid;
assign main_bankmachine7_refresh_req = main_cmd_valid;
assign main_go_to_refresh = (((((((main_bankmachine0_refresh_gnt & main_bankmachine1_refresh_gnt) & main_bankmachine2_refresh_gnt) & main_bankmachine3_refresh_gnt) & main_bankmachine4_refresh_gnt) & main_bankmachine5_refresh_gnt) & main_bankmachine6_refresh_gnt) & main_bankmachine7_refresh_gnt);
assign main_interface_rdata = {dfi_p3_rddata, dfi_p2_rddata, dfi_p1_rddata, dfi_p0_rddata};
assign {dfi_p3_wrdata, dfi_p2_wrdata, dfi_p1_wrdata, dfi_p0_wrdata} = main_interface_wdata;
assign {dfi_p3_wrdata_mask, dfi_p2_wrdata_mask, dfi_p1_wrdata_mask, dfi_p0_wrdata_mask} = (~main_interface_wdata_we);

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	main_choose_cmd_valids <= 8'd0;
	main_choose_cmd_valids[0] <= (main_bankmachine0_cmd_valid & (((main_bankmachine0_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine0_cmd_payload_ras & (~main_bankmachine0_cmd_payload_cas)) & (~main_bankmachine0_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine0_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine0_cmd_payload_is_write == main_choose_cmd_want_writes))));
	main_choose_cmd_valids[1] <= (main_bankmachine1_cmd_valid & (((main_bankmachine1_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine1_cmd_payload_ras & (~main_bankmachine1_cmd_payload_cas)) & (~main_bankmachine1_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine1_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine1_cmd_payload_is_write == main_choose_cmd_want_writes))));
	main_choose_cmd_valids[2] <= (main_bankmachine2_cmd_valid & (((main_bankmachine2_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine2_cmd_payload_ras & (~main_bankmachine2_cmd_payload_cas)) & (~main_bankmachine2_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine2_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine2_cmd_payload_is_write == main_choose_cmd_want_writes))));
	main_choose_cmd_valids[3] <= (main_bankmachine3_cmd_valid & (((main_bankmachine3_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine3_cmd_payload_ras & (~main_bankmachine3_cmd_payload_cas)) & (~main_bankmachine3_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine3_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine3_cmd_payload_is_write == main_choose_cmd_want_writes))));
	main_choose_cmd_valids[4] <= (main_bankmachine4_cmd_valid & (((main_bankmachine4_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine4_cmd_payload_ras & (~main_bankmachine4_cmd_payload_cas)) & (~main_bankmachine4_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine4_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine4_cmd_payload_is_write == main_choose_cmd_want_writes))));
	main_choose_cmd_valids[5] <= (main_bankmachine5_cmd_valid & (((main_bankmachine5_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine5_cmd_payload_ras & (~main_bankmachine5_cmd_payload_cas)) & (~main_bankmachine5_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine5_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine5_cmd_payload_is_write == main_choose_cmd_want_writes))));
	main_choose_cmd_valids[6] <= (main_bankmachine6_cmd_valid & (((main_bankmachine6_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine6_cmd_payload_ras & (~main_bankmachine6_cmd_payload_cas)) & (~main_bankmachine6_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine6_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine6_cmd_payload_is_write == main_choose_cmd_want_writes))));
	main_choose_cmd_valids[7] <= (main_bankmachine7_cmd_valid & (((main_bankmachine7_cmd_payload_is_cmd & main_choose_cmd_want_cmds) & ((~((main_bankmachine7_cmd_payload_ras & (~main_bankmachine7_cmd_payload_cas)) & (~main_bankmachine7_cmd_payload_we))) | main_choose_cmd_want_activates)) | ((main_bankmachine7_cmd_payload_is_read == main_choose_cmd_want_reads) & (main_bankmachine7_cmd_payload_is_write == main_choose_cmd_want_writes))));
// synthesis translate_off
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end
assign main_choose_cmd_request = main_choose_cmd_valids;
assign main_choose_cmd_cmd_valid = convert_rhs_array_muxed0;
assign main_choose_cmd_cmd_payload_a = convert_rhs_array_muxed1;
assign main_choose_cmd_cmd_payload_ba = convert_rhs_array_muxed2;
assign main_choose_cmd_cmd_payload_is_read = convert_rhs_array_muxed3;
assign main_choose_cmd_cmd_payload_is_write = convert_rhs_array_muxed4;
assign main_choose_cmd_cmd_payload_is_cmd = convert_rhs_array_muxed5;

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	main_choose_cmd_cmd_payload_cas <= 1'd0;
	if (main_choose_cmd_cmd_valid) begin
		main_choose_cmd_cmd_payload_cas <= convert_t_array_muxed0;
	end
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	main_choose_cmd_cmd_payload_ras <= 1'd0;
	if (main_choose_cmd_cmd_valid) begin
		main_choose_cmd_cmd_payload_ras <= convert_t_array_muxed1;
	end
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	main_choose_cmd_cmd_payload_we <= 1'd0;
	if (main_choose_cmd_cmd_valid) begin
		main_choose_cmd_cmd_payload_we <= convert_t_array_muxed2;
	end
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end
assign main_choose_cmd_ce = (main_choose_cmd_cmd_ready | (~main_choose_cmd_cmd_valid));

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	main_choose_req_valids <= 8'd0;
	main_choose_req_valids[0] <= (main_bankmachine0_cmd_valid & (((main_bankmachine0_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine0_cmd_payload_ras & (~main_bankmachine0_cmd_payload_cas)) & (~main_bankmachine0_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine0_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine0_cmd_payload_is_write == main_choose_req_want_writes))));
	main_choose_req_valids[1] <= (main_bankmachine1_cmd_valid & (((main_bankmachine1_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine1_cmd_payload_ras & (~main_bankmachine1_cmd_payload_cas)) & (~main_bankmachine1_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine1_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine1_cmd_payload_is_write == main_choose_req_want_writes))));
	main_choose_req_valids[2] <= (main_bankmachine2_cmd_valid & (((main_bankmachine2_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine2_cmd_payload_ras & (~main_bankmachine2_cmd_payload_cas)) & (~main_bankmachine2_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine2_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine2_cmd_payload_is_write == main_choose_req_want_writes))));
	main_choose_req_valids[3] <= (main_bankmachine3_cmd_valid & (((main_bankmachine3_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine3_cmd_payload_ras & (~main_bankmachine3_cmd_payload_cas)) & (~main_bankmachine3_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine3_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine3_cmd_payload_is_write == main_choose_req_want_writes))));
	main_choose_req_valids[4] <= (main_bankmachine4_cmd_valid & (((main_bankmachine4_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine4_cmd_payload_ras & (~main_bankmachine4_cmd_payload_cas)) & (~main_bankmachine4_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine4_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine4_cmd_payload_is_write == main_choose_req_want_writes))));
	main_choose_req_valids[5] <= (main_bankmachine5_cmd_valid & (((main_bankmachine5_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine5_cmd_payload_ras & (~main_bankmachine5_cmd_payload_cas)) & (~main_bankmachine5_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine5_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine5_cmd_payload_is_write == main_choose_req_want_writes))));
	main_choose_req_valids[6] <= (main_bankmachine6_cmd_valid & (((main_bankmachine6_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine6_cmd_payload_ras & (~main_bankmachine6_cmd_payload_cas)) & (~main_bankmachine6_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine6_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine6_cmd_payload_is_write == main_choose_req_want_writes))));
	main_choose_req_valids[7] <= (main_bankmachine7_cmd_valid & (((main_bankmachine7_cmd_payload_is_cmd & main_choose_req_want_cmds) & ((~((main_bankmachine7_cmd_payload_ras & (~main_bankmachine7_cmd_payload_cas)) & (~main_bankmachine7_cmd_payload_we))) | main_choose_req_want_activates)) | ((main_bankmachine7_cmd_payload_is_read == main_choose_req_want_reads) & (main_bankmachine7_cmd_payload_is_write == main_choose_req_want_writes))));
// synthesis translate_off
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end
assign main_choose_req_request = main_choose_req_valids;
assign main_choose_req_cmd_valid = convert_rhs_array_muxed6;
assign main_choose_req_cmd_payload_a = convert_rhs_array_muxed7;
assign main_choose_req_cmd_payload_ba = convert_rhs_array_muxed8;
assign main_choose_req_cmd_payload_is_read = convert_rhs_array_muxed9;
assign main_choose_req_cmd_payload_is_write = convert_rhs_array_muxed10;
assign main_choose_req_cmd_payload_is_cmd = convert_rhs_array_muxed11;

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	main_choose_req_cmd_payload_cas <= 1'd0;
	if (main_choose_req_cmd_valid) begin
		main_choose_req_cmd_payload_cas <= convert_t_array_muxed3;
	end
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	main_choose_req_cmd_payload_ras <= 1'd0;
	if (main_choose_req_cmd_valid) begin
		main_choose_req_cmd_payload_ras <= convert_t_array_muxed4;
	end
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	main_choose_req_cmd_payload_we <= 1'd0;
	if (main_choose_req_cmd_valid) begin
		main_choose_req_cmd_payload_we <= convert_t_array_muxed5;
	end
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	main_bankmachine0_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 1'd0))) begin
		main_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 1'd0))) begin
		main_bankmachine0_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	main_bankmachine1_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 1'd1))) begin
		main_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 1'd1))) begin
		main_bankmachine1_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
always @(*) begin
	main_bankmachine2_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 2'd2))) begin
		main_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 2'd2))) begin
		main_bankmachine2_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	main_bankmachine3_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 2'd3))) begin
		main_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 2'd3))) begin
		main_bankmachine3_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	main_bankmachine4_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 3'd4))) begin
		main_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 3'd4))) begin
		main_bankmachine4_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	main_bankmachine5_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 3'd5))) begin
		main_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 3'd5))) begin
		main_bankmachine5_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	main_bankmachine6_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 3'd6))) begin
		main_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 3'd6))) begin
		main_bankmachine6_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	main_bankmachine7_cmd_ready <= 1'd0;
	if (((main_choose_cmd_cmd_valid & main_choose_cmd_cmd_ready) & (main_choose_cmd_grant == 3'd7))) begin
		main_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & (main_choose_req_grant == 3'd7))) begin
		main_bankmachine7_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end
assign main_choose_req_ce = (main_choose_req_cmd_ready | (~main_choose_req_cmd_valid));
assign dfi_p0_reset_n = 1'd1;
assign dfi_p0_cke = {1{main_steerer0}};
assign dfi_p0_odt = {1{main_steerer1}};
assign dfi_p1_reset_n = 1'd1;
assign dfi_p1_cke = {1{main_steerer2}};
assign dfi_p1_odt = {1{main_steerer3}};
assign dfi_p2_reset_n = 1'd1;
assign dfi_p2_cke = {1{main_steerer4}};
assign dfi_p2_odt = {1{main_steerer5}};
assign dfi_p3_reset_n = 1'd1;
assign dfi_p3_cke = {1{main_steerer6}};
assign dfi_p3_odt = {1{main_steerer7}};
assign main_tfawcon_count = ((((((((((((((((((((((main_tfawcon_window[0] + main_tfawcon_window[1]) + main_tfawcon_window[2]) + main_tfawcon_window[3]) + main_tfawcon_window[4]) + main_tfawcon_window[5]) + main_tfawcon_window[6]) + main_tfawcon_window[7]) + main_tfawcon_window[8]) + main_tfawcon_window[9]) + main_tfawcon_window[10]) + main_tfawcon_window[11]) + main_tfawcon_window[12]) + main_tfawcon_window[13]) + main_tfawcon_window[14]) + main_tfawcon_window[15]) + main_tfawcon_window[16]) + main_tfawcon_window[17]) + main_tfawcon_window[18]) + main_tfawcon_window[19]) + main_tfawcon_window[20]) + main_tfawcon_window[21]) + main_tfawcon_window[22]);

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	main_cmd_ready <= 1'd0;
	main_choose_req_want_reads <= 1'd0;
	main_choose_req_want_writes <= 1'd0;
	main_choose_req_want_activates <= 1'd0;
	main_choose_req_cmd_ready <= 1'd0;
	main_steerer_sel0 <= 2'd0;
	main_en0 <= 1'd0;
	main_en1 <= 1'd0;
	convert_multiplexer_next_state <= 5'd0;
	main_choose_req_want_activates <= main_ras_allowed;
	convert_multiplexer_next_state <= convert_multiplexer_state;
	case (convert_multiplexer_state)
		1'd1: begin
			main_en1 <= 1'd1;
			main_choose_req_want_writes <= 1'd1;
			if (1'd1) begin
				main_choose_req_cmd_ready <= (main_cas_allowed & ((~((main_choose_req_cmd_payload_ras & (~main_choose_req_cmd_payload_cas)) & (~main_choose_req_cmd_payload_we))) | main_ras_allowed));
			end else begin
				main_choose_req_want_activates <= main_ras_allowed;
				main_choose_req_cmd_ready <= ((~((main_choose_req_cmd_payload_ras & (~main_choose_req_cmd_payload_cas)) & (~main_choose_req_cmd_payload_we))) | main_ras_allowed);
				main_choose_req_cmd_ready <= main_cas_allowed;
			end
			main_steerer_sel0 <= 1'd0;
			if (1'd1) begin
				main_steerer_sel0 <= 2'd2;
			end
			if (1'd1) begin
				main_steerer_sel0 <= 1'd1;
			end
			if (main_read_available) begin
				if (((~main_write_available) | main_max_time1)) begin
					convert_multiplexer_next_state <= 2'd3;
				end
			end
			if (main_go_to_refresh) begin
				convert_multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			main_steerer_sel0 <= 2'd3;
			main_cmd_ready <= 1'd1;
			if (main_cmd_last) begin
				convert_multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (main_twtrcon_ready) begin
				convert_multiplexer_next_state <= 1'd0;
			end
		end
		3'd4: begin
			convert_multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			convert_multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			convert_multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			convert_multiplexer_next_state <= 4'd8;
		end
		4'd8: begin
			convert_multiplexer_next_state <= 4'd9;
		end
		4'd9: begin
			convert_multiplexer_next_state <= 4'd10;
		end
		4'd10: begin
			convert_multiplexer_next_state <= 4'd11;
		end
		4'd11: begin
			convert_multiplexer_next_state <= 4'd12;
		end
		4'd12: begin
			convert_multiplexer_next_state <= 4'd13;
		end
		4'd13: begin
			convert_multiplexer_next_state <= 4'd14;
		end
		4'd14: begin
			convert_multiplexer_next_state <= 4'd15;
		end
		4'd15: begin
			convert_multiplexer_next_state <= 5'd16;
		end
		5'd16: begin
			convert_multiplexer_next_state <= 5'd17;
		end
		5'd17: begin
			convert_multiplexer_next_state <= 5'd18;
		end
		5'd18: begin
			convert_multiplexer_next_state <= 5'd19;
		end
		5'd19: begin
			convert_multiplexer_next_state <= 5'd20;
		end
		5'd20: begin
			convert_multiplexer_next_state <= 5'd21;
		end
		5'd21: begin
			convert_multiplexer_next_state <= 5'd22;
		end
		5'd22: begin
			convert_multiplexer_next_state <= 5'd23;
		end
		5'd23: begin
			convert_multiplexer_next_state <= 5'd24;
		end
		5'd24: begin
			convert_multiplexer_next_state <= 5'd25;
		end
		5'd25: begin
			convert_multiplexer_next_state <= 1'd1;
		end
		default: begin
			main_en0 <= 1'd1;
			main_choose_req_want_reads <= 1'd1;
			if (1'd1) begin
				main_choose_req_cmd_ready <= (main_cas_allowed & ((~((main_choose_req_cmd_payload_ras & (~main_choose_req_cmd_payload_cas)) & (~main_choose_req_cmd_payload_we))) | main_ras_allowed));
			end else begin
				main_choose_req_want_activates <= main_ras_allowed;
				main_choose_req_cmd_ready <= ((~((main_choose_req_cmd_payload_ras & (~main_choose_req_cmd_payload_cas)) & (~main_choose_req_cmd_payload_we))) | main_ras_allowed);
				main_choose_req_cmd_ready <= main_cas_allowed;
			end
			main_steerer_sel0 <= 1'd0;
			if (1'd1) begin
				main_steerer_sel0 <= 2'd2;
			end
			if (1'd1) begin
				main_steerer_sel0 <= 1'd1;
			end
			if (main_write_available) begin
				if (((~main_read_available) | main_max_time0)) begin
					convert_multiplexer_next_state <= 3'd4;
				end
			end
			if (main_go_to_refresh) begin
				convert_multiplexer_next_state <= 2'd2;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end
assign main_roundrobin0_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((main_locked1 | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((main_locked0 | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin0_ce = ((~main_interface_bank0_valid) & (~main_interface_bank0_lock));
assign main_roundrobin1_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((main_locked3 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((main_locked2 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin1_ce = ((~main_interface_bank1_valid) & (~main_interface_bank1_lock));
assign main_roundrobin2_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((main_locked5 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((main_locked4 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin2_ce = ((~main_interface_bank2_valid) & (~main_interface_bank2_lock));
assign main_roundrobin3_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((main_locked7 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((main_locked6 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin3_ce = ((~main_interface_bank3_valid) & (~main_interface_bank3_lock));
assign main_roundrobin4_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((main_locked9 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((main_locked8 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin4_ce = ((~main_interface_bank4_valid) & (~main_interface_bank4_lock));
assign main_roundrobin5_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((main_locked11 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((main_locked10 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin5_ce = ((~main_interface_bank5_valid) & (~main_interface_bank5_lock));
assign main_roundrobin6_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((main_locked13 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((main_locked12 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin6_ce = ((~main_interface_bank6_valid) & (~main_interface_bank6_lock));
assign main_roundrobin7_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((main_locked15 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((main_locked14 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign main_roundrobin7_ce = ((~main_interface_bank7_valid) & (~main_interface_bank7_lock));
assign convert_roundrobin0_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked1 | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked0 | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin0_ce = ((~main_interface_bank0_valid) & (~main_interface_bank0_lock));

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	main_interface_bank0_addr <= 23'd0;
	main_interface_bank0_addr <= convert_rhs_array_muxed12;
	main_interface_bank0_addr <= convert_rhs_array_muxed36;
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	main_interface_bank0_we <= 1'd0;
	main_interface_bank0_we <= convert_rhs_array_muxed13;
	main_interface_bank0_we <= convert_rhs_array_muxed37;
// synthesis translate_off
	dummy_d_51 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_52;
// synthesis translate_on
always @(*) begin
	main_interface_bank0_valid <= 1'd0;
	main_interface_bank0_valid <= convert_rhs_array_muxed14;
	main_interface_bank0_valid <= convert_rhs_array_muxed38;
// synthesis translate_off
	dummy_d_52 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin1_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked3 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked2 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin1_ce = ((~main_interface_bank1_valid) & (~main_interface_bank1_lock));

// synthesis translate_off
reg dummy_d_53;
// synthesis translate_on
always @(*) begin
	main_interface_bank1_addr <= 23'd0;
	main_interface_bank1_addr <= convert_rhs_array_muxed15;
	main_interface_bank1_addr <= convert_rhs_array_muxed39;
// synthesis translate_off
	dummy_d_53 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_54;
// synthesis translate_on
always @(*) begin
	main_interface_bank1_we <= 1'd0;
	main_interface_bank1_we <= convert_rhs_array_muxed16;
	main_interface_bank1_we <= convert_rhs_array_muxed40;
// synthesis translate_off
	dummy_d_54 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_55;
// synthesis translate_on
always @(*) begin
	main_interface_bank1_valid <= 1'd0;
	main_interface_bank1_valid <= convert_rhs_array_muxed17;
	main_interface_bank1_valid <= convert_rhs_array_muxed41;
// synthesis translate_off
	dummy_d_55 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin2_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked5 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked4 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin2_ce = ((~main_interface_bank2_valid) & (~main_interface_bank2_lock));

// synthesis translate_off
reg dummy_d_56;
// synthesis translate_on
always @(*) begin
	main_interface_bank2_addr <= 23'd0;
	main_interface_bank2_addr <= convert_rhs_array_muxed18;
	main_interface_bank2_addr <= convert_rhs_array_muxed42;
// synthesis translate_off
	dummy_d_56 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_57;
// synthesis translate_on
always @(*) begin
	main_interface_bank2_we <= 1'd0;
	main_interface_bank2_we <= convert_rhs_array_muxed19;
	main_interface_bank2_we <= convert_rhs_array_muxed43;
// synthesis translate_off
	dummy_d_57 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_58;
// synthesis translate_on
always @(*) begin
	main_interface_bank2_valid <= 1'd0;
	main_interface_bank2_valid <= convert_rhs_array_muxed20;
	main_interface_bank2_valid <= convert_rhs_array_muxed44;
// synthesis translate_off
	dummy_d_58 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin3_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked7 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked6 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin3_ce = ((~main_interface_bank3_valid) & (~main_interface_bank3_lock));

// synthesis translate_off
reg dummy_d_59;
// synthesis translate_on
always @(*) begin
	main_interface_bank3_addr <= 23'd0;
	main_interface_bank3_addr <= convert_rhs_array_muxed21;
	main_interface_bank3_addr <= convert_rhs_array_muxed45;
// synthesis translate_off
	dummy_d_59 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_60;
// synthesis translate_on
always @(*) begin
	main_interface_bank3_we <= 1'd0;
	main_interface_bank3_we <= convert_rhs_array_muxed22;
	main_interface_bank3_we <= convert_rhs_array_muxed46;
// synthesis translate_off
	dummy_d_60 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_61;
// synthesis translate_on
always @(*) begin
	main_interface_bank3_valid <= 1'd0;
	main_interface_bank3_valid <= convert_rhs_array_muxed23;
	main_interface_bank3_valid <= convert_rhs_array_muxed47;
// synthesis translate_off
	dummy_d_61 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin4_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked9 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked8 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin4_ce = ((~main_interface_bank4_valid) & (~main_interface_bank4_lock));

// synthesis translate_off
reg dummy_d_62;
// synthesis translate_on
always @(*) begin
	main_interface_bank4_addr <= 23'd0;
	main_interface_bank4_addr <= convert_rhs_array_muxed24;
	main_interface_bank4_addr <= convert_rhs_array_muxed48;
// synthesis translate_off
	dummy_d_62 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_63;
// synthesis translate_on
always @(*) begin
	main_interface_bank4_we <= 1'd0;
	main_interface_bank4_we <= convert_rhs_array_muxed25;
	main_interface_bank4_we <= convert_rhs_array_muxed49;
// synthesis translate_off
	dummy_d_63 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_64;
// synthesis translate_on
always @(*) begin
	main_interface_bank4_valid <= 1'd0;
	main_interface_bank4_valid <= convert_rhs_array_muxed26;
	main_interface_bank4_valid <= convert_rhs_array_muxed50;
// synthesis translate_off
	dummy_d_64 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin5_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked11 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked10 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin5_ce = ((~main_interface_bank5_valid) & (~main_interface_bank5_lock));

// synthesis translate_off
reg dummy_d_65;
// synthesis translate_on
always @(*) begin
	main_interface_bank5_addr <= 23'd0;
	main_interface_bank5_addr <= convert_rhs_array_muxed27;
	main_interface_bank5_addr <= convert_rhs_array_muxed51;
// synthesis translate_off
	dummy_d_65 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_66;
// synthesis translate_on
always @(*) begin
	main_interface_bank5_we <= 1'd0;
	main_interface_bank5_we <= convert_rhs_array_muxed28;
	main_interface_bank5_we <= convert_rhs_array_muxed52;
// synthesis translate_off
	dummy_d_66 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_67;
// synthesis translate_on
always @(*) begin
	main_interface_bank5_valid <= 1'd0;
	main_interface_bank5_valid <= convert_rhs_array_muxed29;
	main_interface_bank5_valid <= convert_rhs_array_muxed53;
// synthesis translate_off
	dummy_d_67 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin6_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked13 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked12 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin6_ce = ((~main_interface_bank6_valid) & (~main_interface_bank6_lock));

// synthesis translate_off
reg dummy_d_68;
// synthesis translate_on
always @(*) begin
	main_interface_bank6_addr <= 23'd0;
	main_interface_bank6_addr <= convert_rhs_array_muxed30;
	main_interface_bank6_addr <= convert_rhs_array_muxed54;
// synthesis translate_off
	dummy_d_68 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_69;
// synthesis translate_on
always @(*) begin
	main_interface_bank6_we <= 1'd0;
	main_interface_bank6_we <= convert_rhs_array_muxed31;
	main_interface_bank6_we <= convert_rhs_array_muxed55;
// synthesis translate_off
	dummy_d_69 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_70;
// synthesis translate_on
always @(*) begin
	main_interface_bank6_valid <= 1'd0;
	main_interface_bank6_valid <= convert_rhs_array_muxed32;
	main_interface_bank6_valid <= convert_rhs_array_muxed56;
// synthesis translate_off
	dummy_d_70 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin7_request = {(((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked15 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid), (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked14 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid)};
assign convert_roundrobin7_ce = ((~main_interface_bank7_valid) & (~main_interface_bank7_lock));

// synthesis translate_off
reg dummy_d_71;
// synthesis translate_on
always @(*) begin
	main_interface_bank7_addr <= 23'd0;
	main_interface_bank7_addr <= convert_rhs_array_muxed33;
	main_interface_bank7_addr <= convert_rhs_array_muxed57;
// synthesis translate_off
	dummy_d_71 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_72;
// synthesis translate_on
always @(*) begin
	main_interface_bank7_we <= 1'd0;
	main_interface_bank7_we <= convert_rhs_array_muxed34;
	main_interface_bank7_we <= convert_rhs_array_muxed58;
// synthesis translate_off
	dummy_d_72 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_73;
// synthesis translate_on
always @(*) begin
	main_interface_bank7_valid <= 1'd0;
	main_interface_bank7_valid <= convert_rhs_array_muxed35;
	main_interface_bank7_valid <= convert_rhs_array_muxed59;
// synthesis translate_off
	dummy_d_73 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_74;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport0_cmd_ready <= 1'd0;
	main_litedramnativeport0_cmd_ready <= ((((((((1'd0 | (((main_roundrobin0_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((main_locked0 | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0)))))) & main_interface_bank0_ready)) | (((main_roundrobin1_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((main_locked2 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0)))))) & main_interface_bank1_ready)) | (((main_roundrobin2_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((main_locked4 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0)))))) & main_interface_bank2_ready)) | (((main_roundrobin3_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((main_locked6 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0)))))) & main_interface_bank3_ready)) | (((main_roundrobin4_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((main_locked8 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0)))))) & main_interface_bank4_ready)) | (((main_roundrobin5_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((main_locked10 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0)))))) & main_interface_bank5_ready)) | (((main_roundrobin6_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((main_locked12 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0)))))) & main_interface_bank6_ready)) | (((main_roundrobin7_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((main_locked14 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0)))))) & main_interface_bank7_ready));
	main_litedramnativeport0_cmd_ready <= ((((((((1'd0 | (((convert_roundrobin0_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked0 | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & main_interface_bank0_ready)) | (((convert_roundrobin1_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked2 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & main_interface_bank1_ready)) | (((convert_roundrobin2_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked4 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & main_interface_bank2_ready)) | (((convert_roundrobin3_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked6 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & main_interface_bank3_ready)) | (((convert_roundrobin4_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked8 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & main_interface_bank4_ready)) | (((convert_roundrobin5_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked10 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & main_interface_bank5_ready)) | (((convert_roundrobin6_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked12 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & main_interface_bank6_ready)) | (((convert_roundrobin7_grant == 1'd0) & ((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked14 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0)))))) & main_interface_bank7_ready));
// synthesis translate_off
	dummy_d_74 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_75;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport1_cmd_ready <= 1'd0;
	main_litedramnativeport1_cmd_ready <= ((((((((1'd0 | (((main_roundrobin0_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((main_locked1 | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1)))))) & main_interface_bank0_ready)) | (((main_roundrobin1_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((main_locked3 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1)))))) & main_interface_bank1_ready)) | (((main_roundrobin2_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((main_locked5 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1)))))) & main_interface_bank2_ready)) | (((main_roundrobin3_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((main_locked7 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1)))))) & main_interface_bank3_ready)) | (((main_roundrobin4_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((main_locked9 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1)))))) & main_interface_bank4_ready)) | (((main_roundrobin5_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((main_locked11 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1)))))) & main_interface_bank5_ready)) | (((main_roundrobin6_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((main_locked13 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1)))))) & main_interface_bank6_ready)) | (((main_roundrobin7_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((main_locked15 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1)))))) & main_interface_bank7_ready));
	main_litedramnativeport1_cmd_ready <= ((((((((1'd0 | (((convert_roundrobin0_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked1 | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & main_interface_bank0_ready)) | (((convert_roundrobin1_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked3 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & main_interface_bank1_ready)) | (((convert_roundrobin2_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked5 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & main_interface_bank2_ready)) | (((convert_roundrobin3_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked7 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & main_interface_bank3_ready)) | (((convert_roundrobin4_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked9 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & main_interface_bank4_ready)) | (((convert_roundrobin5_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked11 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & main_interface_bank5_ready)) | (((convert_roundrobin6_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked13 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & main_interface_bank6_ready)) | (((convert_roundrobin7_grant == 1'd1) & ((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked15 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1)))))) & main_interface_bank7_ready));
// synthesis translate_off
	dummy_d_75 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_76;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport0_wdata_ready <= 1'd0;
	main_litedramnativeport0_wdata_ready <= main_new_master_wdata_ready6;
	main_litedramnativeport0_wdata_ready <= convert_new_master_wdata_ready6;
// synthesis translate_off
	dummy_d_76 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_77;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport1_wdata_ready <= 1'd0;
	main_litedramnativeport1_wdata_ready <= main_new_master_wdata_ready13;
	main_litedramnativeport1_wdata_ready <= convert_new_master_wdata_ready13;
// synthesis translate_off
	dummy_d_77 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_78;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport0_rdata_valid <= 1'd0;
	main_litedramnativeport0_rdata_valid <= main_new_master_rdata_valid23;
	main_litedramnativeport0_rdata_valid <= convert_new_master_rdata_valid23;
// synthesis translate_off
	dummy_d_78 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_79;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport1_rdata_valid <= 1'd0;
	main_litedramnativeport1_rdata_valid <= main_new_master_rdata_valid47;
	main_litedramnativeport1_rdata_valid <= convert_new_master_rdata_valid47;
// synthesis translate_off
	dummy_d_79 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_80;
// synthesis translate_on
always @(*) begin
	main_interface_wdata <= 256'd0;
	main_interface_wdata_we <= 32'd0;
	case ({main_new_master_wdata_ready13, main_new_master_wdata_ready6})
		1'd1: begin
			main_interface_wdata <= main_litedramnativeport0_wdata_payload_data;
			main_interface_wdata_we <= main_litedramnativeport0_wdata_payload_we;
		end
		2'd2: begin
			main_interface_wdata <= main_litedramnativeport1_wdata_payload_data;
			main_interface_wdata_we <= main_litedramnativeport1_wdata_payload_we;
		end
		default: begin
			main_interface_wdata <= 1'd0;
			main_interface_wdata_we <= 1'd0;
		end
	endcase
	case ({convert_new_master_wdata_ready13, convert_new_master_wdata_ready6})
		1'd1: begin
			main_interface_wdata <= main_litedramnativeport0_wdata_payload_data;
			main_interface_wdata_we <= main_litedramnativeport0_wdata_payload_we;
		end
		2'd2: begin
			main_interface_wdata <= main_litedramnativeport1_wdata_payload_data;
			main_interface_wdata_we <= main_litedramnativeport1_wdata_payload_we;
		end
		default: begin
			main_interface_wdata <= 1'd0;
			main_interface_wdata_we <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_80 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_81;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport0_rdata_payload_data <= 256'd0;
	main_litedramnativeport0_rdata_payload_data <= main_interface_rdata;
	main_litedramnativeport0_rdata_payload_data <= main_interface_rdata;
// synthesis translate_off
	dummy_d_81 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_82;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport1_rdata_payload_data <= 256'd0;
	main_litedramnativeport1_rdata_payload_data <= main_interface_rdata;
	main_litedramnativeport1_rdata_payload_data <= main_interface_rdata;
// synthesis translate_off
	dummy_d_82 <= dummy_s;
// synthesis translate_on
end
assign main_ce = ((~main_litedramnativeport0_cmd_valid) | (main_litedramnativeport0_cmd_ready & main_litedramnativeport0_cmd_last));
assign main_write_cmd_grant = (main_grant == 1'd0);

// synthesis translate_off
reg dummy_d_83;
// synthesis translate_on
always @(*) begin
	main_request <= 2'd0;
	main_request[0] <= main_write_cmd_request;
	main_request[1] <= main_read_cmd_request;
// synthesis translate_off
	dummy_d_83 <= dummy_s;
// synthesis translate_on
end
assign main_read_cmd_grant = (main_grant == 1'd1);
assign main_write_aw_buffer_sink_valid = axi_aw_valid;
assign axi_aw_ready = main_write_aw_buffer_sink_ready;
assign main_write_aw_buffer_sink_first = axi_aw_first;
assign main_write_aw_buffer_sink_last = axi_aw_last;
assign main_write_aw_buffer_sink_payload_addr = axi_aw_payload_addr;
assign main_write_aw_buffer_sink_payload_burst = axi_aw_payload_burst;
assign main_write_aw_buffer_sink_payload_len = axi_aw_payload_len;
assign main_write_aw_buffer_sink_payload_size = axi_aw_payload_size;
assign main_write_aw_buffer_sink_payload_lock = axi_aw_payload_lock;
assign main_write_aw_buffer_sink_payload_prot = axi_aw_payload_prot;
assign main_write_aw_buffer_sink_payload_cache = axi_aw_payload_cache;
assign main_write_aw_buffer_sink_payload_qos = axi_aw_payload_qos;
assign main_write_aw_buffer_sink_payload_id = axi_aw_payload_id;
assign main_write_id_buffer_sink_valid = ((main_write_aw_valid & main_write_aw_first) & main_write_aw_ready);
assign main_write_id_buffer_sink_payload_id = main_write_aw_payload_id;

// synthesis translate_off
reg dummy_d_84;
// synthesis translate_on
always @(*) begin
	main_write_id_buffer_source_ready <= 1'd0;
	main_write_resp_buffer_sink_valid <= 1'd0;
	main_write_resp_buffer_sink_payload_id <= 1'd0;
	main_write_resp_buffer_sink_payload_resp <= 2'd0;
	if (((main_write_w_buffer_source_valid & main_write_w_buffer_source_last) & main_write_w_buffer_source_ready)) begin
		main_write_resp_buffer_sink_valid <= 1'd1;
		main_write_resp_buffer_sink_payload_resp <= 1'd0;
		main_write_resp_buffer_sink_payload_id <= main_write_id_buffer_source_payload_id;
		main_write_id_buffer_source_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_84 <= dummy_s;
// synthesis translate_on
end
assign axi_b_valid = main_write_resp_buffer_source_valid;
assign main_write_resp_buffer_source_ready = axi_b_ready;
assign axi_b_first = main_write_resp_buffer_source_first;
assign axi_b_last = main_write_resp_buffer_source_last;
assign axi_b_payload_id = main_write_resp_buffer_source_payload_id;
assign axi_b_payload_resp = main_write_resp_buffer_source_payload_resp;
assign main_write_w_buffer_queue = ((main_litedramnativeport0_cmd_valid & main_litedramnativeport0_cmd_ready) & main_litedramnativeport0_cmd_payload_we);
assign main_write_w_buffer_dequeue = (main_write_w_buffer_source_valid & main_write_w_buffer_source_ready);
assign main_write_can_write = (main_write_w_buffer_level1 > main_write_w_buffer_level2);
assign main_write_cmd_request = (main_write_aw_valid & main_write_can_write);

// synthesis translate_off
reg dummy_d_85;
// synthesis translate_on
always @(*) begin
	axi_w_ready <= 1'd0;
	main_write_w_buffer_sink_valid <= 1'd0;
	main_write_w_buffer_sink_first <= 1'd0;
	main_write_w_buffer_sink_last <= 1'd0;
	main_write_w_buffer_sink_payload_data <= 256'd0;
	main_write_w_buffer_sink_payload_strb <= 32'd0;
	main_write_w_buffer_sink_payload_id <= 1'd0;
	if (main_write_axi_w_connect) begin
		main_write_w_buffer_sink_valid <= axi_w_valid;
		axi_w_ready <= main_write_w_buffer_sink_ready;
		main_write_w_buffer_sink_first <= axi_w_first;
		main_write_w_buffer_sink_last <= axi_w_last;
		main_write_w_buffer_sink_payload_data <= axi_w_payload_data;
		main_write_w_buffer_sink_payload_strb <= axi_w_payload_strb;
		main_write_w_buffer_sink_payload_id <= axi_w_payload_id;
	end
// synthesis translate_off
	dummy_d_85 <= dummy_s;
// synthesis translate_on
end
assign main_litedramnativeport0_wdata_valid = main_write_w_buffer_source_valid;
assign main_write_w_buffer_source_ready = main_litedramnativeport0_wdata_ready;
assign main_litedramnativeport0_wdata_first = main_write_w_buffer_source_first;
assign main_litedramnativeport0_wdata_last = main_write_w_buffer_source_last;
assign main_litedramnativeport0_wdata_payload_data = main_write_w_buffer_source_payload_data;
assign main_litedramnativeport0_wdata_payload_we = main_write_w_buffer_source_payload_strb;
assign main_write_aw_buffer_sink_ready = ((~main_write_aw_buffer_source_valid) | main_write_aw_buffer_source_ready);
assign main_write_beat_size = (1'd1 <<< main_write_aw_buffer_source_payload_size);
assign main_write_beat_wrap = (main_write_aw_buffer_source_payload_len <<< main_write_aw_buffer_source_payload_size);
assign main_write_aw_valid = (main_write_aw_buffer_source_valid | (~main_write_aw_first));
assign main_write_aw_first = (main_write_beat_count == 1'd0);
assign main_write_aw_last = (main_write_beat_count == main_write_aw_buffer_source_payload_len);
assign main_write_aw_payload_addr = ($signed({1'd0, main_write_aw_buffer_source_payload_addr}) + main_write_beat_offset);
assign main_write_aw_payload_id = main_write_aw_buffer_source_payload_id;

// synthesis translate_off
reg dummy_d_86;
// synthesis translate_on
always @(*) begin
	main_write_aw_buffer_source_ready <= 1'd0;
	if (main_write_aw_ready) begin
		if (main_write_aw_last) begin
			main_write_aw_buffer_source_ready <= 1'd1;
		end
	end
// synthesis translate_off
	dummy_d_86 <= dummy_s;
// synthesis translate_on
end
assign main_write_w_buffer_syncfifo_din = {main_write_w_buffer_fifo_in_last, main_write_w_buffer_fifo_in_first, main_write_w_buffer_fifo_in_payload_id, main_write_w_buffer_fifo_in_payload_strb, main_write_w_buffer_fifo_in_payload_data};
assign {main_write_w_buffer_fifo_out_last, main_write_w_buffer_fifo_out_first, main_write_w_buffer_fifo_out_payload_id, main_write_w_buffer_fifo_out_payload_strb, main_write_w_buffer_fifo_out_payload_data} = main_write_w_buffer_syncfifo_dout;
assign main_write_w_buffer_sink_ready = main_write_w_buffer_syncfifo_writable;
assign main_write_w_buffer_syncfifo_we = main_write_w_buffer_sink_valid;
assign main_write_w_buffer_fifo_in_first = main_write_w_buffer_sink_first;
assign main_write_w_buffer_fifo_in_last = main_write_w_buffer_sink_last;
assign main_write_w_buffer_fifo_in_payload_data = main_write_w_buffer_sink_payload_data;
assign main_write_w_buffer_fifo_in_payload_strb = main_write_w_buffer_sink_payload_strb;
assign main_write_w_buffer_fifo_in_payload_id = main_write_w_buffer_sink_payload_id;
assign main_write_w_buffer_source_valid = main_write_w_buffer_readable;
assign main_write_w_buffer_source_first = main_write_w_buffer_fifo_out_first;
assign main_write_w_buffer_source_last = main_write_w_buffer_fifo_out_last;
assign main_write_w_buffer_source_payload_data = main_write_w_buffer_fifo_out_payload_data;
assign main_write_w_buffer_source_payload_strb = main_write_w_buffer_fifo_out_payload_strb;
assign main_write_w_buffer_source_payload_id = main_write_w_buffer_fifo_out_payload_id;
assign main_write_w_buffer_re = main_write_w_buffer_source_ready;
assign main_write_w_buffer_syncfifo_re = (main_write_w_buffer_syncfifo_readable & ((~main_write_w_buffer_readable) | main_write_w_buffer_re));
assign main_write_w_buffer_level1 = (main_write_w_buffer_level0 + main_write_w_buffer_readable);

// synthesis translate_off
reg dummy_d_87;
// synthesis translate_on
always @(*) begin
	main_write_w_buffer_wrport_adr <= 4'd0;
	if (main_write_w_buffer_replace) begin
		main_write_w_buffer_wrport_adr <= (main_write_w_buffer_produce - 1'd1);
	end else begin
		main_write_w_buffer_wrport_adr <= main_write_w_buffer_produce;
	end
// synthesis translate_off
	dummy_d_87 <= dummy_s;
// synthesis translate_on
end
assign main_write_w_buffer_wrport_dat_w = main_write_w_buffer_syncfifo_din;
assign main_write_w_buffer_wrport_we = (main_write_w_buffer_syncfifo_we & (main_write_w_buffer_syncfifo_writable | main_write_w_buffer_replace));
assign main_write_w_buffer_do_read = (main_write_w_buffer_syncfifo_readable & main_write_w_buffer_syncfifo_re);
assign main_write_w_buffer_rdport_adr = main_write_w_buffer_consume;
assign main_write_w_buffer_syncfifo_dout = main_write_w_buffer_rdport_dat_r;
assign main_write_w_buffer_rdport_re = main_write_w_buffer_do_read;
assign main_write_w_buffer_syncfifo_writable = (main_write_w_buffer_level0 != 5'd16);
assign main_write_w_buffer_syncfifo_readable = (main_write_w_buffer_level0 != 1'd0);
assign main_write_id_buffer_syncfifo_din = {main_write_id_buffer_fifo_in_last, main_write_id_buffer_fifo_in_first, main_write_id_buffer_fifo_in_payload_id};
assign {main_write_id_buffer_fifo_out_last, main_write_id_buffer_fifo_out_first, main_write_id_buffer_fifo_out_payload_id} = main_write_id_buffer_syncfifo_dout;
assign main_write_id_buffer_sink_ready = main_write_id_buffer_syncfifo_writable;
assign main_write_id_buffer_syncfifo_we = main_write_id_buffer_sink_valid;
assign main_write_id_buffer_fifo_in_first = main_write_id_buffer_sink_first;
assign main_write_id_buffer_fifo_in_last = main_write_id_buffer_sink_last;
assign main_write_id_buffer_fifo_in_payload_id = main_write_id_buffer_sink_payload_id;
assign main_write_id_buffer_source_valid = main_write_id_buffer_syncfifo_readable;
assign main_write_id_buffer_source_first = main_write_id_buffer_fifo_out_first;
assign main_write_id_buffer_source_last = main_write_id_buffer_fifo_out_last;
assign main_write_id_buffer_source_payload_id = main_write_id_buffer_fifo_out_payload_id;
assign main_write_id_buffer_syncfifo_re = main_write_id_buffer_source_ready;

// synthesis translate_off
reg dummy_d_88;
// synthesis translate_on
always @(*) begin
	main_write_id_buffer_wrport_adr <= 4'd0;
	if (main_write_id_buffer_replace) begin
		main_write_id_buffer_wrport_adr <= (main_write_id_buffer_produce - 1'd1);
	end else begin
		main_write_id_buffer_wrport_adr <= main_write_id_buffer_produce;
	end
// synthesis translate_off
	dummy_d_88 <= dummy_s;
// synthesis translate_on
end
assign main_write_id_buffer_wrport_dat_w = main_write_id_buffer_syncfifo_din;
assign main_write_id_buffer_wrport_we = (main_write_id_buffer_syncfifo_we & (main_write_id_buffer_syncfifo_writable | main_write_id_buffer_replace));
assign main_write_id_buffer_do_read = (main_write_id_buffer_syncfifo_readable & main_write_id_buffer_syncfifo_re);
assign main_write_id_buffer_rdport_adr = main_write_id_buffer_consume;
assign main_write_id_buffer_syncfifo_dout = main_write_id_buffer_rdport_dat_r;
assign main_write_id_buffer_syncfifo_writable = (main_write_id_buffer_level != 5'd16);
assign main_write_id_buffer_syncfifo_readable = (main_write_id_buffer_level != 1'd0);
assign main_write_resp_buffer_syncfifo_din = {main_write_resp_buffer_fifo_in_last, main_write_resp_buffer_fifo_in_first, main_write_resp_buffer_fifo_in_payload_resp, main_write_resp_buffer_fifo_in_payload_id};
assign {main_write_resp_buffer_fifo_out_last, main_write_resp_buffer_fifo_out_first, main_write_resp_buffer_fifo_out_payload_resp, main_write_resp_buffer_fifo_out_payload_id} = main_write_resp_buffer_syncfifo_dout;
assign main_write_resp_buffer_sink_ready = main_write_resp_buffer_syncfifo_writable;
assign main_write_resp_buffer_syncfifo_we = main_write_resp_buffer_sink_valid;
assign main_write_resp_buffer_fifo_in_first = main_write_resp_buffer_sink_first;
assign main_write_resp_buffer_fifo_in_last = main_write_resp_buffer_sink_last;
assign main_write_resp_buffer_fifo_in_payload_id = main_write_resp_buffer_sink_payload_id;
assign main_write_resp_buffer_fifo_in_payload_resp = main_write_resp_buffer_sink_payload_resp;
assign main_write_resp_buffer_source_valid = main_write_resp_buffer_syncfifo_readable;
assign main_write_resp_buffer_source_first = main_write_resp_buffer_fifo_out_first;
assign main_write_resp_buffer_source_last = main_write_resp_buffer_fifo_out_last;
assign main_write_resp_buffer_source_payload_id = main_write_resp_buffer_fifo_out_payload_id;
assign main_write_resp_buffer_source_payload_resp = main_write_resp_buffer_fifo_out_payload_resp;
assign main_write_resp_buffer_syncfifo_re = main_write_resp_buffer_source_ready;

// synthesis translate_off
reg dummy_d_89;
// synthesis translate_on
always @(*) begin
	main_write_resp_buffer_wrport_adr <= 4'd0;
	if (main_write_resp_buffer_replace) begin
		main_write_resp_buffer_wrport_adr <= (main_write_resp_buffer_produce - 1'd1);
	end else begin
		main_write_resp_buffer_wrport_adr <= main_write_resp_buffer_produce;
	end
// synthesis translate_off
	dummy_d_89 <= dummy_s;
// synthesis translate_on
end
assign main_write_resp_buffer_wrport_dat_w = main_write_resp_buffer_syncfifo_din;
assign main_write_resp_buffer_wrport_we = (main_write_resp_buffer_syncfifo_we & (main_write_resp_buffer_syncfifo_writable | main_write_resp_buffer_replace));
assign main_write_resp_buffer_do_read = (main_write_resp_buffer_syncfifo_readable & main_write_resp_buffer_syncfifo_re);
assign main_write_resp_buffer_rdport_adr = main_write_resp_buffer_consume;
assign main_write_resp_buffer_syncfifo_dout = main_write_resp_buffer_rdport_dat_r;
assign main_write_resp_buffer_syncfifo_writable = (main_write_resp_buffer_level != 5'd16);
assign main_write_resp_buffer_syncfifo_readable = (main_write_resp_buffer_level != 1'd0);
assign main_read_ar_buffer_sink_valid = axi_ar_valid;
assign axi_ar_ready = main_read_ar_buffer_sink_ready;
assign main_read_ar_buffer_sink_first = axi_ar_first;
assign main_read_ar_buffer_sink_last = axi_ar_last;
assign main_read_ar_buffer_sink_payload_addr = axi_ar_payload_addr;
assign main_read_ar_buffer_sink_payload_burst = axi_ar_payload_burst;
assign main_read_ar_buffer_sink_payload_len = axi_ar_payload_len;
assign main_read_ar_buffer_sink_payload_size = axi_ar_payload_size;
assign main_read_ar_buffer_sink_payload_lock = axi_ar_payload_lock;
assign main_read_ar_buffer_sink_payload_prot = axi_ar_payload_prot;
assign main_read_ar_buffer_sink_payload_cache = axi_ar_payload_cache;
assign main_read_ar_buffer_sink_payload_qos = axi_ar_payload_qos;
assign main_read_ar_buffer_sink_payload_id = axi_ar_payload_id;
assign main_read_r_buffer_queue = ((main_litedramnativeport0_cmd_valid & main_litedramnativeport0_cmd_ready) & (~main_litedramnativeport0_cmd_payload_we));
assign main_read_r_buffer_dequeue = (main_read_r_buffer_source_valid & main_read_r_buffer_source_ready);
assign main_read_can_read = (main_read_r_buffer_level2 != 5'd16);
assign main_read_id_buffer_sink_valid = (main_read_ar_valid & main_read_ar_ready);
assign main_read_id_buffer_sink_last = main_read_ar_last;
assign main_read_id_buffer_sink_payload_id = main_read_ar_payload_id;
assign axi_r_last = main_read_id_buffer_source_last;
assign axi_r_payload_id = main_read_id_buffer_source_payload_id;
assign main_read_id_buffer_source_ready = (axi_r_valid & axi_r_ready);
assign main_read_cmd_request = (main_read_ar_valid & main_read_can_read);

// synthesis translate_off
reg dummy_d_90;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport0_cmd_valid <= 1'd0;
	main_litedramnativeport0_cmd_last <= 1'd0;
	main_litedramnativeport0_cmd_payload_we <= 1'd0;
	main_litedramnativeport0_cmd_payload_addr <= 26'd0;
	main_write_aw_ready <= 1'd0;
	main_read_ar_ready <= 1'd0;
	if ((main_write_cmd_request & main_write_cmd_grant)) begin
		main_litedramnativeport0_cmd_valid <= 1'd1;
		main_litedramnativeport0_cmd_last <= main_write_aw_last;
		main_litedramnativeport0_cmd_payload_we <= 1'd1;
		main_litedramnativeport0_cmd_payload_addr <= ((main_write_aw_payload_addr - 1'd0) >>> 3'd5);
		if (main_litedramnativeport0_cmd_ready) begin
			main_write_aw_ready <= 1'd1;
		end
	end
	if ((main_read_cmd_request & main_read_cmd_grant)) begin
		main_litedramnativeport0_cmd_valid <= 1'd1;
		main_litedramnativeport0_cmd_last <= main_read_ar_last;
		main_litedramnativeport0_cmd_payload_we <= 1'd0;
		main_litedramnativeport0_cmd_payload_addr <= ((main_read_ar_payload_addr - 1'd0) >>> 3'd5);
		if (main_litedramnativeport0_cmd_ready) begin
			main_read_ar_ready <= 1'd1;
		end
	end
// synthesis translate_off
	dummy_d_90 <= dummy_s;
// synthesis translate_on
end
assign main_read_r_buffer_sink_valid = main_litedramnativeport0_rdata_valid;
assign main_litedramnativeport0_rdata_ready = main_read_r_buffer_sink_ready;
assign main_read_r_buffer_sink_first = main_litedramnativeport0_rdata_first;
assign main_read_r_buffer_sink_last = main_litedramnativeport0_rdata_last;
assign main_read_r_buffer_sink_payload_data = main_litedramnativeport0_rdata_payload_data;
assign axi_r_valid = main_read_r_buffer_source_valid;
assign main_read_r_buffer_source_ready = axi_r_ready;
assign axi_r_first = main_read_r_buffer_source_first;
assign axi_r_payload_data = main_read_r_buffer_source_payload_data;

// synthesis translate_off
reg dummy_d_91;
// synthesis translate_on
always @(*) begin
	axi_r_payload_resp <= 2'd0;
	axi_r_payload_resp <= main_read_r_buffer_source_payload_resp;
	axi_r_payload_resp <= 1'd0;
// synthesis translate_off
	dummy_d_91 <= dummy_s;
// synthesis translate_on
end
assign main_read_ar_buffer_sink_ready = ((~main_read_ar_buffer_source_valid) | main_read_ar_buffer_source_ready);
assign main_read_beat_size = (1'd1 <<< main_read_ar_buffer_source_payload_size);
assign main_read_beat_wrap = (main_read_ar_buffer_source_payload_len <<< main_read_ar_buffer_source_payload_size);
assign main_read_ar_valid = (main_read_ar_buffer_source_valid | (~main_read_ar_first));
assign main_read_ar_first = (main_read_beat_count == 1'd0);
assign main_read_ar_last = (main_read_beat_count == main_read_ar_buffer_source_payload_len);
assign main_read_ar_payload_addr = ($signed({1'd0, main_read_ar_buffer_source_payload_addr}) + main_read_beat_offset);
assign main_read_ar_payload_id = main_read_ar_buffer_source_payload_id;

// synthesis translate_off
reg dummy_d_92;
// synthesis translate_on
always @(*) begin
	main_read_ar_buffer_source_ready <= 1'd0;
	if (main_read_ar_ready) begin
		if (main_read_ar_last) begin
			main_read_ar_buffer_source_ready <= 1'd1;
		end
	end
// synthesis translate_off
	dummy_d_92 <= dummy_s;
// synthesis translate_on
end
assign main_read_r_buffer_syncfifo_din = {main_read_r_buffer_fifo_in_last, main_read_r_buffer_fifo_in_first, main_read_r_buffer_fifo_in_payload_id, main_read_r_buffer_fifo_in_payload_data, main_read_r_buffer_fifo_in_payload_resp};
assign {main_read_r_buffer_fifo_out_last, main_read_r_buffer_fifo_out_first, main_read_r_buffer_fifo_out_payload_id, main_read_r_buffer_fifo_out_payload_data, main_read_r_buffer_fifo_out_payload_resp} = main_read_r_buffer_syncfifo_dout;
assign main_read_r_buffer_sink_ready = main_read_r_buffer_syncfifo_writable;
assign main_read_r_buffer_syncfifo_we = main_read_r_buffer_sink_valid;
assign main_read_r_buffer_fifo_in_first = main_read_r_buffer_sink_first;
assign main_read_r_buffer_fifo_in_last = main_read_r_buffer_sink_last;
assign main_read_r_buffer_fifo_in_payload_resp = main_read_r_buffer_sink_payload_resp;
assign main_read_r_buffer_fifo_in_payload_data = main_read_r_buffer_sink_payload_data;
assign main_read_r_buffer_fifo_in_payload_id = main_read_r_buffer_sink_payload_id;
assign main_read_r_buffer_source_valid = main_read_r_buffer_readable;
assign main_read_r_buffer_source_first = main_read_r_buffer_fifo_out_first;
assign main_read_r_buffer_source_last = main_read_r_buffer_fifo_out_last;
assign main_read_r_buffer_source_payload_resp = main_read_r_buffer_fifo_out_payload_resp;
assign main_read_r_buffer_source_payload_data = main_read_r_buffer_fifo_out_payload_data;
assign main_read_r_buffer_source_payload_id = main_read_r_buffer_fifo_out_payload_id;
assign main_read_r_buffer_re = main_read_r_buffer_source_ready;
assign main_read_r_buffer_syncfifo_re = (main_read_r_buffer_syncfifo_readable & ((~main_read_r_buffer_readable) | main_read_r_buffer_re));
assign main_read_r_buffer_level1 = (main_read_r_buffer_level0 + main_read_r_buffer_readable);

// synthesis translate_off
reg dummy_d_93;
// synthesis translate_on
always @(*) begin
	main_read_r_buffer_wrport_adr <= 4'd0;
	if (main_read_r_buffer_replace) begin
		main_read_r_buffer_wrport_adr <= (main_read_r_buffer_produce - 1'd1);
	end else begin
		main_read_r_buffer_wrport_adr <= main_read_r_buffer_produce;
	end
// synthesis translate_off
	dummy_d_93 <= dummy_s;
// synthesis translate_on
end
assign main_read_r_buffer_wrport_dat_w = main_read_r_buffer_syncfifo_din;
assign main_read_r_buffer_wrport_we = (main_read_r_buffer_syncfifo_we & (main_read_r_buffer_syncfifo_writable | main_read_r_buffer_replace));
assign main_read_r_buffer_do_read = (main_read_r_buffer_syncfifo_readable & main_read_r_buffer_syncfifo_re);
assign main_read_r_buffer_rdport_adr = main_read_r_buffer_consume;
assign main_read_r_buffer_syncfifo_dout = main_read_r_buffer_rdport_dat_r;
assign main_read_r_buffer_rdport_re = main_read_r_buffer_do_read;
assign main_read_r_buffer_syncfifo_writable = (main_read_r_buffer_level0 != 5'd16);
assign main_read_r_buffer_syncfifo_readable = (main_read_r_buffer_level0 != 1'd0);
assign main_read_id_buffer_syncfifo_din = {main_read_id_buffer_fifo_in_last, main_read_id_buffer_fifo_in_first, main_read_id_buffer_fifo_in_payload_id};
assign {main_read_id_buffer_fifo_out_last, main_read_id_buffer_fifo_out_first, main_read_id_buffer_fifo_out_payload_id} = main_read_id_buffer_syncfifo_dout;
assign main_read_id_buffer_sink_ready = main_read_id_buffer_syncfifo_writable;
assign main_read_id_buffer_syncfifo_we = main_read_id_buffer_sink_valid;
assign main_read_id_buffer_fifo_in_first = main_read_id_buffer_sink_first;
assign main_read_id_buffer_fifo_in_last = main_read_id_buffer_sink_last;
assign main_read_id_buffer_fifo_in_payload_id = main_read_id_buffer_sink_payload_id;
assign main_read_id_buffer_source_valid = main_read_id_buffer_syncfifo_readable;
assign main_read_id_buffer_source_first = main_read_id_buffer_fifo_out_first;
assign main_read_id_buffer_source_last = main_read_id_buffer_fifo_out_last;
assign main_read_id_buffer_source_payload_id = main_read_id_buffer_fifo_out_payload_id;
assign main_read_id_buffer_syncfifo_re = main_read_id_buffer_source_ready;

// synthesis translate_off
reg dummy_d_94;
// synthesis translate_on
always @(*) begin
	main_read_id_buffer_wrport_adr <= 4'd0;
	if (main_read_id_buffer_replace) begin
		main_read_id_buffer_wrport_adr <= (main_read_id_buffer_produce - 1'd1);
	end else begin
		main_read_id_buffer_wrport_adr <= main_read_id_buffer_produce;
	end
// synthesis translate_off
	dummy_d_94 <= dummy_s;
// synthesis translate_on
end
assign main_read_id_buffer_wrport_dat_w = main_read_id_buffer_syncfifo_din;
assign main_read_id_buffer_wrport_we = (main_read_id_buffer_syncfifo_we & (main_read_id_buffer_syncfifo_writable | main_read_id_buffer_replace));
assign main_read_id_buffer_do_read = (main_read_id_buffer_syncfifo_readable & main_read_id_buffer_syncfifo_re);
assign main_read_id_buffer_rdport_adr = main_read_id_buffer_consume;
assign main_read_id_buffer_syncfifo_dout = main_read_id_buffer_rdport_dat_r;
assign main_read_id_buffer_syncfifo_writable = (main_read_id_buffer_level != 5'd16);
assign main_read_id_buffer_syncfifo_readable = (main_read_id_buffer_level != 1'd0);
assign main_litedramnativeport1_cmd_payload_addr = (wishbone_adr - 24'd8388608);
assign main_litedramnativeport1_cmd_payload_we = wishbone_we;
assign main_litedramnativeport1_cmd_last = (~wishbone_we);
assign main_litedramnativeport1_flush = (~wishbone_cyc);

// synthesis translate_off
reg dummy_d_95;
// synthesis translate_on
always @(*) begin
	main_litedramnativeport1_wdata_valid <= 1'd0;
	main_litedramnativeport1_wdata_valid <= (wishbone_stb & wishbone_we);
	if (1'd1) begin
		if ((~main_is_ongoing)) begin
			main_litedramnativeport1_wdata_valid <= 1'd0;
		end
	end
// synthesis translate_off
	dummy_d_95 <= dummy_s;
// synthesis translate_on
end
assign main_litedramnativeport1_wdata_payload_data = wishbone_dat_w;
assign main_litedramnativeport1_wdata_payload_we = wishbone_sel;
assign main_litedramnativeport1_rdata_ready = 1'd1;

// synthesis translate_off
reg dummy_d_96;
// synthesis translate_on
always @(*) begin
	wishbone_dat_r <= 256'd0;
	wishbone_ack <= 1'd0;
	main_litedramnativeport1_cmd_valid <= 1'd0;
	main_is_ongoing <= 1'd0;
	convert_next_state <= 2'd0;
	main_aborted_next_value <= 1'd0;
	main_aborted_next_value_ce <= 1'd0;
	convert_next_state <= convert_state;
	case (convert_state)
		1'd1: begin
			main_is_ongoing <= 1'd1;
			main_aborted_next_value <= ((~wishbone_cyc) | main_aborted);
			main_aborted_next_value_ce <= 1'd1;
			if ((main_litedramnativeport1_wdata_valid & main_litedramnativeport1_wdata_ready)) begin
				wishbone_ack <= (wishbone_cyc & (~main_aborted));
				convert_next_state <= 1'd0;
			end
		end
		2'd2: begin
			main_aborted_next_value <= ((~wishbone_cyc) | main_aborted);
			main_aborted_next_value_ce <= 1'd1;
			if (main_litedramnativeport1_rdata_valid) begin
				wishbone_ack <= (wishbone_cyc & (~main_aborted));
				wishbone_dat_r <= main_litedramnativeport1_rdata_payload_data;
				convert_next_state <= 1'd0;
			end
		end
		default: begin
			main_litedramnativeport1_cmd_valid <= (wishbone_cyc & wishbone_stb);
			if (((main_litedramnativeport1_cmd_valid & main_litedramnativeport1_cmd_ready) & wishbone_we)) begin
				convert_next_state <= 1'd1;
			end
			if (((main_litedramnativeport1_cmd_valid & main_litedramnativeport1_cmd_ready) & (~wishbone_we))) begin
				convert_next_state <= 2'd2;
			end
			main_aborted_next_value <= 1'd0;
			main_aborted_next_value_ce <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_96 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_97;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed0 <= 1'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[0];
		end
		1'd1: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[1];
		end
		2'd2: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[2];
		end
		2'd3: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[3];
		end
		3'd4: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[4];
		end
		3'd5: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[5];
		end
		3'd6: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[6];
		end
		default: begin
			convert_rhs_array_muxed0 <= main_choose_cmd_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_97 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_98;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed1 <= 17'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_rhs_array_muxed1 <= main_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			convert_rhs_array_muxed1 <= main_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			convert_rhs_array_muxed1 <= main_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			convert_rhs_array_muxed1 <= main_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			convert_rhs_array_muxed1 <= main_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			convert_rhs_array_muxed1 <= main_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			convert_rhs_array_muxed1 <= main_bankmachine6_cmd_payload_a;
		end
		default: begin
			convert_rhs_array_muxed1 <= main_bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_98 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_99;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed2 <= 3'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_rhs_array_muxed2 <= main_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			convert_rhs_array_muxed2 <= main_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			convert_rhs_array_muxed2 <= main_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			convert_rhs_array_muxed2 <= main_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			convert_rhs_array_muxed2 <= main_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			convert_rhs_array_muxed2 <= main_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			convert_rhs_array_muxed2 <= main_bankmachine6_cmd_payload_ba;
		end
		default: begin
			convert_rhs_array_muxed2 <= main_bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_99 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_100;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed3 <= 1'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_rhs_array_muxed3 <= main_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			convert_rhs_array_muxed3 <= main_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			convert_rhs_array_muxed3 <= main_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			convert_rhs_array_muxed3 <= main_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			convert_rhs_array_muxed3 <= main_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			convert_rhs_array_muxed3 <= main_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			convert_rhs_array_muxed3 <= main_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			convert_rhs_array_muxed3 <= main_bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_100 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_101;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed4 <= 1'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_rhs_array_muxed4 <= main_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			convert_rhs_array_muxed4 <= main_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			convert_rhs_array_muxed4 <= main_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			convert_rhs_array_muxed4 <= main_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			convert_rhs_array_muxed4 <= main_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			convert_rhs_array_muxed4 <= main_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			convert_rhs_array_muxed4 <= main_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			convert_rhs_array_muxed4 <= main_bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_101 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_102;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed5 <= 1'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_rhs_array_muxed5 <= main_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			convert_rhs_array_muxed5 <= main_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			convert_rhs_array_muxed5 <= main_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			convert_rhs_array_muxed5 <= main_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			convert_rhs_array_muxed5 <= main_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			convert_rhs_array_muxed5 <= main_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			convert_rhs_array_muxed5 <= main_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			convert_rhs_array_muxed5 <= main_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_102 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_103;
// synthesis translate_on
always @(*) begin
	convert_t_array_muxed0 <= 1'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_t_array_muxed0 <= main_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			convert_t_array_muxed0 <= main_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			convert_t_array_muxed0 <= main_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			convert_t_array_muxed0 <= main_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			convert_t_array_muxed0 <= main_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			convert_t_array_muxed0 <= main_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			convert_t_array_muxed0 <= main_bankmachine6_cmd_payload_cas;
		end
		default: begin
			convert_t_array_muxed0 <= main_bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_103 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_104;
// synthesis translate_on
always @(*) begin
	convert_t_array_muxed1 <= 1'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_t_array_muxed1 <= main_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			convert_t_array_muxed1 <= main_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			convert_t_array_muxed1 <= main_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			convert_t_array_muxed1 <= main_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			convert_t_array_muxed1 <= main_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			convert_t_array_muxed1 <= main_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			convert_t_array_muxed1 <= main_bankmachine6_cmd_payload_ras;
		end
		default: begin
			convert_t_array_muxed1 <= main_bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_104 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_105;
// synthesis translate_on
always @(*) begin
	convert_t_array_muxed2 <= 1'd0;
	case (main_choose_cmd_grant)
		1'd0: begin
			convert_t_array_muxed2 <= main_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			convert_t_array_muxed2 <= main_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			convert_t_array_muxed2 <= main_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			convert_t_array_muxed2 <= main_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			convert_t_array_muxed2 <= main_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			convert_t_array_muxed2 <= main_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			convert_t_array_muxed2 <= main_bankmachine6_cmd_payload_we;
		end
		default: begin
			convert_t_array_muxed2 <= main_bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_105 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_106;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed6 <= 1'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[0];
		end
		1'd1: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[1];
		end
		2'd2: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[2];
		end
		2'd3: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[3];
		end
		3'd4: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[4];
		end
		3'd5: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[5];
		end
		3'd6: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[6];
		end
		default: begin
			convert_rhs_array_muxed6 <= main_choose_req_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_106 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_107;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed7 <= 17'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_rhs_array_muxed7 <= main_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			convert_rhs_array_muxed7 <= main_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			convert_rhs_array_muxed7 <= main_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			convert_rhs_array_muxed7 <= main_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			convert_rhs_array_muxed7 <= main_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			convert_rhs_array_muxed7 <= main_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			convert_rhs_array_muxed7 <= main_bankmachine6_cmd_payload_a;
		end
		default: begin
			convert_rhs_array_muxed7 <= main_bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_107 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_108;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed8 <= 3'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_rhs_array_muxed8 <= main_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			convert_rhs_array_muxed8 <= main_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			convert_rhs_array_muxed8 <= main_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			convert_rhs_array_muxed8 <= main_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			convert_rhs_array_muxed8 <= main_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			convert_rhs_array_muxed8 <= main_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			convert_rhs_array_muxed8 <= main_bankmachine6_cmd_payload_ba;
		end
		default: begin
			convert_rhs_array_muxed8 <= main_bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_108 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_109;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed9 <= 1'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_rhs_array_muxed9 <= main_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			convert_rhs_array_muxed9 <= main_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			convert_rhs_array_muxed9 <= main_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			convert_rhs_array_muxed9 <= main_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			convert_rhs_array_muxed9 <= main_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			convert_rhs_array_muxed9 <= main_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			convert_rhs_array_muxed9 <= main_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			convert_rhs_array_muxed9 <= main_bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_109 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_110;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed10 <= 1'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_rhs_array_muxed10 <= main_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			convert_rhs_array_muxed10 <= main_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			convert_rhs_array_muxed10 <= main_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			convert_rhs_array_muxed10 <= main_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			convert_rhs_array_muxed10 <= main_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			convert_rhs_array_muxed10 <= main_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			convert_rhs_array_muxed10 <= main_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			convert_rhs_array_muxed10 <= main_bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_110 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_111;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed11 <= 1'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_rhs_array_muxed11 <= main_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			convert_rhs_array_muxed11 <= main_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			convert_rhs_array_muxed11 <= main_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			convert_rhs_array_muxed11 <= main_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			convert_rhs_array_muxed11 <= main_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			convert_rhs_array_muxed11 <= main_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			convert_rhs_array_muxed11 <= main_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			convert_rhs_array_muxed11 <= main_bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_111 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_112;
// synthesis translate_on
always @(*) begin
	convert_t_array_muxed3 <= 1'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_t_array_muxed3 <= main_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			convert_t_array_muxed3 <= main_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			convert_t_array_muxed3 <= main_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			convert_t_array_muxed3 <= main_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			convert_t_array_muxed3 <= main_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			convert_t_array_muxed3 <= main_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			convert_t_array_muxed3 <= main_bankmachine6_cmd_payload_cas;
		end
		default: begin
			convert_t_array_muxed3 <= main_bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_112 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_113;
// synthesis translate_on
always @(*) begin
	convert_t_array_muxed4 <= 1'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_t_array_muxed4 <= main_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			convert_t_array_muxed4 <= main_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			convert_t_array_muxed4 <= main_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			convert_t_array_muxed4 <= main_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			convert_t_array_muxed4 <= main_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			convert_t_array_muxed4 <= main_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			convert_t_array_muxed4 <= main_bankmachine6_cmd_payload_ras;
		end
		default: begin
			convert_t_array_muxed4 <= main_bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_113 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_114;
// synthesis translate_on
always @(*) begin
	convert_t_array_muxed5 <= 1'd0;
	case (main_choose_req_grant)
		1'd0: begin
			convert_t_array_muxed5 <= main_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			convert_t_array_muxed5 <= main_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			convert_t_array_muxed5 <= main_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			convert_t_array_muxed5 <= main_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			convert_t_array_muxed5 <= main_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			convert_t_array_muxed5 <= main_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			convert_t_array_muxed5 <= main_bankmachine6_cmd_payload_we;
		end
		default: begin
			convert_t_array_muxed5 <= main_bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_114 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_115;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed12 <= 23'd0;
	case (main_roundrobin0_grant)
		1'd0: begin
			convert_rhs_array_muxed12 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed12 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_115 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_116;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed13 <= 1'd0;
	case (main_roundrobin0_grant)
		1'd0: begin
			convert_rhs_array_muxed13 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed13 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_116 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_117;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed14 <= 1'd0;
	case (main_roundrobin0_grant)
		1'd0: begin
			convert_rhs_array_muxed14 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((main_locked0 | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed14 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((main_locked1 | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_117 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_118;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed15 <= 23'd0;
	case (main_roundrobin1_grant)
		1'd0: begin
			convert_rhs_array_muxed15 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed15 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_118 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_119;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed16 <= 1'd0;
	case (main_roundrobin1_grant)
		1'd0: begin
			convert_rhs_array_muxed16 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed16 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_119 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_120;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed17 <= 1'd0;
	case (main_roundrobin1_grant)
		1'd0: begin
			convert_rhs_array_muxed17 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((main_locked2 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed17 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((main_locked3 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_120 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_121;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed18 <= 23'd0;
	case (main_roundrobin2_grant)
		1'd0: begin
			convert_rhs_array_muxed18 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed18 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_121 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_122;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed19 <= 1'd0;
	case (main_roundrobin2_grant)
		1'd0: begin
			convert_rhs_array_muxed19 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed19 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_122 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_123;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed20 <= 1'd0;
	case (main_roundrobin2_grant)
		1'd0: begin
			convert_rhs_array_muxed20 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((main_locked4 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed20 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((main_locked5 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_123 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_124;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed21 <= 23'd0;
	case (main_roundrobin3_grant)
		1'd0: begin
			convert_rhs_array_muxed21 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed21 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_124 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_125;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed22 <= 1'd0;
	case (main_roundrobin3_grant)
		1'd0: begin
			convert_rhs_array_muxed22 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed22 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_125 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_126;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed23 <= 1'd0;
	case (main_roundrobin3_grant)
		1'd0: begin
			convert_rhs_array_muxed23 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((main_locked6 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed23 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((main_locked7 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_126 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_127;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed24 <= 23'd0;
	case (main_roundrobin4_grant)
		1'd0: begin
			convert_rhs_array_muxed24 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed24 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_127 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_128;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed25 <= 1'd0;
	case (main_roundrobin4_grant)
		1'd0: begin
			convert_rhs_array_muxed25 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed25 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_128 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_129;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed26 <= 1'd0;
	case (main_roundrobin4_grant)
		1'd0: begin
			convert_rhs_array_muxed26 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((main_locked8 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed26 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((main_locked9 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_129 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_130;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed27 <= 23'd0;
	case (main_roundrobin5_grant)
		1'd0: begin
			convert_rhs_array_muxed27 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed27 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_130 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_131;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed28 <= 1'd0;
	case (main_roundrobin5_grant)
		1'd0: begin
			convert_rhs_array_muxed28 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed28 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_131 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_132;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed29 <= 1'd0;
	case (main_roundrobin5_grant)
		1'd0: begin
			convert_rhs_array_muxed29 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((main_locked10 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed29 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((main_locked11 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_132 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_133;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed30 <= 23'd0;
	case (main_roundrobin6_grant)
		1'd0: begin
			convert_rhs_array_muxed30 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed30 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_133 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_134;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed31 <= 1'd0;
	case (main_roundrobin6_grant)
		1'd0: begin
			convert_rhs_array_muxed31 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed31 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_134 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_135;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed32 <= 1'd0;
	case (main_roundrobin6_grant)
		1'd0: begin
			convert_rhs_array_muxed32 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((main_locked12 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed32 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((main_locked13 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank7_lock & (main_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_135 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_136;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed33 <= 23'd0;
	case (main_roundrobin7_grant)
		1'd0: begin
			convert_rhs_array_muxed33 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed33 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_136 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_137;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed34 <= 1'd0;
	case (main_roundrobin7_grant)
		1'd0: begin
			convert_rhs_array_muxed34 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed34 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_137 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_138;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed35 <= 1'd0;
	case (main_roundrobin7_grant)
		1'd0: begin
			convert_rhs_array_muxed35 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((main_locked14 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed35 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((main_locked15 | (main_interface_bank0_lock & (main_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (main_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (main_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (main_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (main_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (main_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (main_roundrobin6_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_138 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_139;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed36 <= 23'd0;
	case (convert_roundrobin0_grant)
		1'd0: begin
			convert_rhs_array_muxed36 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed36 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_139 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_140;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed37 <= 1'd0;
	case (convert_roundrobin0_grant)
		1'd0: begin
			convert_rhs_array_muxed37 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed37 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_140 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_141;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed38 <= 1'd0;
	case (convert_roundrobin0_grant)
		1'd0: begin
			convert_rhs_array_muxed38 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked0 | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed38 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked1 | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_141 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_142;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed39 <= 23'd0;
	case (convert_roundrobin1_grant)
		1'd0: begin
			convert_rhs_array_muxed39 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed39 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_142 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_143;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed40 <= 1'd0;
	case (convert_roundrobin1_grant)
		1'd0: begin
			convert_rhs_array_muxed40 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed40 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_143 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_144;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed41 <= 1'd0;
	case (convert_roundrobin1_grant)
		1'd0: begin
			convert_rhs_array_muxed41 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked2 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed41 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked3 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_144 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_145;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed42 <= 23'd0;
	case (convert_roundrobin2_grant)
		1'd0: begin
			convert_rhs_array_muxed42 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed42 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_145 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_146;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed43 <= 1'd0;
	case (convert_roundrobin2_grant)
		1'd0: begin
			convert_rhs_array_muxed43 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed43 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_146 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_147;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed44 <= 1'd0;
	case (convert_roundrobin2_grant)
		1'd0: begin
			convert_rhs_array_muxed44 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked4 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed44 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked5 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_147 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_148;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed45 <= 23'd0;
	case (convert_roundrobin3_grant)
		1'd0: begin
			convert_rhs_array_muxed45 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed45 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_148 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_149;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed46 <= 1'd0;
	case (convert_roundrobin3_grant)
		1'd0: begin
			convert_rhs_array_muxed46 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed46 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_149 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_150;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed47 <= 1'd0;
	case (convert_roundrobin3_grant)
		1'd0: begin
			convert_rhs_array_muxed47 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked6 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed47 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked7 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_150 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_151;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed48 <= 23'd0;
	case (convert_roundrobin4_grant)
		1'd0: begin
			convert_rhs_array_muxed48 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed48 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_151 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_152;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed49 <= 1'd0;
	case (convert_roundrobin4_grant)
		1'd0: begin
			convert_rhs_array_muxed49 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed49 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_152 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_153;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed50 <= 1'd0;
	case (convert_roundrobin4_grant)
		1'd0: begin
			convert_rhs_array_muxed50 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked8 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed50 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked9 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_153 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_154;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed51 <= 23'd0;
	case (convert_roundrobin5_grant)
		1'd0: begin
			convert_rhs_array_muxed51 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed51 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_154 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_155;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed52 <= 1'd0;
	case (convert_roundrobin5_grant)
		1'd0: begin
			convert_rhs_array_muxed52 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed52 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_155 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_156;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed53 <= 1'd0;
	case (convert_roundrobin5_grant)
		1'd0: begin
			convert_rhs_array_muxed53 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked10 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed53 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked11 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_156 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_157;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed54 <= 23'd0;
	case (convert_roundrobin6_grant)
		1'd0: begin
			convert_rhs_array_muxed54 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed54 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_157 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_158;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed55 <= 1'd0;
	case (convert_roundrobin6_grant)
		1'd0: begin
			convert_rhs_array_muxed55 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed55 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_158 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_159;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed56 <= 1'd0;
	case (convert_roundrobin6_grant)
		1'd0: begin
			convert_rhs_array_muxed56 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked12 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed56 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked13 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_159 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_160;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed57 <= 23'd0;
	case (convert_roundrobin7_grant)
		1'd0: begin
			convert_rhs_array_muxed57 <= {main_litedramnativeport0_cmd_payload_addr[25:9], main_litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			convert_rhs_array_muxed57 <= {main_litedramnativeport1_cmd_payload_addr[25:9], main_litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_160 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_161;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed58 <= 1'd0;
	case (convert_roundrobin7_grant)
		1'd0: begin
			convert_rhs_array_muxed58 <= main_litedramnativeport0_cmd_payload_we;
		end
		default: begin
			convert_rhs_array_muxed58 <= main_litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_161 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_162;
// synthesis translate_on
always @(*) begin
	convert_rhs_array_muxed59 <= 1'd0;
	case (convert_roundrobin7_grant)
		1'd0: begin
			convert_rhs_array_muxed59 <= (((main_litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked14 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))))) & main_litedramnativeport0_cmd_valid);
		end
		default: begin
			convert_rhs_array_muxed59 <= (((main_litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked15 | (main_interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (main_interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (main_interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (main_interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (main_interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (main_interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (main_interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))))) & main_litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_162 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_163;
// synthesis translate_on
always @(*) begin
	convert_array_muxed0 <= 3'd0;
	case (main_steerer_sel0)
		1'd0: begin
			convert_array_muxed0 <= main_nop_ba[2:0];
		end
		1'd1: begin
			convert_array_muxed0 <= main_choose_req_cmd_payload_ba[2:0];
		end
		2'd2: begin
			convert_array_muxed0 <= main_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			convert_array_muxed0 <= main_cmd_payload_ba[2:0];
		end
	endcase
// synthesis translate_off
	dummy_d_163 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_164;
// synthesis translate_on
always @(*) begin
	convert_array_muxed1 <= 17'd0;
	case (main_steerer_sel0)
		1'd0: begin
			convert_array_muxed1 <= main_nop_a;
		end
		1'd1: begin
			convert_array_muxed1 <= main_choose_req_cmd_payload_a;
		end
		2'd2: begin
			convert_array_muxed1 <= main_choose_req_cmd_payload_a;
		end
		default: begin
			convert_array_muxed1 <= main_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_164 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_165;
// synthesis translate_on
always @(*) begin
	convert_array_muxed2 <= 1'd0;
	case (main_steerer_sel0)
		1'd0: begin
			convert_array_muxed2 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed2 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		2'd2: begin
			convert_array_muxed2 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		default: begin
			convert_array_muxed2 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_cas);
		end
	endcase
// synthesis translate_off
	dummy_d_165 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_166;
// synthesis translate_on
always @(*) begin
	convert_array_muxed3 <= 1'd0;
	case (main_steerer_sel0)
		1'd0: begin
			convert_array_muxed3 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed3 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		2'd2: begin
			convert_array_muxed3 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		default: begin
			convert_array_muxed3 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_ras);
		end
	endcase
// synthesis translate_off
	dummy_d_166 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_167;
// synthesis translate_on
always @(*) begin
	convert_array_muxed4 <= 1'd0;
	case (main_steerer_sel0)
		1'd0: begin
			convert_array_muxed4 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed4 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		2'd2: begin
			convert_array_muxed4 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		default: begin
			convert_array_muxed4 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_we);
		end
	endcase
// synthesis translate_off
	dummy_d_167 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_168;
// synthesis translate_on
always @(*) begin
	convert_array_muxed5 <= 1'd0;
	case (main_steerer_sel0)
		1'd0: begin
			convert_array_muxed5 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed5 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		2'd2: begin
			convert_array_muxed5 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		default: begin
			convert_array_muxed5 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_168 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_169;
// synthesis translate_on
always @(*) begin
	convert_array_muxed6 <= 1'd0;
	case (main_steerer_sel0)
		1'd0: begin
			convert_array_muxed6 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed6 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		2'd2: begin
			convert_array_muxed6 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		default: begin
			convert_array_muxed6 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_169 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_170;
// synthesis translate_on
always @(*) begin
	convert_array_muxed7 <= 3'd0;
	case (main_steerer_sel1)
		1'd0: begin
			convert_array_muxed7 <= main_nop_ba[2:0];
		end
		1'd1: begin
			convert_array_muxed7 <= main_choose_req_cmd_payload_ba[2:0];
		end
		2'd2: begin
			convert_array_muxed7 <= main_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			convert_array_muxed7 <= main_cmd_payload_ba[2:0];
		end
	endcase
// synthesis translate_off
	dummy_d_170 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_171;
// synthesis translate_on
always @(*) begin
	convert_array_muxed8 <= 17'd0;
	case (main_steerer_sel1)
		1'd0: begin
			convert_array_muxed8 <= main_nop_a;
		end
		1'd1: begin
			convert_array_muxed8 <= main_choose_req_cmd_payload_a;
		end
		2'd2: begin
			convert_array_muxed8 <= main_choose_req_cmd_payload_a;
		end
		default: begin
			convert_array_muxed8 <= main_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_171 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_172;
// synthesis translate_on
always @(*) begin
	convert_array_muxed9 <= 1'd0;
	case (main_steerer_sel1)
		1'd0: begin
			convert_array_muxed9 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed9 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		2'd2: begin
			convert_array_muxed9 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		default: begin
			convert_array_muxed9 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_cas);
		end
	endcase
// synthesis translate_off
	dummy_d_172 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_173;
// synthesis translate_on
always @(*) begin
	convert_array_muxed10 <= 1'd0;
	case (main_steerer_sel1)
		1'd0: begin
			convert_array_muxed10 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed10 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		2'd2: begin
			convert_array_muxed10 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		default: begin
			convert_array_muxed10 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_ras);
		end
	endcase
// synthesis translate_off
	dummy_d_173 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_174;
// synthesis translate_on
always @(*) begin
	convert_array_muxed11 <= 1'd0;
	case (main_steerer_sel1)
		1'd0: begin
			convert_array_muxed11 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed11 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		2'd2: begin
			convert_array_muxed11 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		default: begin
			convert_array_muxed11 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_we);
		end
	endcase
// synthesis translate_off
	dummy_d_174 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_175;
// synthesis translate_on
always @(*) begin
	convert_array_muxed12 <= 1'd0;
	case (main_steerer_sel1)
		1'd0: begin
			convert_array_muxed12 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed12 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		2'd2: begin
			convert_array_muxed12 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		default: begin
			convert_array_muxed12 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_175 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_176;
// synthesis translate_on
always @(*) begin
	convert_array_muxed13 <= 1'd0;
	case (main_steerer_sel1)
		1'd0: begin
			convert_array_muxed13 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed13 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		2'd2: begin
			convert_array_muxed13 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		default: begin
			convert_array_muxed13 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_176 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_177;
// synthesis translate_on
always @(*) begin
	convert_array_muxed14 <= 3'd0;
	case (main_steerer_sel2)
		1'd0: begin
			convert_array_muxed14 <= main_nop_ba[2:0];
		end
		1'd1: begin
			convert_array_muxed14 <= main_choose_req_cmd_payload_ba[2:0];
		end
		2'd2: begin
			convert_array_muxed14 <= main_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			convert_array_muxed14 <= main_cmd_payload_ba[2:0];
		end
	endcase
// synthesis translate_off
	dummy_d_177 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_178;
// synthesis translate_on
always @(*) begin
	convert_array_muxed15 <= 17'd0;
	case (main_steerer_sel2)
		1'd0: begin
			convert_array_muxed15 <= main_nop_a;
		end
		1'd1: begin
			convert_array_muxed15 <= main_choose_req_cmd_payload_a;
		end
		2'd2: begin
			convert_array_muxed15 <= main_choose_req_cmd_payload_a;
		end
		default: begin
			convert_array_muxed15 <= main_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_178 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_179;
// synthesis translate_on
always @(*) begin
	convert_array_muxed16 <= 1'd0;
	case (main_steerer_sel2)
		1'd0: begin
			convert_array_muxed16 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed16 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		2'd2: begin
			convert_array_muxed16 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		default: begin
			convert_array_muxed16 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_cas);
		end
	endcase
// synthesis translate_off
	dummy_d_179 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_180;
// synthesis translate_on
always @(*) begin
	convert_array_muxed17 <= 1'd0;
	case (main_steerer_sel2)
		1'd0: begin
			convert_array_muxed17 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed17 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		2'd2: begin
			convert_array_muxed17 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		default: begin
			convert_array_muxed17 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_ras);
		end
	endcase
// synthesis translate_off
	dummy_d_180 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_181;
// synthesis translate_on
always @(*) begin
	convert_array_muxed18 <= 1'd0;
	case (main_steerer_sel2)
		1'd0: begin
			convert_array_muxed18 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed18 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		2'd2: begin
			convert_array_muxed18 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		default: begin
			convert_array_muxed18 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_we);
		end
	endcase
// synthesis translate_off
	dummy_d_181 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_182;
// synthesis translate_on
always @(*) begin
	convert_array_muxed19 <= 1'd0;
	case (main_steerer_sel2)
		1'd0: begin
			convert_array_muxed19 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed19 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		2'd2: begin
			convert_array_muxed19 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		default: begin
			convert_array_muxed19 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_182 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_183;
// synthesis translate_on
always @(*) begin
	convert_array_muxed20 <= 1'd0;
	case (main_steerer_sel2)
		1'd0: begin
			convert_array_muxed20 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed20 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		2'd2: begin
			convert_array_muxed20 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		default: begin
			convert_array_muxed20 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_183 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_184;
// synthesis translate_on
always @(*) begin
	convert_array_muxed21 <= 3'd0;
	case (main_steerer_sel3)
		1'd0: begin
			convert_array_muxed21 <= main_nop_ba[2:0];
		end
		1'd1: begin
			convert_array_muxed21 <= main_choose_req_cmd_payload_ba[2:0];
		end
		2'd2: begin
			convert_array_muxed21 <= main_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			convert_array_muxed21 <= main_cmd_payload_ba[2:0];
		end
	endcase
// synthesis translate_off
	dummy_d_184 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_185;
// synthesis translate_on
always @(*) begin
	convert_array_muxed22 <= 17'd0;
	case (main_steerer_sel3)
		1'd0: begin
			convert_array_muxed22 <= main_nop_a;
		end
		1'd1: begin
			convert_array_muxed22 <= main_choose_req_cmd_payload_a;
		end
		2'd2: begin
			convert_array_muxed22 <= main_choose_req_cmd_payload_a;
		end
		default: begin
			convert_array_muxed22 <= main_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_185 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_186;
// synthesis translate_on
always @(*) begin
	convert_array_muxed23 <= 1'd0;
	case (main_steerer_sel3)
		1'd0: begin
			convert_array_muxed23 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed23 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		2'd2: begin
			convert_array_muxed23 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_cas);
		end
		default: begin
			convert_array_muxed23 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_cas);
		end
	endcase
// synthesis translate_off
	dummy_d_186 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_187;
// synthesis translate_on
always @(*) begin
	convert_array_muxed24 <= 1'd0;
	case (main_steerer_sel3)
		1'd0: begin
			convert_array_muxed24 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed24 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		2'd2: begin
			convert_array_muxed24 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_ras);
		end
		default: begin
			convert_array_muxed24 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_ras);
		end
	endcase
// synthesis translate_off
	dummy_d_187 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_188;
// synthesis translate_on
always @(*) begin
	convert_array_muxed25 <= 1'd0;
	case (main_steerer_sel3)
		1'd0: begin
			convert_array_muxed25 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed25 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		2'd2: begin
			convert_array_muxed25 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_we);
		end
		default: begin
			convert_array_muxed25 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_we);
		end
	endcase
// synthesis translate_off
	dummy_d_188 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_189;
// synthesis translate_on
always @(*) begin
	convert_array_muxed26 <= 1'd0;
	case (main_steerer_sel3)
		1'd0: begin
			convert_array_muxed26 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed26 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		2'd2: begin
			convert_array_muxed26 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_read);
		end
		default: begin
			convert_array_muxed26 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_read);
		end
	endcase
// synthesis translate_off
	dummy_d_189 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_190;
// synthesis translate_on
always @(*) begin
	convert_array_muxed27 <= 1'd0;
	case (main_steerer_sel3)
		1'd0: begin
			convert_array_muxed27 <= 1'd0;
		end
		1'd1: begin
			convert_array_muxed27 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		2'd2: begin
			convert_array_muxed27 <= ((main_choose_req_cmd_valid & main_choose_req_cmd_ready) & main_choose_req_cmd_payload_is_write);
		end
		default: begin
			convert_array_muxed27 <= ((main_cmd_valid & main_cmd_ready) & main_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_190 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	if ((main_timer_wait & (~main_timer_done0))) begin
		main_timer_count1 <= (main_timer_count1 - 1'd1);
	end else begin
		main_timer_count1 <= 12'd2082;
	end
	main_postponer_req_o <= 1'd0;
	if (main_postponer_req_i) begin
		main_postponer_count <= (main_postponer_count - 1'd1);
		if ((main_postponer_count == 1'd0)) begin
			main_postponer_count <= 1'd0;
			main_postponer_req_o <= 1'd1;
		end
	end
	if (main_sequencer_start0) begin
		main_sequencer_count <= 1'd0;
	end else begin
		if (main_sequencer_done1) begin
			if ((main_sequencer_count != 1'd0)) begin
				main_sequencer_count <= (main_sequencer_count - 1'd1);
			end
		end
	end
	main_cmd_payload_a <= 1'd0;
	main_cmd_payload_ba <= 1'd0;
	main_cmd_payload_cas <= 1'd0;
	main_cmd_payload_ras <= 1'd0;
	main_cmd_payload_we <= 1'd0;
	main_sequencer_done1 <= 1'd0;
	if ((main_sequencer_start1 & (main_sequencer_counter == 1'd0))) begin
		main_cmd_payload_a <= 11'd1024;
		main_cmd_payload_ba <= 1'd0;
		main_cmd_payload_cas <= 1'd0;
		main_cmd_payload_ras <= 1'd1;
		main_cmd_payload_we <= 1'd1;
	end
	if ((main_sequencer_counter == 4'd12)) begin
		main_cmd_payload_a <= 11'd1024;
		main_cmd_payload_ba <= 1'd0;
		main_cmd_payload_cas <= 1'd1;
		main_cmd_payload_ras <= 1'd1;
		main_cmd_payload_we <= 1'd0;
	end
	if ((main_sequencer_counter == 7'd109)) begin
		main_cmd_payload_a <= 1'd0;
		main_cmd_payload_ba <= 1'd0;
		main_cmd_payload_cas <= 1'd0;
		main_cmd_payload_ras <= 1'd0;
		main_cmd_payload_we <= 1'd0;
		main_sequencer_done1 <= 1'd1;
	end
	if ((main_sequencer_counter == 7'd109)) begin
		main_sequencer_counter <= 1'd0;
	end else begin
		if ((main_sequencer_counter != 1'd0)) begin
			main_sequencer_counter <= (main_sequencer_counter + 1'd1);
		end else begin
			if (main_sequencer_start1) begin
				main_sequencer_counter <= 1'd1;
			end
		end
	end
	convert_refresher_state <= convert_refresher_next_state;
	if (main_bankmachine0_row_close) begin
		main_bankmachine0_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine0_row_open) begin
			main_bankmachine0_row_opened <= 1'd1;
			main_bankmachine0_row <= main_bankmachine0_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & main_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~main_bankmachine0_cmd_buffer_lookahead_replace))) begin
		main_bankmachine0_cmd_buffer_lookahead_produce <= (main_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine0_cmd_buffer_lookahead_do_read) begin
		main_bankmachine0_cmd_buffer_lookahead_consume <= (main_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & main_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~main_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine0_cmd_buffer_lookahead_level <= (main_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine0_cmd_buffer_lookahead_do_read) begin
			main_bankmachine0_cmd_buffer_lookahead_level <= (main_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine0_cmd_buffer_source_valid) | main_bankmachine0_cmd_buffer_source_ready)) begin
		main_bankmachine0_cmd_buffer_source_valid <= main_bankmachine0_cmd_buffer_sink_valid;
		main_bankmachine0_cmd_buffer_source_first <= main_bankmachine0_cmd_buffer_sink_first;
		main_bankmachine0_cmd_buffer_source_last <= main_bankmachine0_cmd_buffer_sink_last;
		main_bankmachine0_cmd_buffer_source_payload_we <= main_bankmachine0_cmd_buffer_sink_payload_we;
		main_bankmachine0_cmd_buffer_source_payload_addr <= main_bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine0_twtpcon_valid) begin
		main_bankmachine0_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine0_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine0_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine0_twtpcon_ready)) begin
			main_bankmachine0_twtpcon_count <= (main_bankmachine0_twtpcon_count - 1'd1);
			if ((main_bankmachine0_twtpcon_count == 1'd1)) begin
				main_bankmachine0_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine0_trccon_valid) begin
		main_bankmachine0_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine0_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine0_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine0_trccon_ready)) begin
			main_bankmachine0_trccon_count <= (main_bankmachine0_trccon_count - 1'd1);
			if ((main_bankmachine0_trccon_count == 1'd1)) begin
				main_bankmachine0_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine0_trascon_valid) begin
		main_bankmachine0_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine0_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine0_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine0_trascon_ready)) begin
			main_bankmachine0_trascon_count <= (main_bankmachine0_trascon_count - 1'd1);
			if ((main_bankmachine0_trascon_count == 1'd1)) begin
				main_bankmachine0_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine0_state <= convert_bankmachine0_next_state;
	if (main_bankmachine1_row_close) begin
		main_bankmachine1_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine1_row_open) begin
			main_bankmachine1_row_opened <= 1'd1;
			main_bankmachine1_row <= main_bankmachine1_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & main_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~main_bankmachine1_cmd_buffer_lookahead_replace))) begin
		main_bankmachine1_cmd_buffer_lookahead_produce <= (main_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine1_cmd_buffer_lookahead_do_read) begin
		main_bankmachine1_cmd_buffer_lookahead_consume <= (main_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & main_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~main_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine1_cmd_buffer_lookahead_level <= (main_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine1_cmd_buffer_lookahead_do_read) begin
			main_bankmachine1_cmd_buffer_lookahead_level <= (main_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine1_cmd_buffer_source_valid) | main_bankmachine1_cmd_buffer_source_ready)) begin
		main_bankmachine1_cmd_buffer_source_valid <= main_bankmachine1_cmd_buffer_sink_valid;
		main_bankmachine1_cmd_buffer_source_first <= main_bankmachine1_cmd_buffer_sink_first;
		main_bankmachine1_cmd_buffer_source_last <= main_bankmachine1_cmd_buffer_sink_last;
		main_bankmachine1_cmd_buffer_source_payload_we <= main_bankmachine1_cmd_buffer_sink_payload_we;
		main_bankmachine1_cmd_buffer_source_payload_addr <= main_bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine1_twtpcon_valid) begin
		main_bankmachine1_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine1_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine1_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine1_twtpcon_ready)) begin
			main_bankmachine1_twtpcon_count <= (main_bankmachine1_twtpcon_count - 1'd1);
			if ((main_bankmachine1_twtpcon_count == 1'd1)) begin
				main_bankmachine1_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine1_trccon_valid) begin
		main_bankmachine1_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine1_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine1_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine1_trccon_ready)) begin
			main_bankmachine1_trccon_count <= (main_bankmachine1_trccon_count - 1'd1);
			if ((main_bankmachine1_trccon_count == 1'd1)) begin
				main_bankmachine1_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine1_trascon_valid) begin
		main_bankmachine1_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine1_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine1_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine1_trascon_ready)) begin
			main_bankmachine1_trascon_count <= (main_bankmachine1_trascon_count - 1'd1);
			if ((main_bankmachine1_trascon_count == 1'd1)) begin
				main_bankmachine1_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine1_state <= convert_bankmachine1_next_state;
	if (main_bankmachine2_row_close) begin
		main_bankmachine2_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine2_row_open) begin
			main_bankmachine2_row_opened <= 1'd1;
			main_bankmachine2_row <= main_bankmachine2_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & main_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~main_bankmachine2_cmd_buffer_lookahead_replace))) begin
		main_bankmachine2_cmd_buffer_lookahead_produce <= (main_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine2_cmd_buffer_lookahead_do_read) begin
		main_bankmachine2_cmd_buffer_lookahead_consume <= (main_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & main_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~main_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine2_cmd_buffer_lookahead_level <= (main_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine2_cmd_buffer_lookahead_do_read) begin
			main_bankmachine2_cmd_buffer_lookahead_level <= (main_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine2_cmd_buffer_source_valid) | main_bankmachine2_cmd_buffer_source_ready)) begin
		main_bankmachine2_cmd_buffer_source_valid <= main_bankmachine2_cmd_buffer_sink_valid;
		main_bankmachine2_cmd_buffer_source_first <= main_bankmachine2_cmd_buffer_sink_first;
		main_bankmachine2_cmd_buffer_source_last <= main_bankmachine2_cmd_buffer_sink_last;
		main_bankmachine2_cmd_buffer_source_payload_we <= main_bankmachine2_cmd_buffer_sink_payload_we;
		main_bankmachine2_cmd_buffer_source_payload_addr <= main_bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine2_twtpcon_valid) begin
		main_bankmachine2_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine2_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine2_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine2_twtpcon_ready)) begin
			main_bankmachine2_twtpcon_count <= (main_bankmachine2_twtpcon_count - 1'd1);
			if ((main_bankmachine2_twtpcon_count == 1'd1)) begin
				main_bankmachine2_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine2_trccon_valid) begin
		main_bankmachine2_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine2_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine2_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine2_trccon_ready)) begin
			main_bankmachine2_trccon_count <= (main_bankmachine2_trccon_count - 1'd1);
			if ((main_bankmachine2_trccon_count == 1'd1)) begin
				main_bankmachine2_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine2_trascon_valid) begin
		main_bankmachine2_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine2_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine2_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine2_trascon_ready)) begin
			main_bankmachine2_trascon_count <= (main_bankmachine2_trascon_count - 1'd1);
			if ((main_bankmachine2_trascon_count == 1'd1)) begin
				main_bankmachine2_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine2_state <= convert_bankmachine2_next_state;
	if (main_bankmachine3_row_close) begin
		main_bankmachine3_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine3_row_open) begin
			main_bankmachine3_row_opened <= 1'd1;
			main_bankmachine3_row <= main_bankmachine3_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & main_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~main_bankmachine3_cmd_buffer_lookahead_replace))) begin
		main_bankmachine3_cmd_buffer_lookahead_produce <= (main_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine3_cmd_buffer_lookahead_do_read) begin
		main_bankmachine3_cmd_buffer_lookahead_consume <= (main_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & main_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~main_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine3_cmd_buffer_lookahead_level <= (main_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine3_cmd_buffer_lookahead_do_read) begin
			main_bankmachine3_cmd_buffer_lookahead_level <= (main_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine3_cmd_buffer_source_valid) | main_bankmachine3_cmd_buffer_source_ready)) begin
		main_bankmachine3_cmd_buffer_source_valid <= main_bankmachine3_cmd_buffer_sink_valid;
		main_bankmachine3_cmd_buffer_source_first <= main_bankmachine3_cmd_buffer_sink_first;
		main_bankmachine3_cmd_buffer_source_last <= main_bankmachine3_cmd_buffer_sink_last;
		main_bankmachine3_cmd_buffer_source_payload_we <= main_bankmachine3_cmd_buffer_sink_payload_we;
		main_bankmachine3_cmd_buffer_source_payload_addr <= main_bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine3_twtpcon_valid) begin
		main_bankmachine3_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine3_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine3_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine3_twtpcon_ready)) begin
			main_bankmachine3_twtpcon_count <= (main_bankmachine3_twtpcon_count - 1'd1);
			if ((main_bankmachine3_twtpcon_count == 1'd1)) begin
				main_bankmachine3_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine3_trccon_valid) begin
		main_bankmachine3_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine3_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine3_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine3_trccon_ready)) begin
			main_bankmachine3_trccon_count <= (main_bankmachine3_trccon_count - 1'd1);
			if ((main_bankmachine3_trccon_count == 1'd1)) begin
				main_bankmachine3_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine3_trascon_valid) begin
		main_bankmachine3_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine3_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine3_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine3_trascon_ready)) begin
			main_bankmachine3_trascon_count <= (main_bankmachine3_trascon_count - 1'd1);
			if ((main_bankmachine3_trascon_count == 1'd1)) begin
				main_bankmachine3_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine3_state <= convert_bankmachine3_next_state;
	if (main_bankmachine4_row_close) begin
		main_bankmachine4_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine4_row_open) begin
			main_bankmachine4_row_opened <= 1'd1;
			main_bankmachine4_row <= main_bankmachine4_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & main_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~main_bankmachine4_cmd_buffer_lookahead_replace))) begin
		main_bankmachine4_cmd_buffer_lookahead_produce <= (main_bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine4_cmd_buffer_lookahead_do_read) begin
		main_bankmachine4_cmd_buffer_lookahead_consume <= (main_bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & main_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~main_bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine4_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine4_cmd_buffer_lookahead_level <= (main_bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine4_cmd_buffer_lookahead_do_read) begin
			main_bankmachine4_cmd_buffer_lookahead_level <= (main_bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine4_cmd_buffer_source_valid) | main_bankmachine4_cmd_buffer_source_ready)) begin
		main_bankmachine4_cmd_buffer_source_valid <= main_bankmachine4_cmd_buffer_sink_valid;
		main_bankmachine4_cmd_buffer_source_first <= main_bankmachine4_cmd_buffer_sink_first;
		main_bankmachine4_cmd_buffer_source_last <= main_bankmachine4_cmd_buffer_sink_last;
		main_bankmachine4_cmd_buffer_source_payload_we <= main_bankmachine4_cmd_buffer_sink_payload_we;
		main_bankmachine4_cmd_buffer_source_payload_addr <= main_bankmachine4_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine4_twtpcon_valid) begin
		main_bankmachine4_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine4_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine4_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine4_twtpcon_ready)) begin
			main_bankmachine4_twtpcon_count <= (main_bankmachine4_twtpcon_count - 1'd1);
			if ((main_bankmachine4_twtpcon_count == 1'd1)) begin
				main_bankmachine4_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine4_trccon_valid) begin
		main_bankmachine4_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine4_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine4_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine4_trccon_ready)) begin
			main_bankmachine4_trccon_count <= (main_bankmachine4_trccon_count - 1'd1);
			if ((main_bankmachine4_trccon_count == 1'd1)) begin
				main_bankmachine4_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine4_trascon_valid) begin
		main_bankmachine4_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine4_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine4_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine4_trascon_ready)) begin
			main_bankmachine4_trascon_count <= (main_bankmachine4_trascon_count - 1'd1);
			if ((main_bankmachine4_trascon_count == 1'd1)) begin
				main_bankmachine4_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine4_state <= convert_bankmachine4_next_state;
	if (main_bankmachine5_row_close) begin
		main_bankmachine5_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine5_row_open) begin
			main_bankmachine5_row_opened <= 1'd1;
			main_bankmachine5_row <= main_bankmachine5_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & main_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~main_bankmachine5_cmd_buffer_lookahead_replace))) begin
		main_bankmachine5_cmd_buffer_lookahead_produce <= (main_bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine5_cmd_buffer_lookahead_do_read) begin
		main_bankmachine5_cmd_buffer_lookahead_consume <= (main_bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & main_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~main_bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine5_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine5_cmd_buffer_lookahead_level <= (main_bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine5_cmd_buffer_lookahead_do_read) begin
			main_bankmachine5_cmd_buffer_lookahead_level <= (main_bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine5_cmd_buffer_source_valid) | main_bankmachine5_cmd_buffer_source_ready)) begin
		main_bankmachine5_cmd_buffer_source_valid <= main_bankmachine5_cmd_buffer_sink_valid;
		main_bankmachine5_cmd_buffer_source_first <= main_bankmachine5_cmd_buffer_sink_first;
		main_bankmachine5_cmd_buffer_source_last <= main_bankmachine5_cmd_buffer_sink_last;
		main_bankmachine5_cmd_buffer_source_payload_we <= main_bankmachine5_cmd_buffer_sink_payload_we;
		main_bankmachine5_cmd_buffer_source_payload_addr <= main_bankmachine5_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine5_twtpcon_valid) begin
		main_bankmachine5_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine5_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine5_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine5_twtpcon_ready)) begin
			main_bankmachine5_twtpcon_count <= (main_bankmachine5_twtpcon_count - 1'd1);
			if ((main_bankmachine5_twtpcon_count == 1'd1)) begin
				main_bankmachine5_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine5_trccon_valid) begin
		main_bankmachine5_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine5_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine5_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine5_trccon_ready)) begin
			main_bankmachine5_trccon_count <= (main_bankmachine5_trccon_count - 1'd1);
			if ((main_bankmachine5_trccon_count == 1'd1)) begin
				main_bankmachine5_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine5_trascon_valid) begin
		main_bankmachine5_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine5_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine5_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine5_trascon_ready)) begin
			main_bankmachine5_trascon_count <= (main_bankmachine5_trascon_count - 1'd1);
			if ((main_bankmachine5_trascon_count == 1'd1)) begin
				main_bankmachine5_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine5_state <= convert_bankmachine5_next_state;
	if (main_bankmachine6_row_close) begin
		main_bankmachine6_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine6_row_open) begin
			main_bankmachine6_row_opened <= 1'd1;
			main_bankmachine6_row <= main_bankmachine6_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & main_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~main_bankmachine6_cmd_buffer_lookahead_replace))) begin
		main_bankmachine6_cmd_buffer_lookahead_produce <= (main_bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine6_cmd_buffer_lookahead_do_read) begin
		main_bankmachine6_cmd_buffer_lookahead_consume <= (main_bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & main_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~main_bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine6_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine6_cmd_buffer_lookahead_level <= (main_bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine6_cmd_buffer_lookahead_do_read) begin
			main_bankmachine6_cmd_buffer_lookahead_level <= (main_bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine6_cmd_buffer_source_valid) | main_bankmachine6_cmd_buffer_source_ready)) begin
		main_bankmachine6_cmd_buffer_source_valid <= main_bankmachine6_cmd_buffer_sink_valid;
		main_bankmachine6_cmd_buffer_source_first <= main_bankmachine6_cmd_buffer_sink_first;
		main_bankmachine6_cmd_buffer_source_last <= main_bankmachine6_cmd_buffer_sink_last;
		main_bankmachine6_cmd_buffer_source_payload_we <= main_bankmachine6_cmd_buffer_sink_payload_we;
		main_bankmachine6_cmd_buffer_source_payload_addr <= main_bankmachine6_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine6_twtpcon_valid) begin
		main_bankmachine6_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine6_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine6_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine6_twtpcon_ready)) begin
			main_bankmachine6_twtpcon_count <= (main_bankmachine6_twtpcon_count - 1'd1);
			if ((main_bankmachine6_twtpcon_count == 1'd1)) begin
				main_bankmachine6_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine6_trccon_valid) begin
		main_bankmachine6_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine6_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine6_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine6_trccon_ready)) begin
			main_bankmachine6_trccon_count <= (main_bankmachine6_trccon_count - 1'd1);
			if ((main_bankmachine6_trccon_count == 1'd1)) begin
				main_bankmachine6_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine6_trascon_valid) begin
		main_bankmachine6_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine6_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine6_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine6_trascon_ready)) begin
			main_bankmachine6_trascon_count <= (main_bankmachine6_trascon_count - 1'd1);
			if ((main_bankmachine6_trascon_count == 1'd1)) begin
				main_bankmachine6_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine6_state <= convert_bankmachine6_next_state;
	if (main_bankmachine7_row_close) begin
		main_bankmachine7_row_opened <= 1'd0;
	end else begin
		if (main_bankmachine7_row_open) begin
			main_bankmachine7_row_opened <= 1'd1;
			main_bankmachine7_row <= main_bankmachine7_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((main_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & main_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~main_bankmachine7_cmd_buffer_lookahead_replace))) begin
		main_bankmachine7_cmd_buffer_lookahead_produce <= (main_bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (main_bankmachine7_cmd_buffer_lookahead_do_read) begin
		main_bankmachine7_cmd_buffer_lookahead_consume <= (main_bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((main_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & main_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~main_bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~main_bankmachine7_cmd_buffer_lookahead_do_read)) begin
			main_bankmachine7_cmd_buffer_lookahead_level <= (main_bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (main_bankmachine7_cmd_buffer_lookahead_do_read) begin
			main_bankmachine7_cmd_buffer_lookahead_level <= (main_bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~main_bankmachine7_cmd_buffer_source_valid) | main_bankmachine7_cmd_buffer_source_ready)) begin
		main_bankmachine7_cmd_buffer_source_valid <= main_bankmachine7_cmd_buffer_sink_valid;
		main_bankmachine7_cmd_buffer_source_first <= main_bankmachine7_cmd_buffer_sink_first;
		main_bankmachine7_cmd_buffer_source_last <= main_bankmachine7_cmd_buffer_sink_last;
		main_bankmachine7_cmd_buffer_source_payload_we <= main_bankmachine7_cmd_buffer_sink_payload_we;
		main_bankmachine7_cmd_buffer_source_payload_addr <= main_bankmachine7_cmd_buffer_sink_payload_addr;
	end
	if (main_bankmachine7_twtpcon_valid) begin
		main_bankmachine7_twtpcon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine7_twtpcon_ready <= 1'd1;
		end else begin
			main_bankmachine7_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine7_twtpcon_ready)) begin
			main_bankmachine7_twtpcon_count <= (main_bankmachine7_twtpcon_count - 1'd1);
			if ((main_bankmachine7_twtpcon_count == 1'd1)) begin
				main_bankmachine7_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine7_trccon_valid) begin
		main_bankmachine7_trccon_count <= 6'd34;
		if (1'd0) begin
			main_bankmachine7_trccon_ready <= 1'd1;
		end else begin
			main_bankmachine7_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine7_trccon_ready)) begin
			main_bankmachine7_trccon_count <= (main_bankmachine7_trccon_count - 1'd1);
			if ((main_bankmachine7_trccon_count == 1'd1)) begin
				main_bankmachine7_trccon_ready <= 1'd1;
			end
		end
	end
	if (main_bankmachine7_trascon_valid) begin
		main_bankmachine7_trascon_count <= 5'd23;
		if (1'd0) begin
			main_bankmachine7_trascon_ready <= 1'd1;
		end else begin
			main_bankmachine7_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~main_bankmachine7_trascon_ready)) begin
			main_bankmachine7_trascon_count <= (main_bankmachine7_trascon_count - 1'd1);
			if ((main_bankmachine7_trascon_count == 1'd1)) begin
				main_bankmachine7_trascon_ready <= 1'd1;
			end
		end
	end
	convert_bankmachine7_state <= convert_bankmachine7_next_state;
	if ((~main_en0)) begin
		main_time0 <= 5'd31;
	end else begin
		if ((~main_max_time0)) begin
			main_time0 <= (main_time0 - 1'd1);
		end
	end
	if ((~main_en1)) begin
		main_time1 <= 4'd15;
	end else begin
		if ((~main_max_time1)) begin
			main_time1 <= (main_time1 - 1'd1);
		end
	end
	if (main_choose_cmd_ce) begin
		case (main_choose_cmd_grant)
			1'd0: begin
				if (main_choose_cmd_request[1]) begin
					main_choose_cmd_grant <= 1'd1;
				end else begin
					if (main_choose_cmd_request[2]) begin
						main_choose_cmd_grant <= 2'd2;
					end else begin
						if (main_choose_cmd_request[3]) begin
							main_choose_cmd_grant <= 2'd3;
						end else begin
							if (main_choose_cmd_request[4]) begin
								main_choose_cmd_grant <= 3'd4;
							end else begin
								if (main_choose_cmd_request[5]) begin
									main_choose_cmd_grant <= 3'd5;
								end else begin
									if (main_choose_cmd_request[6]) begin
										main_choose_cmd_grant <= 3'd6;
									end else begin
										if (main_choose_cmd_request[7]) begin
											main_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (main_choose_cmd_request[2]) begin
					main_choose_cmd_grant <= 2'd2;
				end else begin
					if (main_choose_cmd_request[3]) begin
						main_choose_cmd_grant <= 2'd3;
					end else begin
						if (main_choose_cmd_request[4]) begin
							main_choose_cmd_grant <= 3'd4;
						end else begin
							if (main_choose_cmd_request[5]) begin
								main_choose_cmd_grant <= 3'd5;
							end else begin
								if (main_choose_cmd_request[6]) begin
									main_choose_cmd_grant <= 3'd6;
								end else begin
									if (main_choose_cmd_request[7]) begin
										main_choose_cmd_grant <= 3'd7;
									end else begin
										if (main_choose_cmd_request[0]) begin
											main_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (main_choose_cmd_request[3]) begin
					main_choose_cmd_grant <= 2'd3;
				end else begin
					if (main_choose_cmd_request[4]) begin
						main_choose_cmd_grant <= 3'd4;
					end else begin
						if (main_choose_cmd_request[5]) begin
							main_choose_cmd_grant <= 3'd5;
						end else begin
							if (main_choose_cmd_request[6]) begin
								main_choose_cmd_grant <= 3'd6;
							end else begin
								if (main_choose_cmd_request[7]) begin
									main_choose_cmd_grant <= 3'd7;
								end else begin
									if (main_choose_cmd_request[0]) begin
										main_choose_cmd_grant <= 1'd0;
									end else begin
										if (main_choose_cmd_request[1]) begin
											main_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (main_choose_cmd_request[4]) begin
					main_choose_cmd_grant <= 3'd4;
				end else begin
					if (main_choose_cmd_request[5]) begin
						main_choose_cmd_grant <= 3'd5;
					end else begin
						if (main_choose_cmd_request[6]) begin
							main_choose_cmd_grant <= 3'd6;
						end else begin
							if (main_choose_cmd_request[7]) begin
								main_choose_cmd_grant <= 3'd7;
							end else begin
								if (main_choose_cmd_request[0]) begin
									main_choose_cmd_grant <= 1'd0;
								end else begin
									if (main_choose_cmd_request[1]) begin
										main_choose_cmd_grant <= 1'd1;
									end else begin
										if (main_choose_cmd_request[2]) begin
											main_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (main_choose_cmd_request[5]) begin
					main_choose_cmd_grant <= 3'd5;
				end else begin
					if (main_choose_cmd_request[6]) begin
						main_choose_cmd_grant <= 3'd6;
					end else begin
						if (main_choose_cmd_request[7]) begin
							main_choose_cmd_grant <= 3'd7;
						end else begin
							if (main_choose_cmd_request[0]) begin
								main_choose_cmd_grant <= 1'd0;
							end else begin
								if (main_choose_cmd_request[1]) begin
									main_choose_cmd_grant <= 1'd1;
								end else begin
									if (main_choose_cmd_request[2]) begin
										main_choose_cmd_grant <= 2'd2;
									end else begin
										if (main_choose_cmd_request[3]) begin
											main_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (main_choose_cmd_request[6]) begin
					main_choose_cmd_grant <= 3'd6;
				end else begin
					if (main_choose_cmd_request[7]) begin
						main_choose_cmd_grant <= 3'd7;
					end else begin
						if (main_choose_cmd_request[0]) begin
							main_choose_cmd_grant <= 1'd0;
						end else begin
							if (main_choose_cmd_request[1]) begin
								main_choose_cmd_grant <= 1'd1;
							end else begin
								if (main_choose_cmd_request[2]) begin
									main_choose_cmd_grant <= 2'd2;
								end else begin
									if (main_choose_cmd_request[3]) begin
										main_choose_cmd_grant <= 2'd3;
									end else begin
										if (main_choose_cmd_request[4]) begin
											main_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (main_choose_cmd_request[7]) begin
					main_choose_cmd_grant <= 3'd7;
				end else begin
					if (main_choose_cmd_request[0]) begin
						main_choose_cmd_grant <= 1'd0;
					end else begin
						if (main_choose_cmd_request[1]) begin
							main_choose_cmd_grant <= 1'd1;
						end else begin
							if (main_choose_cmd_request[2]) begin
								main_choose_cmd_grant <= 2'd2;
							end else begin
								if (main_choose_cmd_request[3]) begin
									main_choose_cmd_grant <= 2'd3;
								end else begin
									if (main_choose_cmd_request[4]) begin
										main_choose_cmd_grant <= 3'd4;
									end else begin
										if (main_choose_cmd_request[5]) begin
											main_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (main_choose_cmd_request[0]) begin
					main_choose_cmd_grant <= 1'd0;
				end else begin
					if (main_choose_cmd_request[1]) begin
						main_choose_cmd_grant <= 1'd1;
					end else begin
						if (main_choose_cmd_request[2]) begin
							main_choose_cmd_grant <= 2'd2;
						end else begin
							if (main_choose_cmd_request[3]) begin
								main_choose_cmd_grant <= 2'd3;
							end else begin
								if (main_choose_cmd_request[4]) begin
									main_choose_cmd_grant <= 3'd4;
								end else begin
									if (main_choose_cmd_request[5]) begin
										main_choose_cmd_grant <= 3'd5;
									end else begin
										if (main_choose_cmd_request[6]) begin
											main_choose_cmd_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	if (main_choose_req_ce) begin
		case (main_choose_req_grant)
			1'd0: begin
				if (main_choose_req_request[1]) begin
					main_choose_req_grant <= 1'd1;
				end else begin
					if (main_choose_req_request[2]) begin
						main_choose_req_grant <= 2'd2;
					end else begin
						if (main_choose_req_request[3]) begin
							main_choose_req_grant <= 2'd3;
						end else begin
							if (main_choose_req_request[4]) begin
								main_choose_req_grant <= 3'd4;
							end else begin
								if (main_choose_req_request[5]) begin
									main_choose_req_grant <= 3'd5;
								end else begin
									if (main_choose_req_request[6]) begin
										main_choose_req_grant <= 3'd6;
									end else begin
										if (main_choose_req_request[7]) begin
											main_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (main_choose_req_request[2]) begin
					main_choose_req_grant <= 2'd2;
				end else begin
					if (main_choose_req_request[3]) begin
						main_choose_req_grant <= 2'd3;
					end else begin
						if (main_choose_req_request[4]) begin
							main_choose_req_grant <= 3'd4;
						end else begin
							if (main_choose_req_request[5]) begin
								main_choose_req_grant <= 3'd5;
							end else begin
								if (main_choose_req_request[6]) begin
									main_choose_req_grant <= 3'd6;
								end else begin
									if (main_choose_req_request[7]) begin
										main_choose_req_grant <= 3'd7;
									end else begin
										if (main_choose_req_request[0]) begin
											main_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (main_choose_req_request[3]) begin
					main_choose_req_grant <= 2'd3;
				end else begin
					if (main_choose_req_request[4]) begin
						main_choose_req_grant <= 3'd4;
					end else begin
						if (main_choose_req_request[5]) begin
							main_choose_req_grant <= 3'd5;
						end else begin
							if (main_choose_req_request[6]) begin
								main_choose_req_grant <= 3'd6;
							end else begin
								if (main_choose_req_request[7]) begin
									main_choose_req_grant <= 3'd7;
								end else begin
									if (main_choose_req_request[0]) begin
										main_choose_req_grant <= 1'd0;
									end else begin
										if (main_choose_req_request[1]) begin
											main_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (main_choose_req_request[4]) begin
					main_choose_req_grant <= 3'd4;
				end else begin
					if (main_choose_req_request[5]) begin
						main_choose_req_grant <= 3'd5;
					end else begin
						if (main_choose_req_request[6]) begin
							main_choose_req_grant <= 3'd6;
						end else begin
							if (main_choose_req_request[7]) begin
								main_choose_req_grant <= 3'd7;
							end else begin
								if (main_choose_req_request[0]) begin
									main_choose_req_grant <= 1'd0;
								end else begin
									if (main_choose_req_request[1]) begin
										main_choose_req_grant <= 1'd1;
									end else begin
										if (main_choose_req_request[2]) begin
											main_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (main_choose_req_request[5]) begin
					main_choose_req_grant <= 3'd5;
				end else begin
					if (main_choose_req_request[6]) begin
						main_choose_req_grant <= 3'd6;
					end else begin
						if (main_choose_req_request[7]) begin
							main_choose_req_grant <= 3'd7;
						end else begin
							if (main_choose_req_request[0]) begin
								main_choose_req_grant <= 1'd0;
							end else begin
								if (main_choose_req_request[1]) begin
									main_choose_req_grant <= 1'd1;
								end else begin
									if (main_choose_req_request[2]) begin
										main_choose_req_grant <= 2'd2;
									end else begin
										if (main_choose_req_request[3]) begin
											main_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (main_choose_req_request[6]) begin
					main_choose_req_grant <= 3'd6;
				end else begin
					if (main_choose_req_request[7]) begin
						main_choose_req_grant <= 3'd7;
					end else begin
						if (main_choose_req_request[0]) begin
							main_choose_req_grant <= 1'd0;
						end else begin
							if (main_choose_req_request[1]) begin
								main_choose_req_grant <= 1'd1;
							end else begin
								if (main_choose_req_request[2]) begin
									main_choose_req_grant <= 2'd2;
								end else begin
									if (main_choose_req_request[3]) begin
										main_choose_req_grant <= 2'd3;
									end else begin
										if (main_choose_req_request[4]) begin
											main_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (main_choose_req_request[7]) begin
					main_choose_req_grant <= 3'd7;
				end else begin
					if (main_choose_req_request[0]) begin
						main_choose_req_grant <= 1'd0;
					end else begin
						if (main_choose_req_request[1]) begin
							main_choose_req_grant <= 1'd1;
						end else begin
							if (main_choose_req_request[2]) begin
								main_choose_req_grant <= 2'd2;
							end else begin
								if (main_choose_req_request[3]) begin
									main_choose_req_grant <= 2'd3;
								end else begin
									if (main_choose_req_request[4]) begin
										main_choose_req_grant <= 3'd4;
									end else begin
										if (main_choose_req_request[5]) begin
											main_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (main_choose_req_request[0]) begin
					main_choose_req_grant <= 1'd0;
				end else begin
					if (main_choose_req_request[1]) begin
						main_choose_req_grant <= 1'd1;
					end else begin
						if (main_choose_req_request[2]) begin
							main_choose_req_grant <= 2'd2;
						end else begin
							if (main_choose_req_request[3]) begin
								main_choose_req_grant <= 2'd3;
							end else begin
								if (main_choose_req_request[4]) begin
									main_choose_req_grant <= 3'd4;
								end else begin
									if (main_choose_req_request[5]) begin
										main_choose_req_grant <= 3'd5;
									end else begin
										if (main_choose_req_request[6]) begin
											main_choose_req_grant <= 3'd6;
										end
									end
								end
							end
						end
					end
				end
			end
		endcase
	end
	dfi_p0_cs_n <= 1'd0;
	dfi_p0_bank <= convert_array_muxed0;
	dfi_p0_address <= convert_array_muxed1;
	dfi_p0_cas_n <= (~convert_array_muxed2);
	dfi_p0_ras_n <= (~convert_array_muxed3);
	dfi_p0_we_n <= (~convert_array_muxed4);
	dfi_p0_rddata_en <= convert_array_muxed5;
	dfi_p0_wrdata_en <= convert_array_muxed6;
	dfi_p1_cs_n <= 1'd0;
	dfi_p1_bank <= convert_array_muxed7;
	dfi_p1_address <= convert_array_muxed8;
	dfi_p1_cas_n <= (~convert_array_muxed9);
	dfi_p1_ras_n <= (~convert_array_muxed10);
	dfi_p1_we_n <= (~convert_array_muxed11);
	dfi_p1_rddata_en <= convert_array_muxed12;
	dfi_p1_wrdata_en <= convert_array_muxed13;
	dfi_p2_cs_n <= 1'd0;
	dfi_p2_bank <= convert_array_muxed14;
	dfi_p2_address <= convert_array_muxed15;
	dfi_p2_cas_n <= (~convert_array_muxed16);
	dfi_p2_ras_n <= (~convert_array_muxed17);
	dfi_p2_we_n <= (~convert_array_muxed18);
	dfi_p2_rddata_en <= convert_array_muxed19;
	dfi_p2_wrdata_en <= convert_array_muxed20;
	dfi_p3_cs_n <= 1'd0;
	dfi_p3_bank <= convert_array_muxed21;
	dfi_p3_address <= convert_array_muxed22;
	dfi_p3_cas_n <= (~convert_array_muxed23);
	dfi_p3_ras_n <= (~convert_array_muxed24);
	dfi_p3_we_n <= (~convert_array_muxed25);
	dfi_p3_rddata_en <= convert_array_muxed26;
	dfi_p3_wrdata_en <= convert_array_muxed27;
	if (main_trrdcon_valid) begin
		main_trrdcon_count <= 3'd6;
		if (1'd0) begin
			main_trrdcon_ready <= 1'd1;
		end else begin
			main_trrdcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_trrdcon_ready)) begin
			main_trrdcon_count <= (main_trrdcon_count - 1'd1);
			if ((main_trrdcon_count == 1'd1)) begin
				main_trrdcon_ready <= 1'd1;
			end
		end
	end
	main_tfawcon_window <= {main_tfawcon_window, main_tfawcon_valid};
	if ((main_tfawcon_count < 3'd4)) begin
		if ((main_tfawcon_count == 2'd3)) begin
			main_tfawcon_ready <= (~main_tfawcon_valid);
		end else begin
			main_tfawcon_ready <= 1'd1;
		end
	end
	if (main_tccdcon_valid) begin
		main_tccdcon_count <= 3'd7;
		if (1'd0) begin
			main_tccdcon_ready <= 1'd1;
		end else begin
			main_tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_tccdcon_ready)) begin
			main_tccdcon_count <= (main_tccdcon_count - 1'd1);
			if ((main_tccdcon_count == 1'd1)) begin
				main_tccdcon_ready <= 1'd1;
			end
		end
	end
	if (main_twtrcon_valid) begin
		main_twtrcon_count <= 5'd19;
		if (1'd0) begin
			main_twtrcon_ready <= 1'd1;
		end else begin
			main_twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~main_twtrcon_ready)) begin
			main_twtrcon_count <= (main_twtrcon_count - 1'd1);
			if ((main_twtrcon_count == 1'd1)) begin
				main_twtrcon_ready <= 1'd1;
			end
		end
	end
	convert_multiplexer_state <= convert_multiplexer_next_state;
	main_new_master_wdata_ready0 <= ((((((((1'd0 | ((main_roundrobin0_grant == 1'd0) & main_interface_bank0_wdata_ready)) | ((main_roundrobin1_grant == 1'd0) & main_interface_bank1_wdata_ready)) | ((main_roundrobin2_grant == 1'd0) & main_interface_bank2_wdata_ready)) | ((main_roundrobin3_grant == 1'd0) & main_interface_bank3_wdata_ready)) | ((main_roundrobin4_grant == 1'd0) & main_interface_bank4_wdata_ready)) | ((main_roundrobin5_grant == 1'd0) & main_interface_bank5_wdata_ready)) | ((main_roundrobin6_grant == 1'd0) & main_interface_bank6_wdata_ready)) | ((main_roundrobin7_grant == 1'd0) & main_interface_bank7_wdata_ready));
	main_new_master_wdata_ready1 <= main_new_master_wdata_ready0;
	main_new_master_wdata_ready2 <= main_new_master_wdata_ready1;
	main_new_master_wdata_ready3 <= main_new_master_wdata_ready2;
	main_new_master_wdata_ready4 <= main_new_master_wdata_ready3;
	main_new_master_wdata_ready5 <= main_new_master_wdata_ready4;
	main_new_master_wdata_ready6 <= main_new_master_wdata_ready5;
	main_new_master_wdata_ready7 <= ((((((((1'd0 | ((main_roundrobin0_grant == 1'd1) & main_interface_bank0_wdata_ready)) | ((main_roundrobin1_grant == 1'd1) & main_interface_bank1_wdata_ready)) | ((main_roundrobin2_grant == 1'd1) & main_interface_bank2_wdata_ready)) | ((main_roundrobin3_grant == 1'd1) & main_interface_bank3_wdata_ready)) | ((main_roundrobin4_grant == 1'd1) & main_interface_bank4_wdata_ready)) | ((main_roundrobin5_grant == 1'd1) & main_interface_bank5_wdata_ready)) | ((main_roundrobin6_grant == 1'd1) & main_interface_bank6_wdata_ready)) | ((main_roundrobin7_grant == 1'd1) & main_interface_bank7_wdata_ready));
	main_new_master_wdata_ready8 <= main_new_master_wdata_ready7;
	main_new_master_wdata_ready9 <= main_new_master_wdata_ready8;
	main_new_master_wdata_ready10 <= main_new_master_wdata_ready9;
	main_new_master_wdata_ready11 <= main_new_master_wdata_ready10;
	main_new_master_wdata_ready12 <= main_new_master_wdata_ready11;
	main_new_master_wdata_ready13 <= main_new_master_wdata_ready12;
	main_new_master_rdata_valid0 <= ((((((((1'd0 | ((main_roundrobin0_grant == 1'd0) & main_interface_bank0_rdata_valid)) | ((main_roundrobin1_grant == 1'd0) & main_interface_bank1_rdata_valid)) | ((main_roundrobin2_grant == 1'd0) & main_interface_bank2_rdata_valid)) | ((main_roundrobin3_grant == 1'd0) & main_interface_bank3_rdata_valid)) | ((main_roundrobin4_grant == 1'd0) & main_interface_bank4_rdata_valid)) | ((main_roundrobin5_grant == 1'd0) & main_interface_bank5_rdata_valid)) | ((main_roundrobin6_grant == 1'd0) & main_interface_bank6_rdata_valid)) | ((main_roundrobin7_grant == 1'd0) & main_interface_bank7_rdata_valid));
	main_new_master_rdata_valid1 <= main_new_master_rdata_valid0;
	main_new_master_rdata_valid2 <= main_new_master_rdata_valid1;
	main_new_master_rdata_valid3 <= main_new_master_rdata_valid2;
	main_new_master_rdata_valid4 <= main_new_master_rdata_valid3;
	main_new_master_rdata_valid5 <= main_new_master_rdata_valid4;
	main_new_master_rdata_valid6 <= main_new_master_rdata_valid5;
	main_new_master_rdata_valid7 <= main_new_master_rdata_valid6;
	main_new_master_rdata_valid8 <= main_new_master_rdata_valid7;
	main_new_master_rdata_valid9 <= main_new_master_rdata_valid8;
	main_new_master_rdata_valid10 <= main_new_master_rdata_valid9;
	main_new_master_rdata_valid11 <= main_new_master_rdata_valid10;
	main_new_master_rdata_valid12 <= main_new_master_rdata_valid11;
	main_new_master_rdata_valid13 <= main_new_master_rdata_valid12;
	main_new_master_rdata_valid14 <= main_new_master_rdata_valid13;
	main_new_master_rdata_valid15 <= main_new_master_rdata_valid14;
	main_new_master_rdata_valid16 <= main_new_master_rdata_valid15;
	main_new_master_rdata_valid17 <= main_new_master_rdata_valid16;
	main_new_master_rdata_valid18 <= main_new_master_rdata_valid17;
	main_new_master_rdata_valid19 <= main_new_master_rdata_valid18;
	main_new_master_rdata_valid20 <= main_new_master_rdata_valid19;
	main_new_master_rdata_valid21 <= main_new_master_rdata_valid20;
	main_new_master_rdata_valid22 <= main_new_master_rdata_valid21;
	main_new_master_rdata_valid23 <= main_new_master_rdata_valid22;
	main_new_master_rdata_valid24 <= ((((((((1'd0 | ((main_roundrobin0_grant == 1'd1) & main_interface_bank0_rdata_valid)) | ((main_roundrobin1_grant == 1'd1) & main_interface_bank1_rdata_valid)) | ((main_roundrobin2_grant == 1'd1) & main_interface_bank2_rdata_valid)) | ((main_roundrobin3_grant == 1'd1) & main_interface_bank3_rdata_valid)) | ((main_roundrobin4_grant == 1'd1) & main_interface_bank4_rdata_valid)) | ((main_roundrobin5_grant == 1'd1) & main_interface_bank5_rdata_valid)) | ((main_roundrobin6_grant == 1'd1) & main_interface_bank6_rdata_valid)) | ((main_roundrobin7_grant == 1'd1) & main_interface_bank7_rdata_valid));
	main_new_master_rdata_valid25 <= main_new_master_rdata_valid24;
	main_new_master_rdata_valid26 <= main_new_master_rdata_valid25;
	main_new_master_rdata_valid27 <= main_new_master_rdata_valid26;
	main_new_master_rdata_valid28 <= main_new_master_rdata_valid27;
	main_new_master_rdata_valid29 <= main_new_master_rdata_valid28;
	main_new_master_rdata_valid30 <= main_new_master_rdata_valid29;
	main_new_master_rdata_valid31 <= main_new_master_rdata_valid30;
	main_new_master_rdata_valid32 <= main_new_master_rdata_valid31;
	main_new_master_rdata_valid33 <= main_new_master_rdata_valid32;
	main_new_master_rdata_valid34 <= main_new_master_rdata_valid33;
	main_new_master_rdata_valid35 <= main_new_master_rdata_valid34;
	main_new_master_rdata_valid36 <= main_new_master_rdata_valid35;
	main_new_master_rdata_valid37 <= main_new_master_rdata_valid36;
	main_new_master_rdata_valid38 <= main_new_master_rdata_valid37;
	main_new_master_rdata_valid39 <= main_new_master_rdata_valid38;
	main_new_master_rdata_valid40 <= main_new_master_rdata_valid39;
	main_new_master_rdata_valid41 <= main_new_master_rdata_valid40;
	main_new_master_rdata_valid42 <= main_new_master_rdata_valid41;
	main_new_master_rdata_valid43 <= main_new_master_rdata_valid42;
	main_new_master_rdata_valid44 <= main_new_master_rdata_valid43;
	main_new_master_rdata_valid45 <= main_new_master_rdata_valid44;
	main_new_master_rdata_valid46 <= main_new_master_rdata_valid45;
	main_new_master_rdata_valid47 <= main_new_master_rdata_valid46;
	convert_new_master_wdata_ready0 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd0) & main_interface_bank0_wdata_ready)) | ((convert_roundrobin1_grant == 1'd0) & main_interface_bank1_wdata_ready)) | ((convert_roundrobin2_grant == 1'd0) & main_interface_bank2_wdata_ready)) | ((convert_roundrobin3_grant == 1'd0) & main_interface_bank3_wdata_ready)) | ((convert_roundrobin4_grant == 1'd0) & main_interface_bank4_wdata_ready)) | ((convert_roundrobin5_grant == 1'd0) & main_interface_bank5_wdata_ready)) | ((convert_roundrobin6_grant == 1'd0) & main_interface_bank6_wdata_ready)) | ((convert_roundrobin7_grant == 1'd0) & main_interface_bank7_wdata_ready));
	convert_new_master_wdata_ready1 <= convert_new_master_wdata_ready0;
	convert_new_master_wdata_ready2 <= convert_new_master_wdata_ready1;
	convert_new_master_wdata_ready3 <= convert_new_master_wdata_ready2;
	convert_new_master_wdata_ready4 <= convert_new_master_wdata_ready3;
	convert_new_master_wdata_ready5 <= convert_new_master_wdata_ready4;
	convert_new_master_wdata_ready6 <= convert_new_master_wdata_ready5;
	convert_new_master_wdata_ready7 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd1) & main_interface_bank0_wdata_ready)) | ((convert_roundrobin1_grant == 1'd1) & main_interface_bank1_wdata_ready)) | ((convert_roundrobin2_grant == 1'd1) & main_interface_bank2_wdata_ready)) | ((convert_roundrobin3_grant == 1'd1) & main_interface_bank3_wdata_ready)) | ((convert_roundrobin4_grant == 1'd1) & main_interface_bank4_wdata_ready)) | ((convert_roundrobin5_grant == 1'd1) & main_interface_bank5_wdata_ready)) | ((convert_roundrobin6_grant == 1'd1) & main_interface_bank6_wdata_ready)) | ((convert_roundrobin7_grant == 1'd1) & main_interface_bank7_wdata_ready));
	convert_new_master_wdata_ready8 <= convert_new_master_wdata_ready7;
	convert_new_master_wdata_ready9 <= convert_new_master_wdata_ready8;
	convert_new_master_wdata_ready10 <= convert_new_master_wdata_ready9;
	convert_new_master_wdata_ready11 <= convert_new_master_wdata_ready10;
	convert_new_master_wdata_ready12 <= convert_new_master_wdata_ready11;
	convert_new_master_wdata_ready13 <= convert_new_master_wdata_ready12;
	convert_new_master_rdata_valid0 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd0) & main_interface_bank0_rdata_valid)) | ((convert_roundrobin1_grant == 1'd0) & main_interface_bank1_rdata_valid)) | ((convert_roundrobin2_grant == 1'd0) & main_interface_bank2_rdata_valid)) | ((convert_roundrobin3_grant == 1'd0) & main_interface_bank3_rdata_valid)) | ((convert_roundrobin4_grant == 1'd0) & main_interface_bank4_rdata_valid)) | ((convert_roundrobin5_grant == 1'd0) & main_interface_bank5_rdata_valid)) | ((convert_roundrobin6_grant == 1'd0) & main_interface_bank6_rdata_valid)) | ((convert_roundrobin7_grant == 1'd0) & main_interface_bank7_rdata_valid));
	convert_new_master_rdata_valid1 <= convert_new_master_rdata_valid0;
	convert_new_master_rdata_valid2 <= convert_new_master_rdata_valid1;
	convert_new_master_rdata_valid3 <= convert_new_master_rdata_valid2;
	convert_new_master_rdata_valid4 <= convert_new_master_rdata_valid3;
	convert_new_master_rdata_valid5 <= convert_new_master_rdata_valid4;
	convert_new_master_rdata_valid6 <= convert_new_master_rdata_valid5;
	convert_new_master_rdata_valid7 <= convert_new_master_rdata_valid6;
	convert_new_master_rdata_valid8 <= convert_new_master_rdata_valid7;
	convert_new_master_rdata_valid9 <= convert_new_master_rdata_valid8;
	convert_new_master_rdata_valid10 <= convert_new_master_rdata_valid9;
	convert_new_master_rdata_valid11 <= convert_new_master_rdata_valid10;
	convert_new_master_rdata_valid12 <= convert_new_master_rdata_valid11;
	convert_new_master_rdata_valid13 <= convert_new_master_rdata_valid12;
	convert_new_master_rdata_valid14 <= convert_new_master_rdata_valid13;
	convert_new_master_rdata_valid15 <= convert_new_master_rdata_valid14;
	convert_new_master_rdata_valid16 <= convert_new_master_rdata_valid15;
	convert_new_master_rdata_valid17 <= convert_new_master_rdata_valid16;
	convert_new_master_rdata_valid18 <= convert_new_master_rdata_valid17;
	convert_new_master_rdata_valid19 <= convert_new_master_rdata_valid18;
	convert_new_master_rdata_valid20 <= convert_new_master_rdata_valid19;
	convert_new_master_rdata_valid21 <= convert_new_master_rdata_valid20;
	convert_new_master_rdata_valid22 <= convert_new_master_rdata_valid21;
	convert_new_master_rdata_valid23 <= convert_new_master_rdata_valid22;
	convert_new_master_rdata_valid24 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd1) & main_interface_bank0_rdata_valid)) | ((convert_roundrobin1_grant == 1'd1) & main_interface_bank1_rdata_valid)) | ((convert_roundrobin2_grant == 1'd1) & main_interface_bank2_rdata_valid)) | ((convert_roundrobin3_grant == 1'd1) & main_interface_bank3_rdata_valid)) | ((convert_roundrobin4_grant == 1'd1) & main_interface_bank4_rdata_valid)) | ((convert_roundrobin5_grant == 1'd1) & main_interface_bank5_rdata_valid)) | ((convert_roundrobin6_grant == 1'd1) & main_interface_bank6_rdata_valid)) | ((convert_roundrobin7_grant == 1'd1) & main_interface_bank7_rdata_valid));
	convert_new_master_rdata_valid25 <= convert_new_master_rdata_valid24;
	convert_new_master_rdata_valid26 <= convert_new_master_rdata_valid25;
	convert_new_master_rdata_valid27 <= convert_new_master_rdata_valid26;
	convert_new_master_rdata_valid28 <= convert_new_master_rdata_valid27;
	convert_new_master_rdata_valid29 <= convert_new_master_rdata_valid28;
	convert_new_master_rdata_valid30 <= convert_new_master_rdata_valid29;
	convert_new_master_rdata_valid31 <= convert_new_master_rdata_valid30;
	convert_new_master_rdata_valid32 <= convert_new_master_rdata_valid31;
	convert_new_master_rdata_valid33 <= convert_new_master_rdata_valid32;
	convert_new_master_rdata_valid34 <= convert_new_master_rdata_valid33;
	convert_new_master_rdata_valid35 <= convert_new_master_rdata_valid34;
	convert_new_master_rdata_valid36 <= convert_new_master_rdata_valid35;
	convert_new_master_rdata_valid37 <= convert_new_master_rdata_valid36;
	convert_new_master_rdata_valid38 <= convert_new_master_rdata_valid37;
	convert_new_master_rdata_valid39 <= convert_new_master_rdata_valid38;
	convert_new_master_rdata_valid40 <= convert_new_master_rdata_valid39;
	convert_new_master_rdata_valid41 <= convert_new_master_rdata_valid40;
	convert_new_master_rdata_valid42 <= convert_new_master_rdata_valid41;
	convert_new_master_rdata_valid43 <= convert_new_master_rdata_valid42;
	convert_new_master_rdata_valid44 <= convert_new_master_rdata_valid43;
	convert_new_master_rdata_valid45 <= convert_new_master_rdata_valid44;
	convert_new_master_rdata_valid46 <= convert_new_master_rdata_valid45;
	convert_new_master_rdata_valid47 <= convert_new_master_rdata_valid46;
	if (main_roundrobin0_ce) begin
		case (main_roundrobin0_grant)
			1'd0: begin
				if (main_roundrobin0_request[1]) begin
					main_roundrobin0_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin0_request[0]) begin
					main_roundrobin0_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_roundrobin1_ce) begin
		case (main_roundrobin1_grant)
			1'd0: begin
				if (main_roundrobin1_request[1]) begin
					main_roundrobin1_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin1_request[0]) begin
					main_roundrobin1_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_roundrobin2_ce) begin
		case (main_roundrobin2_grant)
			1'd0: begin
				if (main_roundrobin2_request[1]) begin
					main_roundrobin2_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin2_request[0]) begin
					main_roundrobin2_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_roundrobin3_ce) begin
		case (main_roundrobin3_grant)
			1'd0: begin
				if (main_roundrobin3_request[1]) begin
					main_roundrobin3_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin3_request[0]) begin
					main_roundrobin3_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_roundrobin4_ce) begin
		case (main_roundrobin4_grant)
			1'd0: begin
				if (main_roundrobin4_request[1]) begin
					main_roundrobin4_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin4_request[0]) begin
					main_roundrobin4_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_roundrobin5_ce) begin
		case (main_roundrobin5_grant)
			1'd0: begin
				if (main_roundrobin5_request[1]) begin
					main_roundrobin5_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin5_request[0]) begin
					main_roundrobin5_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_roundrobin6_ce) begin
		case (main_roundrobin6_grant)
			1'd0: begin
				if (main_roundrobin6_request[1]) begin
					main_roundrobin6_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin6_request[0]) begin
					main_roundrobin6_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_roundrobin7_ce) begin
		case (main_roundrobin7_grant)
			1'd0: begin
				if (main_roundrobin7_request[1]) begin
					main_roundrobin7_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_roundrobin7_request[0]) begin
					main_roundrobin7_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin0_ce) begin
		case (convert_roundrobin0_grant)
			1'd0: begin
				if (convert_roundrobin0_request[1]) begin
					convert_roundrobin0_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin0_request[0]) begin
					convert_roundrobin0_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin1_ce) begin
		case (convert_roundrobin1_grant)
			1'd0: begin
				if (convert_roundrobin1_request[1]) begin
					convert_roundrobin1_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin1_request[0]) begin
					convert_roundrobin1_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin2_ce) begin
		case (convert_roundrobin2_grant)
			1'd0: begin
				if (convert_roundrobin2_request[1]) begin
					convert_roundrobin2_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin2_request[0]) begin
					convert_roundrobin2_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin3_ce) begin
		case (convert_roundrobin3_grant)
			1'd0: begin
				if (convert_roundrobin3_request[1]) begin
					convert_roundrobin3_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin3_request[0]) begin
					convert_roundrobin3_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin4_ce) begin
		case (convert_roundrobin4_grant)
			1'd0: begin
				if (convert_roundrobin4_request[1]) begin
					convert_roundrobin4_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin4_request[0]) begin
					convert_roundrobin4_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin5_ce) begin
		case (convert_roundrobin5_grant)
			1'd0: begin
				if (convert_roundrobin5_request[1]) begin
					convert_roundrobin5_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin5_request[0]) begin
					convert_roundrobin5_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin6_ce) begin
		case (convert_roundrobin6_grant)
			1'd0: begin
				if (convert_roundrobin6_request[1]) begin
					convert_roundrobin6_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin6_request[0]) begin
					convert_roundrobin6_grant <= 1'd0;
				end
			end
		endcase
	end
	if (convert_roundrobin7_ce) begin
		case (convert_roundrobin7_grant)
			1'd0: begin
				if (convert_roundrobin7_request[1]) begin
					convert_roundrobin7_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (convert_roundrobin7_request[0]) begin
					convert_roundrobin7_grant <= 1'd0;
				end
			end
		endcase
	end
	if (main_write_w_buffer_queue) begin
		if ((~main_write_w_buffer_dequeue)) begin
			main_write_w_buffer_level2 <= (main_write_w_buffer_level2 + 1'd1);
		end
	end else begin
		if (main_write_w_buffer_dequeue) begin
			main_write_w_buffer_level2 <= (main_write_w_buffer_level2 - 1'd1);
		end
	end
	if (((~main_write_aw_buffer_source_valid) | main_write_aw_buffer_source_ready)) begin
		main_write_aw_buffer_source_valid <= main_write_aw_buffer_sink_valid;
		main_write_aw_buffer_source_first <= main_write_aw_buffer_sink_first;
		main_write_aw_buffer_source_last <= main_write_aw_buffer_sink_last;
		main_write_aw_buffer_source_payload_addr <= main_write_aw_buffer_sink_payload_addr;
		main_write_aw_buffer_source_payload_burst <= main_write_aw_buffer_sink_payload_burst;
		main_write_aw_buffer_source_payload_len <= main_write_aw_buffer_sink_payload_len;
		main_write_aw_buffer_source_payload_size <= main_write_aw_buffer_sink_payload_size;
		main_write_aw_buffer_source_payload_lock <= main_write_aw_buffer_sink_payload_lock;
		main_write_aw_buffer_source_payload_prot <= main_write_aw_buffer_sink_payload_prot;
		main_write_aw_buffer_source_payload_cache <= main_write_aw_buffer_sink_payload_cache;
		main_write_aw_buffer_source_payload_qos <= main_write_aw_buffer_sink_payload_qos;
		main_write_aw_buffer_source_payload_id <= main_write_aw_buffer_sink_payload_id;
	end
	if ((main_write_aw_valid & main_write_aw_ready)) begin
		if (main_write_aw_last) begin
			main_write_beat_count <= 1'd0;
			main_write_beat_offset <= 1'd0;
		end else begin
			main_write_beat_count <= (main_write_beat_count + 1'd1);
			if ((((main_write_aw_buffer_source_payload_burst == 1'd1) & 1'd1) | ((main_write_aw_buffer_source_payload_burst == 2'd2) & 1'd1))) begin
				main_write_beat_offset <= (main_write_beat_offset + $signed({1'd0, main_write_beat_size}));
			end
		end
		if (((main_write_aw_buffer_source_payload_burst == 2'd2) & 1'd1)) begin
			if (((main_write_aw_payload_addr & main_write_beat_wrap) == main_write_beat_wrap)) begin
				main_write_beat_offset <= (main_write_beat_offset - $signed({1'd0, main_write_beat_wrap}));
			end
		end
	end
	if (main_write_w_buffer_syncfifo_re) begin
		main_write_w_buffer_readable <= 1'd1;
	end else begin
		if (main_write_w_buffer_re) begin
			main_write_w_buffer_readable <= 1'd0;
		end
	end
	if (((main_write_w_buffer_syncfifo_we & main_write_w_buffer_syncfifo_writable) & (~main_write_w_buffer_replace))) begin
		main_write_w_buffer_produce <= (main_write_w_buffer_produce + 1'd1);
	end
	if (main_write_w_buffer_do_read) begin
		main_write_w_buffer_consume <= (main_write_w_buffer_consume + 1'd1);
	end
	if (((main_write_w_buffer_syncfifo_we & main_write_w_buffer_syncfifo_writable) & (~main_write_w_buffer_replace))) begin
		if ((~main_write_w_buffer_do_read)) begin
			main_write_w_buffer_level0 <= (main_write_w_buffer_level0 + 1'd1);
		end
	end else begin
		if (main_write_w_buffer_do_read) begin
			main_write_w_buffer_level0 <= (main_write_w_buffer_level0 - 1'd1);
		end
	end
	if (((main_write_id_buffer_syncfifo_we & main_write_id_buffer_syncfifo_writable) & (~main_write_id_buffer_replace))) begin
		main_write_id_buffer_produce <= (main_write_id_buffer_produce + 1'd1);
	end
	if (main_write_id_buffer_do_read) begin
		main_write_id_buffer_consume <= (main_write_id_buffer_consume + 1'd1);
	end
	if (((main_write_id_buffer_syncfifo_we & main_write_id_buffer_syncfifo_writable) & (~main_write_id_buffer_replace))) begin
		if ((~main_write_id_buffer_do_read)) begin
			main_write_id_buffer_level <= (main_write_id_buffer_level + 1'd1);
		end
	end else begin
		if (main_write_id_buffer_do_read) begin
			main_write_id_buffer_level <= (main_write_id_buffer_level - 1'd1);
		end
	end
	if (((main_write_resp_buffer_syncfifo_we & main_write_resp_buffer_syncfifo_writable) & (~main_write_resp_buffer_replace))) begin
		main_write_resp_buffer_produce <= (main_write_resp_buffer_produce + 1'd1);
	end
	if (main_write_resp_buffer_do_read) begin
		main_write_resp_buffer_consume <= (main_write_resp_buffer_consume + 1'd1);
	end
	if (((main_write_resp_buffer_syncfifo_we & main_write_resp_buffer_syncfifo_writable) & (~main_write_resp_buffer_replace))) begin
		if ((~main_write_resp_buffer_do_read)) begin
			main_write_resp_buffer_level <= (main_write_resp_buffer_level + 1'd1);
		end
	end else begin
		if (main_write_resp_buffer_do_read) begin
			main_write_resp_buffer_level <= (main_write_resp_buffer_level - 1'd1);
		end
	end
	if (main_read_r_buffer_queue) begin
		if ((~main_read_r_buffer_dequeue)) begin
			main_read_r_buffer_level2 <= (main_read_r_buffer_level2 + 1'd1);
		end
	end else begin
		if (main_read_r_buffer_dequeue) begin
			main_read_r_buffer_level2 <= (main_read_r_buffer_level2 - 1'd1);
		end
	end
	if (((~main_read_ar_buffer_source_valid) | main_read_ar_buffer_source_ready)) begin
		main_read_ar_buffer_source_valid <= main_read_ar_buffer_sink_valid;
		main_read_ar_buffer_source_first <= main_read_ar_buffer_sink_first;
		main_read_ar_buffer_source_last <= main_read_ar_buffer_sink_last;
		main_read_ar_buffer_source_payload_addr <= main_read_ar_buffer_sink_payload_addr;
		main_read_ar_buffer_source_payload_burst <= main_read_ar_buffer_sink_payload_burst;
		main_read_ar_buffer_source_payload_len <= main_read_ar_buffer_sink_payload_len;
		main_read_ar_buffer_source_payload_size <= main_read_ar_buffer_sink_payload_size;
		main_read_ar_buffer_source_payload_lock <= main_read_ar_buffer_sink_payload_lock;
		main_read_ar_buffer_source_payload_prot <= main_read_ar_buffer_sink_payload_prot;
		main_read_ar_buffer_source_payload_cache <= main_read_ar_buffer_sink_payload_cache;
		main_read_ar_buffer_source_payload_qos <= main_read_ar_buffer_sink_payload_qos;
		main_read_ar_buffer_source_payload_id <= main_read_ar_buffer_sink_payload_id;
	end
	if ((main_read_ar_valid & main_read_ar_ready)) begin
		if (main_read_ar_last) begin
			main_read_beat_count <= 1'd0;
			main_read_beat_offset <= 1'd0;
		end else begin
			main_read_beat_count <= (main_read_beat_count + 1'd1);
			if ((((main_read_ar_buffer_source_payload_burst == 1'd1) & 1'd1) | ((main_read_ar_buffer_source_payload_burst == 2'd2) & 1'd1))) begin
				main_read_beat_offset <= (main_read_beat_offset + $signed({1'd0, main_read_beat_size}));
			end
		end
		if (((main_read_ar_buffer_source_payload_burst == 2'd2) & 1'd1)) begin
			if (((main_read_ar_payload_addr & main_read_beat_wrap) == main_read_beat_wrap)) begin
				main_read_beat_offset <= (main_read_beat_offset - $signed({1'd0, main_read_beat_wrap}));
			end
		end
	end
	if (main_read_r_buffer_syncfifo_re) begin
		main_read_r_buffer_readable <= 1'd1;
	end else begin
		if (main_read_r_buffer_re) begin
			main_read_r_buffer_readable <= 1'd0;
		end
	end
	if (((main_read_r_buffer_syncfifo_we & main_read_r_buffer_syncfifo_writable) & (~main_read_r_buffer_replace))) begin
		main_read_r_buffer_produce <= (main_read_r_buffer_produce + 1'd1);
	end
	if (main_read_r_buffer_do_read) begin
		main_read_r_buffer_consume <= (main_read_r_buffer_consume + 1'd1);
	end
	if (((main_read_r_buffer_syncfifo_we & main_read_r_buffer_syncfifo_writable) & (~main_read_r_buffer_replace))) begin
		if ((~main_read_r_buffer_do_read)) begin
			main_read_r_buffer_level0 <= (main_read_r_buffer_level0 + 1'd1);
		end
	end else begin
		if (main_read_r_buffer_do_read) begin
			main_read_r_buffer_level0 <= (main_read_r_buffer_level0 - 1'd1);
		end
	end
	if (((main_read_id_buffer_syncfifo_we & main_read_id_buffer_syncfifo_writable) & (~main_read_id_buffer_replace))) begin
		main_read_id_buffer_produce <= (main_read_id_buffer_produce + 1'd1);
	end
	if (main_read_id_buffer_do_read) begin
		main_read_id_buffer_consume <= (main_read_id_buffer_consume + 1'd1);
	end
	if (((main_read_id_buffer_syncfifo_we & main_read_id_buffer_syncfifo_writable) & (~main_read_id_buffer_replace))) begin
		if ((~main_read_id_buffer_do_read)) begin
			main_read_id_buffer_level <= (main_read_id_buffer_level + 1'd1);
		end
	end else begin
		if (main_read_id_buffer_do_read) begin
			main_read_id_buffer_level <= (main_read_id_buffer_level - 1'd1);
		end
	end
	if (main_ce) begin
		case (main_grant)
			1'd0: begin
				if (main_request[1]) begin
					main_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (main_request[0]) begin
					main_grant <= 1'd0;
				end
			end
		endcase
	end
	convert_state <= convert_next_state;
	if (main_aborted_next_value_ce) begin
		main_aborted <= main_aborted_next_value;
	end
	if (sys_rst) begin
		dfi_p0_address <= 17'd0;
		dfi_p0_bank <= 3'd0;
		dfi_p0_cas_n <= 1'd1;
		dfi_p0_cs_n <= 1'd1;
		dfi_p0_ras_n <= 1'd1;
		dfi_p0_we_n <= 1'd1;
		dfi_p0_wrdata_en <= 1'd0;
		dfi_p0_rddata_en <= 1'd0;
		dfi_p1_address <= 17'd0;
		dfi_p1_bank <= 3'd0;
		dfi_p1_cas_n <= 1'd1;
		dfi_p1_cs_n <= 1'd1;
		dfi_p1_ras_n <= 1'd1;
		dfi_p1_we_n <= 1'd1;
		dfi_p1_wrdata_en <= 1'd0;
		dfi_p1_rddata_en <= 1'd0;
		dfi_p2_address <= 17'd0;
		dfi_p2_bank <= 3'd0;
		dfi_p2_cas_n <= 1'd1;
		dfi_p2_cs_n <= 1'd1;
		dfi_p2_ras_n <= 1'd1;
		dfi_p2_we_n <= 1'd1;
		dfi_p2_wrdata_en <= 1'd0;
		dfi_p2_rddata_en <= 1'd0;
		dfi_p3_address <= 17'd0;
		dfi_p3_bank <= 3'd0;
		dfi_p3_cas_n <= 1'd1;
		dfi_p3_cs_n <= 1'd1;
		dfi_p3_ras_n <= 1'd1;
		dfi_p3_we_n <= 1'd1;
		dfi_p3_wrdata_en <= 1'd0;
		dfi_p3_rddata_en <= 1'd0;
		main_cmd_payload_a <= 17'd0;
		main_cmd_payload_ba <= 3'd0;
		main_cmd_payload_cas <= 1'd0;
		main_cmd_payload_ras <= 1'd0;
		main_cmd_payload_we <= 1'd0;
		main_timer_count1 <= 12'd2082;
		main_postponer_req_o <= 1'd0;
		main_postponer_count <= 1'd0;
		main_sequencer_done1 <= 1'd0;
		main_sequencer_counter <= 7'd0;
		main_sequencer_count <= 1'd0;
		main_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine0_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine0_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine0_row <= 17'd0;
		main_bankmachine0_row_opened <= 1'd0;
		main_bankmachine0_twtpcon_ready <= 1'd0;
		main_bankmachine0_twtpcon_count <= 5'd0;
		main_bankmachine0_trccon_ready <= 1'd0;
		main_bankmachine0_trccon_count <= 6'd0;
		main_bankmachine0_trascon_ready <= 1'd0;
		main_bankmachine0_trascon_count <= 5'd0;
		main_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine1_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine1_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine1_row <= 17'd0;
		main_bankmachine1_row_opened <= 1'd0;
		main_bankmachine1_twtpcon_ready <= 1'd0;
		main_bankmachine1_twtpcon_count <= 5'd0;
		main_bankmachine1_trccon_ready <= 1'd0;
		main_bankmachine1_trccon_count <= 6'd0;
		main_bankmachine1_trascon_ready <= 1'd0;
		main_bankmachine1_trascon_count <= 5'd0;
		main_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine2_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine2_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine2_row <= 17'd0;
		main_bankmachine2_row_opened <= 1'd0;
		main_bankmachine2_twtpcon_ready <= 1'd0;
		main_bankmachine2_twtpcon_count <= 5'd0;
		main_bankmachine2_trccon_ready <= 1'd0;
		main_bankmachine2_trccon_count <= 6'd0;
		main_bankmachine2_trascon_ready <= 1'd0;
		main_bankmachine2_trascon_count <= 5'd0;
		main_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine3_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine3_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine3_row <= 17'd0;
		main_bankmachine3_row_opened <= 1'd0;
		main_bankmachine3_twtpcon_ready <= 1'd0;
		main_bankmachine3_twtpcon_count <= 5'd0;
		main_bankmachine3_trccon_ready <= 1'd0;
		main_bankmachine3_trccon_count <= 6'd0;
		main_bankmachine3_trascon_ready <= 1'd0;
		main_bankmachine3_trascon_count <= 5'd0;
		main_bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine4_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine4_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine4_row <= 17'd0;
		main_bankmachine4_row_opened <= 1'd0;
		main_bankmachine4_twtpcon_ready <= 1'd0;
		main_bankmachine4_twtpcon_count <= 5'd0;
		main_bankmachine4_trccon_ready <= 1'd0;
		main_bankmachine4_trccon_count <= 6'd0;
		main_bankmachine4_trascon_ready <= 1'd0;
		main_bankmachine4_trascon_count <= 5'd0;
		main_bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine5_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine5_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine5_row <= 17'd0;
		main_bankmachine5_row_opened <= 1'd0;
		main_bankmachine5_twtpcon_ready <= 1'd0;
		main_bankmachine5_twtpcon_count <= 5'd0;
		main_bankmachine5_trccon_ready <= 1'd0;
		main_bankmachine5_trccon_count <= 6'd0;
		main_bankmachine5_trascon_ready <= 1'd0;
		main_bankmachine5_trascon_count <= 5'd0;
		main_bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine6_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine6_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine6_row <= 17'd0;
		main_bankmachine6_row_opened <= 1'd0;
		main_bankmachine6_twtpcon_ready <= 1'd0;
		main_bankmachine6_twtpcon_count <= 5'd0;
		main_bankmachine6_trccon_ready <= 1'd0;
		main_bankmachine6_trccon_count <= 6'd0;
		main_bankmachine6_trascon_ready <= 1'd0;
		main_bankmachine6_trascon_count <= 5'd0;
		main_bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		main_bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		main_bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		main_bankmachine7_cmd_buffer_source_valid <= 1'd0;
		main_bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		main_bankmachine7_cmd_buffer_source_payload_addr <= 23'd0;
		main_bankmachine7_row <= 17'd0;
		main_bankmachine7_row_opened <= 1'd0;
		main_bankmachine7_twtpcon_ready <= 1'd0;
		main_bankmachine7_twtpcon_count <= 5'd0;
		main_bankmachine7_trccon_ready <= 1'd0;
		main_bankmachine7_trccon_count <= 6'd0;
		main_bankmachine7_trascon_ready <= 1'd0;
		main_bankmachine7_trascon_count <= 5'd0;
		main_choose_cmd_grant <= 3'd0;
		main_choose_req_grant <= 3'd0;
		main_trrdcon_ready <= 1'd0;
		main_trrdcon_count <= 3'd0;
		main_tfawcon_ready <= 1'd1;
		main_tfawcon_window <= 23'd0;
		main_tccdcon_ready <= 1'd0;
		main_tccdcon_count <= 3'd0;
		main_twtrcon_ready <= 1'd0;
		main_twtrcon_count <= 5'd0;
		main_time0 <= 5'd0;
		main_time1 <= 4'd0;
		main_write_aw_buffer_source_valid <= 1'd0;
		main_write_aw_buffer_source_payload_addr <= 32'd0;
		main_write_aw_buffer_source_payload_burst <= 2'd0;
		main_write_aw_buffer_source_payload_len <= 8'd0;
		main_write_aw_buffer_source_payload_size <= 4'd0;
		main_write_aw_buffer_source_payload_lock <= 2'd0;
		main_write_aw_buffer_source_payload_prot <= 3'd0;
		main_write_aw_buffer_source_payload_cache <= 4'd0;
		main_write_aw_buffer_source_payload_qos <= 4'd0;
		main_write_aw_buffer_source_payload_id <= 1'd0;
		main_write_beat_count <= 8'd0;
		main_write_beat_offset <= 13'sd0;
		main_write_w_buffer_readable <= 1'd0;
		main_write_w_buffer_level0 <= 5'd0;
		main_write_w_buffer_produce <= 4'd0;
		main_write_w_buffer_consume <= 4'd0;
		main_write_id_buffer_level <= 5'd0;
		main_write_id_buffer_produce <= 4'd0;
		main_write_id_buffer_consume <= 4'd0;
		main_write_resp_buffer_level <= 5'd0;
		main_write_resp_buffer_produce <= 4'd0;
		main_write_resp_buffer_consume <= 4'd0;
		main_write_w_buffer_level2 <= 5'd0;
		main_read_ar_buffer_source_valid <= 1'd0;
		main_read_ar_buffer_source_payload_addr <= 32'd0;
		main_read_ar_buffer_source_payload_burst <= 2'd0;
		main_read_ar_buffer_source_payload_len <= 8'd0;
		main_read_ar_buffer_source_payload_size <= 4'd0;
		main_read_ar_buffer_source_payload_lock <= 2'd0;
		main_read_ar_buffer_source_payload_prot <= 3'd0;
		main_read_ar_buffer_source_payload_cache <= 4'd0;
		main_read_ar_buffer_source_payload_qos <= 4'd0;
		main_read_ar_buffer_source_payload_id <= 1'd0;
		main_read_beat_count <= 8'd0;
		main_read_beat_offset <= 13'sd0;
		main_read_r_buffer_readable <= 1'd0;
		main_read_r_buffer_level0 <= 5'd0;
		main_read_r_buffer_produce <= 4'd0;
		main_read_r_buffer_consume <= 4'd0;
		main_read_r_buffer_level2 <= 5'd0;
		main_read_id_buffer_level <= 5'd0;
		main_read_id_buffer_produce <= 4'd0;
		main_read_id_buffer_consume <= 4'd0;
		main_grant <= 1'd0;
		main_aborted <= 1'd0;
		main_roundrobin0_grant <= 1'd0;
		main_roundrobin1_grant <= 1'd0;
		main_roundrobin2_grant <= 1'd0;
		main_roundrobin3_grant <= 1'd0;
		main_roundrobin4_grant <= 1'd0;
		main_roundrobin5_grant <= 1'd0;
		main_roundrobin6_grant <= 1'd0;
		main_roundrobin7_grant <= 1'd0;
		main_new_master_wdata_ready0 <= 1'd0;
		main_new_master_wdata_ready1 <= 1'd0;
		main_new_master_wdata_ready2 <= 1'd0;
		main_new_master_wdata_ready3 <= 1'd0;
		main_new_master_wdata_ready4 <= 1'd0;
		main_new_master_wdata_ready5 <= 1'd0;
		main_new_master_wdata_ready6 <= 1'd0;
		main_new_master_wdata_ready7 <= 1'd0;
		main_new_master_wdata_ready8 <= 1'd0;
		main_new_master_wdata_ready9 <= 1'd0;
		main_new_master_wdata_ready10 <= 1'd0;
		main_new_master_wdata_ready11 <= 1'd0;
		main_new_master_wdata_ready12 <= 1'd0;
		main_new_master_wdata_ready13 <= 1'd0;
		main_new_master_rdata_valid0 <= 1'd0;
		main_new_master_rdata_valid1 <= 1'd0;
		main_new_master_rdata_valid2 <= 1'd0;
		main_new_master_rdata_valid3 <= 1'd0;
		main_new_master_rdata_valid4 <= 1'd0;
		main_new_master_rdata_valid5 <= 1'd0;
		main_new_master_rdata_valid6 <= 1'd0;
		main_new_master_rdata_valid7 <= 1'd0;
		main_new_master_rdata_valid8 <= 1'd0;
		main_new_master_rdata_valid9 <= 1'd0;
		main_new_master_rdata_valid10 <= 1'd0;
		main_new_master_rdata_valid11 <= 1'd0;
		main_new_master_rdata_valid12 <= 1'd0;
		main_new_master_rdata_valid13 <= 1'd0;
		main_new_master_rdata_valid14 <= 1'd0;
		main_new_master_rdata_valid15 <= 1'd0;
		main_new_master_rdata_valid16 <= 1'd0;
		main_new_master_rdata_valid17 <= 1'd0;
		main_new_master_rdata_valid18 <= 1'd0;
		main_new_master_rdata_valid19 <= 1'd0;
		main_new_master_rdata_valid20 <= 1'd0;
		main_new_master_rdata_valid21 <= 1'd0;
		main_new_master_rdata_valid22 <= 1'd0;
		main_new_master_rdata_valid23 <= 1'd0;
		main_new_master_rdata_valid24 <= 1'd0;
		main_new_master_rdata_valid25 <= 1'd0;
		main_new_master_rdata_valid26 <= 1'd0;
		main_new_master_rdata_valid27 <= 1'd0;
		main_new_master_rdata_valid28 <= 1'd0;
		main_new_master_rdata_valid29 <= 1'd0;
		main_new_master_rdata_valid30 <= 1'd0;
		main_new_master_rdata_valid31 <= 1'd0;
		main_new_master_rdata_valid32 <= 1'd0;
		main_new_master_rdata_valid33 <= 1'd0;
		main_new_master_rdata_valid34 <= 1'd0;
		main_new_master_rdata_valid35 <= 1'd0;
		main_new_master_rdata_valid36 <= 1'd0;
		main_new_master_rdata_valid37 <= 1'd0;
		main_new_master_rdata_valid38 <= 1'd0;
		main_new_master_rdata_valid39 <= 1'd0;
		main_new_master_rdata_valid40 <= 1'd0;
		main_new_master_rdata_valid41 <= 1'd0;
		main_new_master_rdata_valid42 <= 1'd0;
		main_new_master_rdata_valid43 <= 1'd0;
		main_new_master_rdata_valid44 <= 1'd0;
		main_new_master_rdata_valid45 <= 1'd0;
		main_new_master_rdata_valid46 <= 1'd0;
		main_new_master_rdata_valid47 <= 1'd0;
		convert_refresher_state <= 2'd0;
		convert_bankmachine0_state <= 5'd0;
		convert_bankmachine1_state <= 5'd0;
		convert_bankmachine2_state <= 5'd0;
		convert_bankmachine3_state <= 5'd0;
		convert_bankmachine4_state <= 5'd0;
		convert_bankmachine5_state <= 5'd0;
		convert_bankmachine6_state <= 5'd0;
		convert_bankmachine7_state <= 5'd0;
		convert_multiplexer_state <= 5'd0;
		convert_roundrobin0_grant <= 1'd0;
		convert_roundrobin1_grant <= 1'd0;
		convert_roundrobin2_grant <= 1'd0;
		convert_roundrobin3_grant <= 1'd0;
		convert_roundrobin4_grant <= 1'd0;
		convert_roundrobin5_grant <= 1'd0;
		convert_roundrobin6_grant <= 1'd0;
		convert_roundrobin7_grant <= 1'd0;
		convert_new_master_wdata_ready0 <= 1'd0;
		convert_new_master_wdata_ready1 <= 1'd0;
		convert_new_master_wdata_ready2 <= 1'd0;
		convert_new_master_wdata_ready3 <= 1'd0;
		convert_new_master_wdata_ready4 <= 1'd0;
		convert_new_master_wdata_ready5 <= 1'd0;
		convert_new_master_wdata_ready6 <= 1'd0;
		convert_new_master_wdata_ready7 <= 1'd0;
		convert_new_master_wdata_ready8 <= 1'd0;
		convert_new_master_wdata_ready9 <= 1'd0;
		convert_new_master_wdata_ready10 <= 1'd0;
		convert_new_master_wdata_ready11 <= 1'd0;
		convert_new_master_wdata_ready12 <= 1'd0;
		convert_new_master_wdata_ready13 <= 1'd0;
		convert_new_master_rdata_valid0 <= 1'd0;
		convert_new_master_rdata_valid1 <= 1'd0;
		convert_new_master_rdata_valid2 <= 1'd0;
		convert_new_master_rdata_valid3 <= 1'd0;
		convert_new_master_rdata_valid4 <= 1'd0;
		convert_new_master_rdata_valid5 <= 1'd0;
		convert_new_master_rdata_valid6 <= 1'd0;
		convert_new_master_rdata_valid7 <= 1'd0;
		convert_new_master_rdata_valid8 <= 1'd0;
		convert_new_master_rdata_valid9 <= 1'd0;
		convert_new_master_rdata_valid10 <= 1'd0;
		convert_new_master_rdata_valid11 <= 1'd0;
		convert_new_master_rdata_valid12 <= 1'd0;
		convert_new_master_rdata_valid13 <= 1'd0;
		convert_new_master_rdata_valid14 <= 1'd0;
		convert_new_master_rdata_valid15 <= 1'd0;
		convert_new_master_rdata_valid16 <= 1'd0;
		convert_new_master_rdata_valid17 <= 1'd0;
		convert_new_master_rdata_valid18 <= 1'd0;
		convert_new_master_rdata_valid19 <= 1'd0;
		convert_new_master_rdata_valid20 <= 1'd0;
		convert_new_master_rdata_valid21 <= 1'd0;
		convert_new_master_rdata_valid22 <= 1'd0;
		convert_new_master_rdata_valid23 <= 1'd0;
		convert_new_master_rdata_valid24 <= 1'd0;
		convert_new_master_rdata_valid25 <= 1'd0;
		convert_new_master_rdata_valid26 <= 1'd0;
		convert_new_master_rdata_valid27 <= 1'd0;
		convert_new_master_rdata_valid28 <= 1'd0;
		convert_new_master_rdata_valid29 <= 1'd0;
		convert_new_master_rdata_valid30 <= 1'd0;
		convert_new_master_rdata_valid31 <= 1'd0;
		convert_new_master_rdata_valid32 <= 1'd0;
		convert_new_master_rdata_valid33 <= 1'd0;
		convert_new_master_rdata_valid34 <= 1'd0;
		convert_new_master_rdata_valid35 <= 1'd0;
		convert_new_master_rdata_valid36 <= 1'd0;
		convert_new_master_rdata_valid37 <= 1'd0;
		convert_new_master_rdata_valid38 <= 1'd0;
		convert_new_master_rdata_valid39 <= 1'd0;
		convert_new_master_rdata_valid40 <= 1'd0;
		convert_new_master_rdata_valid41 <= 1'd0;
		convert_new_master_rdata_valid42 <= 1'd0;
		convert_new_master_rdata_valid43 <= 1'd0;
		convert_new_master_rdata_valid44 <= 1'd0;
		convert_new_master_rdata_valid45 <= 1'd0;
		convert_new_master_rdata_valid46 <= 1'd0;
		convert_new_master_rdata_valid47 <= 1'd0;
		convert_state <= 2'd0;
	end
end

reg [25:0] storage[0:7];
reg [25:0] memdat;
always @(posedge sys_clk) begin
	if (main_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage[main_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat <= storage[main_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat;
assign main_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage[main_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_1[0:7];
reg [25:0] memdat_1;
always @(posedge sys_clk) begin
	if (main_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_1[main_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_1 <= storage_1[main_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_1;
assign main_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_1[main_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_2[0:7];
reg [25:0] memdat_2;
always @(posedge sys_clk) begin
	if (main_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_2[main_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_2 <= storage_2[main_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_2;
assign main_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_2[main_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_3[0:7];
reg [25:0] memdat_3;
always @(posedge sys_clk) begin
	if (main_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_3[main_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_3 <= storage_3[main_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_3;
assign main_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_3[main_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_4[0:7];
reg [25:0] memdat_4;
always @(posedge sys_clk) begin
	if (main_bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_4[main_bankmachine4_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_4[main_bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign main_bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_4[main_bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_5[0:7];
reg [25:0] memdat_5;
always @(posedge sys_clk) begin
	if (main_bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_5[main_bankmachine5_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_5[main_bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign main_bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_5[main_bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_6[0:7];
reg [25:0] memdat_6;
always @(posedge sys_clk) begin
	if (main_bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_6[main_bankmachine6_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_6[main_bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign main_bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_6[main_bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_7[0:7];
reg [25:0] memdat_7;
always @(posedge sys_clk) begin
	if (main_bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_7[main_bankmachine7_cmd_buffer_lookahead_wrport_adr] <= main_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_7[main_bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign main_bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_7[main_bankmachine7_cmd_buffer_lookahead_rdport_adr];

reg [290:0] storage_8[0:15];
reg [290:0] memdat_8;
reg [290:0] memdat_9;
always @(posedge sys_clk) begin
	if (main_write_w_buffer_wrport_we)
		storage_8[main_write_w_buffer_wrport_adr] <= main_write_w_buffer_wrport_dat_w;
	memdat_8 <= storage_8[main_write_w_buffer_wrport_adr];
end

always @(posedge sys_clk) begin
	if (main_write_w_buffer_rdport_re)
		memdat_9 <= storage_8[main_write_w_buffer_rdport_adr];
end

assign main_write_w_buffer_wrport_dat_r = memdat_8;
assign main_write_w_buffer_rdport_dat_r = memdat_9;

reg [2:0] storage_9[0:15];
reg [2:0] memdat_10;
always @(posedge sys_clk) begin
	if (main_write_id_buffer_wrport_we)
		storage_9[main_write_id_buffer_wrport_adr] <= main_write_id_buffer_wrport_dat_w;
	memdat_10 <= storage_9[main_write_id_buffer_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_write_id_buffer_wrport_dat_r = memdat_10;
assign main_write_id_buffer_rdport_dat_r = storage_9[main_write_id_buffer_rdport_adr];

reg [4:0] storage_10[0:15];
reg [4:0] memdat_11;
always @(posedge sys_clk) begin
	if (main_write_resp_buffer_wrport_we)
		storage_10[main_write_resp_buffer_wrport_adr] <= main_write_resp_buffer_wrport_dat_w;
	memdat_11 <= storage_10[main_write_resp_buffer_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_write_resp_buffer_wrport_dat_r = memdat_11;
assign main_write_resp_buffer_rdport_dat_r = storage_10[main_write_resp_buffer_rdport_adr];

reg [260:0] storage_11[0:15];
reg [260:0] memdat_12;
reg [260:0] memdat_13;
always @(posedge sys_clk) begin
	if (main_read_r_buffer_wrport_we)
		storage_11[main_read_r_buffer_wrport_adr] <= main_read_r_buffer_wrport_dat_w;
	memdat_12 <= storage_11[main_read_r_buffer_wrport_adr];
end

always @(posedge sys_clk) begin
	if (main_read_r_buffer_rdport_re)
		memdat_13 <= storage_11[main_read_r_buffer_rdport_adr];
end

assign main_read_r_buffer_wrport_dat_r = memdat_12;
assign main_read_r_buffer_rdport_dat_r = memdat_13;

reg [2:0] storage_12[0:15];
reg [2:0] memdat_14;
always @(posedge sys_clk) begin
	if (main_read_id_buffer_wrport_we)
		storage_12[main_read_id_buffer_wrport_adr] <= main_read_id_buffer_wrport_dat_w;
	memdat_14 <= storage_12[main_read_id_buffer_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign main_read_id_buffer_wrport_dat_r = memdat_14;
assign main_read_id_buffer_rdport_dat_r = storage_12[main_read_id_buffer_rdport_adr];

endmodule
