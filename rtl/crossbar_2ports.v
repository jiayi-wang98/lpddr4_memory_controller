/* Machine-generated using Migen */
module crossbar_2ports(
	output reg interface_bank0_valid,
	input interface_bank0_ready,
	output reg interface_bank0_we,
	output reg [22:0] interface_bank0_addr,
	input interface_bank0_lock,
	input interface_bank0_wdata_ready,
	input interface_bank0_rdata_valid,
	output reg interface_bank1_valid,
	input interface_bank1_ready,
	output reg interface_bank1_we,
	output reg [22:0] interface_bank1_addr,
	input interface_bank1_lock,
	input interface_bank1_wdata_ready,
	input interface_bank1_rdata_valid,
	output reg interface_bank2_valid,
	input interface_bank2_ready,
	output reg interface_bank2_we,
	output reg [22:0] interface_bank2_addr,
	input interface_bank2_lock,
	input interface_bank2_wdata_ready,
	input interface_bank2_rdata_valid,
	output reg interface_bank3_valid,
	input interface_bank3_ready,
	output reg interface_bank3_we,
	output reg [22:0] interface_bank3_addr,
	input interface_bank3_lock,
	input interface_bank3_wdata_ready,
	input interface_bank3_rdata_valid,
	output reg interface_bank4_valid,
	input interface_bank4_ready,
	output reg interface_bank4_we,
	output reg [22:0] interface_bank4_addr,
	input interface_bank4_lock,
	input interface_bank4_wdata_ready,
	input interface_bank4_rdata_valid,
	output reg interface_bank5_valid,
	input interface_bank5_ready,
	output reg interface_bank5_we,
	output reg [22:0] interface_bank5_addr,
	input interface_bank5_lock,
	input interface_bank5_wdata_ready,
	input interface_bank5_rdata_valid,
	output reg interface_bank6_valid,
	input interface_bank6_ready,
	output reg interface_bank6_we,
	output reg [22:0] interface_bank6_addr,
	input interface_bank6_lock,
	input interface_bank6_wdata_ready,
	input interface_bank6_rdata_valid,
	output reg interface_bank7_valid,
	input interface_bank7_ready,
	output reg interface_bank7_we,
	output reg [22:0] interface_bank7_addr,
	input interface_bank7_lock,
	input interface_bank7_wdata_ready,
	input interface_bank7_rdata_valid,
	output reg [255:0] interface_wdata,
	output reg [31:0] interface_wdata_we,
	input [255:0] interface_rdata,
	input cmd_valid,
	output reg cmd_ready,
	input cmd_first,
	input cmd_last,
	input cmd_payload_we,
	input [25:0] cmd_payload_addr,
	input wdata_valid,
	output reg wdata_ready,
	input wdata_first,
	input wdata_last,
	input [255:0] wdata_payload_data,
	input [31:0] wdata_payload_we,
	output reg rdata_valid,
	input rdata_ready,
	input rdata_first,
	input rdata_last,
	output reg [255:0] rdata_payload_data,
	input cmd_valid_1,
	output reg cmd_ready_1,
	input cmd_first_1,
	input cmd_last_1,
	input cmd_payload_we_1,
	input [25:0] cmd_payload_addr_1,
	input wdata_valid_1,
	output reg wdata_ready_1,
	input wdata_first_1,
	input wdata_last_1,
	input [255:0] wdata_payload_data_1,
	input [31:0] wdata_payload_we_1,
	output reg rdata_valid_1,
	input rdata_ready_1,
	input rdata_first_1,
	input rdata_last_1,
	output reg [255:0] rdata_payload_data_1,
	input sys_clk,
	input sys_rst
);

wire [1:0] litedramcrossbar_roundrobin0_request;
reg litedramcrossbar_roundrobin0_grant = 1'd0;
wire litedramcrossbar_roundrobin0_ce;
wire [1:0] litedramcrossbar_roundrobin1_request;
reg litedramcrossbar_roundrobin1_grant = 1'd0;
wire litedramcrossbar_roundrobin1_ce;
wire [1:0] litedramcrossbar_roundrobin2_request;
reg litedramcrossbar_roundrobin2_grant = 1'd0;
wire litedramcrossbar_roundrobin2_ce;
wire [1:0] litedramcrossbar_roundrobin3_request;
reg litedramcrossbar_roundrobin3_grant = 1'd0;
wire litedramcrossbar_roundrobin3_ce;
wire [1:0] litedramcrossbar_roundrobin4_request;
reg litedramcrossbar_roundrobin4_grant = 1'd0;
wire litedramcrossbar_roundrobin4_ce;
wire [1:0] litedramcrossbar_roundrobin5_request;
reg litedramcrossbar_roundrobin5_grant = 1'd0;
wire litedramcrossbar_roundrobin5_ce;
wire [1:0] litedramcrossbar_roundrobin6_request;
reg litedramcrossbar_roundrobin6_grant = 1'd0;
wire litedramcrossbar_roundrobin6_ce;
wire [1:0] litedramcrossbar_roundrobin7_request;
reg litedramcrossbar_roundrobin7_grant = 1'd0;
wire litedramcrossbar_roundrobin7_ce;
reg litedramcrossbar_locked0 = 1'd0;
reg litedramcrossbar_locked1 = 1'd0;
reg litedramcrossbar_locked2 = 1'd0;
reg litedramcrossbar_locked3 = 1'd0;
reg litedramcrossbar_locked4 = 1'd0;
reg litedramcrossbar_locked5 = 1'd0;
reg litedramcrossbar_locked6 = 1'd0;
reg litedramcrossbar_locked7 = 1'd0;
reg litedramcrossbar_locked8 = 1'd0;
reg litedramcrossbar_locked9 = 1'd0;
reg litedramcrossbar_locked10 = 1'd0;
reg litedramcrossbar_locked11 = 1'd0;
reg litedramcrossbar_locked12 = 1'd0;
reg litedramcrossbar_locked13 = 1'd0;
reg litedramcrossbar_locked14 = 1'd0;
reg litedramcrossbar_locked15 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready0 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready1 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready2 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready3 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready4 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready5 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready6 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready7 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready8 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready9 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready10 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready11 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready12 = 1'd0;
reg litedramcrossbar_new_master_wdata_ready13 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid0 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid1 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid2 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid3 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid4 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid5 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid6 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid7 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid8 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid9 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid10 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid11 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid12 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid13 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid14 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid15 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid16 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid17 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid18 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid19 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid20 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid21 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid22 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid23 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid24 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid25 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid26 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid27 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid28 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid29 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid30 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid31 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid32 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid33 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid34 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid35 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid36 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid37 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid38 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid39 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid40 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid41 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid42 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid43 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid44 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid45 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid46 = 1'd0;
reg litedramcrossbar_new_master_rdata_valid47 = 1'd0;
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
reg [22:0] convert_array_muxed0;
reg convert_array_muxed1;
reg convert_array_muxed2;
reg [22:0] convert_array_muxed3;
reg convert_array_muxed4;
reg convert_array_muxed5;
reg [22:0] convert_array_muxed6;
reg convert_array_muxed7;
reg convert_array_muxed8;
reg [22:0] convert_array_muxed9;
reg convert_array_muxed10;
reg convert_array_muxed11;
reg [22:0] convert_array_muxed12;
reg convert_array_muxed13;
reg convert_array_muxed14;
reg [22:0] convert_array_muxed15;
reg convert_array_muxed16;
reg convert_array_muxed17;
reg [22:0] convert_array_muxed18;
reg convert_array_muxed19;
reg convert_array_muxed20;
reg [22:0] convert_array_muxed21;
reg convert_array_muxed22;
reg convert_array_muxed23;
reg [22:0] convert_array_muxed24;
reg convert_array_muxed25;
reg convert_array_muxed26;
reg [22:0] convert_array_muxed27;
reg convert_array_muxed28;
reg convert_array_muxed29;
reg [22:0] convert_array_muxed30;
reg convert_array_muxed31;
reg convert_array_muxed32;
reg [22:0] convert_array_muxed33;
reg convert_array_muxed34;
reg convert_array_muxed35;
reg [22:0] convert_array_muxed36;
reg convert_array_muxed37;
reg convert_array_muxed38;
reg [22:0] convert_array_muxed39;
reg convert_array_muxed40;
reg convert_array_muxed41;
reg [22:0] convert_array_muxed42;
reg convert_array_muxed43;
reg convert_array_muxed44;
reg [22:0] convert_array_muxed45;
reg convert_array_muxed46;
reg convert_array_muxed47;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign litedramcrossbar_roundrobin0_request = {(((cmd_payload_addr_1[8:6] == 1'd0) & (~(((((((litedramcrossbar_locked1 | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 1'd0) & (~(((((((litedramcrossbar_locked0 | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin0_ce = ((~interface_bank0_valid) & (~interface_bank0_lock));
assign litedramcrossbar_roundrobin1_request = {(((cmd_payload_addr_1[8:6] == 1'd1) & (~(((((((litedramcrossbar_locked3 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 1'd1) & (~(((((((litedramcrossbar_locked2 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin1_ce = ((~interface_bank1_valid) & (~interface_bank1_lock));
assign litedramcrossbar_roundrobin2_request = {(((cmd_payload_addr_1[8:6] == 2'd2) & (~(((((((litedramcrossbar_locked5 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 2'd2) & (~(((((((litedramcrossbar_locked4 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin2_ce = ((~interface_bank2_valid) & (~interface_bank2_lock));
assign litedramcrossbar_roundrobin3_request = {(((cmd_payload_addr_1[8:6] == 2'd3) & (~(((((((litedramcrossbar_locked7 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 2'd3) & (~(((((((litedramcrossbar_locked6 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin3_ce = ((~interface_bank3_valid) & (~interface_bank3_lock));
assign litedramcrossbar_roundrobin4_request = {(((cmd_payload_addr_1[8:6] == 3'd4) & (~(((((((litedramcrossbar_locked9 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd4) & (~(((((((litedramcrossbar_locked8 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin4_ce = ((~interface_bank4_valid) & (~interface_bank4_lock));
assign litedramcrossbar_roundrobin5_request = {(((cmd_payload_addr_1[8:6] == 3'd5) & (~(((((((litedramcrossbar_locked11 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd5) & (~(((((((litedramcrossbar_locked10 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin5_ce = ((~interface_bank5_valid) & (~interface_bank5_lock));
assign litedramcrossbar_roundrobin6_request = {(((cmd_payload_addr_1[8:6] == 3'd6) & (~(((((((litedramcrossbar_locked13 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd6) & (~(((((((litedramcrossbar_locked12 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin6_ce = ((~interface_bank6_valid) & (~interface_bank6_lock));
assign litedramcrossbar_roundrobin7_request = {(((cmd_payload_addr_1[8:6] == 3'd7) & (~(((((((litedramcrossbar_locked15 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd7) & (~(((((((litedramcrossbar_locked14 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))))) & cmd_valid)};
assign litedramcrossbar_roundrobin7_ce = ((~interface_bank7_valid) & (~interface_bank7_lock));
assign convert_roundrobin0_request = {(((cmd_payload_addr_1[8:6] == 1'd0) & (~(((((((convert_locked1 | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked0 | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin0_ce = ((~interface_bank0_valid) & (~interface_bank0_lock));

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	interface_bank0_addr <= 23'd0;
	interface_bank0_addr <= convert_array_muxed0;
	interface_bank0_addr <= convert_array_muxed24;
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	interface_bank0_we <= 1'd0;
	interface_bank0_we <= convert_array_muxed1;
	interface_bank0_we <= convert_array_muxed25;
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	interface_bank0_valid <= 1'd0;
	interface_bank0_valid <= convert_array_muxed2;
	interface_bank0_valid <= convert_array_muxed26;
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin1_request = {(((cmd_payload_addr_1[8:6] == 1'd1) & (~(((((((convert_locked3 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked2 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin1_ce = ((~interface_bank1_valid) & (~interface_bank1_lock));

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	interface_bank1_addr <= 23'd0;
	interface_bank1_addr <= convert_array_muxed3;
	interface_bank1_addr <= convert_array_muxed27;
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	interface_bank1_we <= 1'd0;
	interface_bank1_we <= convert_array_muxed4;
	interface_bank1_we <= convert_array_muxed28;
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	interface_bank1_valid <= 1'd0;
	interface_bank1_valid <= convert_array_muxed5;
	interface_bank1_valid <= convert_array_muxed29;
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin2_request = {(((cmd_payload_addr_1[8:6] == 2'd2) & (~(((((((convert_locked5 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked4 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin2_ce = ((~interface_bank2_valid) & (~interface_bank2_lock));

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	interface_bank2_addr <= 23'd0;
	interface_bank2_addr <= convert_array_muxed6;
	interface_bank2_addr <= convert_array_muxed30;
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	interface_bank2_we <= 1'd0;
	interface_bank2_we <= convert_array_muxed7;
	interface_bank2_we <= convert_array_muxed31;
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	interface_bank2_valid <= 1'd0;
	interface_bank2_valid <= convert_array_muxed8;
	interface_bank2_valid <= convert_array_muxed32;
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin3_request = {(((cmd_payload_addr_1[8:6] == 2'd3) & (~(((((((convert_locked7 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked6 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin3_ce = ((~interface_bank3_valid) & (~interface_bank3_lock));

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	interface_bank3_addr <= 23'd0;
	interface_bank3_addr <= convert_array_muxed9;
	interface_bank3_addr <= convert_array_muxed33;
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	interface_bank3_we <= 1'd0;
	interface_bank3_we <= convert_array_muxed10;
	interface_bank3_we <= convert_array_muxed34;
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	interface_bank3_valid <= 1'd0;
	interface_bank3_valid <= convert_array_muxed11;
	interface_bank3_valid <= convert_array_muxed35;
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin4_request = {(((cmd_payload_addr_1[8:6] == 3'd4) & (~(((((((convert_locked9 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked8 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin4_ce = ((~interface_bank4_valid) & (~interface_bank4_lock));

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	interface_bank4_addr <= 23'd0;
	interface_bank4_addr <= convert_array_muxed12;
	interface_bank4_addr <= convert_array_muxed36;
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	interface_bank4_we <= 1'd0;
	interface_bank4_we <= convert_array_muxed13;
	interface_bank4_we <= convert_array_muxed37;
// synthesis translate_off
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	interface_bank4_valid <= 1'd0;
	interface_bank4_valid <= convert_array_muxed14;
	interface_bank4_valid <= convert_array_muxed38;
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin5_request = {(((cmd_payload_addr_1[8:6] == 3'd5) & (~(((((((convert_locked11 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked10 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin5_ce = ((~interface_bank5_valid) & (~interface_bank5_lock));

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	interface_bank5_addr <= 23'd0;
	interface_bank5_addr <= convert_array_muxed15;
	interface_bank5_addr <= convert_array_muxed39;
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	interface_bank5_we <= 1'd0;
	interface_bank5_we <= convert_array_muxed16;
	interface_bank5_we <= convert_array_muxed40;
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	interface_bank5_valid <= 1'd0;
	interface_bank5_valid <= convert_array_muxed17;
	interface_bank5_valid <= convert_array_muxed41;
// synthesis translate_off
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin6_request = {(((cmd_payload_addr_1[8:6] == 3'd6) & (~(((((((convert_locked13 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked12 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin6_ce = ((~interface_bank6_valid) & (~interface_bank6_lock));

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	interface_bank6_addr <= 23'd0;
	interface_bank6_addr <= convert_array_muxed18;
	interface_bank6_addr <= convert_array_muxed42;
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	interface_bank6_we <= 1'd0;
	interface_bank6_we <= convert_array_muxed19;
	interface_bank6_we <= convert_array_muxed43;
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	interface_bank6_valid <= 1'd0;
	interface_bank6_valid <= convert_array_muxed20;
	interface_bank6_valid <= convert_array_muxed44;
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end
assign convert_roundrobin7_request = {(((cmd_payload_addr_1[8:6] == 3'd7) & (~(((((((convert_locked15 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))))) & cmd_valid_1), (((cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked14 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))))) & cmd_valid)};
assign convert_roundrobin7_ce = ((~interface_bank7_valid) & (~interface_bank7_lock));

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	interface_bank7_addr <= 23'd0;
	interface_bank7_addr <= convert_array_muxed21;
	interface_bank7_addr <= convert_array_muxed45;
// synthesis translate_off
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	interface_bank7_we <= 1'd0;
	interface_bank7_we <= convert_array_muxed22;
	interface_bank7_we <= convert_array_muxed46;
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	interface_bank7_valid <= 1'd0;
	interface_bank7_valid <= convert_array_muxed23;
	interface_bank7_valid <= convert_array_muxed47;
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	cmd_ready <= 1'd0;
	cmd_ready <= ((((((((1'd0 | (((litedramcrossbar_roundrobin0_grant == 1'd0) & ((cmd_payload_addr[8:6] == 1'd0) & (~(((((((litedramcrossbar_locked0 | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0)))))) & interface_bank0_ready)) | (((litedramcrossbar_roundrobin1_grant == 1'd0) & ((cmd_payload_addr[8:6] == 1'd1) & (~(((((((litedramcrossbar_locked2 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0)))))) & interface_bank1_ready)) | (((litedramcrossbar_roundrobin2_grant == 1'd0) & ((cmd_payload_addr[8:6] == 2'd2) & (~(((((((litedramcrossbar_locked4 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0)))))) & interface_bank2_ready)) | (((litedramcrossbar_roundrobin3_grant == 1'd0) & ((cmd_payload_addr[8:6] == 2'd3) & (~(((((((litedramcrossbar_locked6 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0)))))) & interface_bank3_ready)) | (((litedramcrossbar_roundrobin4_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd4) & (~(((((((litedramcrossbar_locked8 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0)))))) & interface_bank4_ready)) | (((litedramcrossbar_roundrobin5_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd5) & (~(((((((litedramcrossbar_locked10 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0)))))) & interface_bank5_ready)) | (((litedramcrossbar_roundrobin6_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd6) & (~(((((((litedramcrossbar_locked12 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0)))))) & interface_bank6_ready)) | (((litedramcrossbar_roundrobin7_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd7) & (~(((((((litedramcrossbar_locked14 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0)))))) & interface_bank7_ready));
	cmd_ready <= ((((((((1'd0 | (((convert_roundrobin0_grant == 1'd0) & ((cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked0 | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & interface_bank0_ready)) | (((convert_roundrobin1_grant == 1'd0) & ((cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked2 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & interface_bank1_ready)) | (((convert_roundrobin2_grant == 1'd0) & ((cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked4 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & interface_bank2_ready)) | (((convert_roundrobin3_grant == 1'd0) & ((cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked6 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & interface_bank3_ready)) | (((convert_roundrobin4_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked8 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & interface_bank4_ready)) | (((convert_roundrobin5_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked10 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & interface_bank5_ready)) | (((convert_roundrobin6_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked12 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0)))))) & interface_bank6_ready)) | (((convert_roundrobin7_grant == 1'd0) & ((cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked14 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0)))))) & interface_bank7_ready));
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	cmd_ready_1 <= 1'd0;
	cmd_ready_1 <= ((((((((1'd0 | (((litedramcrossbar_roundrobin0_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 1'd0) & (~(((((((litedramcrossbar_locked1 | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1)))))) & interface_bank0_ready)) | (((litedramcrossbar_roundrobin1_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 1'd1) & (~(((((((litedramcrossbar_locked3 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1)))))) & interface_bank1_ready)) | (((litedramcrossbar_roundrobin2_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 2'd2) & (~(((((((litedramcrossbar_locked5 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1)))))) & interface_bank2_ready)) | (((litedramcrossbar_roundrobin3_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 2'd3) & (~(((((((litedramcrossbar_locked7 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1)))))) & interface_bank3_ready)) | (((litedramcrossbar_roundrobin4_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd4) & (~(((((((litedramcrossbar_locked9 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1)))))) & interface_bank4_ready)) | (((litedramcrossbar_roundrobin5_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd5) & (~(((((((litedramcrossbar_locked11 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1)))))) & interface_bank5_ready)) | (((litedramcrossbar_roundrobin6_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd6) & (~(((((((litedramcrossbar_locked13 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1)))))) & interface_bank6_ready)) | (((litedramcrossbar_roundrobin7_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd7) & (~(((((((litedramcrossbar_locked15 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1)))))) & interface_bank7_ready));
	cmd_ready_1 <= ((((((((1'd0 | (((convert_roundrobin0_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 1'd0) & (~(((((((convert_locked1 | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & interface_bank0_ready)) | (((convert_roundrobin1_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 1'd1) & (~(((((((convert_locked3 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & interface_bank1_ready)) | (((convert_roundrobin2_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 2'd2) & (~(((((((convert_locked5 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & interface_bank2_ready)) | (((convert_roundrobin3_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 2'd3) & (~(((((((convert_locked7 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & interface_bank3_ready)) | (((convert_roundrobin4_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd4) & (~(((((((convert_locked9 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & interface_bank4_ready)) | (((convert_roundrobin5_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd5) & (~(((((((convert_locked11 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & interface_bank5_ready)) | (((convert_roundrobin6_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd6) & (~(((((((convert_locked13 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1)))))) & interface_bank6_ready)) | (((convert_roundrobin7_grant == 1'd1) & ((cmd_payload_addr_1[8:6] == 3'd7) & (~(((((((convert_locked15 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1)))))) & interface_bank7_ready));
// synthesis translate_off
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	wdata_ready <= 1'd0;
	wdata_ready <= litedramcrossbar_new_master_wdata_ready6;
	wdata_ready <= convert_new_master_wdata_ready6;
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	wdata_ready_1 <= 1'd0;
	wdata_ready_1 <= litedramcrossbar_new_master_wdata_ready13;
	wdata_ready_1 <= convert_new_master_wdata_ready13;
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	rdata_valid <= 1'd0;
	rdata_valid <= litedramcrossbar_new_master_rdata_valid23;
	rdata_valid <= convert_new_master_rdata_valid23;
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	rdata_valid_1 <= 1'd0;
	rdata_valid_1 <= litedramcrossbar_new_master_rdata_valid47;
	rdata_valid_1 <= convert_new_master_rdata_valid47;
// synthesis translate_off
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	interface_wdata <= 256'd0;
	interface_wdata_we <= 32'd0;
	case ({litedramcrossbar_new_master_wdata_ready13, litedramcrossbar_new_master_wdata_ready6})
		1'd1: begin
			interface_wdata <= wdata_payload_data;
			interface_wdata_we <= wdata_payload_we;
		end
		2'd2: begin
			interface_wdata <= wdata_payload_data_1;
			interface_wdata_we <= wdata_payload_we_1;
		end
		default: begin
			interface_wdata <= 1'd0;
			interface_wdata_we <= 1'd0;
		end
	endcase
	case ({convert_new_master_wdata_ready13, convert_new_master_wdata_ready6})
		1'd1: begin
			interface_wdata <= wdata_payload_data;
			interface_wdata_we <= wdata_payload_we;
		end
		2'd2: begin
			interface_wdata <= wdata_payload_data_1;
			interface_wdata_we <= wdata_payload_we_1;
		end
		default: begin
			interface_wdata <= 1'd0;
			interface_wdata_we <= 1'd0;
		end
	endcase
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	rdata_payload_data <= 256'd0;
	rdata_payload_data <= interface_rdata;
	rdata_payload_data <= interface_rdata;
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	rdata_payload_data_1 <= 256'd0;
	rdata_payload_data_1 <= interface_rdata;
	rdata_payload_data_1 <= interface_rdata;
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	convert_array_muxed0 <= 23'd0;
	case (litedramcrossbar_roundrobin0_grant)
		1'd0: begin
			convert_array_muxed0 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed0 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	convert_array_muxed1 <= 1'd0;
	case (litedramcrossbar_roundrobin0_grant)
		1'd0: begin
			convert_array_muxed1 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed1 <= cmd_payload_we_1;
		end
	endcase
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	convert_array_muxed2 <= 1'd0;
	case (litedramcrossbar_roundrobin0_grant)
		1'd0: begin
			convert_array_muxed2 <= (((cmd_payload_addr[8:6] == 1'd0) & (~(((((((litedramcrossbar_locked0 | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed2 <= (((cmd_payload_addr_1[8:6] == 1'd0) & (~(((((((litedramcrossbar_locked1 | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
		end
	endcase
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	convert_array_muxed3 <= 23'd0;
	case (litedramcrossbar_roundrobin1_grant)
		1'd0: begin
			convert_array_muxed3 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed3 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	convert_array_muxed4 <= 1'd0;
	case (litedramcrossbar_roundrobin1_grant)
		1'd0: begin
			convert_array_muxed4 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed4 <= cmd_payload_we_1;
		end
	endcase
// synthesis translate_off
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	convert_array_muxed5 <= 1'd0;
	case (litedramcrossbar_roundrobin1_grant)
		1'd0: begin
			convert_array_muxed5 <= (((cmd_payload_addr[8:6] == 1'd1) & (~(((((((litedramcrossbar_locked2 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed5 <= (((cmd_payload_addr_1[8:6] == 1'd1) & (~(((((((litedramcrossbar_locked3 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
		end
	endcase
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	convert_array_muxed6 <= 23'd0;
	case (litedramcrossbar_roundrobin2_grant)
		1'd0: begin
			convert_array_muxed6 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed6 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	convert_array_muxed7 <= 1'd0;
	case (litedramcrossbar_roundrobin2_grant)
		1'd0: begin
			convert_array_muxed7 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed7 <= cmd_payload_we_1;
		end
	endcase
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	convert_array_muxed8 <= 1'd0;
	case (litedramcrossbar_roundrobin2_grant)
		1'd0: begin
			convert_array_muxed8 <= (((cmd_payload_addr[8:6] == 2'd2) & (~(((((((litedramcrossbar_locked4 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed8 <= (((cmd_payload_addr_1[8:6] == 2'd2) & (~(((((((litedramcrossbar_locked5 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
		end
	endcase
// synthesis translate_off
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	convert_array_muxed9 <= 23'd0;
	case (litedramcrossbar_roundrobin3_grant)
		1'd0: begin
			convert_array_muxed9 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed9 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
always @(*) begin
	convert_array_muxed10 <= 1'd0;
	case (litedramcrossbar_roundrobin3_grant)
		1'd0: begin
			convert_array_muxed10 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed10 <= cmd_payload_we_1;
		end
	endcase
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	convert_array_muxed11 <= 1'd0;
	case (litedramcrossbar_roundrobin3_grant)
		1'd0: begin
			convert_array_muxed11 <= (((cmd_payload_addr[8:6] == 2'd3) & (~(((((((litedramcrossbar_locked6 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed11 <= (((cmd_payload_addr_1[8:6] == 2'd3) & (~(((((((litedramcrossbar_locked7 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
		end
	endcase
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	convert_array_muxed12 <= 23'd0;
	case (litedramcrossbar_roundrobin4_grant)
		1'd0: begin
			convert_array_muxed12 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed12 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	convert_array_muxed13 <= 1'd0;
	case (litedramcrossbar_roundrobin4_grant)
		1'd0: begin
			convert_array_muxed13 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed13 <= cmd_payload_we_1;
		end
	endcase
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	convert_array_muxed14 <= 1'd0;
	case (litedramcrossbar_roundrobin4_grant)
		1'd0: begin
			convert_array_muxed14 <= (((cmd_payload_addr[8:6] == 3'd4) & (~(((((((litedramcrossbar_locked8 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed14 <= (((cmd_payload_addr_1[8:6] == 3'd4) & (~(((((((litedramcrossbar_locked9 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
		end
	endcase
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	convert_array_muxed15 <= 23'd0;
	case (litedramcrossbar_roundrobin5_grant)
		1'd0: begin
			convert_array_muxed15 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed15 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
		end
	endcase
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	convert_array_muxed16 <= 1'd0;
	case (litedramcrossbar_roundrobin5_grant)
		1'd0: begin
			convert_array_muxed16 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed16 <= cmd_payload_we_1;
		end
	endcase
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	convert_array_muxed17 <= 1'd0;
	case (litedramcrossbar_roundrobin5_grant)
		1'd0: begin
			convert_array_muxed17 <= (((cmd_payload_addr[8:6] == 3'd5) & (~(((((((litedramcrossbar_locked10 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed17 <= (((cmd_payload_addr_1[8:6] == 3'd5) & (~(((((((litedramcrossbar_locked11 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
		end
	endcase
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	convert_array_muxed18 <= 23'd0;
	case (litedramcrossbar_roundrobin6_grant)
		1'd0: begin
			convert_array_muxed18 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed18 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed19 <= 1'd0;
	case (litedramcrossbar_roundrobin6_grant)
		1'd0: begin
			convert_array_muxed19 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed19 <= cmd_payload_we_1;
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
	convert_array_muxed20 <= 1'd0;
	case (litedramcrossbar_roundrobin6_grant)
		1'd0: begin
			convert_array_muxed20 <= (((cmd_payload_addr[8:6] == 3'd6) & (~(((((((litedramcrossbar_locked12 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed20 <= (((cmd_payload_addr_1[8:6] == 3'd6) & (~(((((((litedramcrossbar_locked13 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (litedramcrossbar_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed21 <= 23'd0;
	case (litedramcrossbar_roundrobin7_grant)
		1'd0: begin
			convert_array_muxed21 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed21 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed22 <= 1'd0;
	case (litedramcrossbar_roundrobin7_grant)
		1'd0: begin
			convert_array_muxed22 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed22 <= cmd_payload_we_1;
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
	convert_array_muxed23 <= 1'd0;
	case (litedramcrossbar_roundrobin7_grant)
		1'd0: begin
			convert_array_muxed23 <= (((cmd_payload_addr[8:6] == 3'd7) & (~(((((((litedramcrossbar_locked14 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed23 <= (((cmd_payload_addr_1[8:6] == 3'd7) & (~(((((((litedramcrossbar_locked15 | (interface_bank0_lock & (litedramcrossbar_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (litedramcrossbar_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (litedramcrossbar_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (litedramcrossbar_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (litedramcrossbar_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (litedramcrossbar_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (litedramcrossbar_roundrobin6_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed24 <= 23'd0;
	case (convert_roundrobin0_grant)
		1'd0: begin
			convert_array_muxed24 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed24 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed25 <= 1'd0;
	case (convert_roundrobin0_grant)
		1'd0: begin
			convert_array_muxed25 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed25 <= cmd_payload_we_1;
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
	convert_array_muxed26 <= 1'd0;
	case (convert_roundrobin0_grant)
		1'd0: begin
			convert_array_muxed26 <= (((cmd_payload_addr[8:6] == 1'd0) & (~(((((((convert_locked0 | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed26 <= (((cmd_payload_addr_1[8:6] == 1'd0) & (~(((((((convert_locked1 | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed27 <= 23'd0;
	case (convert_roundrobin1_grant)
		1'd0: begin
			convert_array_muxed27 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed27 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed28 <= 1'd0;
	case (convert_roundrobin1_grant)
		1'd0: begin
			convert_array_muxed28 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed28 <= cmd_payload_we_1;
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
	convert_array_muxed29 <= 1'd0;
	case (convert_roundrobin1_grant)
		1'd0: begin
			convert_array_muxed29 <= (((cmd_payload_addr[8:6] == 1'd1) & (~(((((((convert_locked2 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed29 <= (((cmd_payload_addr_1[8:6] == 1'd1) & (~(((((((convert_locked3 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed30 <= 23'd0;
	case (convert_roundrobin2_grant)
		1'd0: begin
			convert_array_muxed30 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed30 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed31 <= 1'd0;
	case (convert_roundrobin2_grant)
		1'd0: begin
			convert_array_muxed31 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed31 <= cmd_payload_we_1;
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
	convert_array_muxed32 <= 1'd0;
	case (convert_roundrobin2_grant)
		1'd0: begin
			convert_array_muxed32 <= (((cmd_payload_addr[8:6] == 2'd2) & (~(((((((convert_locked4 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed32 <= (((cmd_payload_addr_1[8:6] == 2'd2) & (~(((((((convert_locked5 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed33 <= 23'd0;
	case (convert_roundrobin3_grant)
		1'd0: begin
			convert_array_muxed33 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed33 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed34 <= 1'd0;
	case (convert_roundrobin3_grant)
		1'd0: begin
			convert_array_muxed34 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed34 <= cmd_payload_we_1;
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
	convert_array_muxed35 <= 1'd0;
	case (convert_roundrobin3_grant)
		1'd0: begin
			convert_array_muxed35 <= (((cmd_payload_addr[8:6] == 2'd3) & (~(((((((convert_locked6 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed35 <= (((cmd_payload_addr_1[8:6] == 2'd3) & (~(((((((convert_locked7 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed36 <= 23'd0;
	case (convert_roundrobin4_grant)
		1'd0: begin
			convert_array_muxed36 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed36 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed37 <= 1'd0;
	case (convert_roundrobin4_grant)
		1'd0: begin
			convert_array_muxed37 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed37 <= cmd_payload_we_1;
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
	convert_array_muxed38 <= 1'd0;
	case (convert_roundrobin4_grant)
		1'd0: begin
			convert_array_muxed38 <= (((cmd_payload_addr[8:6] == 3'd4) & (~(((((((convert_locked8 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed38 <= (((cmd_payload_addr_1[8:6] == 3'd4) & (~(((((((convert_locked9 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed39 <= 23'd0;
	case (convert_roundrobin5_grant)
		1'd0: begin
			convert_array_muxed39 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed39 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed40 <= 1'd0;
	case (convert_roundrobin5_grant)
		1'd0: begin
			convert_array_muxed40 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed40 <= cmd_payload_we_1;
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
	convert_array_muxed41 <= 1'd0;
	case (convert_roundrobin5_grant)
		1'd0: begin
			convert_array_muxed41 <= (((cmd_payload_addr[8:6] == 3'd5) & (~(((((((convert_locked10 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed41 <= (((cmd_payload_addr_1[8:6] == 3'd5) & (~(((((((convert_locked11 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed42 <= 23'd0;
	case (convert_roundrobin6_grant)
		1'd0: begin
			convert_array_muxed42 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed42 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed43 <= 1'd0;
	case (convert_roundrobin6_grant)
		1'd0: begin
			convert_array_muxed43 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed43 <= cmd_payload_we_1;
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
	convert_array_muxed44 <= 1'd0;
	case (convert_roundrobin6_grant)
		1'd0: begin
			convert_array_muxed44 <= (((cmd_payload_addr[8:6] == 3'd6) & (~(((((((convert_locked12 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed44 <= (((cmd_payload_addr_1[8:6] == 3'd6) & (~(((((((convert_locked13 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank7_lock & (convert_roundrobin7_grant == 1'd1))))) & cmd_valid_1);
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
	convert_array_muxed45 <= 23'd0;
	case (convert_roundrobin7_grant)
		1'd0: begin
			convert_array_muxed45 <= {cmd_payload_addr[25:9], cmd_payload_addr[5:0]};
		end
		default: begin
			convert_array_muxed45 <= {cmd_payload_addr_1[25:9], cmd_payload_addr_1[5:0]};
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
	convert_array_muxed46 <= 1'd0;
	case (convert_roundrobin7_grant)
		1'd0: begin
			convert_array_muxed46 <= cmd_payload_we;
		end
		default: begin
			convert_array_muxed46 <= cmd_payload_we_1;
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
	convert_array_muxed47 <= 1'd0;
	case (convert_roundrobin7_grant)
		1'd0: begin
			convert_array_muxed47 <= (((cmd_payload_addr[8:6] == 3'd7) & (~(((((((convert_locked14 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd0))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd0))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd0))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd0))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd0))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd0))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd0))))) & cmd_valid);
		end
		default: begin
			convert_array_muxed47 <= (((cmd_payload_addr_1[8:6] == 3'd7) & (~(((((((convert_locked15 | (interface_bank0_lock & (convert_roundrobin0_grant == 1'd1))) | (interface_bank1_lock & (convert_roundrobin1_grant == 1'd1))) | (interface_bank2_lock & (convert_roundrobin2_grant == 1'd1))) | (interface_bank3_lock & (convert_roundrobin3_grant == 1'd1))) | (interface_bank4_lock & (convert_roundrobin4_grant == 1'd1))) | (interface_bank5_lock & (convert_roundrobin5_grant == 1'd1))) | (interface_bank6_lock & (convert_roundrobin6_grant == 1'd1))))) & cmd_valid_1);
		end
	endcase
// synthesis translate_off
	dummy_d_80 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	litedramcrossbar_new_master_wdata_ready0 <= ((((((((1'd0 | ((litedramcrossbar_roundrobin0_grant == 1'd0) & interface_bank0_wdata_ready)) | ((litedramcrossbar_roundrobin1_grant == 1'd0) & interface_bank1_wdata_ready)) | ((litedramcrossbar_roundrobin2_grant == 1'd0) & interface_bank2_wdata_ready)) | ((litedramcrossbar_roundrobin3_grant == 1'd0) & interface_bank3_wdata_ready)) | ((litedramcrossbar_roundrobin4_grant == 1'd0) & interface_bank4_wdata_ready)) | ((litedramcrossbar_roundrobin5_grant == 1'd0) & interface_bank5_wdata_ready)) | ((litedramcrossbar_roundrobin6_grant == 1'd0) & interface_bank6_wdata_ready)) | ((litedramcrossbar_roundrobin7_grant == 1'd0) & interface_bank7_wdata_ready));
	litedramcrossbar_new_master_wdata_ready1 <= litedramcrossbar_new_master_wdata_ready0;
	litedramcrossbar_new_master_wdata_ready2 <= litedramcrossbar_new_master_wdata_ready1;
	litedramcrossbar_new_master_wdata_ready3 <= litedramcrossbar_new_master_wdata_ready2;
	litedramcrossbar_new_master_wdata_ready4 <= litedramcrossbar_new_master_wdata_ready3;
	litedramcrossbar_new_master_wdata_ready5 <= litedramcrossbar_new_master_wdata_ready4;
	litedramcrossbar_new_master_wdata_ready6 <= litedramcrossbar_new_master_wdata_ready5;
	litedramcrossbar_new_master_wdata_ready7 <= ((((((((1'd0 | ((litedramcrossbar_roundrobin0_grant == 1'd1) & interface_bank0_wdata_ready)) | ((litedramcrossbar_roundrobin1_grant == 1'd1) & interface_bank1_wdata_ready)) | ((litedramcrossbar_roundrobin2_grant == 1'd1) & interface_bank2_wdata_ready)) | ((litedramcrossbar_roundrobin3_grant == 1'd1) & interface_bank3_wdata_ready)) | ((litedramcrossbar_roundrobin4_grant == 1'd1) & interface_bank4_wdata_ready)) | ((litedramcrossbar_roundrobin5_grant == 1'd1) & interface_bank5_wdata_ready)) | ((litedramcrossbar_roundrobin6_grant == 1'd1) & interface_bank6_wdata_ready)) | ((litedramcrossbar_roundrobin7_grant == 1'd1) & interface_bank7_wdata_ready));
	litedramcrossbar_new_master_wdata_ready8 <= litedramcrossbar_new_master_wdata_ready7;
	litedramcrossbar_new_master_wdata_ready9 <= litedramcrossbar_new_master_wdata_ready8;
	litedramcrossbar_new_master_wdata_ready10 <= litedramcrossbar_new_master_wdata_ready9;
	litedramcrossbar_new_master_wdata_ready11 <= litedramcrossbar_new_master_wdata_ready10;
	litedramcrossbar_new_master_wdata_ready12 <= litedramcrossbar_new_master_wdata_ready11;
	litedramcrossbar_new_master_wdata_ready13 <= litedramcrossbar_new_master_wdata_ready12;
	litedramcrossbar_new_master_rdata_valid0 <= ((((((((1'd0 | ((litedramcrossbar_roundrobin0_grant == 1'd0) & interface_bank0_rdata_valid)) | ((litedramcrossbar_roundrobin1_grant == 1'd0) & interface_bank1_rdata_valid)) | ((litedramcrossbar_roundrobin2_grant == 1'd0) & interface_bank2_rdata_valid)) | ((litedramcrossbar_roundrobin3_grant == 1'd0) & interface_bank3_rdata_valid)) | ((litedramcrossbar_roundrobin4_grant == 1'd0) & interface_bank4_rdata_valid)) | ((litedramcrossbar_roundrobin5_grant == 1'd0) & interface_bank5_rdata_valid)) | ((litedramcrossbar_roundrobin6_grant == 1'd0) & interface_bank6_rdata_valid)) | ((litedramcrossbar_roundrobin7_grant == 1'd0) & interface_bank7_rdata_valid));
	litedramcrossbar_new_master_rdata_valid1 <= litedramcrossbar_new_master_rdata_valid0;
	litedramcrossbar_new_master_rdata_valid2 <= litedramcrossbar_new_master_rdata_valid1;
	litedramcrossbar_new_master_rdata_valid3 <= litedramcrossbar_new_master_rdata_valid2;
	litedramcrossbar_new_master_rdata_valid4 <= litedramcrossbar_new_master_rdata_valid3;
	litedramcrossbar_new_master_rdata_valid5 <= litedramcrossbar_new_master_rdata_valid4;
	litedramcrossbar_new_master_rdata_valid6 <= litedramcrossbar_new_master_rdata_valid5;
	litedramcrossbar_new_master_rdata_valid7 <= litedramcrossbar_new_master_rdata_valid6;
	litedramcrossbar_new_master_rdata_valid8 <= litedramcrossbar_new_master_rdata_valid7;
	litedramcrossbar_new_master_rdata_valid9 <= litedramcrossbar_new_master_rdata_valid8;
	litedramcrossbar_new_master_rdata_valid10 <= litedramcrossbar_new_master_rdata_valid9;
	litedramcrossbar_new_master_rdata_valid11 <= litedramcrossbar_new_master_rdata_valid10;
	litedramcrossbar_new_master_rdata_valid12 <= litedramcrossbar_new_master_rdata_valid11;
	litedramcrossbar_new_master_rdata_valid13 <= litedramcrossbar_new_master_rdata_valid12;
	litedramcrossbar_new_master_rdata_valid14 <= litedramcrossbar_new_master_rdata_valid13;
	litedramcrossbar_new_master_rdata_valid15 <= litedramcrossbar_new_master_rdata_valid14;
	litedramcrossbar_new_master_rdata_valid16 <= litedramcrossbar_new_master_rdata_valid15;
	litedramcrossbar_new_master_rdata_valid17 <= litedramcrossbar_new_master_rdata_valid16;
	litedramcrossbar_new_master_rdata_valid18 <= litedramcrossbar_new_master_rdata_valid17;
	litedramcrossbar_new_master_rdata_valid19 <= litedramcrossbar_new_master_rdata_valid18;
	litedramcrossbar_new_master_rdata_valid20 <= litedramcrossbar_new_master_rdata_valid19;
	litedramcrossbar_new_master_rdata_valid21 <= litedramcrossbar_new_master_rdata_valid20;
	litedramcrossbar_new_master_rdata_valid22 <= litedramcrossbar_new_master_rdata_valid21;
	litedramcrossbar_new_master_rdata_valid23 <= litedramcrossbar_new_master_rdata_valid22;
	litedramcrossbar_new_master_rdata_valid24 <= ((((((((1'd0 | ((litedramcrossbar_roundrobin0_grant == 1'd1) & interface_bank0_rdata_valid)) | ((litedramcrossbar_roundrobin1_grant == 1'd1) & interface_bank1_rdata_valid)) | ((litedramcrossbar_roundrobin2_grant == 1'd1) & interface_bank2_rdata_valid)) | ((litedramcrossbar_roundrobin3_grant == 1'd1) & interface_bank3_rdata_valid)) | ((litedramcrossbar_roundrobin4_grant == 1'd1) & interface_bank4_rdata_valid)) | ((litedramcrossbar_roundrobin5_grant == 1'd1) & interface_bank5_rdata_valid)) | ((litedramcrossbar_roundrobin6_grant == 1'd1) & interface_bank6_rdata_valid)) | ((litedramcrossbar_roundrobin7_grant == 1'd1) & interface_bank7_rdata_valid));
	litedramcrossbar_new_master_rdata_valid25 <= litedramcrossbar_new_master_rdata_valid24;
	litedramcrossbar_new_master_rdata_valid26 <= litedramcrossbar_new_master_rdata_valid25;
	litedramcrossbar_new_master_rdata_valid27 <= litedramcrossbar_new_master_rdata_valid26;
	litedramcrossbar_new_master_rdata_valid28 <= litedramcrossbar_new_master_rdata_valid27;
	litedramcrossbar_new_master_rdata_valid29 <= litedramcrossbar_new_master_rdata_valid28;
	litedramcrossbar_new_master_rdata_valid30 <= litedramcrossbar_new_master_rdata_valid29;
	litedramcrossbar_new_master_rdata_valid31 <= litedramcrossbar_new_master_rdata_valid30;
	litedramcrossbar_new_master_rdata_valid32 <= litedramcrossbar_new_master_rdata_valid31;
	litedramcrossbar_new_master_rdata_valid33 <= litedramcrossbar_new_master_rdata_valid32;
	litedramcrossbar_new_master_rdata_valid34 <= litedramcrossbar_new_master_rdata_valid33;
	litedramcrossbar_new_master_rdata_valid35 <= litedramcrossbar_new_master_rdata_valid34;
	litedramcrossbar_new_master_rdata_valid36 <= litedramcrossbar_new_master_rdata_valid35;
	litedramcrossbar_new_master_rdata_valid37 <= litedramcrossbar_new_master_rdata_valid36;
	litedramcrossbar_new_master_rdata_valid38 <= litedramcrossbar_new_master_rdata_valid37;
	litedramcrossbar_new_master_rdata_valid39 <= litedramcrossbar_new_master_rdata_valid38;
	litedramcrossbar_new_master_rdata_valid40 <= litedramcrossbar_new_master_rdata_valid39;
	litedramcrossbar_new_master_rdata_valid41 <= litedramcrossbar_new_master_rdata_valid40;
	litedramcrossbar_new_master_rdata_valid42 <= litedramcrossbar_new_master_rdata_valid41;
	litedramcrossbar_new_master_rdata_valid43 <= litedramcrossbar_new_master_rdata_valid42;
	litedramcrossbar_new_master_rdata_valid44 <= litedramcrossbar_new_master_rdata_valid43;
	litedramcrossbar_new_master_rdata_valid45 <= litedramcrossbar_new_master_rdata_valid44;
	litedramcrossbar_new_master_rdata_valid46 <= litedramcrossbar_new_master_rdata_valid45;
	litedramcrossbar_new_master_rdata_valid47 <= litedramcrossbar_new_master_rdata_valid46;
	convert_new_master_wdata_ready0 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd0) & interface_bank0_wdata_ready)) | ((convert_roundrobin1_grant == 1'd0) & interface_bank1_wdata_ready)) | ((convert_roundrobin2_grant == 1'd0) & interface_bank2_wdata_ready)) | ((convert_roundrobin3_grant == 1'd0) & interface_bank3_wdata_ready)) | ((convert_roundrobin4_grant == 1'd0) & interface_bank4_wdata_ready)) | ((convert_roundrobin5_grant == 1'd0) & interface_bank5_wdata_ready)) | ((convert_roundrobin6_grant == 1'd0) & interface_bank6_wdata_ready)) | ((convert_roundrobin7_grant == 1'd0) & interface_bank7_wdata_ready));
	convert_new_master_wdata_ready1 <= convert_new_master_wdata_ready0;
	convert_new_master_wdata_ready2 <= convert_new_master_wdata_ready1;
	convert_new_master_wdata_ready3 <= convert_new_master_wdata_ready2;
	convert_new_master_wdata_ready4 <= convert_new_master_wdata_ready3;
	convert_new_master_wdata_ready5 <= convert_new_master_wdata_ready4;
	convert_new_master_wdata_ready6 <= convert_new_master_wdata_ready5;
	convert_new_master_wdata_ready7 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd1) & interface_bank0_wdata_ready)) | ((convert_roundrobin1_grant == 1'd1) & interface_bank1_wdata_ready)) | ((convert_roundrobin2_grant == 1'd1) & interface_bank2_wdata_ready)) | ((convert_roundrobin3_grant == 1'd1) & interface_bank3_wdata_ready)) | ((convert_roundrobin4_grant == 1'd1) & interface_bank4_wdata_ready)) | ((convert_roundrobin5_grant == 1'd1) & interface_bank5_wdata_ready)) | ((convert_roundrobin6_grant == 1'd1) & interface_bank6_wdata_ready)) | ((convert_roundrobin7_grant == 1'd1) & interface_bank7_wdata_ready));
	convert_new_master_wdata_ready8 <= convert_new_master_wdata_ready7;
	convert_new_master_wdata_ready9 <= convert_new_master_wdata_ready8;
	convert_new_master_wdata_ready10 <= convert_new_master_wdata_ready9;
	convert_new_master_wdata_ready11 <= convert_new_master_wdata_ready10;
	convert_new_master_wdata_ready12 <= convert_new_master_wdata_ready11;
	convert_new_master_wdata_ready13 <= convert_new_master_wdata_ready12;
	convert_new_master_rdata_valid0 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd0) & interface_bank0_rdata_valid)) | ((convert_roundrobin1_grant == 1'd0) & interface_bank1_rdata_valid)) | ((convert_roundrobin2_grant == 1'd0) & interface_bank2_rdata_valid)) | ((convert_roundrobin3_grant == 1'd0) & interface_bank3_rdata_valid)) | ((convert_roundrobin4_grant == 1'd0) & interface_bank4_rdata_valid)) | ((convert_roundrobin5_grant == 1'd0) & interface_bank5_rdata_valid)) | ((convert_roundrobin6_grant == 1'd0) & interface_bank6_rdata_valid)) | ((convert_roundrobin7_grant == 1'd0) & interface_bank7_rdata_valid));
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
	convert_new_master_rdata_valid24 <= ((((((((1'd0 | ((convert_roundrobin0_grant == 1'd1) & interface_bank0_rdata_valid)) | ((convert_roundrobin1_grant == 1'd1) & interface_bank1_rdata_valid)) | ((convert_roundrobin2_grant == 1'd1) & interface_bank2_rdata_valid)) | ((convert_roundrobin3_grant == 1'd1) & interface_bank3_rdata_valid)) | ((convert_roundrobin4_grant == 1'd1) & interface_bank4_rdata_valid)) | ((convert_roundrobin5_grant == 1'd1) & interface_bank5_rdata_valid)) | ((convert_roundrobin6_grant == 1'd1) & interface_bank6_rdata_valid)) | ((convert_roundrobin7_grant == 1'd1) & interface_bank7_rdata_valid));
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
	if (litedramcrossbar_roundrobin0_ce) begin
		case (litedramcrossbar_roundrobin0_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin0_request[1]) begin
					litedramcrossbar_roundrobin0_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin0_request[0]) begin
					litedramcrossbar_roundrobin0_grant <= 1'd0;
				end
			end
		endcase
	end
	if (litedramcrossbar_roundrobin1_ce) begin
		case (litedramcrossbar_roundrobin1_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin1_request[1]) begin
					litedramcrossbar_roundrobin1_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin1_request[0]) begin
					litedramcrossbar_roundrobin1_grant <= 1'd0;
				end
			end
		endcase
	end
	if (litedramcrossbar_roundrobin2_ce) begin
		case (litedramcrossbar_roundrobin2_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin2_request[1]) begin
					litedramcrossbar_roundrobin2_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin2_request[0]) begin
					litedramcrossbar_roundrobin2_grant <= 1'd0;
				end
			end
		endcase
	end
	if (litedramcrossbar_roundrobin3_ce) begin
		case (litedramcrossbar_roundrobin3_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin3_request[1]) begin
					litedramcrossbar_roundrobin3_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin3_request[0]) begin
					litedramcrossbar_roundrobin3_grant <= 1'd0;
				end
			end
		endcase
	end
	if (litedramcrossbar_roundrobin4_ce) begin
		case (litedramcrossbar_roundrobin4_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin4_request[1]) begin
					litedramcrossbar_roundrobin4_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin4_request[0]) begin
					litedramcrossbar_roundrobin4_grant <= 1'd0;
				end
			end
		endcase
	end
	if (litedramcrossbar_roundrobin5_ce) begin
		case (litedramcrossbar_roundrobin5_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin5_request[1]) begin
					litedramcrossbar_roundrobin5_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin5_request[0]) begin
					litedramcrossbar_roundrobin5_grant <= 1'd0;
				end
			end
		endcase
	end
	if (litedramcrossbar_roundrobin6_ce) begin
		case (litedramcrossbar_roundrobin6_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin6_request[1]) begin
					litedramcrossbar_roundrobin6_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin6_request[0]) begin
					litedramcrossbar_roundrobin6_grant <= 1'd0;
				end
			end
		endcase
	end
	if (litedramcrossbar_roundrobin7_ce) begin
		case (litedramcrossbar_roundrobin7_grant)
			1'd0: begin
				if (litedramcrossbar_roundrobin7_request[1]) begin
					litedramcrossbar_roundrobin7_grant <= 1'd1;
				end
			end
			1'd1: begin
				if (litedramcrossbar_roundrobin7_request[0]) begin
					litedramcrossbar_roundrobin7_grant <= 1'd0;
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
	if (sys_rst) begin
		litedramcrossbar_roundrobin0_grant <= 1'd0;
		litedramcrossbar_roundrobin1_grant <= 1'd0;
		litedramcrossbar_roundrobin2_grant <= 1'd0;
		litedramcrossbar_roundrobin3_grant <= 1'd0;
		litedramcrossbar_roundrobin4_grant <= 1'd0;
		litedramcrossbar_roundrobin5_grant <= 1'd0;
		litedramcrossbar_roundrobin6_grant <= 1'd0;
		litedramcrossbar_roundrobin7_grant <= 1'd0;
		litedramcrossbar_new_master_wdata_ready0 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready1 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready2 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready3 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready4 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready5 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready6 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready7 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready8 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready9 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready10 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready11 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready12 <= 1'd0;
		litedramcrossbar_new_master_wdata_ready13 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid0 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid1 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid2 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid3 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid4 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid5 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid6 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid7 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid8 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid9 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid10 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid11 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid12 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid13 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid14 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid15 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid16 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid17 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid18 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid19 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid20 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid21 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid22 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid23 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid24 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid25 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid26 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid27 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid28 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid29 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid30 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid31 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid32 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid33 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid34 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid35 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid36 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid37 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid38 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid39 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid40 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid41 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid42 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid43 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid44 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid45 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid46 <= 1'd0;
		litedramcrossbar_new_master_rdata_valid47 <= 1'd0;
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
	end
end

endmodule
