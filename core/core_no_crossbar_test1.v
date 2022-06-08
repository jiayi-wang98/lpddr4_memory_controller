/* Machine-generated using Migen */
module LiteDram_core_no_crossbar_test1(
	output interface_bank0_valid,
	output interface_bank0_ready,
	output interface_bank0_we,
	output [22:0] interface_bank0_addr,
	output interface_bank0_lock,
	output interface_bank0_wdata_ready,
	output interface_bank0_rdata_valid,
	output interface_bank1_valid,
	output interface_bank1_ready,
	output interface_bank1_we,
	output [22:0] interface_bank1_addr,
	output interface_bank1_lock,
	output interface_bank1_wdata_ready,
	output interface_bank1_rdata_valid,
	output interface_bank2_valid,
	output interface_bank2_ready,
	output interface_bank2_we,
	output [22:0] interface_bank2_addr,
	output interface_bank2_lock,
	output interface_bank2_wdata_ready,
	output interface_bank2_rdata_valid,
	output interface_bank3_valid,
	output interface_bank3_ready,
	output interface_bank3_we,
	output [22:0] interface_bank3_addr,
	output interface_bank3_lock,
	output interface_bank3_wdata_ready,
	output interface_bank3_rdata_valid,
	output interface_bank4_valid,
	output interface_bank4_ready,
	output interface_bank4_we,
	output [22:0] interface_bank4_addr,
	output interface_bank4_lock,
	output interface_bank4_wdata_ready,
	output interface_bank4_rdata_valid,
	output interface_bank5_valid,
	output interface_bank5_ready,
	output interface_bank5_we,
	output [22:0] interface_bank5_addr,
	output interface_bank5_lock,
	output interface_bank5_wdata_ready,
	output interface_bank5_rdata_valid,
	output interface_bank6_valid,
	output interface_bank6_ready,
	output interface_bank6_we,
	output [22:0] interface_bank6_addr,
	output interface_bank6_lock,
	output interface_bank6_wdata_ready,
	output interface_bank6_rdata_valid,
	output interface_bank7_valid,
	output interface_bank7_ready,
	output interface_bank7_we,
	output [22:0] interface_bank7_addr,
	output interface_bank7_lock,
	output interface_bank7_wdata_ready,
	output interface_bank7_rdata_valid,
	output reg [255:0] interface_wdata,
	output reg [31:0] interface_wdata_we,
	output [255:0] interface_rdata,
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
	output [31:0] dfi_p0_wrdata,
	output reg dfi_p0_wrdata_en,
	output [3:0] dfi_p0_wrdata_mask,
	output reg dfi_p0_rddata_en,
	input [31:0] dfi_p0_rddata,
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
	output [31:0] dfi_p1_wrdata,
	output reg dfi_p1_wrdata_en,
	output [3:0] dfi_p1_wrdata_mask,
	output reg dfi_p1_rddata_en,
	input [31:0] dfi_p1_rddata,
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
	output [31:0] dfi_p2_wrdata,
	output reg dfi_p2_wrdata_en,
	output [3:0] dfi_p2_wrdata_mask,
	output reg dfi_p2_rddata_en,
	input [31:0] dfi_p2_rddata,
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
	output [31:0] dfi_p3_wrdata,
	output reg dfi_p3_wrdata_en,
	output [3:0] dfi_p3_wrdata_mask,
	output reg dfi_p3_rddata_en,
	input [31:0] dfi_p3_rddata,
	input dfi_p3_rddata_valid,
	output reg [16:0] dfi_p4_address,
	output reg [2:0] dfi_p4_bank,
	output reg dfi_p4_cas_n,
	output reg dfi_p4_cs_n,
	output reg dfi_p4_ras_n,
	output reg dfi_p4_we_n,
	output dfi_p4_cke,
	output dfi_p4_odt,
	output dfi_p4_reset_n,
	input dfi_p4_act_n,
	output [31:0] dfi_p4_wrdata,
	output reg dfi_p4_wrdata_en,
	output [3:0] dfi_p4_wrdata_mask,
	output reg dfi_p4_rddata_en,
	input [31:0] dfi_p4_rddata,
	input dfi_p4_rddata_valid,
	output reg [16:0] dfi_p5_address,
	output reg [2:0] dfi_p5_bank,
	output reg dfi_p5_cas_n,
	output reg dfi_p5_cs_n,
	output reg dfi_p5_ras_n,
	output reg dfi_p5_we_n,
	output dfi_p5_cke,
	output dfi_p5_odt,
	output dfi_p5_reset_n,
	input dfi_p5_act_n,
	output [31:0] dfi_p5_wrdata,
	output reg dfi_p5_wrdata_en,
	output [3:0] dfi_p5_wrdata_mask,
	output reg dfi_p5_rddata_en,
	input [31:0] dfi_p5_rddata,
	input dfi_p5_rddata_valid,
	output reg [16:0] dfi_p6_address,
	output reg [2:0] dfi_p6_bank,
	output reg dfi_p6_cas_n,
	output reg dfi_p6_cs_n,
	output reg dfi_p6_ras_n,
	output reg dfi_p6_we_n,
	output dfi_p6_cke,
	output dfi_p6_odt,
	output dfi_p6_reset_n,
	input dfi_p6_act_n,
	output [31:0] dfi_p6_wrdata,
	output reg dfi_p6_wrdata_en,
	output [3:0] dfi_p6_wrdata_mask,
	output reg dfi_p6_rddata_en,
	input [31:0] dfi_p6_rddata,
	input dfi_p6_rddata_valid,
	output reg [16:0] dfi_p7_address,
	output reg [2:0] dfi_p7_bank,
	output reg dfi_p7_cas_n,
	output reg dfi_p7_cs_n,
	output reg dfi_p7_ras_n,
	output reg dfi_p7_we_n,
	output dfi_p7_cke,
	output dfi_p7_odt,
	output dfi_p7_reset_n,
	input dfi_p7_act_n,
	output [31:0] dfi_p7_wrdata,
	output reg dfi_p7_wrdata_en,
	output [3:0] dfi_p7_wrdata_mask,
	output reg dfi_p7_rddata_en,
	input [31:0] dfi_p7_rddata,
	input dfi_p7_rddata_valid,
	input sys_clk,
	input sys_rst
);

reg [2:0] rdphase_storage = 3'd0;
reg [2:0] wrphase_storage = 3'd2;
reg cmd_valid;
reg cmd_ready;
reg cmd_last;
reg [16:0] cmd_payload_a = 17'd0;
reg [2:0] cmd_payload_ba = 3'd0;
reg cmd_payload_cas = 1'd0;
reg cmd_payload_ras = 1'd0;
reg cmd_payload_we = 1'd0;
reg cmd_payload_is_read = 1'd0;
reg cmd_payload_is_write = 1'd0;
wire wants_refresh;
wire timer_wait;
wire timer_done0;
wire [10:0] timer_count0;
wire timer_done1;
reg [10:0] timer_count1 = 11'd1039;
wire postponer_req_i;
reg postponer_req_o = 1'd0;
reg postponer_count = 1'd0;
reg sequencer_start0;
wire sequencer_done0;
wire sequencer_start1;
reg sequencer_done1 = 1'd0;
reg [5:0] sequencer_counter = 6'd0;
reg sequencer_count = 1'd0;
wire bankmachine0_req_valid;
wire bankmachine0_req_ready;
wire bankmachine0_req_we;
wire [22:0] bankmachine0_req_addr;
wire bankmachine0_req_lock;
reg bankmachine0_req_wdata_ready;
reg bankmachine0_req_rdata_valid;
wire bankmachine0_refresh_req;
reg bankmachine0_refresh_gnt;
reg bankmachine0_cmd_valid;
reg bankmachine0_cmd_ready;
reg [16:0] bankmachine0_cmd_payload_a;
wire [2:0] bankmachine0_cmd_payload_ba;
reg bankmachine0_cmd_payload_cas;
reg bankmachine0_cmd_payload_ras;
reg bankmachine0_cmd_payload_we;
reg bankmachine0_cmd_payload_is_cmd;
reg bankmachine0_cmd_payload_is_read;
reg bankmachine0_cmd_payload_is_write;
reg bankmachine0_auto_precharge;
wire bankmachine0_cmd_buffer_lookahead_sink_valid;
wire bankmachine0_cmd_buffer_lookahead_sink_ready;
reg bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine0_cmd_buffer_lookahead_source_valid;
wire bankmachine0_cmd_buffer_lookahead_source_ready;
wire bankmachine0_cmd_buffer_lookahead_source_first;
wire bankmachine0_cmd_buffer_lookahead_source_last;
wire bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [25:0] bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [25:0] bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine0_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine0_cmd_buffer_sink_valid;
wire bankmachine0_cmd_buffer_sink_ready;
wire bankmachine0_cmd_buffer_sink_first;
wire bankmachine0_cmd_buffer_sink_last;
wire bankmachine0_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine0_cmd_buffer_sink_payload_addr;
reg bankmachine0_cmd_buffer_source_valid = 1'd0;
wire bankmachine0_cmd_buffer_source_ready;
reg bankmachine0_cmd_buffer_source_first = 1'd0;
reg bankmachine0_cmd_buffer_source_last = 1'd0;
reg bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine0_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine0_row = 17'd0;
reg bankmachine0_row_opened = 1'd0;
wire bankmachine0_row_hit;
reg bankmachine0_row_open;
reg bankmachine0_row_close;
reg bankmachine0_row_col_n_addr_sel;
wire bankmachine0_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine0_twtpcon_ready = 1'd0;
reg [4:0] bankmachine0_twtpcon_count = 5'd0;
wire bankmachine0_trccon_valid;
(* no_retiming = "true" *) reg bankmachine0_trccon_ready = 1'd0;
reg [4:0] bankmachine0_trccon_count = 5'd0;
wire bankmachine0_trascon_valid;
(* no_retiming = "true" *) reg bankmachine0_trascon_ready = 1'd0;
reg [3:0] bankmachine0_trascon_count = 4'd0;
wire bankmachine1_req_valid;
wire bankmachine1_req_ready;
wire bankmachine1_req_we;
wire [22:0] bankmachine1_req_addr;
wire bankmachine1_req_lock;
reg bankmachine1_req_wdata_ready;
reg bankmachine1_req_rdata_valid;
wire bankmachine1_refresh_req;
reg bankmachine1_refresh_gnt;
reg bankmachine1_cmd_valid;
reg bankmachine1_cmd_ready;
reg [16:0] bankmachine1_cmd_payload_a;
wire [2:0] bankmachine1_cmd_payload_ba;
reg bankmachine1_cmd_payload_cas;
reg bankmachine1_cmd_payload_ras;
reg bankmachine1_cmd_payload_we;
reg bankmachine1_cmd_payload_is_cmd;
reg bankmachine1_cmd_payload_is_read;
reg bankmachine1_cmd_payload_is_write;
reg bankmachine1_auto_precharge;
wire bankmachine1_cmd_buffer_lookahead_sink_valid;
wire bankmachine1_cmd_buffer_lookahead_sink_ready;
reg bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine1_cmd_buffer_lookahead_source_valid;
wire bankmachine1_cmd_buffer_lookahead_source_ready;
wire bankmachine1_cmd_buffer_lookahead_source_first;
wire bankmachine1_cmd_buffer_lookahead_source_last;
wire bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [25:0] bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [25:0] bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine1_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine1_cmd_buffer_sink_valid;
wire bankmachine1_cmd_buffer_sink_ready;
wire bankmachine1_cmd_buffer_sink_first;
wire bankmachine1_cmd_buffer_sink_last;
wire bankmachine1_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine1_cmd_buffer_sink_payload_addr;
reg bankmachine1_cmd_buffer_source_valid = 1'd0;
wire bankmachine1_cmd_buffer_source_ready;
reg bankmachine1_cmd_buffer_source_first = 1'd0;
reg bankmachine1_cmd_buffer_source_last = 1'd0;
reg bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine1_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine1_row = 17'd0;
reg bankmachine1_row_opened = 1'd0;
wire bankmachine1_row_hit;
reg bankmachine1_row_open;
reg bankmachine1_row_close;
reg bankmachine1_row_col_n_addr_sel;
wire bankmachine1_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine1_twtpcon_ready = 1'd0;
reg [4:0] bankmachine1_twtpcon_count = 5'd0;
wire bankmachine1_trccon_valid;
(* no_retiming = "true" *) reg bankmachine1_trccon_ready = 1'd0;
reg [4:0] bankmachine1_trccon_count = 5'd0;
wire bankmachine1_trascon_valid;
(* no_retiming = "true" *) reg bankmachine1_trascon_ready = 1'd0;
reg [3:0] bankmachine1_trascon_count = 4'd0;
wire bankmachine2_req_valid;
wire bankmachine2_req_ready;
wire bankmachine2_req_we;
wire [22:0] bankmachine2_req_addr;
wire bankmachine2_req_lock;
reg bankmachine2_req_wdata_ready;
reg bankmachine2_req_rdata_valid;
wire bankmachine2_refresh_req;
reg bankmachine2_refresh_gnt;
reg bankmachine2_cmd_valid;
reg bankmachine2_cmd_ready;
reg [16:0] bankmachine2_cmd_payload_a;
wire [2:0] bankmachine2_cmd_payload_ba;
reg bankmachine2_cmd_payload_cas;
reg bankmachine2_cmd_payload_ras;
reg bankmachine2_cmd_payload_we;
reg bankmachine2_cmd_payload_is_cmd;
reg bankmachine2_cmd_payload_is_read;
reg bankmachine2_cmd_payload_is_write;
reg bankmachine2_auto_precharge;
wire bankmachine2_cmd_buffer_lookahead_sink_valid;
wire bankmachine2_cmd_buffer_lookahead_sink_ready;
reg bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine2_cmd_buffer_lookahead_source_valid;
wire bankmachine2_cmd_buffer_lookahead_source_ready;
wire bankmachine2_cmd_buffer_lookahead_source_first;
wire bankmachine2_cmd_buffer_lookahead_source_last;
wire bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [25:0] bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [25:0] bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine2_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine2_cmd_buffer_sink_valid;
wire bankmachine2_cmd_buffer_sink_ready;
wire bankmachine2_cmd_buffer_sink_first;
wire bankmachine2_cmd_buffer_sink_last;
wire bankmachine2_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine2_cmd_buffer_sink_payload_addr;
reg bankmachine2_cmd_buffer_source_valid = 1'd0;
wire bankmachine2_cmd_buffer_source_ready;
reg bankmachine2_cmd_buffer_source_first = 1'd0;
reg bankmachine2_cmd_buffer_source_last = 1'd0;
reg bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine2_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine2_row = 17'd0;
reg bankmachine2_row_opened = 1'd0;
wire bankmachine2_row_hit;
reg bankmachine2_row_open;
reg bankmachine2_row_close;
reg bankmachine2_row_col_n_addr_sel;
wire bankmachine2_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine2_twtpcon_ready = 1'd0;
reg [4:0] bankmachine2_twtpcon_count = 5'd0;
wire bankmachine2_trccon_valid;
(* no_retiming = "true" *) reg bankmachine2_trccon_ready = 1'd0;
reg [4:0] bankmachine2_trccon_count = 5'd0;
wire bankmachine2_trascon_valid;
(* no_retiming = "true" *) reg bankmachine2_trascon_ready = 1'd0;
reg [3:0] bankmachine2_trascon_count = 4'd0;
wire bankmachine3_req_valid;
wire bankmachine3_req_ready;
wire bankmachine3_req_we;
wire [22:0] bankmachine3_req_addr;
wire bankmachine3_req_lock;
reg bankmachine3_req_wdata_ready;
reg bankmachine3_req_rdata_valid;
wire bankmachine3_refresh_req;
reg bankmachine3_refresh_gnt;
reg bankmachine3_cmd_valid;
reg bankmachine3_cmd_ready;
reg [16:0] bankmachine3_cmd_payload_a;
wire [2:0] bankmachine3_cmd_payload_ba;
reg bankmachine3_cmd_payload_cas;
reg bankmachine3_cmd_payload_ras;
reg bankmachine3_cmd_payload_we;
reg bankmachine3_cmd_payload_is_cmd;
reg bankmachine3_cmd_payload_is_read;
reg bankmachine3_cmd_payload_is_write;
reg bankmachine3_auto_precharge;
wire bankmachine3_cmd_buffer_lookahead_sink_valid;
wire bankmachine3_cmd_buffer_lookahead_sink_ready;
reg bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine3_cmd_buffer_lookahead_source_valid;
wire bankmachine3_cmd_buffer_lookahead_source_ready;
wire bankmachine3_cmd_buffer_lookahead_source_first;
wire bankmachine3_cmd_buffer_lookahead_source_last;
wire bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [25:0] bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [25:0] bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine3_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine3_cmd_buffer_sink_valid;
wire bankmachine3_cmd_buffer_sink_ready;
wire bankmachine3_cmd_buffer_sink_first;
wire bankmachine3_cmd_buffer_sink_last;
wire bankmachine3_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine3_cmd_buffer_sink_payload_addr;
reg bankmachine3_cmd_buffer_source_valid = 1'd0;
wire bankmachine3_cmd_buffer_source_ready;
reg bankmachine3_cmd_buffer_source_first = 1'd0;
reg bankmachine3_cmd_buffer_source_last = 1'd0;
reg bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine3_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine3_row = 17'd0;
reg bankmachine3_row_opened = 1'd0;
wire bankmachine3_row_hit;
reg bankmachine3_row_open;
reg bankmachine3_row_close;
reg bankmachine3_row_col_n_addr_sel;
wire bankmachine3_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine3_twtpcon_ready = 1'd0;
reg [4:0] bankmachine3_twtpcon_count = 5'd0;
wire bankmachine3_trccon_valid;
(* no_retiming = "true" *) reg bankmachine3_trccon_ready = 1'd0;
reg [4:0] bankmachine3_trccon_count = 5'd0;
wire bankmachine3_trascon_valid;
(* no_retiming = "true" *) reg bankmachine3_trascon_ready = 1'd0;
reg [3:0] bankmachine3_trascon_count = 4'd0;
wire bankmachine4_req_valid;
wire bankmachine4_req_ready;
wire bankmachine4_req_we;
wire [22:0] bankmachine4_req_addr;
wire bankmachine4_req_lock;
reg bankmachine4_req_wdata_ready;
reg bankmachine4_req_rdata_valid;
wire bankmachine4_refresh_req;
reg bankmachine4_refresh_gnt;
reg bankmachine4_cmd_valid;
reg bankmachine4_cmd_ready;
reg [16:0] bankmachine4_cmd_payload_a;
wire [2:0] bankmachine4_cmd_payload_ba;
reg bankmachine4_cmd_payload_cas;
reg bankmachine4_cmd_payload_ras;
reg bankmachine4_cmd_payload_we;
reg bankmachine4_cmd_payload_is_cmd;
reg bankmachine4_cmd_payload_is_read;
reg bankmachine4_cmd_payload_is_write;
reg bankmachine4_auto_precharge;
wire bankmachine4_cmd_buffer_lookahead_sink_valid;
wire bankmachine4_cmd_buffer_lookahead_sink_ready;
reg bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine4_cmd_buffer_lookahead_source_valid;
wire bankmachine4_cmd_buffer_lookahead_source_ready;
wire bankmachine4_cmd_buffer_lookahead_source_first;
wire bankmachine4_cmd_buffer_lookahead_source_last;
wire bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine4_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [25:0] bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [25:0] bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine4_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine4_cmd_buffer_sink_valid;
wire bankmachine4_cmd_buffer_sink_ready;
wire bankmachine4_cmd_buffer_sink_first;
wire bankmachine4_cmd_buffer_sink_last;
wire bankmachine4_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine4_cmd_buffer_sink_payload_addr;
reg bankmachine4_cmd_buffer_source_valid = 1'd0;
wire bankmachine4_cmd_buffer_source_ready;
reg bankmachine4_cmd_buffer_source_first = 1'd0;
reg bankmachine4_cmd_buffer_source_last = 1'd0;
reg bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine4_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine4_row = 17'd0;
reg bankmachine4_row_opened = 1'd0;
wire bankmachine4_row_hit;
reg bankmachine4_row_open;
reg bankmachine4_row_close;
reg bankmachine4_row_col_n_addr_sel;
wire bankmachine4_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine4_twtpcon_ready = 1'd0;
reg [4:0] bankmachine4_twtpcon_count = 5'd0;
wire bankmachine4_trccon_valid;
(* no_retiming = "true" *) reg bankmachine4_trccon_ready = 1'd0;
reg [4:0] bankmachine4_trccon_count = 5'd0;
wire bankmachine4_trascon_valid;
(* no_retiming = "true" *) reg bankmachine4_trascon_ready = 1'd0;
reg [3:0] bankmachine4_trascon_count = 4'd0;
wire bankmachine5_req_valid;
wire bankmachine5_req_ready;
wire bankmachine5_req_we;
wire [22:0] bankmachine5_req_addr;
wire bankmachine5_req_lock;
reg bankmachine5_req_wdata_ready;
reg bankmachine5_req_rdata_valid;
wire bankmachine5_refresh_req;
reg bankmachine5_refresh_gnt;
reg bankmachine5_cmd_valid;
reg bankmachine5_cmd_ready;
reg [16:0] bankmachine5_cmd_payload_a;
wire [2:0] bankmachine5_cmd_payload_ba;
reg bankmachine5_cmd_payload_cas;
reg bankmachine5_cmd_payload_ras;
reg bankmachine5_cmd_payload_we;
reg bankmachine5_cmd_payload_is_cmd;
reg bankmachine5_cmd_payload_is_read;
reg bankmachine5_cmd_payload_is_write;
reg bankmachine5_auto_precharge;
wire bankmachine5_cmd_buffer_lookahead_sink_valid;
wire bankmachine5_cmd_buffer_lookahead_sink_ready;
reg bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine5_cmd_buffer_lookahead_source_valid;
wire bankmachine5_cmd_buffer_lookahead_source_ready;
wire bankmachine5_cmd_buffer_lookahead_source_first;
wire bankmachine5_cmd_buffer_lookahead_source_last;
wire bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine5_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [25:0] bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [25:0] bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine5_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine5_cmd_buffer_sink_valid;
wire bankmachine5_cmd_buffer_sink_ready;
wire bankmachine5_cmd_buffer_sink_first;
wire bankmachine5_cmd_buffer_sink_last;
wire bankmachine5_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine5_cmd_buffer_sink_payload_addr;
reg bankmachine5_cmd_buffer_source_valid = 1'd0;
wire bankmachine5_cmd_buffer_source_ready;
reg bankmachine5_cmd_buffer_source_first = 1'd0;
reg bankmachine5_cmd_buffer_source_last = 1'd0;
reg bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine5_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine5_row = 17'd0;
reg bankmachine5_row_opened = 1'd0;
wire bankmachine5_row_hit;
reg bankmachine5_row_open;
reg bankmachine5_row_close;
reg bankmachine5_row_col_n_addr_sel;
wire bankmachine5_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine5_twtpcon_ready = 1'd0;
reg [4:0] bankmachine5_twtpcon_count = 5'd0;
wire bankmachine5_trccon_valid;
(* no_retiming = "true" *) reg bankmachine5_trccon_ready = 1'd0;
reg [4:0] bankmachine5_trccon_count = 5'd0;
wire bankmachine5_trascon_valid;
(* no_retiming = "true" *) reg bankmachine5_trascon_ready = 1'd0;
reg [3:0] bankmachine5_trascon_count = 4'd0;
wire bankmachine6_req_valid;
wire bankmachine6_req_ready;
wire bankmachine6_req_we;
wire [22:0] bankmachine6_req_addr;
wire bankmachine6_req_lock;
reg bankmachine6_req_wdata_ready;
reg bankmachine6_req_rdata_valid;
wire bankmachine6_refresh_req;
reg bankmachine6_refresh_gnt;
reg bankmachine6_cmd_valid;
reg bankmachine6_cmd_ready;
reg [16:0] bankmachine6_cmd_payload_a;
wire [2:0] bankmachine6_cmd_payload_ba;
reg bankmachine6_cmd_payload_cas;
reg bankmachine6_cmd_payload_ras;
reg bankmachine6_cmd_payload_we;
reg bankmachine6_cmd_payload_is_cmd;
reg bankmachine6_cmd_payload_is_read;
reg bankmachine6_cmd_payload_is_write;
reg bankmachine6_auto_precharge;
wire bankmachine6_cmd_buffer_lookahead_sink_valid;
wire bankmachine6_cmd_buffer_lookahead_sink_ready;
reg bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine6_cmd_buffer_lookahead_source_valid;
wire bankmachine6_cmd_buffer_lookahead_source_ready;
wire bankmachine6_cmd_buffer_lookahead_source_first;
wire bankmachine6_cmd_buffer_lookahead_source_last;
wire bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine6_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [25:0] bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [25:0] bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine6_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine6_cmd_buffer_sink_valid;
wire bankmachine6_cmd_buffer_sink_ready;
wire bankmachine6_cmd_buffer_sink_first;
wire bankmachine6_cmd_buffer_sink_last;
wire bankmachine6_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine6_cmd_buffer_sink_payload_addr;
reg bankmachine6_cmd_buffer_source_valid = 1'd0;
wire bankmachine6_cmd_buffer_source_ready;
reg bankmachine6_cmd_buffer_source_first = 1'd0;
reg bankmachine6_cmd_buffer_source_last = 1'd0;
reg bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine6_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine6_row = 17'd0;
reg bankmachine6_row_opened = 1'd0;
wire bankmachine6_row_hit;
reg bankmachine6_row_open;
reg bankmachine6_row_close;
reg bankmachine6_row_col_n_addr_sel;
wire bankmachine6_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine6_twtpcon_ready = 1'd0;
reg [4:0] bankmachine6_twtpcon_count = 5'd0;
wire bankmachine6_trccon_valid;
(* no_retiming = "true" *) reg bankmachine6_trccon_ready = 1'd0;
reg [4:0] bankmachine6_trccon_count = 5'd0;
wire bankmachine6_trascon_valid;
(* no_retiming = "true" *) reg bankmachine6_trascon_ready = 1'd0;
reg [3:0] bankmachine6_trascon_count = 4'd0;
wire bankmachine7_req_valid;
wire bankmachine7_req_ready;
wire bankmachine7_req_we;
wire [22:0] bankmachine7_req_addr;
wire bankmachine7_req_lock;
reg bankmachine7_req_wdata_ready;
reg bankmachine7_req_rdata_valid;
wire bankmachine7_refresh_req;
reg bankmachine7_refresh_gnt;
reg bankmachine7_cmd_valid;
reg bankmachine7_cmd_ready;
reg [16:0] bankmachine7_cmd_payload_a;
wire [2:0] bankmachine7_cmd_payload_ba;
reg bankmachine7_cmd_payload_cas;
reg bankmachine7_cmd_payload_ras;
reg bankmachine7_cmd_payload_we;
reg bankmachine7_cmd_payload_is_cmd;
reg bankmachine7_cmd_payload_is_read;
reg bankmachine7_cmd_payload_is_write;
reg bankmachine7_auto_precharge;
wire bankmachine7_cmd_buffer_lookahead_sink_valid;
wire bankmachine7_cmd_buffer_lookahead_sink_ready;
reg bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [22:0] bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
wire bankmachine7_cmd_buffer_lookahead_source_valid;
wire bankmachine7_cmd_buffer_lookahead_source_ready;
wire bankmachine7_cmd_buffer_lookahead_source_first;
wire bankmachine7_cmd_buffer_lookahead_source_last;
wire bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [22:0] bankmachine7_cmd_buffer_lookahead_source_payload_addr;
wire bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [25:0] bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [25:0] bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] bankmachine7_cmd_buffer_lookahead_wrport_adr;
wire [25:0] bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [25:0] bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [25:0] bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [22:0] bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr;
wire bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [22:0] bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
wire bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire bankmachine7_cmd_buffer_sink_valid;
wire bankmachine7_cmd_buffer_sink_ready;
wire bankmachine7_cmd_buffer_sink_first;
wire bankmachine7_cmd_buffer_sink_last;
wire bankmachine7_cmd_buffer_sink_payload_we;
wire [22:0] bankmachine7_cmd_buffer_sink_payload_addr;
reg bankmachine7_cmd_buffer_source_valid = 1'd0;
wire bankmachine7_cmd_buffer_source_ready;
reg bankmachine7_cmd_buffer_source_first = 1'd0;
reg bankmachine7_cmd_buffer_source_last = 1'd0;
reg bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [22:0] bankmachine7_cmd_buffer_source_payload_addr = 23'd0;
reg [16:0] bankmachine7_row = 17'd0;
reg bankmachine7_row_opened = 1'd0;
wire bankmachine7_row_hit;
reg bankmachine7_row_open;
reg bankmachine7_row_close;
reg bankmachine7_row_col_n_addr_sel;
wire bankmachine7_twtpcon_valid;
(* no_retiming = "true" *) reg bankmachine7_twtpcon_ready = 1'd0;
reg [4:0] bankmachine7_twtpcon_count = 5'd0;
wire bankmachine7_trccon_valid;
(* no_retiming = "true" *) reg bankmachine7_trccon_ready = 1'd0;
reg [4:0] bankmachine7_trccon_count = 5'd0;
wire bankmachine7_trascon_valid;
(* no_retiming = "true" *) reg bankmachine7_trascon_ready = 1'd0;
reg [3:0] bankmachine7_trascon_count = 4'd0;
wire ras_allowed;
wire cas_allowed;
wire [2:0] rdcmdphase;
wire [2:0] wrcmdphase;
reg choose_cmd_want_reads = 1'd0;
reg choose_cmd_want_writes = 1'd0;
reg choose_cmd_want_cmds = 1'd0;
reg choose_cmd_want_activates;
wire choose_cmd_cmd_valid;
reg choose_cmd_cmd_ready;
wire [16:0] choose_cmd_cmd_payload_a;
wire [2:0] choose_cmd_cmd_payload_ba;
reg choose_cmd_cmd_payload_cas;
reg choose_cmd_cmd_payload_ras;
reg choose_cmd_cmd_payload_we;
wire choose_cmd_cmd_payload_is_cmd;
wire choose_cmd_cmd_payload_is_read;
wire choose_cmd_cmd_payload_is_write;
reg [7:0] choose_cmd_valids;
wire [7:0] choose_cmd_request;
reg [2:0] choose_cmd_grant = 3'd0;
wire choose_cmd_ce;
reg choose_req_want_reads;
reg choose_req_want_writes;
reg choose_req_want_cmds = 1'd0;
reg choose_req_want_activates = 1'd0;
wire choose_req_cmd_valid;
reg choose_req_cmd_ready;
wire [16:0] choose_req_cmd_payload_a;
wire [2:0] choose_req_cmd_payload_ba;
reg choose_req_cmd_payload_cas;
reg choose_req_cmd_payload_ras;
reg choose_req_cmd_payload_we;
wire choose_req_cmd_payload_is_cmd;
wire choose_req_cmd_payload_is_read;
wire choose_req_cmd_payload_is_write;
reg [7:0] choose_req_valids;
wire [7:0] choose_req_request;
reg [2:0] choose_req_grant = 3'd0;
wire choose_req_ce;
reg [16:0] nop_a = 17'd0;
reg [2:0] nop_ba = 3'd0;
reg [1:0] steerer_sel0;
reg [1:0] steerer_sel1;
reg [1:0] steerer_sel2;
reg [1:0] steerer_sel3;
reg [1:0] steerer_sel4;
reg [1:0] steerer_sel5;
reg [1:0] steerer_sel6;
reg [1:0] steerer_sel7;
reg steerer0 = 1'd1;
reg steerer1 = 1'd1;
reg steerer2 = 1'd1;
reg steerer3 = 1'd1;
reg steerer4 = 1'd1;
reg steerer5 = 1'd1;
reg steerer6 = 1'd1;
reg steerer7 = 1'd1;
reg steerer8 = 1'd1;
reg steerer9 = 1'd1;
reg steerer10 = 1'd1;
reg steerer11 = 1'd1;
reg steerer12 = 1'd1;
reg steerer13 = 1'd1;
reg steerer14 = 1'd1;
reg steerer15 = 1'd1;
wire trrdcon_valid;
(* no_retiming = "true" *) reg trrdcon_ready = 1'd0;
reg [1:0] trrdcon_count = 2'd0;
wire tfawcon_valid;
(* no_retiming = "true" *) reg tfawcon_ready = 1'd1;
wire [3:0] tfawcon_count;
reg [11:0] tfawcon_window = 12'd0;
wire tccdcon_valid;
(* no_retiming = "true" *) reg tccdcon_ready = 1'd0;
reg [2:0] tccdcon_count = 3'd0;
wire twtrcon_valid;
(* no_retiming = "true" *) reg twtrcon_ready = 1'd0;
reg [3:0] twtrcon_count = 4'd0;
wire read_available;
wire write_available;
reg en0;
wire max_time0;
reg [4:0] time0 = 5'd0;
reg en1;
wire max_time1;
reg [3:0] time1 = 4'd0;
wire go_to_refresh;
reg litedramnativeport0_cmd_valid = 1'd0;
wire litedramnativeport0_cmd_ready;
reg litedramnativeport0_cmd_payload_we = 1'd0;
reg [25:0] litedramnativeport0_cmd_payload_addr = 26'd0;
wire litedramnativeport0_wdata_ready;
reg [255:0] litedramnativeport0_wdata_payload_data = 256'd0;
reg [31:0] litedramnativeport0_wdata_payload_we = 32'd0;
wire litedramnativeport0_rdata_valid;
wire [255:0] litedramnativeport0_rdata_payload_data;
reg litedramnativeport1_cmd_valid = 1'd0;
wire litedramnativeport1_cmd_ready;
reg litedramnativeport1_cmd_payload_we = 1'd0;
reg [25:0] litedramnativeport1_cmd_payload_addr = 26'd0;
wire litedramnativeport1_wdata_ready;
reg [255:0] litedramnativeport1_wdata_payload_data = 256'd0;
reg [31:0] litedramnativeport1_wdata_payload_we = 32'd0;
wire litedramnativeport1_rdata_valid;
wire [255:0] litedramnativeport1_rdata_payload_data;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state;
reg [3:0] bankmachine0_state = 4'd0;
reg [3:0] bankmachine0_next_state;
reg [3:0] bankmachine1_state = 4'd0;
reg [3:0] bankmachine1_next_state;
reg [3:0] bankmachine2_state = 4'd0;
reg [3:0] bankmachine2_next_state;
reg [3:0] bankmachine3_state = 4'd0;
reg [3:0] bankmachine3_next_state;
reg [3:0] bankmachine4_state = 4'd0;
reg [3:0] bankmachine4_next_state;
reg [3:0] bankmachine5_state = 4'd0;
reg [3:0] bankmachine5_next_state;
reg [3:0] bankmachine6_state = 4'd0;
reg [3:0] bankmachine6_next_state;
reg [3:0] bankmachine7_state = 4'd0;
reg [3:0] bankmachine7_next_state;
reg [3:0] multiplexer_state = 4'd0;
reg [3:0] multiplexer_next_state;
wire [1:0] roundrobin0_request;
reg roundrobin0_grant = 1'd0;
wire roundrobin0_ce;
wire [1:0] roundrobin1_request;
reg roundrobin1_grant = 1'd0;
wire roundrobin1_ce;
wire [1:0] roundrobin2_request;
reg roundrobin2_grant = 1'd0;
wire roundrobin2_ce;
wire [1:0] roundrobin3_request;
reg roundrobin3_grant = 1'd0;
wire roundrobin3_ce;
wire [1:0] roundrobin4_request;
reg roundrobin4_grant = 1'd0;
wire roundrobin4_ce;
wire [1:0] roundrobin5_request;
reg roundrobin5_grant = 1'd0;
wire roundrobin5_ce;
wire [1:0] roundrobin6_request;
reg roundrobin6_grant = 1'd0;
wire roundrobin6_ce;
wire [1:0] roundrobin7_request;
reg roundrobin7_grant = 1'd0;
wire roundrobin7_ce;
reg locked0 = 1'd0;
reg locked1 = 1'd0;
reg locked2 = 1'd0;
reg locked3 = 1'd0;
reg locked4 = 1'd0;
reg locked5 = 1'd0;
reg locked6 = 1'd0;
reg locked7 = 1'd0;
reg locked8 = 1'd0;
reg locked9 = 1'd0;
reg locked10 = 1'd0;
reg locked11 = 1'd0;
reg locked12 = 1'd0;
reg locked13 = 1'd0;
reg locked14 = 1'd0;
reg locked15 = 1'd0;
reg new_master_wdata_ready0 = 1'd0;
reg new_master_wdata_ready1 = 1'd0;
reg new_master_wdata_ready2 = 1'd0;
reg new_master_wdata_ready3 = 1'd0;
reg new_master_wdata_ready4 = 1'd0;
reg new_master_wdata_ready5 = 1'd0;
reg new_master_wdata_ready6 = 1'd0;
reg new_master_wdata_ready7 = 1'd0;
reg new_master_rdata_valid0 = 1'd0;
reg new_master_rdata_valid1 = 1'd0;
reg new_master_rdata_valid2 = 1'd0;
reg new_master_rdata_valid3 = 1'd0;
reg new_master_rdata_valid4 = 1'd0;
reg new_master_rdata_valid5 = 1'd0;
reg new_master_rdata_valid6 = 1'd0;
reg new_master_rdata_valid7 = 1'd0;
reg new_master_rdata_valid8 = 1'd0;
reg new_master_rdata_valid9 = 1'd0;
reg new_master_rdata_valid10 = 1'd0;
reg new_master_rdata_valid11 = 1'd0;
reg new_master_rdata_valid12 = 1'd0;
reg new_master_rdata_valid13 = 1'd0;
reg new_master_rdata_valid14 = 1'd0;
reg new_master_rdata_valid15 = 1'd0;
reg new_master_rdata_valid16 = 1'd0;
reg new_master_rdata_valid17 = 1'd0;
reg new_master_rdata_valid18 = 1'd0;
reg new_master_rdata_valid19 = 1'd0;
reg new_master_rdata_valid20 = 1'd0;
reg new_master_rdata_valid21 = 1'd0;
reg new_master_rdata_valid22 = 1'd0;
reg new_master_rdata_valid23 = 1'd0;
reg rhs_array_muxed0;
reg [16:0] rhs_array_muxed1;
reg [2:0] rhs_array_muxed2;
reg rhs_array_muxed3;
reg rhs_array_muxed4;
reg rhs_array_muxed5;
reg t_array_muxed0;
reg t_array_muxed1;
reg t_array_muxed2;
reg rhs_array_muxed6;
reg [16:0] rhs_array_muxed7;
reg [2:0] rhs_array_muxed8;
reg rhs_array_muxed9;
reg rhs_array_muxed10;
reg rhs_array_muxed11;
reg t_array_muxed3;
reg t_array_muxed4;
reg t_array_muxed5;
reg [22:0] rhs_array_muxed12;
reg rhs_array_muxed13;
reg rhs_array_muxed14;
reg [22:0] rhs_array_muxed15;
reg rhs_array_muxed16;
reg rhs_array_muxed17;
reg [22:0] rhs_array_muxed18;
reg rhs_array_muxed19;
reg rhs_array_muxed20;
reg [22:0] rhs_array_muxed21;
reg rhs_array_muxed22;
reg rhs_array_muxed23;
reg [22:0] rhs_array_muxed24;
reg rhs_array_muxed25;
reg rhs_array_muxed26;
reg [22:0] rhs_array_muxed27;
reg rhs_array_muxed28;
reg rhs_array_muxed29;
reg [22:0] rhs_array_muxed30;
reg rhs_array_muxed31;
reg rhs_array_muxed32;
reg [22:0] rhs_array_muxed33;
reg rhs_array_muxed34;
reg rhs_array_muxed35;
reg [2:0] array_muxed0;
reg [16:0] array_muxed1;
reg array_muxed2;
reg array_muxed3;
reg array_muxed4;
reg array_muxed5;
reg array_muxed6;
reg [2:0] array_muxed7;
reg [16:0] array_muxed8;
reg array_muxed9;
reg array_muxed10;
reg array_muxed11;
reg array_muxed12;
reg array_muxed13;
reg [2:0] array_muxed14;
reg [16:0] array_muxed15;
reg array_muxed16;
reg array_muxed17;
reg array_muxed18;
reg array_muxed19;
reg array_muxed20;
reg [2:0] array_muxed21;
reg [16:0] array_muxed22;
reg array_muxed23;
reg array_muxed24;
reg array_muxed25;
reg array_muxed26;
reg array_muxed27;
reg [2:0] array_muxed28;
reg [16:0] array_muxed29;
reg array_muxed30;
reg array_muxed31;
reg array_muxed32;
reg array_muxed33;
reg array_muxed34;
reg [2:0] array_muxed35;
reg [16:0] array_muxed36;
reg array_muxed37;
reg array_muxed38;
reg array_muxed39;
reg array_muxed40;
reg array_muxed41;
reg [2:0] array_muxed42;
reg [16:0] array_muxed43;
reg array_muxed44;
reg array_muxed45;
reg array_muxed46;
reg array_muxed47;
reg array_muxed48;
reg [2:0] array_muxed49;
reg [16:0] array_muxed50;
reg array_muxed51;
reg array_muxed52;
reg array_muxed53;
reg array_muxed54;
reg array_muxed55;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign bankmachine0_req_valid = interface_bank0_valid;
assign interface_bank0_ready = bankmachine0_req_ready;
assign bankmachine0_req_we = interface_bank0_we;
assign bankmachine0_req_addr = interface_bank0_addr;
assign interface_bank0_lock = bankmachine0_req_lock;
assign interface_bank0_wdata_ready = bankmachine0_req_wdata_ready;
assign interface_bank0_rdata_valid = bankmachine0_req_rdata_valid;
assign bankmachine1_req_valid = interface_bank1_valid;
assign interface_bank1_ready = bankmachine1_req_ready;
assign bankmachine1_req_we = interface_bank1_we;
assign bankmachine1_req_addr = interface_bank1_addr;
assign interface_bank1_lock = bankmachine1_req_lock;
assign interface_bank1_wdata_ready = bankmachine1_req_wdata_ready;
assign interface_bank1_rdata_valid = bankmachine1_req_rdata_valid;
assign bankmachine2_req_valid = interface_bank2_valid;
assign interface_bank2_ready = bankmachine2_req_ready;
assign bankmachine2_req_we = interface_bank2_we;
assign bankmachine2_req_addr = interface_bank2_addr;
assign interface_bank2_lock = bankmachine2_req_lock;
assign interface_bank2_wdata_ready = bankmachine2_req_wdata_ready;
assign interface_bank2_rdata_valid = bankmachine2_req_rdata_valid;
assign bankmachine3_req_valid = interface_bank3_valid;
assign interface_bank3_ready = bankmachine3_req_ready;
assign bankmachine3_req_we = interface_bank3_we;
assign bankmachine3_req_addr = interface_bank3_addr;
assign interface_bank3_lock = bankmachine3_req_lock;
assign interface_bank3_wdata_ready = bankmachine3_req_wdata_ready;
assign interface_bank3_rdata_valid = bankmachine3_req_rdata_valid;
assign bankmachine4_req_valid = interface_bank4_valid;
assign interface_bank4_ready = bankmachine4_req_ready;
assign bankmachine4_req_we = interface_bank4_we;
assign bankmachine4_req_addr = interface_bank4_addr;
assign interface_bank4_lock = bankmachine4_req_lock;
assign interface_bank4_wdata_ready = bankmachine4_req_wdata_ready;
assign interface_bank4_rdata_valid = bankmachine4_req_rdata_valid;
assign bankmachine5_req_valid = interface_bank5_valid;
assign interface_bank5_ready = bankmachine5_req_ready;
assign bankmachine5_req_we = interface_bank5_we;
assign bankmachine5_req_addr = interface_bank5_addr;
assign interface_bank5_lock = bankmachine5_req_lock;
assign interface_bank5_wdata_ready = bankmachine5_req_wdata_ready;
assign interface_bank5_rdata_valid = bankmachine5_req_rdata_valid;
assign bankmachine6_req_valid = interface_bank6_valid;
assign interface_bank6_ready = bankmachine6_req_ready;
assign bankmachine6_req_we = interface_bank6_we;
assign bankmachine6_req_addr = interface_bank6_addr;
assign interface_bank6_lock = bankmachine6_req_lock;
assign interface_bank6_wdata_ready = bankmachine6_req_wdata_ready;
assign interface_bank6_rdata_valid = bankmachine6_req_rdata_valid;
assign bankmachine7_req_valid = interface_bank7_valid;
assign interface_bank7_ready = bankmachine7_req_ready;
assign bankmachine7_req_we = interface_bank7_we;
assign bankmachine7_req_addr = interface_bank7_addr;
assign interface_bank7_lock = bankmachine7_req_lock;
assign interface_bank7_wdata_ready = bankmachine7_req_wdata_ready;
assign interface_bank7_rdata_valid = bankmachine7_req_rdata_valid;
assign timer_wait = (~timer_done0);
assign postponer_req_i = timer_done0;
assign wants_refresh = postponer_req_o;
assign timer_done1 = (timer_count1 == 1'd0);
assign timer_done0 = timer_done1;
assign timer_count0 = timer_count1;
assign sequencer_start1 = (sequencer_start0 | (sequencer_count != 1'd0));
assign sequencer_done0 = (sequencer_done1 & (sequencer_count == 1'd0));

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	cmd_valid <= 1'd0;
	cmd_last <= 1'd0;
	sequencer_start0 <= 1'd0;
	refresher_next_state <= 2'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			cmd_valid <= 1'd1;
			if (cmd_ready) begin
				sequencer_start0 <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			cmd_valid <= 1'd1;
			if (sequencer_done0) begin
				cmd_valid <= 1'd0;
				cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end
		end
		default: begin
			if (1'd1) begin
				if (wants_refresh) begin
					refresher_next_state <= 1'd1;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign bankmachine0_cmd_buffer_lookahead_sink_valid = bankmachine0_req_valid;
assign bankmachine0_req_ready = bankmachine0_cmd_buffer_lookahead_sink_ready;
assign bankmachine0_cmd_buffer_lookahead_sink_payload_we = bankmachine0_req_we;
assign bankmachine0_cmd_buffer_lookahead_sink_payload_addr = bankmachine0_req_addr;
assign bankmachine0_cmd_buffer_sink_valid = bankmachine0_cmd_buffer_lookahead_source_valid;
assign bankmachine0_cmd_buffer_lookahead_source_ready = bankmachine0_cmd_buffer_sink_ready;
assign bankmachine0_cmd_buffer_sink_first = bankmachine0_cmd_buffer_lookahead_source_first;
assign bankmachine0_cmd_buffer_sink_last = bankmachine0_cmd_buffer_lookahead_source_last;
assign bankmachine0_cmd_buffer_sink_payload_we = bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign bankmachine0_cmd_buffer_sink_payload_addr = bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine0_cmd_buffer_source_ready = (bankmachine0_req_wdata_ready | bankmachine0_req_rdata_valid);
assign bankmachine0_req_lock = (bankmachine0_cmd_buffer_lookahead_source_valid | bankmachine0_cmd_buffer_source_valid);
assign bankmachine0_row_hit = (bankmachine0_row == bankmachine0_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine0_cmd_payload_ba = 1'd0;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	bankmachine0_cmd_payload_a <= 17'd0;
	if (bankmachine0_row_col_n_addr_sel) begin
		bankmachine0_cmd_payload_a <= bankmachine0_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine0_cmd_payload_a <= ((bankmachine0_auto_precharge <<< 4'd10) | {bankmachine0_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign bankmachine0_twtpcon_valid = ((bankmachine0_cmd_valid & bankmachine0_cmd_ready) & bankmachine0_cmd_payload_is_write);
assign bankmachine0_trccon_valid = ((bankmachine0_cmd_valid & bankmachine0_cmd_ready) & bankmachine0_row_open);
assign bankmachine0_trascon_valid = ((bankmachine0_cmd_valid & bankmachine0_cmd_ready) & bankmachine0_row_open);

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	bankmachine0_auto_precharge <= 1'd0;
	if ((bankmachine0_cmd_buffer_lookahead_source_valid & bankmachine0_cmd_buffer_source_valid)) begin
		if ((bankmachine0_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine0_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine0_auto_precharge <= (bankmachine0_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {bankmachine0_cmd_buffer_lookahead_fifo_in_last, bankmachine0_cmd_buffer_lookahead_fifo_in_first, bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine0_cmd_buffer_lookahead_fifo_out_last, bankmachine0_cmd_buffer_lookahead_fifo_out_first, bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign bankmachine0_cmd_buffer_lookahead_sink_ready = bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign bankmachine0_cmd_buffer_lookahead_syncfifo0_we = bankmachine0_cmd_buffer_lookahead_sink_valid;
assign bankmachine0_cmd_buffer_lookahead_fifo_in_first = bankmachine0_cmd_buffer_lookahead_sink_first;
assign bankmachine0_cmd_buffer_lookahead_fifo_in_last = bankmachine0_cmd_buffer_lookahead_sink_last;
assign bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine0_cmd_buffer_lookahead_source_valid = bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign bankmachine0_cmd_buffer_lookahead_source_first = bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine0_cmd_buffer_lookahead_source_last = bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine0_cmd_buffer_lookahead_source_payload_we = bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine0_cmd_buffer_lookahead_source_payload_addr = bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine0_cmd_buffer_lookahead_syncfifo0_re = bankmachine0_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine0_cmd_buffer_lookahead_replace) begin
		bankmachine0_cmd_buffer_lookahead_wrport_adr <= (bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine0_cmd_buffer_lookahead_wrport_adr <= bankmachine0_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign bankmachine0_cmd_buffer_lookahead_wrport_dat_w = bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign bankmachine0_cmd_buffer_lookahead_wrport_we = (bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | bankmachine0_cmd_buffer_lookahead_replace));
assign bankmachine0_cmd_buffer_lookahead_do_read = (bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign bankmachine0_cmd_buffer_lookahead_rdport_adr = bankmachine0_cmd_buffer_lookahead_consume;
assign bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine0_cmd_buffer_sink_ready = ((~bankmachine0_cmd_buffer_source_valid) | bankmachine0_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	bankmachine0_req_wdata_ready <= 1'd0;
	bankmachine0_req_rdata_valid <= 1'd0;
	bankmachine0_refresh_gnt <= 1'd0;
	bankmachine0_cmd_valid <= 1'd0;
	bankmachine0_cmd_payload_cas <= 1'd0;
	bankmachine0_cmd_payload_ras <= 1'd0;
	bankmachine0_cmd_payload_we <= 1'd0;
	bankmachine0_cmd_payload_is_cmd <= 1'd0;
	bankmachine0_cmd_payload_is_read <= 1'd0;
	bankmachine0_cmd_payload_is_write <= 1'd0;
	bankmachine0_row_open <= 1'd0;
	bankmachine0_row_close <= 1'd0;
	bankmachine0_row_col_n_addr_sel <= 1'd0;
	bankmachine0_next_state <= 4'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if ((bankmachine0_twtpcon_ready & bankmachine0_trascon_ready)) begin
				bankmachine0_cmd_valid <= 1'd1;
				if (bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd5;
				end
				bankmachine0_cmd_payload_ras <= 1'd1;
				bankmachine0_cmd_payload_we <= 1'd1;
				bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine0_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine0_twtpcon_ready & bankmachine0_trascon_ready)) begin
				bankmachine0_next_state <= 3'd5;
			end
			bankmachine0_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine0_trccon_ready) begin
				bankmachine0_row_col_n_addr_sel <= 1'd1;
				bankmachine0_row_open <= 1'd1;
				bankmachine0_cmd_valid <= 1'd1;
				bankmachine0_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 4'd11;
				end
				bankmachine0_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine0_twtpcon_ready) begin
				bankmachine0_refresh_gnt <= 1'd1;
			end
			bankmachine0_row_close <= 1'd1;
			bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine0_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine0_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine0_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine0_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine0_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine0_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine0_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine0_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine0_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine0_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 3'd4;
			end else begin
				if (bankmachine0_cmd_buffer_source_valid) begin
					if (bankmachine0_row_opened) begin
						if (bankmachine0_row_hit) begin
							bankmachine0_cmd_valid <= 1'd1;
							if (bankmachine0_cmd_buffer_source_payload_we) begin
								bankmachine0_req_wdata_ready <= bankmachine0_cmd_ready;
								bankmachine0_cmd_payload_is_write <= 1'd1;
								bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine0_req_rdata_valid <= bankmachine0_cmd_ready;
								bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							bankmachine0_cmd_payload_cas <= 1'd1;
							if ((bankmachine0_cmd_ready & bankmachine0_auto_precharge)) begin
								bankmachine0_next_state <= 2'd2;
							end
						end else begin
							bankmachine0_next_state <= 1'd1;
						end
					end else begin
						bankmachine0_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign bankmachine1_cmd_buffer_lookahead_sink_valid = bankmachine1_req_valid;
assign bankmachine1_req_ready = bankmachine1_cmd_buffer_lookahead_sink_ready;
assign bankmachine1_cmd_buffer_lookahead_sink_payload_we = bankmachine1_req_we;
assign bankmachine1_cmd_buffer_lookahead_sink_payload_addr = bankmachine1_req_addr;
assign bankmachine1_cmd_buffer_sink_valid = bankmachine1_cmd_buffer_lookahead_source_valid;
assign bankmachine1_cmd_buffer_lookahead_source_ready = bankmachine1_cmd_buffer_sink_ready;
assign bankmachine1_cmd_buffer_sink_first = bankmachine1_cmd_buffer_lookahead_source_first;
assign bankmachine1_cmd_buffer_sink_last = bankmachine1_cmd_buffer_lookahead_source_last;
assign bankmachine1_cmd_buffer_sink_payload_we = bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign bankmachine1_cmd_buffer_sink_payload_addr = bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine1_cmd_buffer_source_ready = (bankmachine1_req_wdata_ready | bankmachine1_req_rdata_valid);
assign bankmachine1_req_lock = (bankmachine1_cmd_buffer_lookahead_source_valid | bankmachine1_cmd_buffer_source_valid);
assign bankmachine1_row_hit = (bankmachine1_row == bankmachine1_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine1_cmd_payload_ba = 1'd1;

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	bankmachine1_cmd_payload_a <= 17'd0;
	if (bankmachine1_row_col_n_addr_sel) begin
		bankmachine1_cmd_payload_a <= bankmachine1_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine1_cmd_payload_a <= ((bankmachine1_auto_precharge <<< 4'd10) | {bankmachine1_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign bankmachine1_twtpcon_valid = ((bankmachine1_cmd_valid & bankmachine1_cmd_ready) & bankmachine1_cmd_payload_is_write);
assign bankmachine1_trccon_valid = ((bankmachine1_cmd_valid & bankmachine1_cmd_ready) & bankmachine1_row_open);
assign bankmachine1_trascon_valid = ((bankmachine1_cmd_valid & bankmachine1_cmd_ready) & bankmachine1_row_open);

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	bankmachine1_auto_precharge <= 1'd0;
	if ((bankmachine1_cmd_buffer_lookahead_source_valid & bankmachine1_cmd_buffer_source_valid)) begin
		if ((bankmachine1_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine1_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine1_auto_precharge <= (bankmachine1_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {bankmachine1_cmd_buffer_lookahead_fifo_in_last, bankmachine1_cmd_buffer_lookahead_fifo_in_first, bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine1_cmd_buffer_lookahead_fifo_out_last, bankmachine1_cmd_buffer_lookahead_fifo_out_first, bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign bankmachine1_cmd_buffer_lookahead_sink_ready = bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign bankmachine1_cmd_buffer_lookahead_syncfifo1_we = bankmachine1_cmd_buffer_lookahead_sink_valid;
assign bankmachine1_cmd_buffer_lookahead_fifo_in_first = bankmachine1_cmd_buffer_lookahead_sink_first;
assign bankmachine1_cmd_buffer_lookahead_fifo_in_last = bankmachine1_cmd_buffer_lookahead_sink_last;
assign bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine1_cmd_buffer_lookahead_source_valid = bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign bankmachine1_cmd_buffer_lookahead_source_first = bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine1_cmd_buffer_lookahead_source_last = bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine1_cmd_buffer_lookahead_source_payload_we = bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine1_cmd_buffer_lookahead_source_payload_addr = bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine1_cmd_buffer_lookahead_syncfifo1_re = bankmachine1_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine1_cmd_buffer_lookahead_replace) begin
		bankmachine1_cmd_buffer_lookahead_wrport_adr <= (bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine1_cmd_buffer_lookahead_wrport_adr <= bankmachine1_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign bankmachine1_cmd_buffer_lookahead_wrport_dat_w = bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign bankmachine1_cmd_buffer_lookahead_wrport_we = (bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | bankmachine1_cmd_buffer_lookahead_replace));
assign bankmachine1_cmd_buffer_lookahead_do_read = (bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign bankmachine1_cmd_buffer_lookahead_rdport_adr = bankmachine1_cmd_buffer_lookahead_consume;
assign bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine1_cmd_buffer_sink_ready = ((~bankmachine1_cmd_buffer_source_valid) | bankmachine1_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	bankmachine1_req_wdata_ready <= 1'd0;
	bankmachine1_req_rdata_valid <= 1'd0;
	bankmachine1_refresh_gnt <= 1'd0;
	bankmachine1_cmd_valid <= 1'd0;
	bankmachine1_cmd_payload_cas <= 1'd0;
	bankmachine1_cmd_payload_ras <= 1'd0;
	bankmachine1_cmd_payload_we <= 1'd0;
	bankmachine1_cmd_payload_is_cmd <= 1'd0;
	bankmachine1_cmd_payload_is_read <= 1'd0;
	bankmachine1_cmd_payload_is_write <= 1'd0;
	bankmachine1_row_open <= 1'd0;
	bankmachine1_row_close <= 1'd0;
	bankmachine1_row_col_n_addr_sel <= 1'd0;
	bankmachine1_next_state <= 4'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if ((bankmachine1_twtpcon_ready & bankmachine1_trascon_ready)) begin
				bankmachine1_cmd_valid <= 1'd1;
				if (bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd5;
				end
				bankmachine1_cmd_payload_ras <= 1'd1;
				bankmachine1_cmd_payload_we <= 1'd1;
				bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine1_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine1_twtpcon_ready & bankmachine1_trascon_ready)) begin
				bankmachine1_next_state <= 3'd5;
			end
			bankmachine1_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine1_trccon_ready) begin
				bankmachine1_row_col_n_addr_sel <= 1'd1;
				bankmachine1_row_open <= 1'd1;
				bankmachine1_cmd_valid <= 1'd1;
				bankmachine1_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 4'd11;
				end
				bankmachine1_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine1_twtpcon_ready) begin
				bankmachine1_refresh_gnt <= 1'd1;
			end
			bankmachine1_row_close <= 1'd1;
			bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine1_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine1_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine1_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine1_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine1_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine1_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine1_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine1_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine1_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine1_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 3'd4;
			end else begin
				if (bankmachine1_cmd_buffer_source_valid) begin
					if (bankmachine1_row_opened) begin
						if (bankmachine1_row_hit) begin
							bankmachine1_cmd_valid <= 1'd1;
							if (bankmachine1_cmd_buffer_source_payload_we) begin
								bankmachine1_req_wdata_ready <= bankmachine1_cmd_ready;
								bankmachine1_cmd_payload_is_write <= 1'd1;
								bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine1_req_rdata_valid <= bankmachine1_cmd_ready;
								bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							bankmachine1_cmd_payload_cas <= 1'd1;
							if ((bankmachine1_cmd_ready & bankmachine1_auto_precharge)) begin
								bankmachine1_next_state <= 2'd2;
							end
						end else begin
							bankmachine1_next_state <= 1'd1;
						end
					end else begin
						bankmachine1_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign bankmachine2_cmd_buffer_lookahead_sink_valid = bankmachine2_req_valid;
assign bankmachine2_req_ready = bankmachine2_cmd_buffer_lookahead_sink_ready;
assign bankmachine2_cmd_buffer_lookahead_sink_payload_we = bankmachine2_req_we;
assign bankmachine2_cmd_buffer_lookahead_sink_payload_addr = bankmachine2_req_addr;
assign bankmachine2_cmd_buffer_sink_valid = bankmachine2_cmd_buffer_lookahead_source_valid;
assign bankmachine2_cmd_buffer_lookahead_source_ready = bankmachine2_cmd_buffer_sink_ready;
assign bankmachine2_cmd_buffer_sink_first = bankmachine2_cmd_buffer_lookahead_source_first;
assign bankmachine2_cmd_buffer_sink_last = bankmachine2_cmd_buffer_lookahead_source_last;
assign bankmachine2_cmd_buffer_sink_payload_we = bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign bankmachine2_cmd_buffer_sink_payload_addr = bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine2_cmd_buffer_source_ready = (bankmachine2_req_wdata_ready | bankmachine2_req_rdata_valid);
assign bankmachine2_req_lock = (bankmachine2_cmd_buffer_lookahead_source_valid | bankmachine2_cmd_buffer_source_valid);
assign bankmachine2_row_hit = (bankmachine2_row == bankmachine2_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine2_cmd_payload_ba = 2'd2;

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	bankmachine2_cmd_payload_a <= 17'd0;
	if (bankmachine2_row_col_n_addr_sel) begin
		bankmachine2_cmd_payload_a <= bankmachine2_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine2_cmd_payload_a <= ((bankmachine2_auto_precharge <<< 4'd10) | {bankmachine2_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign bankmachine2_twtpcon_valid = ((bankmachine2_cmd_valid & bankmachine2_cmd_ready) & bankmachine2_cmd_payload_is_write);
assign bankmachine2_trccon_valid = ((bankmachine2_cmd_valid & bankmachine2_cmd_ready) & bankmachine2_row_open);
assign bankmachine2_trascon_valid = ((bankmachine2_cmd_valid & bankmachine2_cmd_ready) & bankmachine2_row_open);

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	bankmachine2_auto_precharge <= 1'd0;
	if ((bankmachine2_cmd_buffer_lookahead_source_valid & bankmachine2_cmd_buffer_source_valid)) begin
		if ((bankmachine2_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine2_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine2_auto_precharge <= (bankmachine2_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {bankmachine2_cmd_buffer_lookahead_fifo_in_last, bankmachine2_cmd_buffer_lookahead_fifo_in_first, bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine2_cmd_buffer_lookahead_fifo_out_last, bankmachine2_cmd_buffer_lookahead_fifo_out_first, bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign bankmachine2_cmd_buffer_lookahead_sink_ready = bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign bankmachine2_cmd_buffer_lookahead_syncfifo2_we = bankmachine2_cmd_buffer_lookahead_sink_valid;
assign bankmachine2_cmd_buffer_lookahead_fifo_in_first = bankmachine2_cmd_buffer_lookahead_sink_first;
assign bankmachine2_cmd_buffer_lookahead_fifo_in_last = bankmachine2_cmd_buffer_lookahead_sink_last;
assign bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine2_cmd_buffer_lookahead_source_valid = bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign bankmachine2_cmd_buffer_lookahead_source_first = bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine2_cmd_buffer_lookahead_source_last = bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine2_cmd_buffer_lookahead_source_payload_we = bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine2_cmd_buffer_lookahead_source_payload_addr = bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine2_cmd_buffer_lookahead_syncfifo2_re = bankmachine2_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine2_cmd_buffer_lookahead_replace) begin
		bankmachine2_cmd_buffer_lookahead_wrport_adr <= (bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine2_cmd_buffer_lookahead_wrport_adr <= bankmachine2_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign bankmachine2_cmd_buffer_lookahead_wrport_dat_w = bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign bankmachine2_cmd_buffer_lookahead_wrport_we = (bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | bankmachine2_cmd_buffer_lookahead_replace));
assign bankmachine2_cmd_buffer_lookahead_do_read = (bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign bankmachine2_cmd_buffer_lookahead_rdport_adr = bankmachine2_cmd_buffer_lookahead_consume;
assign bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine2_cmd_buffer_sink_ready = ((~bankmachine2_cmd_buffer_source_valid) | bankmachine2_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	bankmachine2_req_wdata_ready <= 1'd0;
	bankmachine2_req_rdata_valid <= 1'd0;
	bankmachine2_refresh_gnt <= 1'd0;
	bankmachine2_cmd_valid <= 1'd0;
	bankmachine2_cmd_payload_cas <= 1'd0;
	bankmachine2_cmd_payload_ras <= 1'd0;
	bankmachine2_cmd_payload_we <= 1'd0;
	bankmachine2_cmd_payload_is_cmd <= 1'd0;
	bankmachine2_cmd_payload_is_read <= 1'd0;
	bankmachine2_cmd_payload_is_write <= 1'd0;
	bankmachine2_row_open <= 1'd0;
	bankmachine2_row_close <= 1'd0;
	bankmachine2_row_col_n_addr_sel <= 1'd0;
	bankmachine2_next_state <= 4'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if ((bankmachine2_twtpcon_ready & bankmachine2_trascon_ready)) begin
				bankmachine2_cmd_valid <= 1'd1;
				if (bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd5;
				end
				bankmachine2_cmd_payload_ras <= 1'd1;
				bankmachine2_cmd_payload_we <= 1'd1;
				bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine2_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine2_twtpcon_ready & bankmachine2_trascon_ready)) begin
				bankmachine2_next_state <= 3'd5;
			end
			bankmachine2_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine2_trccon_ready) begin
				bankmachine2_row_col_n_addr_sel <= 1'd1;
				bankmachine2_row_open <= 1'd1;
				bankmachine2_cmd_valid <= 1'd1;
				bankmachine2_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 4'd11;
				end
				bankmachine2_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine2_twtpcon_ready) begin
				bankmachine2_refresh_gnt <= 1'd1;
			end
			bankmachine2_row_close <= 1'd1;
			bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine2_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine2_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine2_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine2_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine2_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine2_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine2_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine2_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine2_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine2_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 3'd4;
			end else begin
				if (bankmachine2_cmd_buffer_source_valid) begin
					if (bankmachine2_row_opened) begin
						if (bankmachine2_row_hit) begin
							bankmachine2_cmd_valid <= 1'd1;
							if (bankmachine2_cmd_buffer_source_payload_we) begin
								bankmachine2_req_wdata_ready <= bankmachine2_cmd_ready;
								bankmachine2_cmd_payload_is_write <= 1'd1;
								bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine2_req_rdata_valid <= bankmachine2_cmd_ready;
								bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							bankmachine2_cmd_payload_cas <= 1'd1;
							if ((bankmachine2_cmd_ready & bankmachine2_auto_precharge)) begin
								bankmachine2_next_state <= 2'd2;
							end
						end else begin
							bankmachine2_next_state <= 1'd1;
						end
					end else begin
						bankmachine2_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end
assign bankmachine3_cmd_buffer_lookahead_sink_valid = bankmachine3_req_valid;
assign bankmachine3_req_ready = bankmachine3_cmd_buffer_lookahead_sink_ready;
assign bankmachine3_cmd_buffer_lookahead_sink_payload_we = bankmachine3_req_we;
assign bankmachine3_cmd_buffer_lookahead_sink_payload_addr = bankmachine3_req_addr;
assign bankmachine3_cmd_buffer_sink_valid = bankmachine3_cmd_buffer_lookahead_source_valid;
assign bankmachine3_cmd_buffer_lookahead_source_ready = bankmachine3_cmd_buffer_sink_ready;
assign bankmachine3_cmd_buffer_sink_first = bankmachine3_cmd_buffer_lookahead_source_first;
assign bankmachine3_cmd_buffer_sink_last = bankmachine3_cmd_buffer_lookahead_source_last;
assign bankmachine3_cmd_buffer_sink_payload_we = bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign bankmachine3_cmd_buffer_sink_payload_addr = bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine3_cmd_buffer_source_ready = (bankmachine3_req_wdata_ready | bankmachine3_req_rdata_valid);
assign bankmachine3_req_lock = (bankmachine3_cmd_buffer_lookahead_source_valid | bankmachine3_cmd_buffer_source_valid);
assign bankmachine3_row_hit = (bankmachine3_row == bankmachine3_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine3_cmd_payload_ba = 2'd3;

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	bankmachine3_cmd_payload_a <= 17'd0;
	if (bankmachine3_row_col_n_addr_sel) begin
		bankmachine3_cmd_payload_a <= bankmachine3_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine3_cmd_payload_a <= ((bankmachine3_auto_precharge <<< 4'd10) | {bankmachine3_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign bankmachine3_twtpcon_valid = ((bankmachine3_cmd_valid & bankmachine3_cmd_ready) & bankmachine3_cmd_payload_is_write);
assign bankmachine3_trccon_valid = ((bankmachine3_cmd_valid & bankmachine3_cmd_ready) & bankmachine3_row_open);
assign bankmachine3_trascon_valid = ((bankmachine3_cmd_valid & bankmachine3_cmd_ready) & bankmachine3_row_open);

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	bankmachine3_auto_precharge <= 1'd0;
	if ((bankmachine3_cmd_buffer_lookahead_source_valid & bankmachine3_cmd_buffer_source_valid)) begin
		if ((bankmachine3_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine3_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine3_auto_precharge <= (bankmachine3_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {bankmachine3_cmd_buffer_lookahead_fifo_in_last, bankmachine3_cmd_buffer_lookahead_fifo_in_first, bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine3_cmd_buffer_lookahead_fifo_out_last, bankmachine3_cmd_buffer_lookahead_fifo_out_first, bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign bankmachine3_cmd_buffer_lookahead_sink_ready = bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign bankmachine3_cmd_buffer_lookahead_syncfifo3_we = bankmachine3_cmd_buffer_lookahead_sink_valid;
assign bankmachine3_cmd_buffer_lookahead_fifo_in_first = bankmachine3_cmd_buffer_lookahead_sink_first;
assign bankmachine3_cmd_buffer_lookahead_fifo_in_last = bankmachine3_cmd_buffer_lookahead_sink_last;
assign bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine3_cmd_buffer_lookahead_source_valid = bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign bankmachine3_cmd_buffer_lookahead_source_first = bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine3_cmd_buffer_lookahead_source_last = bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine3_cmd_buffer_lookahead_source_payload_we = bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine3_cmd_buffer_lookahead_source_payload_addr = bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine3_cmd_buffer_lookahead_syncfifo3_re = bankmachine3_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine3_cmd_buffer_lookahead_replace) begin
		bankmachine3_cmd_buffer_lookahead_wrport_adr <= (bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine3_cmd_buffer_lookahead_wrport_adr <= bankmachine3_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign bankmachine3_cmd_buffer_lookahead_wrport_dat_w = bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign bankmachine3_cmd_buffer_lookahead_wrport_we = (bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | bankmachine3_cmd_buffer_lookahead_replace));
assign bankmachine3_cmd_buffer_lookahead_do_read = (bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign bankmachine3_cmd_buffer_lookahead_rdport_adr = bankmachine3_cmd_buffer_lookahead_consume;
assign bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine3_cmd_buffer_sink_ready = ((~bankmachine3_cmd_buffer_source_valid) | bankmachine3_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	bankmachine3_req_wdata_ready <= 1'd0;
	bankmachine3_req_rdata_valid <= 1'd0;
	bankmachine3_refresh_gnt <= 1'd0;
	bankmachine3_cmd_valid <= 1'd0;
	bankmachine3_cmd_payload_cas <= 1'd0;
	bankmachine3_cmd_payload_ras <= 1'd0;
	bankmachine3_cmd_payload_we <= 1'd0;
	bankmachine3_cmd_payload_is_cmd <= 1'd0;
	bankmachine3_cmd_payload_is_read <= 1'd0;
	bankmachine3_cmd_payload_is_write <= 1'd0;
	bankmachine3_row_open <= 1'd0;
	bankmachine3_row_close <= 1'd0;
	bankmachine3_row_col_n_addr_sel <= 1'd0;
	bankmachine3_next_state <= 4'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if ((bankmachine3_twtpcon_ready & bankmachine3_trascon_ready)) begin
				bankmachine3_cmd_valid <= 1'd1;
				if (bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd5;
				end
				bankmachine3_cmd_payload_ras <= 1'd1;
				bankmachine3_cmd_payload_we <= 1'd1;
				bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine3_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine3_twtpcon_ready & bankmachine3_trascon_ready)) begin
				bankmachine3_next_state <= 3'd5;
			end
			bankmachine3_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine3_trccon_ready) begin
				bankmachine3_row_col_n_addr_sel <= 1'd1;
				bankmachine3_row_open <= 1'd1;
				bankmachine3_cmd_valid <= 1'd1;
				bankmachine3_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 4'd11;
				end
				bankmachine3_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine3_twtpcon_ready) begin
				bankmachine3_refresh_gnt <= 1'd1;
			end
			bankmachine3_row_close <= 1'd1;
			bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine3_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine3_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine3_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine3_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine3_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine3_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine3_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine3_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine3_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine3_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 3'd4;
			end else begin
				if (bankmachine3_cmd_buffer_source_valid) begin
					if (bankmachine3_row_opened) begin
						if (bankmachine3_row_hit) begin
							bankmachine3_cmd_valid <= 1'd1;
							if (bankmachine3_cmd_buffer_source_payload_we) begin
								bankmachine3_req_wdata_ready <= bankmachine3_cmd_ready;
								bankmachine3_cmd_payload_is_write <= 1'd1;
								bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine3_req_rdata_valid <= bankmachine3_cmd_ready;
								bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							bankmachine3_cmd_payload_cas <= 1'd1;
							if ((bankmachine3_cmd_ready & bankmachine3_auto_precharge)) begin
								bankmachine3_next_state <= 2'd2;
							end
						end else begin
							bankmachine3_next_state <= 1'd1;
						end
					end else begin
						bankmachine3_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end
assign bankmachine4_cmd_buffer_lookahead_sink_valid = bankmachine4_req_valid;
assign bankmachine4_req_ready = bankmachine4_cmd_buffer_lookahead_sink_ready;
assign bankmachine4_cmd_buffer_lookahead_sink_payload_we = bankmachine4_req_we;
assign bankmachine4_cmd_buffer_lookahead_sink_payload_addr = bankmachine4_req_addr;
assign bankmachine4_cmd_buffer_sink_valid = bankmachine4_cmd_buffer_lookahead_source_valid;
assign bankmachine4_cmd_buffer_lookahead_source_ready = bankmachine4_cmd_buffer_sink_ready;
assign bankmachine4_cmd_buffer_sink_first = bankmachine4_cmd_buffer_lookahead_source_first;
assign bankmachine4_cmd_buffer_sink_last = bankmachine4_cmd_buffer_lookahead_source_last;
assign bankmachine4_cmd_buffer_sink_payload_we = bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign bankmachine4_cmd_buffer_sink_payload_addr = bankmachine4_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine4_cmd_buffer_source_ready = (bankmachine4_req_wdata_ready | bankmachine4_req_rdata_valid);
assign bankmachine4_req_lock = (bankmachine4_cmd_buffer_lookahead_source_valid | bankmachine4_cmd_buffer_source_valid);
assign bankmachine4_row_hit = (bankmachine4_row == bankmachine4_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine4_cmd_payload_ba = 3'd4;

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	bankmachine4_cmd_payload_a <= 17'd0;
	if (bankmachine4_row_col_n_addr_sel) begin
		bankmachine4_cmd_payload_a <= bankmachine4_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine4_cmd_payload_a <= ((bankmachine4_auto_precharge <<< 4'd10) | {bankmachine4_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end
assign bankmachine4_twtpcon_valid = ((bankmachine4_cmd_valid & bankmachine4_cmd_ready) & bankmachine4_cmd_payload_is_write);
assign bankmachine4_trccon_valid = ((bankmachine4_cmd_valid & bankmachine4_cmd_ready) & bankmachine4_row_open);
assign bankmachine4_trascon_valid = ((bankmachine4_cmd_valid & bankmachine4_cmd_ready) & bankmachine4_row_open);

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	bankmachine4_auto_precharge <= 1'd0;
	if ((bankmachine4_cmd_buffer_lookahead_source_valid & bankmachine4_cmd_buffer_source_valid)) begin
		if ((bankmachine4_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine4_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine4_auto_precharge <= (bankmachine4_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {bankmachine4_cmd_buffer_lookahead_fifo_in_last, bankmachine4_cmd_buffer_lookahead_fifo_in_first, bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine4_cmd_buffer_lookahead_fifo_out_last, bankmachine4_cmd_buffer_lookahead_fifo_out_first, bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign bankmachine4_cmd_buffer_lookahead_sink_ready = bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign bankmachine4_cmd_buffer_lookahead_syncfifo4_we = bankmachine4_cmd_buffer_lookahead_sink_valid;
assign bankmachine4_cmd_buffer_lookahead_fifo_in_first = bankmachine4_cmd_buffer_lookahead_sink_first;
assign bankmachine4_cmd_buffer_lookahead_fifo_in_last = bankmachine4_cmd_buffer_lookahead_sink_last;
assign bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine4_cmd_buffer_lookahead_source_valid = bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign bankmachine4_cmd_buffer_lookahead_source_first = bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine4_cmd_buffer_lookahead_source_last = bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine4_cmd_buffer_lookahead_source_payload_we = bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine4_cmd_buffer_lookahead_source_payload_addr = bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine4_cmd_buffer_lookahead_syncfifo4_re = bankmachine4_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine4_cmd_buffer_lookahead_replace) begin
		bankmachine4_cmd_buffer_lookahead_wrport_adr <= (bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine4_cmd_buffer_lookahead_wrport_adr <= bankmachine4_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end
assign bankmachine4_cmd_buffer_lookahead_wrport_dat_w = bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign bankmachine4_cmd_buffer_lookahead_wrport_we = (bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | bankmachine4_cmd_buffer_lookahead_replace));
assign bankmachine4_cmd_buffer_lookahead_do_read = (bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign bankmachine4_cmd_buffer_lookahead_rdport_adr = bankmachine4_cmd_buffer_lookahead_consume;
assign bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine4_cmd_buffer_sink_ready = ((~bankmachine4_cmd_buffer_source_valid) | bankmachine4_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	bankmachine4_req_wdata_ready <= 1'd0;
	bankmachine4_req_rdata_valid <= 1'd0;
	bankmachine4_refresh_gnt <= 1'd0;
	bankmachine4_cmd_valid <= 1'd0;
	bankmachine4_cmd_payload_cas <= 1'd0;
	bankmachine4_cmd_payload_ras <= 1'd0;
	bankmachine4_cmd_payload_we <= 1'd0;
	bankmachine4_cmd_payload_is_cmd <= 1'd0;
	bankmachine4_cmd_payload_is_read <= 1'd0;
	bankmachine4_cmd_payload_is_write <= 1'd0;
	bankmachine4_row_open <= 1'd0;
	bankmachine4_row_close <= 1'd0;
	bankmachine4_row_col_n_addr_sel <= 1'd0;
	bankmachine4_next_state <= 4'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if ((bankmachine4_twtpcon_ready & bankmachine4_trascon_ready)) begin
				bankmachine4_cmd_valid <= 1'd1;
				if (bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd5;
				end
				bankmachine4_cmd_payload_ras <= 1'd1;
				bankmachine4_cmd_payload_we <= 1'd1;
				bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine4_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine4_twtpcon_ready & bankmachine4_trascon_ready)) begin
				bankmachine4_next_state <= 3'd5;
			end
			bankmachine4_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine4_trccon_ready) begin
				bankmachine4_row_col_n_addr_sel <= 1'd1;
				bankmachine4_row_open <= 1'd1;
				bankmachine4_cmd_valid <= 1'd1;
				bankmachine4_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 4'd11;
				end
				bankmachine4_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine4_twtpcon_ready) begin
				bankmachine4_refresh_gnt <= 1'd1;
			end
			bankmachine4_row_close <= 1'd1;
			bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine4_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine4_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine4_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine4_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine4_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine4_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine4_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine4_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine4_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine4_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 3'd4;
			end else begin
				if (bankmachine4_cmd_buffer_source_valid) begin
					if (bankmachine4_row_opened) begin
						if (bankmachine4_row_hit) begin
							bankmachine4_cmd_valid <= 1'd1;
							if (bankmachine4_cmd_buffer_source_payload_we) begin
								bankmachine4_req_wdata_ready <= bankmachine4_cmd_ready;
								bankmachine4_cmd_payload_is_write <= 1'd1;
								bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine4_req_rdata_valid <= bankmachine4_cmd_ready;
								bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							bankmachine4_cmd_payload_cas <= 1'd1;
							if ((bankmachine4_cmd_ready & bankmachine4_auto_precharge)) begin
								bankmachine4_next_state <= 2'd2;
							end
						end else begin
							bankmachine4_next_state <= 1'd1;
						end
					end else begin
						bankmachine4_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end
assign bankmachine5_cmd_buffer_lookahead_sink_valid = bankmachine5_req_valid;
assign bankmachine5_req_ready = bankmachine5_cmd_buffer_lookahead_sink_ready;
assign bankmachine5_cmd_buffer_lookahead_sink_payload_we = bankmachine5_req_we;
assign bankmachine5_cmd_buffer_lookahead_sink_payload_addr = bankmachine5_req_addr;
assign bankmachine5_cmd_buffer_sink_valid = bankmachine5_cmd_buffer_lookahead_source_valid;
assign bankmachine5_cmd_buffer_lookahead_source_ready = bankmachine5_cmd_buffer_sink_ready;
assign bankmachine5_cmd_buffer_sink_first = bankmachine5_cmd_buffer_lookahead_source_first;
assign bankmachine5_cmd_buffer_sink_last = bankmachine5_cmd_buffer_lookahead_source_last;
assign bankmachine5_cmd_buffer_sink_payload_we = bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign bankmachine5_cmd_buffer_sink_payload_addr = bankmachine5_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine5_cmd_buffer_source_ready = (bankmachine5_req_wdata_ready | bankmachine5_req_rdata_valid);
assign bankmachine5_req_lock = (bankmachine5_cmd_buffer_lookahead_source_valid | bankmachine5_cmd_buffer_source_valid);
assign bankmachine5_row_hit = (bankmachine5_row == bankmachine5_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine5_cmd_payload_ba = 3'd5;

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	bankmachine5_cmd_payload_a <= 17'd0;
	if (bankmachine5_row_col_n_addr_sel) begin
		bankmachine5_cmd_payload_a <= bankmachine5_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine5_cmd_payload_a <= ((bankmachine5_auto_precharge <<< 4'd10) | {bankmachine5_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end
assign bankmachine5_twtpcon_valid = ((bankmachine5_cmd_valid & bankmachine5_cmd_ready) & bankmachine5_cmd_payload_is_write);
assign bankmachine5_trccon_valid = ((bankmachine5_cmd_valid & bankmachine5_cmd_ready) & bankmachine5_row_open);
assign bankmachine5_trascon_valid = ((bankmachine5_cmd_valid & bankmachine5_cmd_ready) & bankmachine5_row_open);

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	bankmachine5_auto_precharge <= 1'd0;
	if ((bankmachine5_cmd_buffer_lookahead_source_valid & bankmachine5_cmd_buffer_source_valid)) begin
		if ((bankmachine5_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine5_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine5_auto_precharge <= (bankmachine5_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {bankmachine5_cmd_buffer_lookahead_fifo_in_last, bankmachine5_cmd_buffer_lookahead_fifo_in_first, bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine5_cmd_buffer_lookahead_fifo_out_last, bankmachine5_cmd_buffer_lookahead_fifo_out_first, bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign bankmachine5_cmd_buffer_lookahead_sink_ready = bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign bankmachine5_cmd_buffer_lookahead_syncfifo5_we = bankmachine5_cmd_buffer_lookahead_sink_valid;
assign bankmachine5_cmd_buffer_lookahead_fifo_in_first = bankmachine5_cmd_buffer_lookahead_sink_first;
assign bankmachine5_cmd_buffer_lookahead_fifo_in_last = bankmachine5_cmd_buffer_lookahead_sink_last;
assign bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine5_cmd_buffer_lookahead_source_valid = bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign bankmachine5_cmd_buffer_lookahead_source_first = bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine5_cmd_buffer_lookahead_source_last = bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine5_cmd_buffer_lookahead_source_payload_we = bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine5_cmd_buffer_lookahead_source_payload_addr = bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine5_cmd_buffer_lookahead_syncfifo5_re = bankmachine5_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine5_cmd_buffer_lookahead_replace) begin
		bankmachine5_cmd_buffer_lookahead_wrport_adr <= (bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine5_cmd_buffer_lookahead_wrport_adr <= bankmachine5_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end
assign bankmachine5_cmd_buffer_lookahead_wrport_dat_w = bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign bankmachine5_cmd_buffer_lookahead_wrport_we = (bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | bankmachine5_cmd_buffer_lookahead_replace));
assign bankmachine5_cmd_buffer_lookahead_do_read = (bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign bankmachine5_cmd_buffer_lookahead_rdport_adr = bankmachine5_cmd_buffer_lookahead_consume;
assign bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine5_cmd_buffer_sink_ready = ((~bankmachine5_cmd_buffer_source_valid) | bankmachine5_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	bankmachine5_req_wdata_ready <= 1'd0;
	bankmachine5_req_rdata_valid <= 1'd0;
	bankmachine5_refresh_gnt <= 1'd0;
	bankmachine5_cmd_valid <= 1'd0;
	bankmachine5_cmd_payload_cas <= 1'd0;
	bankmachine5_cmd_payload_ras <= 1'd0;
	bankmachine5_cmd_payload_we <= 1'd0;
	bankmachine5_cmd_payload_is_cmd <= 1'd0;
	bankmachine5_cmd_payload_is_read <= 1'd0;
	bankmachine5_cmd_payload_is_write <= 1'd0;
	bankmachine5_row_open <= 1'd0;
	bankmachine5_row_close <= 1'd0;
	bankmachine5_row_col_n_addr_sel <= 1'd0;
	bankmachine5_next_state <= 4'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if ((bankmachine5_twtpcon_ready & bankmachine5_trascon_ready)) begin
				bankmachine5_cmd_valid <= 1'd1;
				if (bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd5;
				end
				bankmachine5_cmd_payload_ras <= 1'd1;
				bankmachine5_cmd_payload_we <= 1'd1;
				bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine5_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine5_twtpcon_ready & bankmachine5_trascon_ready)) begin
				bankmachine5_next_state <= 3'd5;
			end
			bankmachine5_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine5_trccon_ready) begin
				bankmachine5_row_col_n_addr_sel <= 1'd1;
				bankmachine5_row_open <= 1'd1;
				bankmachine5_cmd_valid <= 1'd1;
				bankmachine5_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 4'd11;
				end
				bankmachine5_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine5_twtpcon_ready) begin
				bankmachine5_refresh_gnt <= 1'd1;
			end
			bankmachine5_row_close <= 1'd1;
			bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine5_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine5_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine5_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine5_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine5_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine5_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine5_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine5_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine5_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine5_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 3'd4;
			end else begin
				if (bankmachine5_cmd_buffer_source_valid) begin
					if (bankmachine5_row_opened) begin
						if (bankmachine5_row_hit) begin
							bankmachine5_cmd_valid <= 1'd1;
							if (bankmachine5_cmd_buffer_source_payload_we) begin
								bankmachine5_req_wdata_ready <= bankmachine5_cmd_ready;
								bankmachine5_cmd_payload_is_write <= 1'd1;
								bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine5_req_rdata_valid <= bankmachine5_cmd_ready;
								bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							bankmachine5_cmd_payload_cas <= 1'd1;
							if ((bankmachine5_cmd_ready & bankmachine5_auto_precharge)) begin
								bankmachine5_next_state <= 2'd2;
							end
						end else begin
							bankmachine5_next_state <= 1'd1;
						end
					end else begin
						bankmachine5_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end
assign bankmachine6_cmd_buffer_lookahead_sink_valid = bankmachine6_req_valid;
assign bankmachine6_req_ready = bankmachine6_cmd_buffer_lookahead_sink_ready;
assign bankmachine6_cmd_buffer_lookahead_sink_payload_we = bankmachine6_req_we;
assign bankmachine6_cmd_buffer_lookahead_sink_payload_addr = bankmachine6_req_addr;
assign bankmachine6_cmd_buffer_sink_valid = bankmachine6_cmd_buffer_lookahead_source_valid;
assign bankmachine6_cmd_buffer_lookahead_source_ready = bankmachine6_cmd_buffer_sink_ready;
assign bankmachine6_cmd_buffer_sink_first = bankmachine6_cmd_buffer_lookahead_source_first;
assign bankmachine6_cmd_buffer_sink_last = bankmachine6_cmd_buffer_lookahead_source_last;
assign bankmachine6_cmd_buffer_sink_payload_we = bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign bankmachine6_cmd_buffer_sink_payload_addr = bankmachine6_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine6_cmd_buffer_source_ready = (bankmachine6_req_wdata_ready | bankmachine6_req_rdata_valid);
assign bankmachine6_req_lock = (bankmachine6_cmd_buffer_lookahead_source_valid | bankmachine6_cmd_buffer_source_valid);
assign bankmachine6_row_hit = (bankmachine6_row == bankmachine6_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine6_cmd_payload_ba = 3'd6;

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	bankmachine6_cmd_payload_a <= 17'd0;
	if (bankmachine6_row_col_n_addr_sel) begin
		bankmachine6_cmd_payload_a <= bankmachine6_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine6_cmd_payload_a <= ((bankmachine6_auto_precharge <<< 4'd10) | {bankmachine6_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end
assign bankmachine6_twtpcon_valid = ((bankmachine6_cmd_valid & bankmachine6_cmd_ready) & bankmachine6_cmd_payload_is_write);
assign bankmachine6_trccon_valid = ((bankmachine6_cmd_valid & bankmachine6_cmd_ready) & bankmachine6_row_open);
assign bankmachine6_trascon_valid = ((bankmachine6_cmd_valid & bankmachine6_cmd_ready) & bankmachine6_row_open);

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	bankmachine6_auto_precharge <= 1'd0;
	if ((bankmachine6_cmd_buffer_lookahead_source_valid & bankmachine6_cmd_buffer_source_valid)) begin
		if ((bankmachine6_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine6_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine6_auto_precharge <= (bankmachine6_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end
assign bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {bankmachine6_cmd_buffer_lookahead_fifo_in_last, bankmachine6_cmd_buffer_lookahead_fifo_in_first, bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine6_cmd_buffer_lookahead_fifo_out_last, bankmachine6_cmd_buffer_lookahead_fifo_out_first, bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign bankmachine6_cmd_buffer_lookahead_sink_ready = bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign bankmachine6_cmd_buffer_lookahead_syncfifo6_we = bankmachine6_cmd_buffer_lookahead_sink_valid;
assign bankmachine6_cmd_buffer_lookahead_fifo_in_first = bankmachine6_cmd_buffer_lookahead_sink_first;
assign bankmachine6_cmd_buffer_lookahead_fifo_in_last = bankmachine6_cmd_buffer_lookahead_sink_last;
assign bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine6_cmd_buffer_lookahead_source_valid = bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign bankmachine6_cmd_buffer_lookahead_source_first = bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine6_cmd_buffer_lookahead_source_last = bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine6_cmd_buffer_lookahead_source_payload_we = bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine6_cmd_buffer_lookahead_source_payload_addr = bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine6_cmd_buffer_lookahead_syncfifo6_re = bankmachine6_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine6_cmd_buffer_lookahead_replace) begin
		bankmachine6_cmd_buffer_lookahead_wrport_adr <= (bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine6_cmd_buffer_lookahead_wrport_adr <= bankmachine6_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end
assign bankmachine6_cmd_buffer_lookahead_wrport_dat_w = bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign bankmachine6_cmd_buffer_lookahead_wrport_we = (bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | bankmachine6_cmd_buffer_lookahead_replace));
assign bankmachine6_cmd_buffer_lookahead_do_read = (bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign bankmachine6_cmd_buffer_lookahead_rdport_adr = bankmachine6_cmd_buffer_lookahead_consume;
assign bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine6_cmd_buffer_sink_ready = ((~bankmachine6_cmd_buffer_source_valid) | bankmachine6_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	bankmachine6_req_wdata_ready <= 1'd0;
	bankmachine6_req_rdata_valid <= 1'd0;
	bankmachine6_refresh_gnt <= 1'd0;
	bankmachine6_cmd_valid <= 1'd0;
	bankmachine6_cmd_payload_cas <= 1'd0;
	bankmachine6_cmd_payload_ras <= 1'd0;
	bankmachine6_cmd_payload_we <= 1'd0;
	bankmachine6_cmd_payload_is_cmd <= 1'd0;
	bankmachine6_cmd_payload_is_read <= 1'd0;
	bankmachine6_cmd_payload_is_write <= 1'd0;
	bankmachine6_row_open <= 1'd0;
	bankmachine6_row_close <= 1'd0;
	bankmachine6_row_col_n_addr_sel <= 1'd0;
	bankmachine6_next_state <= 4'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if ((bankmachine6_twtpcon_ready & bankmachine6_trascon_ready)) begin
				bankmachine6_cmd_valid <= 1'd1;
				if (bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd5;
				end
				bankmachine6_cmd_payload_ras <= 1'd1;
				bankmachine6_cmd_payload_we <= 1'd1;
				bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine6_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine6_twtpcon_ready & bankmachine6_trascon_ready)) begin
				bankmachine6_next_state <= 3'd5;
			end
			bankmachine6_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine6_trccon_ready) begin
				bankmachine6_row_col_n_addr_sel <= 1'd1;
				bankmachine6_row_open <= 1'd1;
				bankmachine6_cmd_valid <= 1'd1;
				bankmachine6_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 4'd11;
				end
				bankmachine6_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine6_twtpcon_ready) begin
				bankmachine6_refresh_gnt <= 1'd1;
			end
			bankmachine6_row_close <= 1'd1;
			bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine6_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine6_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine6_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine6_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine6_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine6_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine6_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine6_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine6_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine6_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 3'd4;
			end else begin
				if (bankmachine6_cmd_buffer_source_valid) begin
					if (bankmachine6_row_opened) begin
						if (bankmachine6_row_hit) begin
							bankmachine6_cmd_valid <= 1'd1;
							if (bankmachine6_cmd_buffer_source_payload_we) begin
								bankmachine6_req_wdata_ready <= bankmachine6_cmd_ready;
								bankmachine6_cmd_payload_is_write <= 1'd1;
								bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine6_req_rdata_valid <= bankmachine6_cmd_ready;
								bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							bankmachine6_cmd_payload_cas <= 1'd1;
							if ((bankmachine6_cmd_ready & bankmachine6_auto_precharge)) begin
								bankmachine6_next_state <= 2'd2;
							end
						end else begin
							bankmachine6_next_state <= 1'd1;
						end
					end else begin
						bankmachine6_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end
assign bankmachine7_cmd_buffer_lookahead_sink_valid = bankmachine7_req_valid;
assign bankmachine7_req_ready = bankmachine7_cmd_buffer_lookahead_sink_ready;
assign bankmachine7_cmd_buffer_lookahead_sink_payload_we = bankmachine7_req_we;
assign bankmachine7_cmd_buffer_lookahead_sink_payload_addr = bankmachine7_req_addr;
assign bankmachine7_cmd_buffer_sink_valid = bankmachine7_cmd_buffer_lookahead_source_valid;
assign bankmachine7_cmd_buffer_lookahead_source_ready = bankmachine7_cmd_buffer_sink_ready;
assign bankmachine7_cmd_buffer_sink_first = bankmachine7_cmd_buffer_lookahead_source_first;
assign bankmachine7_cmd_buffer_sink_last = bankmachine7_cmd_buffer_lookahead_source_last;
assign bankmachine7_cmd_buffer_sink_payload_we = bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign bankmachine7_cmd_buffer_sink_payload_addr = bankmachine7_cmd_buffer_lookahead_source_payload_addr;
assign bankmachine7_cmd_buffer_source_ready = (bankmachine7_req_wdata_ready | bankmachine7_req_rdata_valid);
assign bankmachine7_req_lock = (bankmachine7_cmd_buffer_lookahead_source_valid | bankmachine7_cmd_buffer_source_valid);
assign bankmachine7_row_hit = (bankmachine7_row == bankmachine7_cmd_buffer_source_payload_addr[22:6]);
assign bankmachine7_cmd_payload_ba = 3'd7;

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	bankmachine7_cmd_payload_a <= 17'd0;
	if (bankmachine7_row_col_n_addr_sel) begin
		bankmachine7_cmd_payload_a <= bankmachine7_cmd_buffer_source_payload_addr[22:6];
	end else begin
		bankmachine7_cmd_payload_a <= ((bankmachine7_auto_precharge <<< 4'd10) | {bankmachine7_cmd_buffer_source_payload_addr[5:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end
assign bankmachine7_twtpcon_valid = ((bankmachine7_cmd_valid & bankmachine7_cmd_ready) & bankmachine7_cmd_payload_is_write);
assign bankmachine7_trccon_valid = ((bankmachine7_cmd_valid & bankmachine7_cmd_ready) & bankmachine7_row_open);
assign bankmachine7_trascon_valid = ((bankmachine7_cmd_valid & bankmachine7_cmd_ready) & bankmachine7_row_open);

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	bankmachine7_auto_precharge <= 1'd0;
	if ((bankmachine7_cmd_buffer_lookahead_source_valid & bankmachine7_cmd_buffer_source_valid)) begin
		if ((bankmachine7_cmd_buffer_lookahead_source_payload_addr[22:6] != bankmachine7_cmd_buffer_source_payload_addr[22:6])) begin
			bankmachine7_auto_precharge <= (bankmachine7_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end
assign bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {bankmachine7_cmd_buffer_lookahead_fifo_in_last, bankmachine7_cmd_buffer_lookahead_fifo_in_first, bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr, bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {bankmachine7_cmd_buffer_lookahead_fifo_out_last, bankmachine7_cmd_buffer_lookahead_fifo_out_first, bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr, bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign bankmachine7_cmd_buffer_lookahead_sink_ready = bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign bankmachine7_cmd_buffer_lookahead_syncfifo7_we = bankmachine7_cmd_buffer_lookahead_sink_valid;
assign bankmachine7_cmd_buffer_lookahead_fifo_in_first = bankmachine7_cmd_buffer_lookahead_sink_first;
assign bankmachine7_cmd_buffer_lookahead_fifo_in_last = bankmachine7_cmd_buffer_lookahead_sink_last;
assign bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr = bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
assign bankmachine7_cmd_buffer_lookahead_source_valid = bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign bankmachine7_cmd_buffer_lookahead_source_first = bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign bankmachine7_cmd_buffer_lookahead_source_last = bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign bankmachine7_cmd_buffer_lookahead_source_payload_we = bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign bankmachine7_cmd_buffer_lookahead_source_payload_addr = bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
assign bankmachine7_cmd_buffer_lookahead_syncfifo7_re = bankmachine7_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (bankmachine7_cmd_buffer_lookahead_replace) begin
		bankmachine7_cmd_buffer_lookahead_wrport_adr <= (bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		bankmachine7_cmd_buffer_lookahead_wrport_adr <= bankmachine7_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end
assign bankmachine7_cmd_buffer_lookahead_wrport_dat_w = bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign bankmachine7_cmd_buffer_lookahead_wrport_we = (bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | bankmachine7_cmd_buffer_lookahead_replace));
assign bankmachine7_cmd_buffer_lookahead_do_read = (bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign bankmachine7_cmd_buffer_lookahead_rdport_adr = bankmachine7_cmd_buffer_lookahead_consume;
assign bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign bankmachine7_cmd_buffer_sink_ready = ((~bankmachine7_cmd_buffer_source_valid) | bankmachine7_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	bankmachine7_req_wdata_ready <= 1'd0;
	bankmachine7_req_rdata_valid <= 1'd0;
	bankmachine7_refresh_gnt <= 1'd0;
	bankmachine7_cmd_valid <= 1'd0;
	bankmachine7_cmd_payload_cas <= 1'd0;
	bankmachine7_cmd_payload_ras <= 1'd0;
	bankmachine7_cmd_payload_we <= 1'd0;
	bankmachine7_cmd_payload_is_cmd <= 1'd0;
	bankmachine7_cmd_payload_is_read <= 1'd0;
	bankmachine7_cmd_payload_is_write <= 1'd0;
	bankmachine7_row_open <= 1'd0;
	bankmachine7_row_close <= 1'd0;
	bankmachine7_row_col_n_addr_sel <= 1'd0;
	bankmachine7_next_state <= 4'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if ((bankmachine7_twtpcon_ready & bankmachine7_trascon_ready)) begin
				bankmachine7_cmd_valid <= 1'd1;
				if (bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd5;
				end
				bankmachine7_cmd_payload_ras <= 1'd1;
				bankmachine7_cmd_payload_we <= 1'd1;
				bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			bankmachine7_row_close <= 1'd1;
		end
		2'd2: begin
			if ((bankmachine7_twtpcon_ready & bankmachine7_trascon_ready)) begin
				bankmachine7_next_state <= 3'd5;
			end
			bankmachine7_row_close <= 1'd1;
		end
		2'd3: begin
			if (bankmachine7_trccon_ready) begin
				bankmachine7_row_col_n_addr_sel <= 1'd1;
				bankmachine7_row_open <= 1'd1;
				bankmachine7_cmd_valid <= 1'd1;
				bankmachine7_cmd_payload_is_cmd <= 1'd1;
				if (bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 4'd11;
				end
				bankmachine7_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (bankmachine7_twtpcon_ready) begin
				bankmachine7_refresh_gnt <= 1'd1;
			end
			bankmachine7_row_close <= 1'd1;
			bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine7_next_state <= 3'd6;
		end
		3'd6: begin
			bankmachine7_next_state <= 3'd7;
		end
		3'd7: begin
			bankmachine7_next_state <= 4'd8;
		end
		4'd8: begin
			bankmachine7_next_state <= 4'd9;
		end
		4'd9: begin
			bankmachine7_next_state <= 4'd10;
		end
		4'd10: begin
			bankmachine7_next_state <= 2'd3;
		end
		4'd11: begin
			bankmachine7_next_state <= 4'd12;
		end
		4'd12: begin
			bankmachine7_next_state <= 4'd13;
		end
		4'd13: begin
			bankmachine7_next_state <= 4'd14;
		end
		4'd14: begin
			bankmachine7_next_state <= 4'd15;
		end
		4'd15: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 3'd4;
			end else begin
				if (bankmachine7_cmd_buffer_source_valid) begin
					if (bankmachine7_row_opened) begin
						if (bankmachine7_row_hit) begin
							bankmachine7_cmd_valid <= 1'd1;
							if (bankmachine7_cmd_buffer_source_payload_we) begin
								bankmachine7_req_wdata_ready <= bankmachine7_cmd_ready;
								bankmachine7_cmd_payload_is_write <= 1'd1;
								bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								bankmachine7_req_rdata_valid <= bankmachine7_cmd_ready;
								bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							bankmachine7_cmd_payload_cas <= 1'd1;
							if ((bankmachine7_cmd_ready & bankmachine7_auto_precharge)) begin
								bankmachine7_next_state <= 2'd2;
							end
						end else begin
							bankmachine7_next_state <= 1'd1;
						end
					end else begin
						bankmachine7_next_state <= 2'd3;
					end
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end
assign rdcmdphase = (rdphase_storage - 1'd1);
assign wrcmdphase = (wrphase_storage - 1'd1);
assign trrdcon_valid = ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & ((choose_cmd_cmd_payload_ras & (~choose_cmd_cmd_payload_cas)) & (~choose_cmd_cmd_payload_we)));
assign tfawcon_valid = ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & ((choose_cmd_cmd_payload_ras & (~choose_cmd_cmd_payload_cas)) & (~choose_cmd_cmd_payload_we)));
assign ras_allowed = (trrdcon_ready & tfawcon_ready);
assign tccdcon_valid = ((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_cmd_payload_is_write | choose_req_cmd_payload_is_read));
assign cas_allowed = tccdcon_ready;
assign twtrcon_valid = ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
assign read_available = ((((((((bankmachine0_cmd_valid & bankmachine0_cmd_payload_is_read) | (bankmachine1_cmd_valid & bankmachine1_cmd_payload_is_read)) | (bankmachine2_cmd_valid & bankmachine2_cmd_payload_is_read)) | (bankmachine3_cmd_valid & bankmachine3_cmd_payload_is_read)) | (bankmachine4_cmd_valid & bankmachine4_cmd_payload_is_read)) | (bankmachine5_cmd_valid & bankmachine5_cmd_payload_is_read)) | (bankmachine6_cmd_valid & bankmachine6_cmd_payload_is_read)) | (bankmachine7_cmd_valid & bankmachine7_cmd_payload_is_read));
assign write_available = ((((((((bankmachine0_cmd_valid & bankmachine0_cmd_payload_is_write) | (bankmachine1_cmd_valid & bankmachine1_cmd_payload_is_write)) | (bankmachine2_cmd_valid & bankmachine2_cmd_payload_is_write)) | (bankmachine3_cmd_valid & bankmachine3_cmd_payload_is_write)) | (bankmachine4_cmd_valid & bankmachine4_cmd_payload_is_write)) | (bankmachine5_cmd_valid & bankmachine5_cmd_payload_is_write)) | (bankmachine6_cmd_valid & bankmachine6_cmd_payload_is_write)) | (bankmachine7_cmd_valid & bankmachine7_cmd_payload_is_write));
assign max_time0 = (time0 == 1'd0);
assign max_time1 = (time1 == 1'd0);
assign bankmachine0_refresh_req = cmd_valid;
assign bankmachine1_refresh_req = cmd_valid;
assign bankmachine2_refresh_req = cmd_valid;
assign bankmachine3_refresh_req = cmd_valid;
assign bankmachine4_refresh_req = cmd_valid;
assign bankmachine5_refresh_req = cmd_valid;
assign bankmachine6_refresh_req = cmd_valid;
assign bankmachine7_refresh_req = cmd_valid;
assign go_to_refresh = (((((((bankmachine0_refresh_gnt & bankmachine1_refresh_gnt) & bankmachine2_refresh_gnt) & bankmachine3_refresh_gnt) & bankmachine4_refresh_gnt) & bankmachine5_refresh_gnt) & bankmachine6_refresh_gnt) & bankmachine7_refresh_gnt);
assign interface_rdata = {dfi_p7_rddata, dfi_p6_rddata, dfi_p5_rddata, dfi_p4_rddata, dfi_p3_rddata, dfi_p2_rddata, dfi_p1_rddata, dfi_p0_rddata};
assign {dfi_p7_wrdata, dfi_p6_wrdata, dfi_p5_wrdata, dfi_p4_wrdata, dfi_p3_wrdata, dfi_p2_wrdata, dfi_p1_wrdata, dfi_p0_wrdata} = interface_wdata;
assign {dfi_p7_wrdata_mask, dfi_p6_wrdata_mask, dfi_p5_wrdata_mask, dfi_p4_wrdata_mask, dfi_p3_wrdata_mask, dfi_p2_wrdata_mask, dfi_p1_wrdata_mask, dfi_p0_wrdata_mask} = (~interface_wdata_we);

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	choose_cmd_valids <= 8'd0;
	choose_cmd_valids[0] <= (bankmachine0_cmd_valid & (((bankmachine0_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine0_cmd_payload_ras & (~bankmachine0_cmd_payload_cas)) & (~bankmachine0_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine0_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine0_cmd_payload_is_write == choose_cmd_want_writes))));
	choose_cmd_valids[1] <= (bankmachine1_cmd_valid & (((bankmachine1_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine1_cmd_payload_ras & (~bankmachine1_cmd_payload_cas)) & (~bankmachine1_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine1_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine1_cmd_payload_is_write == choose_cmd_want_writes))));
	choose_cmd_valids[2] <= (bankmachine2_cmd_valid & (((bankmachine2_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine2_cmd_payload_ras & (~bankmachine2_cmd_payload_cas)) & (~bankmachine2_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine2_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine2_cmd_payload_is_write == choose_cmd_want_writes))));
	choose_cmd_valids[3] <= (bankmachine3_cmd_valid & (((bankmachine3_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine3_cmd_payload_ras & (~bankmachine3_cmd_payload_cas)) & (~bankmachine3_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine3_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine3_cmd_payload_is_write == choose_cmd_want_writes))));
	choose_cmd_valids[4] <= (bankmachine4_cmd_valid & (((bankmachine4_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine4_cmd_payload_ras & (~bankmachine4_cmd_payload_cas)) & (~bankmachine4_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine4_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine4_cmd_payload_is_write == choose_cmd_want_writes))));
	choose_cmd_valids[5] <= (bankmachine5_cmd_valid & (((bankmachine5_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine5_cmd_payload_ras & (~bankmachine5_cmd_payload_cas)) & (~bankmachine5_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine5_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine5_cmd_payload_is_write == choose_cmd_want_writes))));
	choose_cmd_valids[6] <= (bankmachine6_cmd_valid & (((bankmachine6_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine6_cmd_payload_ras & (~bankmachine6_cmd_payload_cas)) & (~bankmachine6_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine6_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine6_cmd_payload_is_write == choose_cmd_want_writes))));
	choose_cmd_valids[7] <= (bankmachine7_cmd_valid & (((bankmachine7_cmd_payload_is_cmd & choose_cmd_want_cmds) & ((~((bankmachine7_cmd_payload_ras & (~bankmachine7_cmd_payload_cas)) & (~bankmachine7_cmd_payload_we))) | choose_cmd_want_activates)) | ((bankmachine7_cmd_payload_is_read == choose_cmd_want_reads) & (bankmachine7_cmd_payload_is_write == choose_cmd_want_writes))));
// synthesis translate_off
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end
assign choose_cmd_request = choose_cmd_valids;
assign choose_cmd_cmd_valid = rhs_array_muxed0;
assign choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	choose_cmd_cmd_payload_cas <= 1'd0;
	if (choose_cmd_cmd_valid) begin
		choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	choose_cmd_cmd_payload_ras <= 1'd0;
	if (choose_cmd_cmd_valid) begin
		choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	choose_cmd_cmd_payload_we <= 1'd0;
	if (choose_cmd_cmd_valid) begin
		choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end
assign choose_cmd_ce = (choose_cmd_cmd_ready | (~choose_cmd_cmd_valid));

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	choose_req_valids <= 8'd0;
	choose_req_valids[0] <= (bankmachine0_cmd_valid & (((bankmachine0_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine0_cmd_payload_ras & (~bankmachine0_cmd_payload_cas)) & (~bankmachine0_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine0_cmd_payload_is_read == choose_req_want_reads) & (bankmachine0_cmd_payload_is_write == choose_req_want_writes))));
	choose_req_valids[1] <= (bankmachine1_cmd_valid & (((bankmachine1_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine1_cmd_payload_ras & (~bankmachine1_cmd_payload_cas)) & (~bankmachine1_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine1_cmd_payload_is_read == choose_req_want_reads) & (bankmachine1_cmd_payload_is_write == choose_req_want_writes))));
	choose_req_valids[2] <= (bankmachine2_cmd_valid & (((bankmachine2_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine2_cmd_payload_ras & (~bankmachine2_cmd_payload_cas)) & (~bankmachine2_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine2_cmd_payload_is_read == choose_req_want_reads) & (bankmachine2_cmd_payload_is_write == choose_req_want_writes))));
	choose_req_valids[3] <= (bankmachine3_cmd_valid & (((bankmachine3_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine3_cmd_payload_ras & (~bankmachine3_cmd_payload_cas)) & (~bankmachine3_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine3_cmd_payload_is_read == choose_req_want_reads) & (bankmachine3_cmd_payload_is_write == choose_req_want_writes))));
	choose_req_valids[4] <= (bankmachine4_cmd_valid & (((bankmachine4_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine4_cmd_payload_ras & (~bankmachine4_cmd_payload_cas)) & (~bankmachine4_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine4_cmd_payload_is_read == choose_req_want_reads) & (bankmachine4_cmd_payload_is_write == choose_req_want_writes))));
	choose_req_valids[5] <= (bankmachine5_cmd_valid & (((bankmachine5_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine5_cmd_payload_ras & (~bankmachine5_cmd_payload_cas)) & (~bankmachine5_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine5_cmd_payload_is_read == choose_req_want_reads) & (bankmachine5_cmd_payload_is_write == choose_req_want_writes))));
	choose_req_valids[6] <= (bankmachine6_cmd_valid & (((bankmachine6_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine6_cmd_payload_ras & (~bankmachine6_cmd_payload_cas)) & (~bankmachine6_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine6_cmd_payload_is_read == choose_req_want_reads) & (bankmachine6_cmd_payload_is_write == choose_req_want_writes))));
	choose_req_valids[7] <= (bankmachine7_cmd_valid & (((bankmachine7_cmd_payload_is_cmd & choose_req_want_cmds) & ((~((bankmachine7_cmd_payload_ras & (~bankmachine7_cmd_payload_cas)) & (~bankmachine7_cmd_payload_we))) | choose_req_want_activates)) | ((bankmachine7_cmd_payload_is_read == choose_req_want_reads) & (bankmachine7_cmd_payload_is_write == choose_req_want_writes))));
// synthesis translate_off
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end
assign choose_req_request = choose_req_valids;
assign choose_req_cmd_valid = rhs_array_muxed6;
assign choose_req_cmd_payload_a = rhs_array_muxed7;
assign choose_req_cmd_payload_ba = rhs_array_muxed8;
assign choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign choose_req_cmd_payload_is_cmd = rhs_array_muxed11;

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	choose_req_cmd_payload_cas <= 1'd0;
	if (choose_req_cmd_valid) begin
		choose_req_cmd_payload_cas <= t_array_muxed3;
	end
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	choose_req_cmd_payload_ras <= 1'd0;
	if (choose_req_cmd_valid) begin
		choose_req_cmd_payload_ras <= t_array_muxed4;
	end
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	choose_req_cmd_payload_we <= 1'd0;
	if (choose_req_cmd_valid) begin
		choose_req_cmd_payload_we <= t_array_muxed5;
	end
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	bankmachine0_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 1'd0))) begin
		bankmachine0_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 1'd0))) begin
		bankmachine0_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	bankmachine1_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 1'd1))) begin
		bankmachine1_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 1'd1))) begin
		bankmachine1_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
always @(*) begin
	bankmachine2_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 2'd2))) begin
		bankmachine2_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 2'd2))) begin
		bankmachine2_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	bankmachine3_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 2'd3))) begin
		bankmachine3_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 2'd3))) begin
		bankmachine3_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	bankmachine4_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 3'd4))) begin
		bankmachine4_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 3'd4))) begin
		bankmachine4_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	bankmachine5_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 3'd5))) begin
		bankmachine5_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 3'd5))) begin
		bankmachine5_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	bankmachine6_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 3'd6))) begin
		bankmachine6_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 3'd6))) begin
		bankmachine6_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	bankmachine7_cmd_ready <= 1'd0;
	if (((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & (choose_cmd_grant == 3'd7))) begin
		bankmachine7_cmd_ready <= 1'd1;
	end
	if (((choose_req_cmd_valid & choose_req_cmd_ready) & (choose_req_grant == 3'd7))) begin
		bankmachine7_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end
assign choose_req_ce = (choose_req_cmd_ready | (~choose_req_cmd_valid));
assign dfi_p0_reset_n = 1'd1;
assign dfi_p0_cke = {1{steerer0}};
assign dfi_p0_odt = {1{steerer1}};
assign dfi_p1_reset_n = 1'd1;
assign dfi_p1_cke = {1{steerer2}};
assign dfi_p1_odt = {1{steerer3}};
assign dfi_p2_reset_n = 1'd1;
assign dfi_p2_cke = {1{steerer4}};
assign dfi_p2_odt = {1{steerer5}};
assign dfi_p3_reset_n = 1'd1;
assign dfi_p3_cke = {1{steerer6}};
assign dfi_p3_odt = {1{steerer7}};
assign dfi_p4_reset_n = 1'd1;
assign dfi_p4_cke = {1{steerer8}};
assign dfi_p4_odt = {1{steerer9}};
assign dfi_p5_reset_n = 1'd1;
assign dfi_p5_cke = {1{steerer10}};
assign dfi_p5_odt = {1{steerer11}};
assign dfi_p6_reset_n = 1'd1;
assign dfi_p6_cke = {1{steerer12}};
assign dfi_p6_odt = {1{steerer13}};
assign dfi_p7_reset_n = 1'd1;
assign dfi_p7_cke = {1{steerer14}};
assign dfi_p7_odt = {1{steerer15}};
assign tfawcon_count = (((((((((((tfawcon_window[0] + tfawcon_window[1]) + tfawcon_window[2]) + tfawcon_window[3]) + tfawcon_window[4]) + tfawcon_window[5]) + tfawcon_window[6]) + tfawcon_window[7]) + tfawcon_window[8]) + tfawcon_window[9]) + tfawcon_window[10]) + tfawcon_window[11]);

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	cmd_ready <= 1'd0;
	choose_cmd_want_activates <= 1'd0;
	choose_cmd_cmd_ready <= 1'd0;
	choose_req_want_reads <= 1'd0;
	choose_req_want_writes <= 1'd0;
	choose_req_cmd_ready <= 1'd0;
	steerer_sel0 <= 2'd0;
	steerer_sel1 <= 2'd0;
	steerer_sel2 <= 2'd0;
	steerer_sel3 <= 2'd0;
	steerer_sel4 <= 2'd0;
	steerer_sel5 <= 2'd0;
	steerer_sel6 <= 2'd0;
	steerer_sel7 <= 2'd0;
	en0 <= 1'd0;
	en1 <= 1'd0;
	multiplexer_next_state <= 4'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			en1 <= 1'd1;
			choose_req_want_writes <= 1'd1;
			if (1'd0) begin
				choose_req_cmd_ready <= (cas_allowed & ((~((choose_req_cmd_payload_ras & (~choose_req_cmd_payload_cas)) & (~choose_req_cmd_payload_we))) | ras_allowed));
			end else begin
				choose_cmd_want_activates <= ras_allowed;
				choose_cmd_cmd_ready <= ((~((choose_cmd_cmd_payload_ras & (~choose_cmd_cmd_payload_cas)) & (~choose_cmd_cmd_payload_we))) | ras_allowed);
				choose_req_cmd_ready <= cas_allowed;
			end
			steerer_sel0 <= 1'd0;
			if ((wrphase_storage == 1'd0)) begin
				steerer_sel0 <= 2'd2;
			end
			if ((wrcmdphase == 1'd0)) begin
				steerer_sel0 <= 1'd1;
			end
			steerer_sel1 <= 1'd0;
			if ((wrphase_storage == 1'd1)) begin
				steerer_sel1 <= 2'd2;
			end
			if ((wrcmdphase == 1'd1)) begin
				steerer_sel1 <= 1'd1;
			end
			steerer_sel2 <= 1'd0;
			if ((wrphase_storage == 2'd2)) begin
				steerer_sel2 <= 2'd2;
			end
			if ((wrcmdphase == 2'd2)) begin
				steerer_sel2 <= 1'd1;
			end
			steerer_sel3 <= 1'd0;
			if ((wrphase_storage == 2'd3)) begin
				steerer_sel3 <= 2'd2;
			end
			if ((wrcmdphase == 2'd3)) begin
				steerer_sel3 <= 1'd1;
			end
			steerer_sel4 <= 1'd0;
			if ((wrphase_storage == 3'd4)) begin
				steerer_sel4 <= 2'd2;
			end
			if ((wrcmdphase == 3'd4)) begin
				steerer_sel4 <= 1'd1;
			end
			steerer_sel5 <= 1'd0;
			if ((wrphase_storage == 3'd5)) begin
				steerer_sel5 <= 2'd2;
			end
			if ((wrcmdphase == 3'd5)) begin
				steerer_sel5 <= 1'd1;
			end
			steerer_sel6 <= 1'd0;
			if ((wrphase_storage == 3'd6)) begin
				steerer_sel6 <= 2'd2;
			end
			if ((wrcmdphase == 3'd6)) begin
				steerer_sel6 <= 1'd1;
			end
			steerer_sel7 <= 1'd0;
			if ((wrphase_storage == 3'd7)) begin
				steerer_sel7 <= 2'd2;
			end
			if ((wrcmdphase == 3'd7)) begin
				steerer_sel7 <= 1'd1;
			end
			if (read_available) begin
				if (((~write_available) | max_time1)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			steerer_sel0 <= 2'd3;
			cmd_ready <= 1'd1;
			if (cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (twtrcon_ready) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		3'd4: begin
			multiplexer_next_state <= 3'd5;
		end
		3'd5: begin
			multiplexer_next_state <= 3'd6;
		end
		3'd6: begin
			multiplexer_next_state <= 3'd7;
		end
		3'd7: begin
			multiplexer_next_state <= 4'd8;
		end
		4'd8: begin
			multiplexer_next_state <= 4'd9;
		end
		4'd9: begin
			multiplexer_next_state <= 4'd10;
		end
		4'd10: begin
			multiplexer_next_state <= 4'd11;
		end
		4'd11: begin
			multiplexer_next_state <= 4'd12;
		end
		4'd12: begin
			multiplexer_next_state <= 4'd13;
		end
		4'd13: begin
			multiplexer_next_state <= 1'd1;
		end
		default: begin
			en0 <= 1'd1;
			choose_req_want_reads <= 1'd1;
			if (1'd0) begin
				choose_req_cmd_ready <= (cas_allowed & ((~((choose_req_cmd_payload_ras & (~choose_req_cmd_payload_cas)) & (~choose_req_cmd_payload_we))) | ras_allowed));
			end else begin
				choose_cmd_want_activates <= ras_allowed;
				choose_cmd_cmd_ready <= ((~((choose_cmd_cmd_payload_ras & (~choose_cmd_cmd_payload_cas)) & (~choose_cmd_cmd_payload_we))) | ras_allowed);
				choose_req_cmd_ready <= cas_allowed;
			end
			steerer_sel0 <= 1'd0;
			if ((rdphase_storage == 1'd0)) begin
				steerer_sel0 <= 2'd2;
			end
			if ((rdcmdphase == 1'd0)) begin
				steerer_sel0 <= 1'd1;
			end
			steerer_sel1 <= 1'd0;
			if ((rdphase_storage == 1'd1)) begin
				steerer_sel1 <= 2'd2;
			end
			if ((rdcmdphase == 1'd1)) begin
				steerer_sel1 <= 1'd1;
			end
			steerer_sel2 <= 1'd0;
			if ((rdphase_storage == 2'd2)) begin
				steerer_sel2 <= 2'd2;
			end
			if ((rdcmdphase == 2'd2)) begin
				steerer_sel2 <= 1'd1;
			end
			steerer_sel3 <= 1'd0;
			if ((rdphase_storage == 2'd3)) begin
				steerer_sel3 <= 2'd2;
			end
			if ((rdcmdphase == 2'd3)) begin
				steerer_sel3 <= 1'd1;
			end
			steerer_sel4 <= 1'd0;
			if ((rdphase_storage == 3'd4)) begin
				steerer_sel4 <= 2'd2;
			end
			if ((rdcmdphase == 3'd4)) begin
				steerer_sel4 <= 1'd1;
			end
			steerer_sel5 <= 1'd0;
			if ((rdphase_storage == 3'd5)) begin
				steerer_sel5 <= 2'd2;
			end
			if ((rdcmdphase == 3'd5)) begin
				steerer_sel5 <= 1'd1;
			end
			steerer_sel6 <= 1'd0;
			if ((rdphase_storage == 3'd6)) begin
				steerer_sel6 <= 2'd2;
			end
			if ((rdcmdphase == 3'd6)) begin
				steerer_sel6 <= 1'd1;
			end
			steerer_sel7 <= 1'd0;
			if ((rdphase_storage == 3'd7)) begin
				steerer_sel7 <= 2'd2;
			end
			if ((rdcmdphase == 3'd7)) begin
				steerer_sel7 <= 1'd1;
			end
			if (write_available) begin
				if (((~read_available) | max_time0)) begin
					multiplexer_next_state <= 3'd4;
				end
			end
			if (go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
	endcase
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end
assign roundrobin0_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((locked1 | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((locked0 | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin0_ce = ((~interface_bank0_valid) & (~interface_bank0_lock));
assign interface_bank0_addr = rhs_array_muxed12;
assign interface_bank0_we = rhs_array_muxed13;
assign interface_bank0_valid = rhs_array_muxed14;
assign roundrobin1_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((locked3 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((locked2 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin1_ce = ((~interface_bank1_valid) & (~interface_bank1_lock));
assign interface_bank1_addr = rhs_array_muxed15;
assign interface_bank1_we = rhs_array_muxed16;
assign interface_bank1_valid = rhs_array_muxed17;
assign roundrobin2_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((locked5 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((locked4 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin2_ce = ((~interface_bank2_valid) & (~interface_bank2_lock));
assign interface_bank2_addr = rhs_array_muxed18;
assign interface_bank2_we = rhs_array_muxed19;
assign interface_bank2_valid = rhs_array_muxed20;
assign roundrobin3_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((locked7 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((locked6 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin3_ce = ((~interface_bank3_valid) & (~interface_bank3_lock));
assign interface_bank3_addr = rhs_array_muxed21;
assign interface_bank3_we = rhs_array_muxed22;
assign interface_bank3_valid = rhs_array_muxed23;
assign roundrobin4_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((locked9 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((locked8 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin4_ce = ((~interface_bank4_valid) & (~interface_bank4_lock));
assign interface_bank4_addr = rhs_array_muxed24;
assign interface_bank4_we = rhs_array_muxed25;
assign interface_bank4_valid = rhs_array_muxed26;
assign roundrobin5_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((locked11 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((locked10 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin5_ce = ((~interface_bank5_valid) & (~interface_bank5_lock));
assign interface_bank5_addr = rhs_array_muxed27;
assign interface_bank5_we = rhs_array_muxed28;
assign interface_bank5_valid = rhs_array_muxed29;
assign roundrobin6_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((locked13 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((locked12 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin6_ce = ((~interface_bank6_valid) & (~interface_bank6_lock));
assign interface_bank6_addr = rhs_array_muxed30;
assign interface_bank6_we = rhs_array_muxed31;
assign interface_bank6_valid = rhs_array_muxed32;
assign roundrobin7_request = {(((litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((locked15 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))))) & litedramnativeport1_cmd_valid), (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((locked14 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & litedramnativeport0_cmd_valid)};
assign roundrobin7_ce = ((~interface_bank7_valid) & (~interface_bank7_lock));
assign interface_bank7_addr = rhs_array_muxed33;
assign interface_bank7_we = rhs_array_muxed34;
assign interface_bank7_valid = rhs_array_muxed35;
assign litedramnativeport0_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((locked0 | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & interface_bank0_ready)) | (((roundrobin1_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((locked2 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & interface_bank1_ready)) | (((roundrobin2_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((locked4 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & interface_bank2_ready)) | (((roundrobin3_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((locked6 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & interface_bank3_ready)) | (((roundrobin4_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((locked8 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & interface_bank4_ready)) | (((roundrobin5_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((locked10 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & interface_bank5_ready)) | (((roundrobin6_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((locked12 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0)))))) & interface_bank6_ready)) | (((roundrobin7_grant == 1'd0) & ((litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((locked14 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0)))))) & interface_bank7_ready));
assign litedramnativeport1_cmd_ready = ((((((((1'd0 | (((roundrobin0_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((locked1 | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & interface_bank0_ready)) | (((roundrobin1_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((locked3 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & interface_bank1_ready)) | (((roundrobin2_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((locked5 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & interface_bank2_ready)) | (((roundrobin3_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((locked7 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & interface_bank3_ready)) | (((roundrobin4_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((locked9 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & interface_bank4_ready)) | (((roundrobin5_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((locked11 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & interface_bank5_ready)) | (((roundrobin6_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((locked13 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1)))))) & interface_bank6_ready)) | (((roundrobin7_grant == 1'd1) & ((litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((locked15 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1)))))) & interface_bank7_ready));
assign litedramnativeport0_wdata_ready = new_master_wdata_ready3;
assign litedramnativeport1_wdata_ready = new_master_wdata_ready7;
assign litedramnativeport0_rdata_valid = new_master_rdata_valid11;
assign litedramnativeport1_rdata_valid = new_master_rdata_valid23;

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	interface_wdata <= 256'd0;
	interface_wdata_we <= 32'd0;
	case ({new_master_wdata_ready7, new_master_wdata_ready3})
		1'd1: begin
			interface_wdata <= litedramnativeport0_wdata_payload_data;
			interface_wdata_we <= litedramnativeport0_wdata_payload_we;
		end
		2'd2: begin
			interface_wdata <= litedramnativeport1_wdata_payload_data;
			interface_wdata_we <= litedramnativeport1_wdata_payload_we;
		end
		default: begin
			interface_wdata <= 1'd0;
			interface_wdata_we <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end
assign litedramnativeport0_rdata_payload_data = interface_rdata;
assign litedramnativeport1_rdata_payload_data = interface_rdata;

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed0 <= 1'd0;
	case (choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= choose_cmd_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_51 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_52;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed1 <= 17'd0;
	case (choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_52 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_53;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed2 <= 3'd0;
	case (choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_53 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_54;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed3 <= 1'd0;
	case (choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_54 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_55;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed4 <= 1'd0;
	case (choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_55 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_56;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed5 <= 1'd0;
	case (choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_56 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_57;
// synthesis translate_on
always @(*) begin
	t_array_muxed0 <= 1'd0;
	case (choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_57 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_58;
// synthesis translate_on
always @(*) begin
	t_array_muxed1 <= 1'd0;
	case (choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_58 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_59;
// synthesis translate_on
always @(*) begin
	t_array_muxed2 <= 1'd0;
	case (choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_59 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_60;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed6 <= 1'd0;
	case (choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= choose_req_valids[7];
		end
	endcase
// synthesis translate_off
	dummy_d_60 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_61;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed7 <= 17'd0;
	case (choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= bankmachine7_cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_61 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_62;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed8 <= 3'd0;
	case (choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= bankmachine7_cmd_payload_ba;
		end
	endcase
// synthesis translate_off
	dummy_d_62 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_63;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed9 <= 1'd0;
	case (choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= bankmachine7_cmd_payload_is_read;
		end
	endcase
// synthesis translate_off
	dummy_d_63 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_64;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed10 <= 1'd0;
	case (choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= bankmachine7_cmd_payload_is_write;
		end
	endcase
// synthesis translate_off
	dummy_d_64 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_65;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed11 <= 1'd0;
	case (choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= bankmachine7_cmd_payload_is_cmd;
		end
	endcase
// synthesis translate_off
	dummy_d_65 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_66;
// synthesis translate_on
always @(*) begin
	t_array_muxed3 <= 1'd0;
	case (choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= bankmachine7_cmd_payload_cas;
		end
	endcase
// synthesis translate_off
	dummy_d_66 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_67;
// synthesis translate_on
always @(*) begin
	t_array_muxed4 <= 1'd0;
	case (choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= bankmachine7_cmd_payload_ras;
		end
	endcase
// synthesis translate_off
	dummy_d_67 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_68;
// synthesis translate_on
always @(*) begin
	t_array_muxed5 <= 1'd0;
	case (choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= bankmachine7_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_68 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_69;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed12 <= 23'd0;
	case (roundrobin0_grant)
		1'd0: begin
			rhs_array_muxed12 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed12 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_69 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_70;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed13 <= 1'd0;
	case (roundrobin0_grant)
		1'd0: begin
			rhs_array_muxed13 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed13 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_70 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_71;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed14 <= 1'd0;
	case (roundrobin0_grant)
		1'd0: begin
			rhs_array_muxed14 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 1'd0) & (~(((((((locked0 | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed14 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 1'd0) & (~(((((((locked1 | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_71 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_72;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed15 <= 23'd0;
	case (roundrobin1_grant)
		1'd0: begin
			rhs_array_muxed15 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed15 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_72 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_73;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed16 <= 1'd0;
	case (roundrobin1_grant)
		1'd0: begin
			rhs_array_muxed16 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed16 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_73 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_74;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed17 <= 1'd0;
	case (roundrobin1_grant)
		1'd0: begin
			rhs_array_muxed17 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 1'd1) & (~(((((((locked2 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed17 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 1'd1) & (~(((((((locked3 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_74 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_75;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed18 <= 23'd0;
	case (roundrobin2_grant)
		1'd0: begin
			rhs_array_muxed18 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed18 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_75 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_76;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed19 <= 1'd0;
	case (roundrobin2_grant)
		1'd0: begin
			rhs_array_muxed19 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed19 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_76 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_77;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed20 <= 1'd0;
	case (roundrobin2_grant)
		1'd0: begin
			rhs_array_muxed20 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 2'd2) & (~(((((((locked4 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed20 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 2'd2) & (~(((((((locked5 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_77 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_78;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed21 <= 23'd0;
	case (roundrobin3_grant)
		1'd0: begin
			rhs_array_muxed21 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed21 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_78 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_79;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed22 <= 1'd0;
	case (roundrobin3_grant)
		1'd0: begin
			rhs_array_muxed22 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed22 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_79 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_80;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed23 <= 1'd0;
	case (roundrobin3_grant)
		1'd0: begin
			rhs_array_muxed23 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 2'd3) & (~(((((((locked6 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed23 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 2'd3) & (~(((((((locked7 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
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
	rhs_array_muxed24 <= 23'd0;
	case (roundrobin4_grant)
		1'd0: begin
			rhs_array_muxed24 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed24 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_81 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_82;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed25 <= 1'd0;
	case (roundrobin4_grant)
		1'd0: begin
			rhs_array_muxed25 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed25 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_82 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_83;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed26 <= 1'd0;
	case (roundrobin4_grant)
		1'd0: begin
			rhs_array_muxed26 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd4) & (~(((((((locked8 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed26 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 3'd4) & (~(((((((locked9 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_83 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_84;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed27 <= 23'd0;
	case (roundrobin5_grant)
		1'd0: begin
			rhs_array_muxed27 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed27 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_84 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_85;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed28 <= 1'd0;
	case (roundrobin5_grant)
		1'd0: begin
			rhs_array_muxed28 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed28 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_85 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_86;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed29 <= 1'd0;
	case (roundrobin5_grant)
		1'd0: begin
			rhs_array_muxed29 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd5) & (~(((((((locked10 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed29 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 3'd5) & (~(((((((locked11 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_86 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_87;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed30 <= 23'd0;
	case (roundrobin6_grant)
		1'd0: begin
			rhs_array_muxed30 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed30 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_87 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_88;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed31 <= 1'd0;
	case (roundrobin6_grant)
		1'd0: begin
			rhs_array_muxed31 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed31 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_88 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_89;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed32 <= 1'd0;
	case (roundrobin6_grant)
		1'd0: begin
			rhs_array_muxed32 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd6) & (~(((((((locked12 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (roundrobin7_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed32 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 3'd6) & (~(((((((locked13 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (roundrobin7_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_89 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_90;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed33 <= 23'd0;
	case (roundrobin7_grant)
		1'd0: begin
			rhs_array_muxed33 <= {litedramnativeport0_cmd_payload_addr[25:9], litedramnativeport0_cmd_payload_addr[5:0]};
		end
		default: begin
			rhs_array_muxed33 <= {litedramnativeport1_cmd_payload_addr[25:9], litedramnativeport1_cmd_payload_addr[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_90 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_91;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed34 <= 1'd0;
	case (roundrobin7_grant)
		1'd0: begin
			rhs_array_muxed34 <= litedramnativeport0_cmd_payload_we;
		end
		default: begin
			rhs_array_muxed34 <= litedramnativeport1_cmd_payload_we;
		end
	endcase
// synthesis translate_off
	dummy_d_91 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_92;
// synthesis translate_on
always @(*) begin
	rhs_array_muxed35 <= 1'd0;
	case (roundrobin7_grant)
		1'd0: begin
			rhs_array_muxed35 <= (((litedramnativeport0_cmd_payload_addr[8:6] == 3'd7) & (~(((((((locked14 | (interface_bank0_lock & (roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (roundrobin6_grant == 1'd0))))) & litedramnativeport0_cmd_valid);
		end
		default: begin
			rhs_array_muxed35 <= (((litedramnativeport1_cmd_payload_addr[8:6] == 3'd7) & (~(((((((locked15 | (interface_bank0_lock & (roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (roundrobin6_grant == 1'd1))))) & litedramnativeport1_cmd_valid);
		end
	endcase
// synthesis translate_off
	dummy_d_92 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_93;
// synthesis translate_on
always @(*) begin
	array_muxed0 <= 3'd0;
	case (steerer_sel0)
		1'd0: begin
			array_muxed0 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed0 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed0 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed0 <= cmd_payload_ba[2:0];
		end
	endcase
// synthesis translate_off
	dummy_d_93 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_94;
// synthesis translate_on
always @(*) begin
	array_muxed1 <= 17'd0;
	case (steerer_sel0)
		1'd0: begin
			array_muxed1 <= nop_a;
		end
		1'd1: begin
			array_muxed1 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed1 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed1 <= cmd_payload_a;
		end
	endcase
// synthesis translate_off
	dummy_d_94 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_95;
// synthesis translate_on
always @(*) begin
	array_muxed2 <= 1'd0;
	case (steerer_sel0)
		1'd0: begin
			array_muxed2 <= 1'd0;
		end
		1'd1: begin
			array_muxed2 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed2 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed2 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
		end
	endcase
// synthesis translate_off
	dummy_d_95 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_96;
// synthesis translate_on
always @(*) begin
	array_muxed3 <= 1'd0;
	case (steerer_sel0)
		1'd0: begin
			array_muxed3 <= 1'd0;
		end
		1'd1: begin
			array_muxed3 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed3 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed3 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed4 <= 1'd0;
	case (steerer_sel0)
		1'd0: begin
			array_muxed4 <= 1'd0;
		end
		1'd1: begin
			array_muxed4 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed4 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed4 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed5 <= 1'd0;
	case (steerer_sel0)
		1'd0: begin
			array_muxed5 <= 1'd0;
		end
		1'd1: begin
			array_muxed5 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed5 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed5 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed6 <= 1'd0;
	case (steerer_sel0)
		1'd0: begin
			array_muxed6 <= 1'd0;
		end
		1'd1: begin
			array_muxed6 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed6 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed6 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
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
	array_muxed7 <= 3'd0;
	case (steerer_sel1)
		1'd0: begin
			array_muxed7 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed7 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed7 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed7 <= cmd_payload_ba[2:0];
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
	array_muxed8 <= 17'd0;
	case (steerer_sel1)
		1'd0: begin
			array_muxed8 <= nop_a;
		end
		1'd1: begin
			array_muxed8 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed8 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed8 <= cmd_payload_a;
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
	array_muxed9 <= 1'd0;
	case (steerer_sel1)
		1'd0: begin
			array_muxed9 <= 1'd0;
		end
		1'd1: begin
			array_muxed9 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed9 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed9 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
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
	array_muxed10 <= 1'd0;
	case (steerer_sel1)
		1'd0: begin
			array_muxed10 <= 1'd0;
		end
		1'd1: begin
			array_muxed10 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed10 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed10 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed11 <= 1'd0;
	case (steerer_sel1)
		1'd0: begin
			array_muxed11 <= 1'd0;
		end
		1'd1: begin
			array_muxed11 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed11 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed11 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed12 <= 1'd0;
	case (steerer_sel1)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed12 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed12 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed13 <= 1'd0;
	case (steerer_sel1)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed13 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed13 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
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
	array_muxed14 <= 3'd0;
	case (steerer_sel2)
		1'd0: begin
			array_muxed14 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed14 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed14 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed14 <= cmd_payload_ba[2:0];
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
	array_muxed15 <= 17'd0;
	case (steerer_sel2)
		1'd0: begin
			array_muxed15 <= nop_a;
		end
		1'd1: begin
			array_muxed15 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed15 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed15 <= cmd_payload_a;
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
	array_muxed16 <= 1'd0;
	case (steerer_sel2)
		1'd0: begin
			array_muxed16 <= 1'd0;
		end
		1'd1: begin
			array_muxed16 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed16 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed16 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
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
	array_muxed17 <= 1'd0;
	case (steerer_sel2)
		1'd0: begin
			array_muxed17 <= 1'd0;
		end
		1'd1: begin
			array_muxed17 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed17 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed17 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed18 <= 1'd0;
	case (steerer_sel2)
		1'd0: begin
			array_muxed18 <= 1'd0;
		end
		1'd1: begin
			array_muxed18 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed18 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed18 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed19 <= 1'd0;
	case (steerer_sel2)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed19 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed19 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed20 <= 1'd0;
	case (steerer_sel2)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed20 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed20 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
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
	array_muxed21 <= 3'd0;
	case (steerer_sel3)
		1'd0: begin
			array_muxed21 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed21 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed21 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed21 <= cmd_payload_ba[2:0];
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
	array_muxed22 <= 17'd0;
	case (steerer_sel3)
		1'd0: begin
			array_muxed22 <= nop_a;
		end
		1'd1: begin
			array_muxed22 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed22 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed22 <= cmd_payload_a;
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
	array_muxed23 <= 1'd0;
	case (steerer_sel3)
		1'd0: begin
			array_muxed23 <= 1'd0;
		end
		1'd1: begin
			array_muxed23 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed23 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed23 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
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
	array_muxed24 <= 1'd0;
	case (steerer_sel3)
		1'd0: begin
			array_muxed24 <= 1'd0;
		end
		1'd1: begin
			array_muxed24 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed24 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed24 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed25 <= 1'd0;
	case (steerer_sel3)
		1'd0: begin
			array_muxed25 <= 1'd0;
		end
		1'd1: begin
			array_muxed25 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed25 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed25 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed26 <= 1'd0;
	case (steerer_sel3)
		1'd0: begin
			array_muxed26 <= 1'd0;
		end
		1'd1: begin
			array_muxed26 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed26 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed26 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed27 <= 1'd0;
	case (steerer_sel3)
		1'd0: begin
			array_muxed27 <= 1'd0;
		end
		1'd1: begin
			array_muxed27 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed27 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed27 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
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
	array_muxed28 <= 3'd0;
	case (steerer_sel4)
		1'd0: begin
			array_muxed28 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed28 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed28 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed28 <= cmd_payload_ba[2:0];
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
	array_muxed29 <= 17'd0;
	case (steerer_sel4)
		1'd0: begin
			array_muxed29 <= nop_a;
		end
		1'd1: begin
			array_muxed29 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed29 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed29 <= cmd_payload_a;
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
	array_muxed30 <= 1'd0;
	case (steerer_sel4)
		1'd0: begin
			array_muxed30 <= 1'd0;
		end
		1'd1: begin
			array_muxed30 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed30 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed30 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
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
	array_muxed31 <= 1'd0;
	case (steerer_sel4)
		1'd0: begin
			array_muxed31 <= 1'd0;
		end
		1'd1: begin
			array_muxed31 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed31 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed31 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed32 <= 1'd0;
	case (steerer_sel4)
		1'd0: begin
			array_muxed32 <= 1'd0;
		end
		1'd1: begin
			array_muxed32 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed32 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed32 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed33 <= 1'd0;
	case (steerer_sel4)
		1'd0: begin
			array_muxed33 <= 1'd0;
		end
		1'd1: begin
			array_muxed33 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed33 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed33 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed34 <= 1'd0;
	case (steerer_sel4)
		1'd0: begin
			array_muxed34 <= 1'd0;
		end
		1'd1: begin
			array_muxed34 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed34 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed34 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
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
	array_muxed35 <= 3'd0;
	case (steerer_sel5)
		1'd0: begin
			array_muxed35 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed35 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed35 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed35 <= cmd_payload_ba[2:0];
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
	array_muxed36 <= 17'd0;
	case (steerer_sel5)
		1'd0: begin
			array_muxed36 <= nop_a;
		end
		1'd1: begin
			array_muxed36 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed36 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed36 <= cmd_payload_a;
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
	array_muxed37 <= 1'd0;
	case (steerer_sel5)
		1'd0: begin
			array_muxed37 <= 1'd0;
		end
		1'd1: begin
			array_muxed37 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed37 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed37 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
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
	array_muxed38 <= 1'd0;
	case (steerer_sel5)
		1'd0: begin
			array_muxed38 <= 1'd0;
		end
		1'd1: begin
			array_muxed38 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed38 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed38 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed39 <= 1'd0;
	case (steerer_sel5)
		1'd0: begin
			array_muxed39 <= 1'd0;
		end
		1'd1: begin
			array_muxed39 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed39 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed39 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed40 <= 1'd0;
	case (steerer_sel5)
		1'd0: begin
			array_muxed40 <= 1'd0;
		end
		1'd1: begin
			array_muxed40 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed40 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed40 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed41 <= 1'd0;
	case (steerer_sel5)
		1'd0: begin
			array_muxed41 <= 1'd0;
		end
		1'd1: begin
			array_muxed41 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed41 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed41 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
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
	array_muxed42 <= 3'd0;
	case (steerer_sel6)
		1'd0: begin
			array_muxed42 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed42 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed42 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed42 <= cmd_payload_ba[2:0];
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
	array_muxed43 <= 17'd0;
	case (steerer_sel6)
		1'd0: begin
			array_muxed43 <= nop_a;
		end
		1'd1: begin
			array_muxed43 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed43 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed43 <= cmd_payload_a;
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
	array_muxed44 <= 1'd0;
	case (steerer_sel6)
		1'd0: begin
			array_muxed44 <= 1'd0;
		end
		1'd1: begin
			array_muxed44 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed44 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed44 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
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
	array_muxed45 <= 1'd0;
	case (steerer_sel6)
		1'd0: begin
			array_muxed45 <= 1'd0;
		end
		1'd1: begin
			array_muxed45 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed45 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed45 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed46 <= 1'd0;
	case (steerer_sel6)
		1'd0: begin
			array_muxed46 <= 1'd0;
		end
		1'd1: begin
			array_muxed46 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed46 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed46 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed47 <= 1'd0;
	case (steerer_sel6)
		1'd0: begin
			array_muxed47 <= 1'd0;
		end
		1'd1: begin
			array_muxed47 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed47 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed47 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed48 <= 1'd0;
	case (steerer_sel6)
		1'd0: begin
			array_muxed48 <= 1'd0;
		end
		1'd1: begin
			array_muxed48 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed48 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed48 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
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
	array_muxed49 <= 3'd0;
	case (steerer_sel7)
		1'd0: begin
			array_muxed49 <= nop_ba[2:0];
		end
		1'd1: begin
			array_muxed49 <= choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed49 <= choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed49 <= cmd_payload_ba[2:0];
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
	array_muxed50 <= 17'd0;
	case (steerer_sel7)
		1'd0: begin
			array_muxed50 <= nop_a;
		end
		1'd1: begin
			array_muxed50 <= choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed50 <= choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed50 <= cmd_payload_a;
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
	array_muxed51 <= 1'd0;
	case (steerer_sel7)
		1'd0: begin
			array_muxed51 <= 1'd0;
		end
		1'd1: begin
			array_muxed51 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed51 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed51 <= ((cmd_valid & cmd_ready) & cmd_payload_cas);
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
	array_muxed52 <= 1'd0;
	case (steerer_sel7)
		1'd0: begin
			array_muxed52 <= 1'd0;
		end
		1'd1: begin
			array_muxed52 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed52 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed52 <= ((cmd_valid & cmd_ready) & cmd_payload_ras);
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
	array_muxed53 <= 1'd0;
	case (steerer_sel7)
		1'd0: begin
			array_muxed53 <= 1'd0;
		end
		1'd1: begin
			array_muxed53 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed53 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed53 <= ((cmd_valid & cmd_ready) & cmd_payload_we);
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
	array_muxed54 <= 1'd0;
	case (steerer_sel7)
		1'd0: begin
			array_muxed54 <= 1'd0;
		end
		1'd1: begin
			array_muxed54 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed54 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed54 <= ((cmd_valid & cmd_ready) & cmd_payload_is_read);
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
	array_muxed55 <= 1'd0;
	case (steerer_sel7)
		1'd0: begin
			array_muxed55 <= 1'd0;
		end
		1'd1: begin
			array_muxed55 <= ((choose_cmd_cmd_valid & choose_cmd_cmd_ready) & choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed55 <= ((choose_req_cmd_valid & choose_req_cmd_ready) & choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed55 <= ((cmd_valid & cmd_ready) & cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_148 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	if ((timer_wait & (~timer_done0))) begin
		timer_count1 <= (timer_count1 - 1'd1);
	end else begin
		timer_count1 <= 11'd1039;
	end
	postponer_req_o <= 1'd0;
	if (postponer_req_i) begin
		postponer_count <= (postponer_count - 1'd1);
		if ((postponer_count == 1'd0)) begin
			postponer_count <= 1'd0;
			postponer_req_o <= 1'd1;
		end
	end
	if (sequencer_start0) begin
		sequencer_count <= 1'd0;
	end else begin
		if (sequencer_done1) begin
			if ((sequencer_count != 1'd0)) begin
				sequencer_count <= (sequencer_count - 1'd1);
			end
		end
	end
	cmd_payload_a <= 1'd0;
	cmd_payload_ba <= 1'd0;
	cmd_payload_cas <= 1'd0;
	cmd_payload_ras <= 1'd0;
	cmd_payload_we <= 1'd0;
	sequencer_done1 <= 1'd0;
	if ((sequencer_start1 & (sequencer_counter == 1'd0))) begin
		cmd_payload_a <= 11'd1024;
		cmd_payload_ba <= 1'd0;
		cmd_payload_cas <= 1'd0;
		cmd_payload_ras <= 1'd1;
		cmd_payload_we <= 1'd1;
	end
	if ((sequencer_counter == 3'd7)) begin
		cmd_payload_a <= 11'd1024;
		cmd_payload_ba <= 1'd0;
		cmd_payload_cas <= 1'd1;
		cmd_payload_ras <= 1'd1;
		cmd_payload_we <= 1'd0;
	end
	if ((sequencer_counter == 6'd56)) begin
		cmd_payload_a <= 1'd0;
		cmd_payload_ba <= 1'd0;
		cmd_payload_cas <= 1'd0;
		cmd_payload_ras <= 1'd0;
		cmd_payload_we <= 1'd0;
		sequencer_done1 <= 1'd1;
	end
	if ((sequencer_counter == 6'd56)) begin
		sequencer_counter <= 1'd0;
	end else begin
		if ((sequencer_counter != 1'd0)) begin
			sequencer_counter <= (sequencer_counter + 1'd1);
		end else begin
			if (sequencer_start1) begin
				sequencer_counter <= 1'd1;
			end
		end
	end
	refresher_state <= refresher_next_state;
	if (bankmachine0_row_close) begin
		bankmachine0_row_opened <= 1'd0;
	end else begin
		if (bankmachine0_row_open) begin
			bankmachine0_row_opened <= 1'd1;
			bankmachine0_row <= bankmachine0_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine0_cmd_buffer_lookahead_syncfifo0_we & bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~bankmachine0_cmd_buffer_lookahead_replace))) begin
		bankmachine0_cmd_buffer_lookahead_produce <= (bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine0_cmd_buffer_lookahead_do_read) begin
		bankmachine0_cmd_buffer_lookahead_consume <= (bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine0_cmd_buffer_lookahead_syncfifo0_we & bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine0_cmd_buffer_lookahead_do_read)) begin
			bankmachine0_cmd_buffer_lookahead_level <= (bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine0_cmd_buffer_lookahead_do_read) begin
			bankmachine0_cmd_buffer_lookahead_level <= (bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine0_cmd_buffer_source_valid) | bankmachine0_cmd_buffer_source_ready)) begin
		bankmachine0_cmd_buffer_source_valid <= bankmachine0_cmd_buffer_sink_valid;
		bankmachine0_cmd_buffer_source_first <= bankmachine0_cmd_buffer_sink_first;
		bankmachine0_cmd_buffer_source_last <= bankmachine0_cmd_buffer_sink_last;
		bankmachine0_cmd_buffer_source_payload_we <= bankmachine0_cmd_buffer_sink_payload_we;
		bankmachine0_cmd_buffer_source_payload_addr <= bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine0_twtpcon_valid) begin
		bankmachine0_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine0_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine0_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine0_twtpcon_ready)) begin
			bankmachine0_twtpcon_count <= (bankmachine0_twtpcon_count - 1'd1);
			if ((bankmachine0_twtpcon_count == 1'd1)) begin
				bankmachine0_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine0_trccon_valid) begin
		bankmachine0_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine0_trccon_ready <= 1'd1;
		end else begin
			bankmachine0_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine0_trccon_ready)) begin
			bankmachine0_trccon_count <= (bankmachine0_trccon_count - 1'd1);
			if ((bankmachine0_trccon_count == 1'd1)) begin
				bankmachine0_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine0_trascon_valid) begin
		bankmachine0_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine0_trascon_ready <= 1'd1;
		end else begin
			bankmachine0_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine0_trascon_ready)) begin
			bankmachine0_trascon_count <= (bankmachine0_trascon_count - 1'd1);
			if ((bankmachine0_trascon_count == 1'd1)) begin
				bankmachine0_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (bankmachine1_row_close) begin
		bankmachine1_row_opened <= 1'd0;
	end else begin
		if (bankmachine1_row_open) begin
			bankmachine1_row_opened <= 1'd1;
			bankmachine1_row <= bankmachine1_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine1_cmd_buffer_lookahead_syncfifo1_we & bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~bankmachine1_cmd_buffer_lookahead_replace))) begin
		bankmachine1_cmd_buffer_lookahead_produce <= (bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine1_cmd_buffer_lookahead_do_read) begin
		bankmachine1_cmd_buffer_lookahead_consume <= (bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine1_cmd_buffer_lookahead_syncfifo1_we & bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine1_cmd_buffer_lookahead_do_read)) begin
			bankmachine1_cmd_buffer_lookahead_level <= (bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine1_cmd_buffer_lookahead_do_read) begin
			bankmachine1_cmd_buffer_lookahead_level <= (bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine1_cmd_buffer_source_valid) | bankmachine1_cmd_buffer_source_ready)) begin
		bankmachine1_cmd_buffer_source_valid <= bankmachine1_cmd_buffer_sink_valid;
		bankmachine1_cmd_buffer_source_first <= bankmachine1_cmd_buffer_sink_first;
		bankmachine1_cmd_buffer_source_last <= bankmachine1_cmd_buffer_sink_last;
		bankmachine1_cmd_buffer_source_payload_we <= bankmachine1_cmd_buffer_sink_payload_we;
		bankmachine1_cmd_buffer_source_payload_addr <= bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine1_twtpcon_valid) begin
		bankmachine1_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine1_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine1_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine1_twtpcon_ready)) begin
			bankmachine1_twtpcon_count <= (bankmachine1_twtpcon_count - 1'd1);
			if ((bankmachine1_twtpcon_count == 1'd1)) begin
				bankmachine1_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine1_trccon_valid) begin
		bankmachine1_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine1_trccon_ready <= 1'd1;
		end else begin
			bankmachine1_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine1_trccon_ready)) begin
			bankmachine1_trccon_count <= (bankmachine1_trccon_count - 1'd1);
			if ((bankmachine1_trccon_count == 1'd1)) begin
				bankmachine1_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine1_trascon_valid) begin
		bankmachine1_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine1_trascon_ready <= 1'd1;
		end else begin
			bankmachine1_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine1_trascon_ready)) begin
			bankmachine1_trascon_count <= (bankmachine1_trascon_count - 1'd1);
			if ((bankmachine1_trascon_count == 1'd1)) begin
				bankmachine1_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (bankmachine2_row_close) begin
		bankmachine2_row_opened <= 1'd0;
	end else begin
		if (bankmachine2_row_open) begin
			bankmachine2_row_opened <= 1'd1;
			bankmachine2_row <= bankmachine2_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine2_cmd_buffer_lookahead_syncfifo2_we & bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~bankmachine2_cmd_buffer_lookahead_replace))) begin
		bankmachine2_cmd_buffer_lookahead_produce <= (bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine2_cmd_buffer_lookahead_do_read) begin
		bankmachine2_cmd_buffer_lookahead_consume <= (bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine2_cmd_buffer_lookahead_syncfifo2_we & bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine2_cmd_buffer_lookahead_do_read)) begin
			bankmachine2_cmd_buffer_lookahead_level <= (bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine2_cmd_buffer_lookahead_do_read) begin
			bankmachine2_cmd_buffer_lookahead_level <= (bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine2_cmd_buffer_source_valid) | bankmachine2_cmd_buffer_source_ready)) begin
		bankmachine2_cmd_buffer_source_valid <= bankmachine2_cmd_buffer_sink_valid;
		bankmachine2_cmd_buffer_source_first <= bankmachine2_cmd_buffer_sink_first;
		bankmachine2_cmd_buffer_source_last <= bankmachine2_cmd_buffer_sink_last;
		bankmachine2_cmd_buffer_source_payload_we <= bankmachine2_cmd_buffer_sink_payload_we;
		bankmachine2_cmd_buffer_source_payload_addr <= bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine2_twtpcon_valid) begin
		bankmachine2_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine2_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine2_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine2_twtpcon_ready)) begin
			bankmachine2_twtpcon_count <= (bankmachine2_twtpcon_count - 1'd1);
			if ((bankmachine2_twtpcon_count == 1'd1)) begin
				bankmachine2_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine2_trccon_valid) begin
		bankmachine2_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine2_trccon_ready <= 1'd1;
		end else begin
			bankmachine2_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine2_trccon_ready)) begin
			bankmachine2_trccon_count <= (bankmachine2_trccon_count - 1'd1);
			if ((bankmachine2_trccon_count == 1'd1)) begin
				bankmachine2_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine2_trascon_valid) begin
		bankmachine2_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine2_trascon_ready <= 1'd1;
		end else begin
			bankmachine2_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine2_trascon_ready)) begin
			bankmachine2_trascon_count <= (bankmachine2_trascon_count - 1'd1);
			if ((bankmachine2_trascon_count == 1'd1)) begin
				bankmachine2_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (bankmachine3_row_close) begin
		bankmachine3_row_opened <= 1'd0;
	end else begin
		if (bankmachine3_row_open) begin
			bankmachine3_row_opened <= 1'd1;
			bankmachine3_row <= bankmachine3_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine3_cmd_buffer_lookahead_syncfifo3_we & bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~bankmachine3_cmd_buffer_lookahead_replace))) begin
		bankmachine3_cmd_buffer_lookahead_produce <= (bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine3_cmd_buffer_lookahead_do_read) begin
		bankmachine3_cmd_buffer_lookahead_consume <= (bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine3_cmd_buffer_lookahead_syncfifo3_we & bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine3_cmd_buffer_lookahead_do_read)) begin
			bankmachine3_cmd_buffer_lookahead_level <= (bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine3_cmd_buffer_lookahead_do_read) begin
			bankmachine3_cmd_buffer_lookahead_level <= (bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine3_cmd_buffer_source_valid) | bankmachine3_cmd_buffer_source_ready)) begin
		bankmachine3_cmd_buffer_source_valid <= bankmachine3_cmd_buffer_sink_valid;
		bankmachine3_cmd_buffer_source_first <= bankmachine3_cmd_buffer_sink_first;
		bankmachine3_cmd_buffer_source_last <= bankmachine3_cmd_buffer_sink_last;
		bankmachine3_cmd_buffer_source_payload_we <= bankmachine3_cmd_buffer_sink_payload_we;
		bankmachine3_cmd_buffer_source_payload_addr <= bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine3_twtpcon_valid) begin
		bankmachine3_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine3_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine3_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine3_twtpcon_ready)) begin
			bankmachine3_twtpcon_count <= (bankmachine3_twtpcon_count - 1'd1);
			if ((bankmachine3_twtpcon_count == 1'd1)) begin
				bankmachine3_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine3_trccon_valid) begin
		bankmachine3_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine3_trccon_ready <= 1'd1;
		end else begin
			bankmachine3_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine3_trccon_ready)) begin
			bankmachine3_trccon_count <= (bankmachine3_trccon_count - 1'd1);
			if ((bankmachine3_trccon_count == 1'd1)) begin
				bankmachine3_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine3_trascon_valid) begin
		bankmachine3_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine3_trascon_ready <= 1'd1;
		end else begin
			bankmachine3_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine3_trascon_ready)) begin
			bankmachine3_trascon_count <= (bankmachine3_trascon_count - 1'd1);
			if ((bankmachine3_trascon_count == 1'd1)) begin
				bankmachine3_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (bankmachine4_row_close) begin
		bankmachine4_row_opened <= 1'd0;
	end else begin
		if (bankmachine4_row_open) begin
			bankmachine4_row_opened <= 1'd1;
			bankmachine4_row <= bankmachine4_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine4_cmd_buffer_lookahead_syncfifo4_we & bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~bankmachine4_cmd_buffer_lookahead_replace))) begin
		bankmachine4_cmd_buffer_lookahead_produce <= (bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine4_cmd_buffer_lookahead_do_read) begin
		bankmachine4_cmd_buffer_lookahead_consume <= (bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine4_cmd_buffer_lookahead_syncfifo4_we & bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine4_cmd_buffer_lookahead_do_read)) begin
			bankmachine4_cmd_buffer_lookahead_level <= (bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine4_cmd_buffer_lookahead_do_read) begin
			bankmachine4_cmd_buffer_lookahead_level <= (bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine4_cmd_buffer_source_valid) | bankmachine4_cmd_buffer_source_ready)) begin
		bankmachine4_cmd_buffer_source_valid <= bankmachine4_cmd_buffer_sink_valid;
		bankmachine4_cmd_buffer_source_first <= bankmachine4_cmd_buffer_sink_first;
		bankmachine4_cmd_buffer_source_last <= bankmachine4_cmd_buffer_sink_last;
		bankmachine4_cmd_buffer_source_payload_we <= bankmachine4_cmd_buffer_sink_payload_we;
		bankmachine4_cmd_buffer_source_payload_addr <= bankmachine4_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine4_twtpcon_valid) begin
		bankmachine4_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine4_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine4_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine4_twtpcon_ready)) begin
			bankmachine4_twtpcon_count <= (bankmachine4_twtpcon_count - 1'd1);
			if ((bankmachine4_twtpcon_count == 1'd1)) begin
				bankmachine4_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine4_trccon_valid) begin
		bankmachine4_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine4_trccon_ready <= 1'd1;
		end else begin
			bankmachine4_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine4_trccon_ready)) begin
			bankmachine4_trccon_count <= (bankmachine4_trccon_count - 1'd1);
			if ((bankmachine4_trccon_count == 1'd1)) begin
				bankmachine4_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine4_trascon_valid) begin
		bankmachine4_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine4_trascon_ready <= 1'd1;
		end else begin
			bankmachine4_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine4_trascon_ready)) begin
			bankmachine4_trascon_count <= (bankmachine4_trascon_count - 1'd1);
			if ((bankmachine4_trascon_count == 1'd1)) begin
				bankmachine4_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (bankmachine5_row_close) begin
		bankmachine5_row_opened <= 1'd0;
	end else begin
		if (bankmachine5_row_open) begin
			bankmachine5_row_opened <= 1'd1;
			bankmachine5_row <= bankmachine5_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine5_cmd_buffer_lookahead_syncfifo5_we & bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~bankmachine5_cmd_buffer_lookahead_replace))) begin
		bankmachine5_cmd_buffer_lookahead_produce <= (bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine5_cmd_buffer_lookahead_do_read) begin
		bankmachine5_cmd_buffer_lookahead_consume <= (bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine5_cmd_buffer_lookahead_syncfifo5_we & bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine5_cmd_buffer_lookahead_do_read)) begin
			bankmachine5_cmd_buffer_lookahead_level <= (bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine5_cmd_buffer_lookahead_do_read) begin
			bankmachine5_cmd_buffer_lookahead_level <= (bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine5_cmd_buffer_source_valid) | bankmachine5_cmd_buffer_source_ready)) begin
		bankmachine5_cmd_buffer_source_valid <= bankmachine5_cmd_buffer_sink_valid;
		bankmachine5_cmd_buffer_source_first <= bankmachine5_cmd_buffer_sink_first;
		bankmachine5_cmd_buffer_source_last <= bankmachine5_cmd_buffer_sink_last;
		bankmachine5_cmd_buffer_source_payload_we <= bankmachine5_cmd_buffer_sink_payload_we;
		bankmachine5_cmd_buffer_source_payload_addr <= bankmachine5_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine5_twtpcon_valid) begin
		bankmachine5_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine5_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine5_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine5_twtpcon_ready)) begin
			bankmachine5_twtpcon_count <= (bankmachine5_twtpcon_count - 1'd1);
			if ((bankmachine5_twtpcon_count == 1'd1)) begin
				bankmachine5_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine5_trccon_valid) begin
		bankmachine5_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine5_trccon_ready <= 1'd1;
		end else begin
			bankmachine5_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine5_trccon_ready)) begin
			bankmachine5_trccon_count <= (bankmachine5_trccon_count - 1'd1);
			if ((bankmachine5_trccon_count == 1'd1)) begin
				bankmachine5_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine5_trascon_valid) begin
		bankmachine5_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine5_trascon_ready <= 1'd1;
		end else begin
			bankmachine5_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine5_trascon_ready)) begin
			bankmachine5_trascon_count <= (bankmachine5_trascon_count - 1'd1);
			if ((bankmachine5_trascon_count == 1'd1)) begin
				bankmachine5_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (bankmachine6_row_close) begin
		bankmachine6_row_opened <= 1'd0;
	end else begin
		if (bankmachine6_row_open) begin
			bankmachine6_row_opened <= 1'd1;
			bankmachine6_row <= bankmachine6_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine6_cmd_buffer_lookahead_syncfifo6_we & bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~bankmachine6_cmd_buffer_lookahead_replace))) begin
		bankmachine6_cmd_buffer_lookahead_produce <= (bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine6_cmd_buffer_lookahead_do_read) begin
		bankmachine6_cmd_buffer_lookahead_consume <= (bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine6_cmd_buffer_lookahead_syncfifo6_we & bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine6_cmd_buffer_lookahead_do_read)) begin
			bankmachine6_cmd_buffer_lookahead_level <= (bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine6_cmd_buffer_lookahead_do_read) begin
			bankmachine6_cmd_buffer_lookahead_level <= (bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine6_cmd_buffer_source_valid) | bankmachine6_cmd_buffer_source_ready)) begin
		bankmachine6_cmd_buffer_source_valid <= bankmachine6_cmd_buffer_sink_valid;
		bankmachine6_cmd_buffer_source_first <= bankmachine6_cmd_buffer_sink_first;
		bankmachine6_cmd_buffer_source_last <= bankmachine6_cmd_buffer_sink_last;
		bankmachine6_cmd_buffer_source_payload_we <= bankmachine6_cmd_buffer_sink_payload_we;
		bankmachine6_cmd_buffer_source_payload_addr <= bankmachine6_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine6_twtpcon_valid) begin
		bankmachine6_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine6_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine6_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine6_twtpcon_ready)) begin
			bankmachine6_twtpcon_count <= (bankmachine6_twtpcon_count - 1'd1);
			if ((bankmachine6_twtpcon_count == 1'd1)) begin
				bankmachine6_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine6_trccon_valid) begin
		bankmachine6_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine6_trccon_ready <= 1'd1;
		end else begin
			bankmachine6_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine6_trccon_ready)) begin
			bankmachine6_trccon_count <= (bankmachine6_trccon_count - 1'd1);
			if ((bankmachine6_trccon_count == 1'd1)) begin
				bankmachine6_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine6_trascon_valid) begin
		bankmachine6_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine6_trascon_ready <= 1'd1;
		end else begin
			bankmachine6_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine6_trascon_ready)) begin
			bankmachine6_trascon_count <= (bankmachine6_trascon_count - 1'd1);
			if ((bankmachine6_trascon_count == 1'd1)) begin
				bankmachine6_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (bankmachine7_row_close) begin
		bankmachine7_row_opened <= 1'd0;
	end else begin
		if (bankmachine7_row_open) begin
			bankmachine7_row_opened <= 1'd1;
			bankmachine7_row <= bankmachine7_cmd_buffer_source_payload_addr[22:6];
		end
	end
	if (((bankmachine7_cmd_buffer_lookahead_syncfifo7_we & bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~bankmachine7_cmd_buffer_lookahead_replace))) begin
		bankmachine7_cmd_buffer_lookahead_produce <= (bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (bankmachine7_cmd_buffer_lookahead_do_read) begin
		bankmachine7_cmd_buffer_lookahead_consume <= (bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((bankmachine7_cmd_buffer_lookahead_syncfifo7_we & bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~bankmachine7_cmd_buffer_lookahead_do_read)) begin
			bankmachine7_cmd_buffer_lookahead_level <= (bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (bankmachine7_cmd_buffer_lookahead_do_read) begin
			bankmachine7_cmd_buffer_lookahead_level <= (bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~bankmachine7_cmd_buffer_source_valid) | bankmachine7_cmd_buffer_source_ready)) begin
		bankmachine7_cmd_buffer_source_valid <= bankmachine7_cmd_buffer_sink_valid;
		bankmachine7_cmd_buffer_source_first <= bankmachine7_cmd_buffer_sink_first;
		bankmachine7_cmd_buffer_source_last <= bankmachine7_cmd_buffer_sink_last;
		bankmachine7_cmd_buffer_source_payload_we <= bankmachine7_cmd_buffer_sink_payload_we;
		bankmachine7_cmd_buffer_source_payload_addr <= bankmachine7_cmd_buffer_sink_payload_addr;
	end
	if (bankmachine7_twtpcon_valid) begin
		bankmachine7_twtpcon_count <= 5'd16;
		if (1'd0) begin
			bankmachine7_twtpcon_ready <= 1'd1;
		end else begin
			bankmachine7_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine7_twtpcon_ready)) begin
			bankmachine7_twtpcon_count <= (bankmachine7_twtpcon_count - 1'd1);
			if ((bankmachine7_twtpcon_count == 1'd1)) begin
				bankmachine7_twtpcon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine7_trccon_valid) begin
		bankmachine7_trccon_count <= 5'd17;
		if (1'd0) begin
			bankmachine7_trccon_ready <= 1'd1;
		end else begin
			bankmachine7_trccon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine7_trccon_ready)) begin
			bankmachine7_trccon_count <= (bankmachine7_trccon_count - 1'd1);
			if ((bankmachine7_trccon_count == 1'd1)) begin
				bankmachine7_trccon_ready <= 1'd1;
			end
		end
	end
	if (bankmachine7_trascon_valid) begin
		bankmachine7_trascon_count <= 4'd11;
		if (1'd0) begin
			bankmachine7_trascon_ready <= 1'd1;
		end else begin
			bankmachine7_trascon_ready <= 1'd0;
		end
	end else begin
		if ((~bankmachine7_trascon_ready)) begin
			bankmachine7_trascon_count <= (bankmachine7_trascon_count - 1'd1);
			if ((bankmachine7_trascon_count == 1'd1)) begin
				bankmachine7_trascon_ready <= 1'd1;
			end
		end
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~en0)) begin
		time0 <= 5'd31;
	end else begin
		if ((~max_time0)) begin
			time0 <= (time0 - 1'd1);
		end
	end
	if ((~en1)) begin
		time1 <= 4'd15;
	end else begin
		if ((~max_time1)) begin
			time1 <= (time1 - 1'd1);
		end
	end
	if (choose_cmd_ce) begin
		case (choose_cmd_grant)
			1'd0: begin
				if (choose_cmd_request[1]) begin
					choose_cmd_grant <= 1'd1;
				end else begin
					if (choose_cmd_request[2]) begin
						choose_cmd_grant <= 2'd2;
					end else begin
						if (choose_cmd_request[3]) begin
							choose_cmd_grant <= 2'd3;
						end else begin
							if (choose_cmd_request[4]) begin
								choose_cmd_grant <= 3'd4;
							end else begin
								if (choose_cmd_request[5]) begin
									choose_cmd_grant <= 3'd5;
								end else begin
									if (choose_cmd_request[6]) begin
										choose_cmd_grant <= 3'd6;
									end else begin
										if (choose_cmd_request[7]) begin
											choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (choose_cmd_request[2]) begin
					choose_cmd_grant <= 2'd2;
				end else begin
					if (choose_cmd_request[3]) begin
						choose_cmd_grant <= 2'd3;
					end else begin
						if (choose_cmd_request[4]) begin
							choose_cmd_grant <= 3'd4;
						end else begin
							if (choose_cmd_request[5]) begin
								choose_cmd_grant <= 3'd5;
							end else begin
								if (choose_cmd_request[6]) begin
									choose_cmd_grant <= 3'd6;
								end else begin
									if (choose_cmd_request[7]) begin
										choose_cmd_grant <= 3'd7;
									end else begin
										if (choose_cmd_request[0]) begin
											choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (choose_cmd_request[3]) begin
					choose_cmd_grant <= 2'd3;
				end else begin
					if (choose_cmd_request[4]) begin
						choose_cmd_grant <= 3'd4;
					end else begin
						if (choose_cmd_request[5]) begin
							choose_cmd_grant <= 3'd5;
						end else begin
							if (choose_cmd_request[6]) begin
								choose_cmd_grant <= 3'd6;
							end else begin
								if (choose_cmd_request[7]) begin
									choose_cmd_grant <= 3'd7;
								end else begin
									if (choose_cmd_request[0]) begin
										choose_cmd_grant <= 1'd0;
									end else begin
										if (choose_cmd_request[1]) begin
											choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (choose_cmd_request[4]) begin
					choose_cmd_grant <= 3'd4;
				end else begin
					if (choose_cmd_request[5]) begin
						choose_cmd_grant <= 3'd5;
					end else begin
						if (choose_cmd_request[6]) begin
							choose_cmd_grant <= 3'd6;
						end else begin
							if (choose_cmd_request[7]) begin
								choose_cmd_grant <= 3'd7;
							end else begin
								if (choose_cmd_request[0]) begin
									choose_cmd_grant <= 1'd0;
								end else begin
									if (choose_cmd_request[1]) begin
										choose_cmd_grant <= 1'd1;
									end else begin
										if (choose_cmd_request[2]) begin
											choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (choose_cmd_request[5]) begin
					choose_cmd_grant <= 3'd5;
				end else begin
					if (choose_cmd_request[6]) begin
						choose_cmd_grant <= 3'd6;
					end else begin
						if (choose_cmd_request[7]) begin
							choose_cmd_grant <= 3'd7;
						end else begin
							if (choose_cmd_request[0]) begin
								choose_cmd_grant <= 1'd0;
							end else begin
								if (choose_cmd_request[1]) begin
									choose_cmd_grant <= 1'd1;
								end else begin
									if (choose_cmd_request[2]) begin
										choose_cmd_grant <= 2'd2;
									end else begin
										if (choose_cmd_request[3]) begin
											choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (choose_cmd_request[6]) begin
					choose_cmd_grant <= 3'd6;
				end else begin
					if (choose_cmd_request[7]) begin
						choose_cmd_grant <= 3'd7;
					end else begin
						if (choose_cmd_request[0]) begin
							choose_cmd_grant <= 1'd0;
						end else begin
							if (choose_cmd_request[1]) begin
								choose_cmd_grant <= 1'd1;
							end else begin
								if (choose_cmd_request[2]) begin
									choose_cmd_grant <= 2'd2;
								end else begin
									if (choose_cmd_request[3]) begin
										choose_cmd_grant <= 2'd3;
									end else begin
										if (choose_cmd_request[4]) begin
											choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (choose_cmd_request[7]) begin
					choose_cmd_grant <= 3'd7;
				end else begin
					if (choose_cmd_request[0]) begin
						choose_cmd_grant <= 1'd0;
					end else begin
						if (choose_cmd_request[1]) begin
							choose_cmd_grant <= 1'd1;
						end else begin
							if (choose_cmd_request[2]) begin
								choose_cmd_grant <= 2'd2;
							end else begin
								if (choose_cmd_request[3]) begin
									choose_cmd_grant <= 2'd3;
								end else begin
									if (choose_cmd_request[4]) begin
										choose_cmd_grant <= 3'd4;
									end else begin
										if (choose_cmd_request[5]) begin
											choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (choose_cmd_request[0]) begin
					choose_cmd_grant <= 1'd0;
				end else begin
					if (choose_cmd_request[1]) begin
						choose_cmd_grant <= 1'd1;
					end else begin
						if (choose_cmd_request[2]) begin
							choose_cmd_grant <= 2'd2;
						end else begin
							if (choose_cmd_request[3]) begin
								choose_cmd_grant <= 2'd3;
							end else begin
								if (choose_cmd_request[4]) begin
									choose_cmd_grant <= 3'd4;
								end else begin
									if (choose_cmd_request[5]) begin
										choose_cmd_grant <= 3'd5;
									end else begin
										if (choose_cmd_request[6]) begin
											choose_cmd_grant <= 3'd6;
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
	if (choose_req_ce) begin
		case (choose_req_grant)
			1'd0: begin
				if (choose_req_request[1]) begin
					choose_req_grant <= 1'd1;
				end else begin
					if (choose_req_request[2]) begin
						choose_req_grant <= 2'd2;
					end else begin
						if (choose_req_request[3]) begin
							choose_req_grant <= 2'd3;
						end else begin
							if (choose_req_request[4]) begin
								choose_req_grant <= 3'd4;
							end else begin
								if (choose_req_request[5]) begin
									choose_req_grant <= 3'd5;
								end else begin
									if (choose_req_request[6]) begin
										choose_req_grant <= 3'd6;
									end else begin
										if (choose_req_request[7]) begin
											choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (choose_req_request[2]) begin
					choose_req_grant <= 2'd2;
				end else begin
					if (choose_req_request[3]) begin
						choose_req_grant <= 2'd3;
					end else begin
						if (choose_req_request[4]) begin
							choose_req_grant <= 3'd4;
						end else begin
							if (choose_req_request[5]) begin
								choose_req_grant <= 3'd5;
							end else begin
								if (choose_req_request[6]) begin
									choose_req_grant <= 3'd6;
								end else begin
									if (choose_req_request[7]) begin
										choose_req_grant <= 3'd7;
									end else begin
										if (choose_req_request[0]) begin
											choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (choose_req_request[3]) begin
					choose_req_grant <= 2'd3;
				end else begin
					if (choose_req_request[4]) begin
						choose_req_grant <= 3'd4;
					end else begin
						if (choose_req_request[5]) begin
							choose_req_grant <= 3'd5;
						end else begin
							if (choose_req_request[6]) begin
								choose_req_grant <= 3'd6;
							end else begin
								if (choose_req_request[7]) begin
									choose_req_grant <= 3'd7;
								end else begin
									if (choose_req_request[0]) begin
										choose_req_grant <= 1'd0;
									end else begin
										if (choose_req_request[1]) begin
											choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (choose_req_request[4]) begin
					choose_req_grant <= 3'd4;
				end else begin
					if (choose_req_request[5]) begin
						choose_req_grant <= 3'd5;
					end else begin
						if (choose_req_request[6]) begin
							choose_req_grant <= 3'd6;
						end else begin
							if (choose_req_request[7]) begin
								choose_req_grant <= 3'd7;
							end else begin
								if (choose_req_request[0]) begin
									choose_req_grant <= 1'd0;
								end else begin
									if (choose_req_request[1]) begin
										choose_req_grant <= 1'd1;
									end else begin
										if (choose_req_request[2]) begin
											choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (choose_req_request[5]) begin
					choose_req_grant <= 3'd5;
				end else begin
					if (choose_req_request[6]) begin
						choose_req_grant <= 3'd6;
					end else begin
						if (choose_req_request[7]) begin
							choose_req_grant <= 3'd7;
						end else begin
							if (choose_req_request[0]) begin
								choose_req_grant <= 1'd0;
							end else begin
								if (choose_req_request[1]) begin
									choose_req_grant <= 1'd1;
								end else begin
									if (choose_req_request[2]) begin
										choose_req_grant <= 2'd2;
									end else begin
										if (choose_req_request[3]) begin
											choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (choose_req_request[6]) begin
					choose_req_grant <= 3'd6;
				end else begin
					if (choose_req_request[7]) begin
						choose_req_grant <= 3'd7;
					end else begin
						if (choose_req_request[0]) begin
							choose_req_grant <= 1'd0;
						end else begin
							if (choose_req_request[1]) begin
								choose_req_grant <= 1'd1;
							end else begin
								if (choose_req_request[2]) begin
									choose_req_grant <= 2'd2;
								end else begin
									if (choose_req_request[3]) begin
										choose_req_grant <= 2'd3;
									end else begin
										if (choose_req_request[4]) begin
											choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (choose_req_request[7]) begin
					choose_req_grant <= 3'd7;
				end else begin
					if (choose_req_request[0]) begin
						choose_req_grant <= 1'd0;
					end else begin
						if (choose_req_request[1]) begin
							choose_req_grant <= 1'd1;
						end else begin
							if (choose_req_request[2]) begin
								choose_req_grant <= 2'd2;
							end else begin
								if (choose_req_request[3]) begin
									choose_req_grant <= 2'd3;
								end else begin
									if (choose_req_request[4]) begin
										choose_req_grant <= 3'd4;
									end else begin
										if (choose_req_request[5]) begin
											choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (choose_req_request[0]) begin
					choose_req_grant <= 1'd0;
				end else begin
					if (choose_req_request[1]) begin
						choose_req_grant <= 1'd1;
					end else begin
						if (choose_req_request[2]) begin
							choose_req_grant <= 2'd2;
						end else begin
							if (choose_req_request[3]) begin
								choose_req_grant <= 2'd3;
							end else begin
								if (choose_req_request[4]) begin
									choose_req_grant <= 3'd4;
								end else begin
									if (choose_req_request[5]) begin
										choose_req_grant <= 3'd5;
									end else begin
										if (choose_req_request[6]) begin
											choose_req_grant <= 3'd6;
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
	dfi_p0_bank <= array_muxed0;
	dfi_p0_address <= array_muxed1;
	dfi_p0_cas_n <= (~array_muxed2);
	dfi_p0_ras_n <= (~array_muxed3);
	dfi_p0_we_n <= (~array_muxed4);
	dfi_p0_rddata_en <= array_muxed5;
	dfi_p0_wrdata_en <= array_muxed6;
	dfi_p1_cs_n <= 1'd0;
	dfi_p1_bank <= array_muxed7;
	dfi_p1_address <= array_muxed8;
	dfi_p1_cas_n <= (~array_muxed9);
	dfi_p1_ras_n <= (~array_muxed10);
	dfi_p1_we_n <= (~array_muxed11);
	dfi_p1_rddata_en <= array_muxed12;
	dfi_p1_wrdata_en <= array_muxed13;
	dfi_p2_cs_n <= 1'd0;
	dfi_p2_bank <= array_muxed14;
	dfi_p2_address <= array_muxed15;
	dfi_p2_cas_n <= (~array_muxed16);
	dfi_p2_ras_n <= (~array_muxed17);
	dfi_p2_we_n <= (~array_muxed18);
	dfi_p2_rddata_en <= array_muxed19;
	dfi_p2_wrdata_en <= array_muxed20;
	dfi_p3_cs_n <= 1'd0;
	dfi_p3_bank <= array_muxed21;
	dfi_p3_address <= array_muxed22;
	dfi_p3_cas_n <= (~array_muxed23);
	dfi_p3_ras_n <= (~array_muxed24);
	dfi_p3_we_n <= (~array_muxed25);
	dfi_p3_rddata_en <= array_muxed26;
	dfi_p3_wrdata_en <= array_muxed27;
	dfi_p4_cs_n <= 1'd0;
	dfi_p4_bank <= array_muxed28;
	dfi_p4_address <= array_muxed29;
	dfi_p4_cas_n <= (~array_muxed30);
	dfi_p4_ras_n <= (~array_muxed31);
	dfi_p4_we_n <= (~array_muxed32);
	dfi_p4_rddata_en <= array_muxed33;
	dfi_p4_wrdata_en <= array_muxed34;
	dfi_p5_cs_n <= 1'd0;
	dfi_p5_bank <= array_muxed35;
	dfi_p5_address <= array_muxed36;
	dfi_p5_cas_n <= (~array_muxed37);
	dfi_p5_ras_n <= (~array_muxed38);
	dfi_p5_we_n <= (~array_muxed39);
	dfi_p5_rddata_en <= array_muxed40;
	dfi_p5_wrdata_en <= array_muxed41;
	dfi_p6_cs_n <= 1'd0;
	dfi_p6_bank <= array_muxed42;
	dfi_p6_address <= array_muxed43;
	dfi_p6_cas_n <= (~array_muxed44);
	dfi_p6_ras_n <= (~array_muxed45);
	dfi_p6_we_n <= (~array_muxed46);
	dfi_p6_rddata_en <= array_muxed47;
	dfi_p6_wrdata_en <= array_muxed48;
	dfi_p7_cs_n <= 1'd0;
	dfi_p7_bank <= array_muxed49;
	dfi_p7_address <= array_muxed50;
	dfi_p7_cas_n <= (~array_muxed51);
	dfi_p7_ras_n <= (~array_muxed52);
	dfi_p7_we_n <= (~array_muxed53);
	dfi_p7_rddata_en <= array_muxed54;
	dfi_p7_wrdata_en <= array_muxed55;
	if (trrdcon_valid) begin
		trrdcon_count <= 2'd3;
		if (1'd0) begin
			trrdcon_ready <= 1'd1;
		end else begin
			trrdcon_ready <= 1'd0;
		end
	end else begin
		if ((~trrdcon_ready)) begin
			trrdcon_count <= (trrdcon_count - 1'd1);
			if ((trrdcon_count == 1'd1)) begin
				trrdcon_ready <= 1'd1;
			end
		end
	end
	tfawcon_window <= {tfawcon_window, tfawcon_valid};
	if ((tfawcon_count < 3'd4)) begin
		if ((tfawcon_count == 2'd3)) begin
			tfawcon_ready <= (~tfawcon_valid);
		end else begin
			tfawcon_ready <= 1'd1;
		end
	end
	if (tccdcon_valid) begin
		tccdcon_count <= 3'd7;
		if (1'd0) begin
			tccdcon_ready <= 1'd1;
		end else begin
			tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~tccdcon_ready)) begin
			tccdcon_count <= (tccdcon_count - 1'd1);
			if ((tccdcon_count == 1'd1)) begin
				tccdcon_ready <= 1'd1;
			end
		end
	end
	if (twtrcon_valid) begin
		twtrcon_count <= 4'd14;
		if (1'd0) begin
			twtrcon_ready <= 1'd1;
		end else begin
			twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~twtrcon_ready)) begin
			twtrcon_count <= (twtrcon_count - 1'd1);
			if ((twtrcon_count == 1'd1)) begin
				twtrcon_ready <= 1'd1;
			end
		end
	end
	multiplexer_state <= multiplexer_next_state;
	new_master_wdata_ready0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd0) & interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd0) & interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd0) & interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd0) & interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd0) & interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd0) & interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd0) & interface_bank7_wdata_ready));
	new_master_wdata_ready1 <= new_master_wdata_ready0;
	new_master_wdata_ready2 <= new_master_wdata_ready1;
	new_master_wdata_ready3 <= new_master_wdata_ready2;
	new_master_wdata_ready4 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd1) & interface_bank0_wdata_ready)) | ((roundrobin1_grant == 1'd1) & interface_bank1_wdata_ready)) | ((roundrobin2_grant == 1'd1) & interface_bank2_wdata_ready)) | ((roundrobin3_grant == 1'd1) & interface_bank3_wdata_ready)) | ((roundrobin4_grant == 1'd1) & interface_bank4_wdata_ready)) | ((roundrobin5_grant == 1'd1) & interface_bank5_wdata_ready)) | ((roundrobin6_grant == 1'd1) & interface_bank6_wdata_ready)) | ((roundrobin7_grant == 1'd1) & interface_bank7_wdata_ready));
	new_master_wdata_ready5 <= new_master_wdata_ready4;
	new_master_wdata_ready6 <= new_master_wdata_ready5;
	new_master_wdata_ready7 <= new_master_wdata_ready6;
	new_master_rdata_valid0 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd0) & interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd0) & interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd0) & interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd0) & interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd0) & interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd0) & interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd0) & interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd0) & interface_bank7_rdata_valid));
	new_master_rdata_valid1 <= new_master_rdata_valid0;
	new_master_rdata_valid2 <= new_master_rdata_valid1;
	new_master_rdata_valid3 <= new_master_rdata_valid2;
	new_master_rdata_valid4 <= new_master_rdata_valid3;
	new_master_rdata_valid5 <= new_master_rdata_valid4;
	new_master_rdata_valid6 <= new_master_rdata_valid5;
	new_master_rdata_valid7 <= new_master_rdata_valid6;
	new_master_rdata_valid8 <= new_master_rdata_valid7;
	new_master_rdata_valid9 <= new_master_rdata_valid8;
	new_master_rdata_valid10 <= new_master_rdata_valid9;
	new_master_rdata_valid11 <= new_master_rdata_valid10;
	new_master_rdata_valid12 <= ((((((((1'd0 | ((roundrobin0_grant == 1'd1) & interface_bank0_rdata_valid)) | ((roundrobin1_grant == 1'd1) & interface_bank1_rdata_valid)) | ((roundrobin2_grant == 1'd1) & interface_bank2_rdata_valid)) | ((roundrobin3_grant == 1'd1) & interface_bank3_rdata_valid)) | ((roundrobin4_grant == 1'd1) & interface_bank4_rdata_valid)) | ((roundrobin5_grant == 1'd1) & interface_bank5_rdata_valid)) | ((roundrobin6_grant == 1'd1) & interface_bank6_rdata_valid)) | ((roundrobin7_grant == 1'd1) & interface_bank7_rdata_valid));
	new_master_rdata_valid13 <= new_master_rdata_valid12;
	new_master_rdata_valid14 <= new_master_rdata_valid13;
	new_master_rdata_valid15 <= new_master_rdata_valid14;
	new_master_rdata_valid16 <= new_master_rdata_valid15;
	new_master_rdata_valid17 <= new_master_rdata_valid16;
	new_master_rdata_valid18 <= new_master_rdata_valid17;
	new_master_rdata_valid19 <= new_master_rdata_valid18;
	new_master_rdata_valid20 <= new_master_rdata_valid19;
	new_master_rdata_valid21 <= new_master_rdata_valid20;
	new_master_rdata_valid22 <= new_master_rdata_valid21;
	new_master_rdata_valid23 <= new_master_rdata_valid22;
	if (roundrobin0_ce) begin
		case (roundrobin0_grant)
			1'd0: begin
				if (roundrobin0_request[1]) begin
					roundrobin0_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin0_request[0]) begin
					roundrobin0_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin1_ce) begin
		case (roundrobin1_grant)
			1'd0: begin
				if (roundrobin1_request[1]) begin
					roundrobin1_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin1_request[0]) begin
					roundrobin1_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin2_ce) begin
		case (roundrobin2_grant)
			1'd0: begin
				if (roundrobin2_request[1]) begin
					roundrobin2_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin2_request[0]) begin
					roundrobin2_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin3_ce) begin
		case (roundrobin3_grant)
			1'd0: begin
				if (roundrobin3_request[1]) begin
					roundrobin3_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin3_request[0]) begin
					roundrobin3_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin4_ce) begin
		case (roundrobin4_grant)
			1'd0: begin
				if (roundrobin4_request[1]) begin
					roundrobin4_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin4_request[0]) begin
					roundrobin4_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin5_ce) begin
		case (roundrobin5_grant)
			1'd0: begin
				if (roundrobin5_request[1]) begin
					roundrobin5_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin5_request[0]) begin
					roundrobin5_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin6_ce) begin
		case (roundrobin6_grant)
			1'd0: begin
				if (roundrobin6_request[1]) begin
					roundrobin6_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin6_request[0]) begin
					roundrobin6_grant <= 1'd0;
				end
			end
		endcase
	end
	if (roundrobin7_ce) begin
		case (roundrobin7_grant)
			1'd0: begin
				if (roundrobin7_request[1]) begin
					roundrobin7_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (roundrobin7_request[0]) begin
					roundrobin7_grant <= 1'd0;
				end
			end
		endcase
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
		dfi_p4_address <= 17'd0;
		dfi_p4_bank <= 3'd0;
		dfi_p4_cas_n <= 1'd1;
		dfi_p4_cs_n <= 1'd1;
		dfi_p4_ras_n <= 1'd1;
		dfi_p4_we_n <= 1'd1;
		dfi_p4_wrdata_en <= 1'd0;
		dfi_p4_rddata_en <= 1'd0;
		dfi_p5_address <= 17'd0;
		dfi_p5_bank <= 3'd0;
		dfi_p5_cas_n <= 1'd1;
		dfi_p5_cs_n <= 1'd1;
		dfi_p5_ras_n <= 1'd1;
		dfi_p5_we_n <= 1'd1;
		dfi_p5_wrdata_en <= 1'd0;
		dfi_p5_rddata_en <= 1'd0;
		dfi_p6_address <= 17'd0;
		dfi_p6_bank <= 3'd0;
		dfi_p6_cas_n <= 1'd1;
		dfi_p6_cs_n <= 1'd1;
		dfi_p6_ras_n <= 1'd1;
		dfi_p6_we_n <= 1'd1;
		dfi_p6_wrdata_en <= 1'd0;
		dfi_p6_rddata_en <= 1'd0;
		dfi_p7_address <= 17'd0;
		dfi_p7_bank <= 3'd0;
		dfi_p7_cas_n <= 1'd1;
		dfi_p7_cs_n <= 1'd1;
		dfi_p7_ras_n <= 1'd1;
		dfi_p7_we_n <= 1'd1;
		dfi_p7_wrdata_en <= 1'd0;
		dfi_p7_rddata_en <= 1'd0;
		cmd_payload_a <= 17'd0;
		cmd_payload_ba <= 3'd0;
		cmd_payload_cas <= 1'd0;
		cmd_payload_ras <= 1'd0;
		cmd_payload_we <= 1'd0;
		timer_count1 <= 11'd1039;
		postponer_req_o <= 1'd0;
		postponer_count <= 1'd0;
		sequencer_done1 <= 1'd0;
		sequencer_counter <= 6'd0;
		sequencer_count <= 1'd0;
		bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine0_cmd_buffer_source_valid <= 1'd0;
		bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine0_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine0_row <= 17'd0;
		bankmachine0_row_opened <= 1'd0;
		bankmachine0_twtpcon_ready <= 1'd0;
		bankmachine0_twtpcon_count <= 5'd0;
		bankmachine0_trccon_ready <= 1'd0;
		bankmachine0_trccon_count <= 5'd0;
		bankmachine0_trascon_ready <= 1'd0;
		bankmachine0_trascon_count <= 4'd0;
		bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine1_cmd_buffer_source_valid <= 1'd0;
		bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine1_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine1_row <= 17'd0;
		bankmachine1_row_opened <= 1'd0;
		bankmachine1_twtpcon_ready <= 1'd0;
		bankmachine1_twtpcon_count <= 5'd0;
		bankmachine1_trccon_ready <= 1'd0;
		bankmachine1_trccon_count <= 5'd0;
		bankmachine1_trascon_ready <= 1'd0;
		bankmachine1_trascon_count <= 4'd0;
		bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine2_cmd_buffer_source_valid <= 1'd0;
		bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine2_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine2_row <= 17'd0;
		bankmachine2_row_opened <= 1'd0;
		bankmachine2_twtpcon_ready <= 1'd0;
		bankmachine2_twtpcon_count <= 5'd0;
		bankmachine2_trccon_ready <= 1'd0;
		bankmachine2_trccon_count <= 5'd0;
		bankmachine2_trascon_ready <= 1'd0;
		bankmachine2_trascon_count <= 4'd0;
		bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine3_cmd_buffer_source_valid <= 1'd0;
		bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine3_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine3_row <= 17'd0;
		bankmachine3_row_opened <= 1'd0;
		bankmachine3_twtpcon_ready <= 1'd0;
		bankmachine3_twtpcon_count <= 5'd0;
		bankmachine3_trccon_ready <= 1'd0;
		bankmachine3_trccon_count <= 5'd0;
		bankmachine3_trascon_ready <= 1'd0;
		bankmachine3_trascon_count <= 4'd0;
		bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine4_cmd_buffer_source_valid <= 1'd0;
		bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine4_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine4_row <= 17'd0;
		bankmachine4_row_opened <= 1'd0;
		bankmachine4_twtpcon_ready <= 1'd0;
		bankmachine4_twtpcon_count <= 5'd0;
		bankmachine4_trccon_ready <= 1'd0;
		bankmachine4_trccon_count <= 5'd0;
		bankmachine4_trascon_ready <= 1'd0;
		bankmachine4_trascon_count <= 4'd0;
		bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine5_cmd_buffer_source_valid <= 1'd0;
		bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine5_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine5_row <= 17'd0;
		bankmachine5_row_opened <= 1'd0;
		bankmachine5_twtpcon_ready <= 1'd0;
		bankmachine5_twtpcon_count <= 5'd0;
		bankmachine5_trccon_ready <= 1'd0;
		bankmachine5_trccon_count <= 5'd0;
		bankmachine5_trascon_ready <= 1'd0;
		bankmachine5_trascon_count <= 4'd0;
		bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine6_cmd_buffer_source_valid <= 1'd0;
		bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine6_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine6_row <= 17'd0;
		bankmachine6_row_opened <= 1'd0;
		bankmachine6_twtpcon_ready <= 1'd0;
		bankmachine6_twtpcon_count <= 5'd0;
		bankmachine6_trccon_ready <= 1'd0;
		bankmachine6_trccon_count <= 5'd0;
		bankmachine6_trascon_ready <= 1'd0;
		bankmachine6_trascon_count <= 4'd0;
		bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		bankmachine7_cmd_buffer_source_valid <= 1'd0;
		bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		bankmachine7_cmd_buffer_source_payload_addr <= 23'd0;
		bankmachine7_row <= 17'd0;
		bankmachine7_row_opened <= 1'd0;
		bankmachine7_twtpcon_ready <= 1'd0;
		bankmachine7_twtpcon_count <= 5'd0;
		bankmachine7_trccon_ready <= 1'd0;
		bankmachine7_trccon_count <= 5'd0;
		bankmachine7_trascon_ready <= 1'd0;
		bankmachine7_trascon_count <= 4'd0;
		choose_cmd_grant <= 3'd0;
		choose_req_grant <= 3'd0;
		trrdcon_ready <= 1'd0;
		trrdcon_count <= 2'd0;
		tfawcon_ready <= 1'd1;
		tfawcon_window <= 12'd0;
		tccdcon_ready <= 1'd0;
		tccdcon_count <= 3'd0;
		twtrcon_ready <= 1'd0;
		twtrcon_count <= 4'd0;
		time0 <= 5'd0;
		time1 <= 4'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 4'd0;
		bankmachine1_state <= 4'd0;
		bankmachine2_state <= 4'd0;
		bankmachine3_state <= 4'd0;
		bankmachine4_state <= 4'd0;
		bankmachine5_state <= 4'd0;
		bankmachine6_state <= 4'd0;
		bankmachine7_state <= 4'd0;
		multiplexer_state <= 4'd0;
		roundrobin0_grant <= 1'd0;
		roundrobin1_grant <= 1'd0;
		roundrobin2_grant <= 1'd0;
		roundrobin3_grant <= 1'd0;
		roundrobin4_grant <= 1'd0;
		roundrobin5_grant <= 1'd0;
		roundrobin6_grant <= 1'd0;
		roundrobin7_grant <= 1'd0;
		new_master_wdata_ready0 <= 1'd0;
		new_master_wdata_ready1 <= 1'd0;
		new_master_wdata_ready2 <= 1'd0;
		new_master_wdata_ready3 <= 1'd0;
		new_master_wdata_ready4 <= 1'd0;
		new_master_wdata_ready5 <= 1'd0;
		new_master_wdata_ready6 <= 1'd0;
		new_master_wdata_ready7 <= 1'd0;
		new_master_rdata_valid0 <= 1'd0;
		new_master_rdata_valid1 <= 1'd0;
		new_master_rdata_valid2 <= 1'd0;
		new_master_rdata_valid3 <= 1'd0;
		new_master_rdata_valid4 <= 1'd0;
		new_master_rdata_valid5 <= 1'd0;
		new_master_rdata_valid6 <= 1'd0;
		new_master_rdata_valid7 <= 1'd0;
		new_master_rdata_valid8 <= 1'd0;
		new_master_rdata_valid9 <= 1'd0;
		new_master_rdata_valid10 <= 1'd0;
		new_master_rdata_valid11 <= 1'd0;
		new_master_rdata_valid12 <= 1'd0;
		new_master_rdata_valid13 <= 1'd0;
		new_master_rdata_valid14 <= 1'd0;
		new_master_rdata_valid15 <= 1'd0;
		new_master_rdata_valid16 <= 1'd0;
		new_master_rdata_valid17 <= 1'd0;
		new_master_rdata_valid18 <= 1'd0;
		new_master_rdata_valid19 <= 1'd0;
		new_master_rdata_valid20 <= 1'd0;
		new_master_rdata_valid21 <= 1'd0;
		new_master_rdata_valid22 <= 1'd0;
		new_master_rdata_valid23 <= 1'd0;
	end
end

reg [25:0] storage[0:7];
reg [25:0] memdat;
always @(posedge sys_clk) begin
	if (bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage[bankmachine0_cmd_buffer_lookahead_wrport_adr] <= bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat <= storage[bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat;
assign bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage[bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_1[0:7];
reg [25:0] memdat_1;
always @(posedge sys_clk) begin
	if (bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_1[bankmachine1_cmd_buffer_lookahead_wrport_adr] <= bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_1 <= storage_1[bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_1;
assign bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_1[bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_2[0:7];
reg [25:0] memdat_2;
always @(posedge sys_clk) begin
	if (bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_2[bankmachine2_cmd_buffer_lookahead_wrport_adr] <= bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_2 <= storage_2[bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_2;
assign bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_2[bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_3[0:7];
reg [25:0] memdat_3;
always @(posedge sys_clk) begin
	if (bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_3[bankmachine3_cmd_buffer_lookahead_wrport_adr] <= bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_3 <= storage_3[bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_3;
assign bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_3[bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_4[0:7];
reg [25:0] memdat_4;
always @(posedge sys_clk) begin
	if (bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_4[bankmachine4_cmd_buffer_lookahead_wrport_adr] <= bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_4[bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_4[bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_5[0:7];
reg [25:0] memdat_5;
always @(posedge sys_clk) begin
	if (bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_5[bankmachine5_cmd_buffer_lookahead_wrport_adr] <= bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_5[bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_5[bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_6[0:7];
reg [25:0] memdat_6;
always @(posedge sys_clk) begin
	if (bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_6[bankmachine6_cmd_buffer_lookahead_wrport_adr] <= bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_6[bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_6[bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [25:0] storage_7[0:7];
reg [25:0] memdat_7;
always @(posedge sys_clk) begin
	if (bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_7[bankmachine7_cmd_buffer_lookahead_wrport_adr] <= bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_7[bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_7[bankmachine7_cmd_buffer_lookahead_rdport_adr];

endmodule
