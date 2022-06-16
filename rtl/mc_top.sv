module mc_top(

	//dfi p0
    output [5:0] dfi_p0_ca,
    output dfi_p0_cs, 
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

	//dfi p1
	output [5:0] dfi_p1_ca,
    output dfi_p1_cs,
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

	//dfi p2
	output [5:0] dfi_p2_ca,
    output dfi_p2_cs,
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

	//dfi p3
	output [5:0] dfi_p3_ca,
    output dfi_p3_cs,
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

	//axi aw channel
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
	input [3:0]axi_aw_payload_id,

	//axi w channel
	input axi_w_valid,
	output reg axi_w_ready,
	input axi_w_first,
	input axi_w_last,
	input [255:0] axi_w_payload_data,
	input [31:0] axi_w_payload_strb,
	input [3:0]axi_w_payload_id,

	//axi b channel
	output axi_b_valid,
	input axi_b_ready,
	output axi_b_first,
	output axi_b_last,
	output [1:0] axi_b_payload_resp,
	output [3:0]axi_b_payload_id,

	//axi ar channel
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
	input [3:0]axi_ar_payload_id,

	//axi r channel
	output axi_r_valid,
	input axi_r_ready,
	output axi_r_first,
	output axi_r_last,
	output reg [1:0] axi_r_payload_resp,
	output [255:0] axi_r_payload_data,
	output [3:0]axi_r_payload_id,

	//wishbone bus
	input [31:0] wishbone_port_adr,
	input [31:0] wishbone_port_dat_w,
	output reg [31:0] wishbone_port_dat_r,
	input [3:0] wishbone_port_sel,
	input wishbone_port_cyc,
	input wishbone_port_stb,
	output reg wishbone_port_ack,
	input wishbone_port_we,
	input [2:0] wishbone_port_cti,
	input [1:0] wishbone_port_bte,
	input wishbone_port_err,

	//ahb bus
   	input   logic                i_ahb_extclk,
   	input   logic                i_ahb_extrst,
   	input   logic [31:0]         i_haddr,
   	input   logic                i_hwrite,
   	input   logic                i_hsel,
   	input   logic                i_hreadyin,
   	input   logic [31:0]         i_hwdata,
   	input   logic [1:0]          i_htrans,
   	input   logic [2:0]          i_hsize,
   	input   logic [2:0]          i_hburst,
   	output  logic                o_hready,
   	output  logic [31:0]         o_hrdata,
   	output  logic [1:0]          o_hresp,
   	output  logic                o_hgrant,

	//system clock/reset
	input sys_clk,
	input sys_rst
);
logic [16:0] dfi_p0_address,dfi_p1_address,dfi_p2_address,dfi_p3_address;
logic [5:0] dfi_p0_bank,dfi_p1_bank,dfi_p2_bank,dfi_p3_bank;
logic dfi_p0_cas_n,dfi_p1_cas_n,dfi_p2_cas_n,dfi_p3_cas_n;
logic dfi_p0_ras_n,dfi_p1_ras_n,dfi_p2_ras_n,dfi_p3_ras_n;
logic dfi_p0_we_n,dfi_p1_we_n,dfi_p2_we_n,dfi_p3_we_n;
logic dfi_p0_cs_n,dfi_p1_cs_n,dfi_p2_cs_n,dfi_p3_cs_n;

assign dfi_p0_bank[5:3]=3'd0;
assign dfi_p1_bank[5:3]=3'd0;
assign dfi_p2_bank[5:3]=3'd0;
assign dfi_p3_bank[5:3]=3'd0;

mc_core u_mc_core (
    //dfi p0
	.dfi_p0_address          (dfi_p0_address),
    .dfi_p0_bank             (dfi_p0_bank[2:0]),
    .dfi_p0_cas_n            (dfi_p0_cas_n),
    .dfi_p0_cs_n             (dfi_p0_cs_n),
    .dfi_p0_ras_n            (dfi_p0_ras_n),
    .dfi_p0_we_n             (dfi_p0_we_n),
    .dfi_p0_cke              (dfi_p0_cke),
    .dfi_p0_odt              (dfi_p0_odt),
    .dfi_p0_reset_n          (dfi_p0_reset_n),
    .dfi_p0_act_n            (dfi_p0_act_n),
    .dfi_p0_wrdata           (dfi_p0_wrdata),
    .dfi_p0_wrdata_en        (dfi_p0_wrdata_en),
    .dfi_p0_wrdata_mask      (dfi_p0_wrdata_mask),
    .dfi_p0_rddata_en        (dfi_p0_rddata_en),
    .dfi_p0_rddata           (dfi_p0_rddata),
    .dfi_p0_rddata_valid     (dfi_p0_rddata_valid),
    //dfi p1
	.dfi_p1_address          (dfi_p1_address),
    .dfi_p1_bank             (dfi_p1_bank[2:0]),
    .dfi_p1_cas_n            (dfi_p1_cas_n),
    .dfi_p1_cs_n             (dfi_p1_cs_n),
    .dfi_p1_ras_n            (dfi_p1_ras_n),
    .dfi_p1_we_n             (dfi_p1_we_n),
    .dfi_p1_cke              (dfi_p1_cke),
    .dfi_p1_odt              (dfi_p1_odt),
    .dfi_p1_reset_n          (dfi_p1_reset_n),
    .dfi_p1_act_n            (dfi_p1_act_n),
    .dfi_p1_wrdata           (dfi_p1_wrdata),
    .dfi_p1_wrdata_en        (dfi_p1_wrdata_en),
    .dfi_p1_wrdata_mask      (dfi_p1_wrdata_mask),
    .dfi_p1_rddata_en        (dfi_p1_rddata_en),
    .dfi_p1_rddata           (dfi_p1_rddata),
    .dfi_p1_rddata_valid     (dfi_p1_rddata_valid),
    //dfi p2
	.dfi_p2_address          (dfi_p2_address),
    .dfi_p2_bank             (dfi_p2_bank[2:0]),
    .dfi_p2_cas_n            (dfi_p2_cas_n),
    .dfi_p2_cs_n             (dfi_p2_cs_n),
    .dfi_p2_ras_n            (dfi_p2_ras_n),
    .dfi_p2_we_n             (dfi_p2_we_n),
    .dfi_p2_cke              (dfi_p2_cke),
    .dfi_p2_odt              (dfi_p2_odt),
    .dfi_p2_reset_n          (dfi_p2_reset_n),
    .dfi_p2_act_n            (dfi_p2_act_n),
    .dfi_p2_wrdata           (dfi_p2_wrdata),
    .dfi_p2_wrdata_en        (dfi_p2_wrdata_en),
    .dfi_p2_wrdata_mask      (dfi_p2_wrdata_mask),
    .dfi_p2_rddata_en        (dfi_p2_rddata_en),
    .dfi_p2_rddata           (dfi_p2_rddata),
    .dfi_p2_rddata_valid     (dfi_p2_rddata_valid),
    //dfi p3
	.dfi_p3_address          (dfi_p3_address),
    .dfi_p3_bank             (dfi_p3_bank[2:0]),
    .dfi_p3_cas_n            (dfi_p3_cas_n),
    .dfi_p3_cs_n             (dfi_p3_cs_n),
    .dfi_p3_ras_n            (dfi_p3_ras_n),
    .dfi_p3_we_n             (dfi_p3_we_n),
    .dfi_p3_cke              (dfi_p3_cke),
    .dfi_p3_odt              (dfi_p3_odt),
    .dfi_p3_reset_n          (dfi_p3_reset_n),
    .dfi_p3_act_n            (dfi_p3_act_n),
    .dfi_p3_wrdata           (dfi_p3_wrdata),
    .dfi_p3_wrdata_en        (dfi_p3_wrdata_en),
    .dfi_p3_wrdata_mask      (dfi_p3_wrdata_mask),
    .dfi_p3_rddata_en        (dfi_p3_rddata_en),
    .dfi_p3_rddata           (dfi_p3_rddata),
    .dfi_p3_rddata_valid     (dfi_p3_rddata_valid),
    //axi aw channel
	.axi_aw_valid            (axi_aw_valid),
    .axi_aw_ready            (axi_aw_ready),
    .axi_aw_first            (axi_aw_first),
    .axi_aw_last             (axi_aw_last),
    .axi_aw_payload_addr     (axi_aw_payload_addr),
    .axi_aw_payload_burst    (axi_aw_payload_burst),
    .axi_aw_payload_len      (axi_aw_payload_len),
    .axi_aw_payload_size     (axi_aw_payload_size),
    .axi_aw_payload_lock     (axi_aw_payload_lock),
    .axi_aw_payload_prot     (axi_aw_payload_prot),
    .axi_aw_payload_cache    (axi_aw_payload_cache),
    .axi_aw_payload_qos      (axi_aw_payload_qos),
    .axi_aw_payload_id       (axi_aw_payload_id),
    //axi w channel
	.axi_w_valid             (axi_w_valid),
    .axi_w_ready             (axi_w_ready),
    .axi_w_first             (axi_w_first),
    .axi_w_last              (axi_w_last),
    .axi_w_payload_data      (axi_w_payload_data),
    .axi_w_payload_strb      (axi_w_payload_strb),
    .axi_w_payload_id        (axi_w_payload_id),
    //axi b channel
	.axi_b_valid             (axi_b_valid),
    .axi_b_ready             (axi_b_ready),
    .axi_b_first             (axi_b_first),
    .axi_b_last              (axi_b_last),
    .axi_b_payload_resp      (axi_b_payload_resp),
    .axi_b_payload_id        (axi_b_payload_id),
    //axi ar channel
	.axi_ar_valid            (axi_ar_valid),
    .axi_ar_ready            (axi_ar_ready),
    .axi_ar_first            (axi_ar_first),
    .axi_ar_last             (axi_ar_last),
    .axi_ar_payload_addr     (axi_ar_payload_addr),
    .axi_ar_payload_burst    (axi_ar_payload_burst),
    .axi_ar_payload_len      (axi_ar_payload_len),
    .axi_ar_payload_size     (axi_ar_payload_size),
    .axi_ar_payload_lock     (axi_ar_payload_lock),
    .axi_ar_payload_prot     (axi_ar_payload_prot),
    .axi_ar_payload_cache    (axi_ar_payload_cache),
    .axi_ar_payload_qos      (axi_ar_payload_qos),
    .axi_ar_payload_id       (axi_ar_payload_id),
    //axi r channel
	.axi_r_valid             (axi_r_valid),
    .axi_r_ready             (axi_r_ready),
    .axi_r_first             (axi_r_first),
    .axi_r_last              (axi_r_last),
    .axi_r_payload_resp      (axi_r_payload_resp),
    .axi_r_payload_data      (axi_r_payload_data),
    .axi_r_payload_id        (axi_r_payload_id),
    //wishbone bus
	.wishbone_port_adr            (wishbone_port_adr),
    .wishbone_port_dat_w          (wishbone_port_dat_w),
    .wishbone_port_dat_r          (wishbone_port_dat_r),
    .wishbone_port_sel            (wishbone_port_sel),
    .wishbone_port_cyc            (wishbone_port_cyc),
    .wishbone_port_stb            (wishbone_port_stb),
    .wishbone_port_ack            (wishbone_port_ack),
    .wishbone_port_we             (wishbone_port_we),
    .wishbone_port_cti            (wishbone_port_cti),
    .wishbone_port_bte            (wishbone_port_bte),
    .wishbone_port_err            (wishbone_port_err),
    //ahb bus

    .i_ahb_extclk            (i_ahb_extclk),
    .i_ahb_extrst            (i_ahb_extrst),
    .i_haddr                 (i_haddr),
    .i_hwrite                (i_hwrite),
    .i_hsel                  (i_hsel),
    .i_hreadyin              (i_hreadyin),
    .i_hwdata                (i_hwdata),
    .i_htrans                (i_htrans),
    .i_hsize                 (i_hsize),
    .i_hburst                (i_hburst),
    .o_hready                (o_hready),
    .o_hrdata                (o_hrdata),
    .o_hresp                 (o_hresp),
    .o_hgrant                (o_hgrant),
    //system clock/reset
	.sys_clk                 (sys_clk),
    .sys_rst                 (sys_rst)
);

logic [3:0] cs;
logic [3:0] ca_0,ca_1,ca_2,ca_3,ca_4,ca_5;

DFIAdapter u_DFIAdapter (
    .dfi_p0_address    (dfi_p0_address),
    .dfi_p0_bank       (dfi_p0_bank),
    .dfi_p0_cas_n      (dfi_p0_cas_n),
    .dfi_p0_cs_n       (dfi_p0_cs_n),
    .dfi_p0_ras_n      (dfi_p0_ras_n),
    .dfi_p0_we_n       (dfi_p0_we_n),
    .dfi_p1_address    (dfi_p1_address),
    .dfi_p1_bank       (dfi_p1_bank),
    .dfi_p1_cas_n      (dfi_p1_cas_n),
    .dfi_p1_cs_n       (dfi_p1_cs_n),
    .dfi_p1_ras_n      (dfi_p1_ras_n),
    .dfi_p1_we_n       (dfi_p1_we_n),
    .dfi_p2_address    (dfi_p2_address),
    .dfi_p2_bank       (dfi_p2_bank),
    .dfi_p2_cas_n      (dfi_p2_cas_n),
    .dfi_p2_cs_n       (dfi_p2_cs_n),
    .dfi_p2_ras_n      (dfi_p2_ras_n),
    .dfi_p2_we_n       (dfi_p2_we_n),
    .dfi_p3_address    (dfi_p3_address),
    .dfi_p3_bank       (dfi_p3_bank),
    .dfi_p3_cas_n      (dfi_p3_cas_n),
    .dfi_p3_cs_n       (dfi_p3_cs_n),
    .dfi_p3_ras_n      (dfi_p3_ras_n),
    .dfi_p3_we_n       (dfi_p3_we_n),
    .cs                (cs),
    .ca                (ca),
    .ca_1              (ca_1),
    .ca_2              (ca_2),
    .ca_3              (ca_3),
    .ca_4              (ca_4),
    .ca_5              (ca_5),
    .sys_clk           (sys_clk),
    .sys_rst           (sys_rst)
);

assign dfi_p0_cs=cs[0];
assign dfi_p1_cs=cs[1];
assign dfi_p2_cs=cs[2];
assign dfi_p3_cs=cs[3];

assign dfi_p0_ca={ca_5[0],ca_4[0],ca_3[0],ca_2[0],ca_1[0],ca_0[0]};
assign dfi_p1_ca={ca_5[1],ca_4[1],ca_3[1],ca_2[1],ca_1[1],ca_0[1]};
assign dfi_p2_ca={ca_5[2],ca_4[2],ca_3[2],ca_2[2],ca_1[2],ca_0[2]};
assign dfi_p3_ca={ca_5[3],ca_4[3],ca_3[3],ca_2[3],ca_1[3],ca_0[3]};
endmodule