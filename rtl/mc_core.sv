module mc_core(

	//dfi p0
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
    output dfi_p0_mw,
	output [63:0] dfi_p0_wrdata,
	output reg dfi_p0_wrdata_en,
	output [7:0] dfi_p0_wrdata_mask,
	output reg dfi_p0_rddata_en,
	input [63:0] dfi_p0_rddata,
	input dfi_p0_rddata_valid,

	//dfi p1
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
    output dfi_p1_mw,
	output [63:0] dfi_p1_wrdata,
	output reg dfi_p1_wrdata_en,
	output [7:0] dfi_p1_wrdata_mask,
	output reg dfi_p1_rddata_en,
	input [63:0] dfi_p1_rddata,
	input dfi_p1_rddata_valid,

	//dfi p2
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
    output dfi_p2_mw,
	output [63:0] dfi_p2_wrdata,
	output reg dfi_p2_wrdata_en,
	output [7:0] dfi_p2_wrdata_mask,
	output reg dfi_p2_rddata_en,
	input [63:0] dfi_p2_rddata,
	input dfi_p2_rddata_valid,

	//dfi p3
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
    output dfi_p3_mw,
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
	input [3:0] axi_aw_payload_id,

	//axi w channel
	input axi_w_valid,
	output reg axi_w_ready,
	input axi_w_first,
	input axi_w_last,
	input [255:0] axi_w_payload_data,
	input [31:0] axi_w_payload_strb,
	input [3:0] axi_w_payload_id,

	//axi b channel
	output axi_b_valid,
	input axi_b_ready,
	output axi_b_first,
	output axi_b_last,
	output [1:0] axi_b_payload_resp,
	output [3:0] axi_b_payload_id,

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
	input [3:0] axi_ar_payload_id,

	//axi r channel
	output axi_r_valid,
	input axi_r_ready,
	output axi_r_first,
	output axi_r_last,
	output reg [1:0] axi_r_payload_resp,
	output [255:0] axi_r_payload_data,
	output [3:0] axi_r_payload_id,

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
   	input                  i_ahb_extclk,
   	input                  i_ahb_extrst,
   	input   [31:0]         i_haddr,
   	input                  i_hwrite,
   	input                  i_hsel,
   	input                  i_hreadyin,
   	input   [31:0]         i_hwdata,
   	input   [1:0]          i_htrans,
   	input   [2:0]          i_hsize,
   	input   [2:0]          i_hburst,
   	output                 o_hready,
   	output  [31:0]         o_hrdata,
   	output  [1:0]          o_hresp,
   	output                 o_hgrant,

	//system clock/reset
	input sys_clk,
	input sys_rst
);

//CSRs
    logic [1:0] mul_rdphase_cfg;
    logic [1:0] mul_wrphase_cfg;
    logic [1:0] mul_rdcmd_phase_cfg;
    logic [1:0] mul_wrcmd_phase_cfg;
    logic [7:0] mul_tRRD_cfg;
    logic [7:0] mul_tFAW_cfg;
    logic [7:0] mul_tCCD_cfg;
    logic [7:0] mul_WTR_LATENCY_cfg;
    logic [7:0] mul_RTW_LATENCY_cfg;
    logic [7:0] mul_READ_TIME_cfg;
    logic [7:0] mul_WRITE_TIME_cfg;

    logic [11:0] ref_tREFI_cfg;
    logic [3:0] ref_POSTPONE_cfg;
    logic [7:0] ref_tRP_cfg;
    logic [7:0] ref_tRFC_cfg;

    logic [7:0] bm_PRECHARGE_TIME_cfg;
    logic [7:0] bm_tRAS_cfg;
    logic [7:0] bm_tRC_cfg;
    logic [7:0] bm_tRP_cfg;
    logic [7:0] bm_tRCD_cfg;
    logic [7:0] bm_tCCDMW_cfg;

    logic [4:0] crb_READ_LATENCY_cfg;
    logic [4:0] crb_WRITE_LATENCY_cfg;

    //tCCDMW=4*tCCD
    assign bm_tCCDMW_cfg=mul_tCCD_cfg<<2;

mc_ahb_csr u_mc_ahb_csr (
    .i_sysclk                   (sys_clk),
    .i_sysrst                   (sys_rst),
    .i_ahb_extclk               (i_ahb_extclk),
    .i_ahb_extrst               (i_ahb_extrst),
    .i_haddr                    (i_haddr),
    .i_hwrite                   (i_hwrite),
    .i_hsel                     (i_hsel),
    .i_hreadyin                 (i_hreadyin),
    .i_hwdata                   (i_hwdata),
    .i_htrans                   (i_htrans),
    .i_hsize                    (i_hsize),
    .i_hburst                   (i_hburst),
    .o_hready                   (o_hready),
    .o_hrdata                   (o_hrdata),
    .o_hresp                    (o_hresp),
    .o_hgrant                   (o_hgrant),
    .o_mul_rdphase_cfg          (mul_rdphase_cfg),
    .o_mul_wrphase_cfg          (mul_wrphase_cfg),
    .o_mul_rdcmd_phase_cfg      (mul_rdcmd_phase_cfg),
    .o_mul_wrcmd_phase_cfg      (mul_wrcmd_phase_cfg),
    .o_mul_tRRD_cfg             (mul_tRRD_cfg),
    .o_mul_tFAW_cfg             (mul_tFAW_cfg),
    .o_mul_tCCD_cfg             (mul_tCCD_cfg),
    .o_mul_WTR_LATENCY_cfg      (mul_WTR_LATENCY_cfg),
    .o_mul_RTW_LATENCY_cfg      (mul_RTW_LATENCY_cfg),
    .o_mul_READ_TIME_cfg        (mul_READ_TIME_cfg),
    .o_mul_WRITE_TIME_cfg       (mul_WRITE_TIME_cfg),
    .o_ref_tREFI_cfg            (ref_tREFI_cfg),
    .o_ref_POSTPONE_cfg         (ref_POSTPONE_cfg),
    .o_ref_tRP_cfg              (ref_tRP_cfg),
    .o_ref_tRFC_cfg             (ref_tRFC_cfg),
    .o_bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .o_bm_tRAS_cfg              (bm_tRAS_cfg),
    .o_bm_tRC_cfg               (bm_tRC_cfg),
    .o_bm_tRP_cfg               (bm_tRP_cfg),
    .o_bm_tRCD_cfg              (bm_tRCD_cfg),
    .o_crb_READ_LATENCY_cfg     (crb_READ_LATENCY_cfg),
    .o_crb_WRITE_LATENCY_cfg    (crb_WRITE_LATENCY_cfg)
);

//native ports
    logic native_cmd_valid_0;
	logic native_cmd_ready_0;
	logic native_cmd_first_0;
	logic native_cmd_last_0;
	logic native_cmd_payload_we_0;
    logic native_cmd_payload_mw_0;
	logic [31:0] native_cmd_payload_addr_0;
	logic wdata_valid_0;
	logic wdata_ready_0;
	logic wdata_first_0;
	logic wdata_last_0;
	logic [255:0] wdata_payload_data_0;
	logic [31:0] wdata_payload_we_0;
	logic rdata_valid_0;
	logic rdata_ready_0;
	logic rdata_first_0;
	logic rdata_last_0;
	logic [255:0] rdata_payload_data_0;

    logic native_cmd_valid_1;
	logic native_cmd_ready_1;
	logic native_cmd_first_1;
	logic native_cmd_last_1;
	logic native_cmd_payload_we_1;
    logic native_cmd_payload_mw_1;
	logic [31:0] native_cmd_payload_addr_1;
	logic wdata_valid_1;
	logic wdata_ready_1;
	logic wdata_first_1;
	logic wdata_last_1;
	logic [255:0] wdata_payload_data_1;
	logic [31:0] wdata_payload_we_1;
	logic rdata_valid_1;
	logic rdata_ready_1;
	logic rdata_first_1;
	logic rdata_last_1;
	logic [255:0] rdata_payload_data_1;


axi2native u_axi2native (
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
    .axi_w_valid             (axi_w_valid),
    .axi_w_ready             (axi_w_ready),
    .axi_w_first             (axi_w_first),
    .axi_w_last              (axi_w_last),
    .axi_w_payload_data      (axi_w_payload_data),
    .axi_w_payload_strb      (axi_w_payload_strb),
    .axi_w_payload_id        (axi_w_payload_id),
    .axi_b_valid             (axi_b_valid),
    .axi_b_ready             (axi_b_ready),
    .axi_b_first             (axi_b_first),
    .axi_b_last              (axi_b_last),
    .axi_b_payload_resp      (axi_b_payload_resp),
    .axi_b_payload_id        (axi_b_payload_id),
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
    .axi_r_valid             (axi_r_valid),
    .axi_r_ready             (axi_r_ready),
    .axi_r_first             (axi_r_first),
    .axi_r_last              (axi_r_last),
    .axi_r_payload_resp      (axi_r_payload_resp),
    .axi_r_payload_data      (axi_r_payload_data),
    .axi_r_payload_id        (axi_r_payload_id),
    .cmd_valid               (native_cmd_valid_0),
    .cmd_ready               (native_cmd_ready_0),
    .cmd_first               (native_cmd_first_0),
    .cmd_last                (native_cmd_last_0),
    .cmd_payload_we          (native_cmd_payload_we_0),
    .cmd_payload_addr        (native_cmd_payload_addr_0),
    .wdata_valid             (wdata_valid_0),
    .wdata_ready             (wdata_ready_0),
    .wdata_first             (wdata_first_0),
    .wdata_last              (wdata_last_0),
    .wdata_payload_data      (wdata_payload_data_0),
    .wdata_payload_we        (wdata_payload_we_0),
    .rdata_valid             (rdata_valid_0),
    .rdata_ready             (rdata_ready_0),
    .rdata_first             (rdata_first_0),
    .rdata_last              (rdata_last_0),
    .rdata_payload_data      (rdata_payload_data_0),
    .sys_clk                 (sys_clk),
    .sys_rst                 (sys_rst)
);

wb2native u_wb2native (
    .wishbone_port_adr      (wishbone_port_adr),
    .wishbone_port_dat_w    (wishbone_port_dat_w),
    .wishbone_port_dat_r    (wishbone_port_dat_r),
    .wishbone_port_sel      (wishbone_port_sel),
    .wishbone_port_cyc      (wishbone_port_cyc),
    .wishbone_port_stb      (wishbone_port_stb),
    .wishbone_port_ack      (wishbone_port_ack),
    .wishbone_port_we       (wishbone_port_we),
    .wishbone_port_cti      (wishbone_port_cti),
    .wishbone_port_bte      (wishbone_port_bte),
    .wishbone_port_err      (wishbone_port_err),
    .cmd_valid              (native_cmd_valid_1),
    .cmd_ready              (native_cmd_ready_1),
    .cmd_first              (native_cmd_first_1),
    .cmd_last               (native_cmd_last_1),
    .cmd_payload_we         (native_cmd_payload_we_1),
    .cmd_payload_addr       (native_cmd_payload_addr_1),
    .wdata_valid            (wdata_valid_1),
    .wdata_ready            (wdata_ready_1),
    .wdata_first            (wdata_first_1),
    .wdata_last             (wdata_last_1),
    .wdata_payload_data     (wdata_payload_data_1),
    .wdata_payload_we       (wdata_payload_we_1),
    .rdata_valid            (rdata_valid_1),
    .rdata_ready            (rdata_ready_1),
    .rdata_first            (rdata_first_1),
    .rdata_last             (rdata_last_1),
    .rdata_payload_data     (rdata_payload_data_1),
    .sys_clk                (sys_clk),
    .sys_rst                (sys_rst)
);

//litedram interface
    logic interface_bank0_valid;
	logic interface_bank0_ready;
	logic interface_bank0_we;
    logic interface_bank0_mw;
	logic [22:0] interface_bank0_addr;
	logic interface_bank0_lock;
	logic interface_bank0_wdata_ready;
	logic interface_bank0_rdata_valid;
	logic interface_bank1_valid;
	logic interface_bank1_ready;
	logic interface_bank1_we;
    logic interface_bank1_mw;
	logic [22:0] interface_bank1_addr;
	logic interface_bank1_lock;
	logic interface_bank1_wdata_ready;
	logic interface_bank1_rdata_valid;
	logic interface_bank2_valid;
	logic interface_bank2_ready;
	logic interface_bank2_we;
    logic interface_bank2_mw;
	logic [22:0] interface_bank2_addr;
	logic interface_bank2_lock;
	logic interface_bank2_wdata_ready;
	logic interface_bank2_rdata_valid;
	logic interface_bank3_valid;
	logic interface_bank3_ready;
	logic interface_bank3_we;
    logic interface_bank3_mw;
	logic [22:0] interface_bank3_addr;
	logic interface_bank3_lock;
	logic interface_bank3_wdata_ready;
	logic interface_bank3_rdata_valid;
	logic interface_bank4_valid;
	logic interface_bank4_ready;
	logic interface_bank4_we;
    logic interface_bank4_mw;
	logic [22:0] interface_bank4_addr;
	logic interface_bank4_lock;
	logic interface_bank4_wdata_ready;
	logic interface_bank4_rdata_valid;
	logic interface_bank5_valid;
	logic interface_bank5_ready;
	logic interface_bank5_we;
    logic interface_bank5_mw;
	logic [22:0] interface_bank5_addr;
	logic interface_bank5_lock;
	logic interface_bank5_wdata_ready;
	logic interface_bank5_rdata_valid;
	logic interface_bank6_valid;
	logic interface_bank6_ready;
	logic interface_bank6_we;
    logic interface_bank6_mw;
	logic [22:0] interface_bank6_addr;
	logic interface_bank6_lock;
	logic interface_bank6_wdata_ready;
	logic interface_bank6_rdata_valid;
	logic interface_bank7_valid;
	logic interface_bank7_ready;
	logic interface_bank7_we;
    logic interface_bank7_mw;
	logic [22:0] interface_bank7_addr;
	logic interface_bank7_lock;
	logic interface_bank7_wdata_ready;
	logic interface_bank7_rdata_valid;
	logic [255:0] interface_wdata;
	logic [31:0] interface_wdata_we;
	logic [255:0] interface_rdata;


crossbar_2ports u_crossbar_2ports (
    .interface_bank0_valid          (interface_bank0_valid),
    .interface_bank0_ready          (interface_bank0_ready),
    .interface_bank0_we             (interface_bank0_we),
    .interface_bank0_mw             (interface_bank0_mw),
    .interface_bank0_addr           (interface_bank0_addr),
    .interface_bank0_lock           (interface_bank0_lock),
    .interface_bank0_wdata_ready    (interface_bank0_wdata_ready),
    .interface_bank0_rdata_valid    (interface_bank0_rdata_valid),
    .interface_bank1_valid          (interface_bank1_valid),
    .interface_bank1_ready          (interface_bank1_ready),
    .interface_bank1_we             (interface_bank1_we),
    .interface_bank1_mw             (interface_bank1_mw),
    .interface_bank1_addr           (interface_bank1_addr),
    .interface_bank1_lock           (interface_bank1_lock),
    .interface_bank1_wdata_ready    (interface_bank1_wdata_ready),
    .interface_bank1_rdata_valid    (interface_bank1_rdata_valid),
    .interface_bank2_valid          (interface_bank2_valid),
    .interface_bank2_ready          (interface_bank2_ready),
    .interface_bank2_we             (interface_bank2_we),
    .interface_bank2_mw             (interface_bank2_mw),
    .interface_bank2_addr           (interface_bank2_addr),
    .interface_bank2_lock           (interface_bank2_lock),
    .interface_bank2_wdata_ready    (interface_bank2_wdata_ready),
    .interface_bank2_rdata_valid    (interface_bank2_rdata_valid),
    .interface_bank3_valid          (interface_bank3_valid),
    .interface_bank3_ready          (interface_bank3_ready),
    .interface_bank3_we             (interface_bank3_we),
    .interface_bank3_mw             (interface_bank3_mw),
    .interface_bank3_addr           (interface_bank3_addr),
    .interface_bank3_lock           (interface_bank3_lock),
    .interface_bank3_wdata_ready    (interface_bank3_wdata_ready),
    .interface_bank3_rdata_valid    (interface_bank3_rdata_valid),
    .interface_bank4_valid          (interface_bank4_valid),
    .interface_bank4_ready          (interface_bank4_ready),
    .interface_bank4_we             (interface_bank4_we),
    .interface_bank4_mw             (interface_bank4_mw),
    .interface_bank4_addr           (interface_bank4_addr),
    .interface_bank4_lock           (interface_bank4_lock),
    .interface_bank4_wdata_ready    (interface_bank4_wdata_ready),
    .interface_bank4_rdata_valid    (interface_bank4_rdata_valid),
    .interface_bank5_valid          (interface_bank5_valid),
    .interface_bank5_ready          (interface_bank5_ready),
    .interface_bank5_we             (interface_bank5_we),
    .interface_bank5_mw             (interface_bank5_mw),
    .interface_bank5_addr           (interface_bank5_addr),
    .interface_bank5_lock           (interface_bank5_lock),
    .interface_bank5_wdata_ready    (interface_bank5_wdata_ready),
    .interface_bank5_rdata_valid    (interface_bank5_rdata_valid),
    .interface_bank6_valid          (interface_bank6_valid),
    .interface_bank6_ready          (interface_bank6_ready),
    .interface_bank6_we             (interface_bank6_we),
    .interface_bank6_mw             (interface_bank6_mw),
    .interface_bank6_addr           (interface_bank6_addr),
    .interface_bank6_lock           (interface_bank6_lock),
    .interface_bank6_wdata_ready    (interface_bank6_wdata_ready),
    .interface_bank6_rdata_valid    (interface_bank6_rdata_valid),
    .interface_bank7_valid          (interface_bank7_valid),
    .interface_bank7_ready          (interface_bank7_ready),
    .interface_bank7_we             (interface_bank7_we),
    .interface_bank7_mw             (interface_bank7_mw),
    .interface_bank7_addr           (interface_bank7_addr),
    .interface_bank7_lock           (interface_bank7_lock),
    .interface_bank7_wdata_ready    (interface_bank7_wdata_ready),
    .interface_bank7_rdata_valid    (interface_bank7_rdata_valid),
    .interface_wdata                (interface_wdata),
    .interface_wdata_we             (interface_wdata_we),
    .interface_rdata                (interface_rdata),
    .crb_READ_LATENCY_cfg           (crb_READ_LATENCY_cfg),
    .crb_WRITE_LATENCY_cfg          (crb_WRITE_LATENCY_cfg),
    .cmd_valid                      (native_cmd_valid_0),
    .cmd_ready                      (native_cmd_ready_0),
    .cmd_first                      (native_cmd_first_0),
    .cmd_last                       (native_cmd_last_0),
    .cmd_payload_we                 (native_cmd_payload_we_0),
    .cmd_payload_mw                 (native_cmd_payload_mw_0),
    .cmd_payload_addr               (native_cmd_payload_addr_0),
    .wdata_valid                    (wdata_valid_0),
    .wdata_ready                    (wdata_ready_0),
    .wdata_first                    (wdata_first_0),
    .wdata_last                     (wdata_last_0),
    .wdata_payload_data             (wdata_payload_data_0),
    .wdata_payload_we               (wdata_payload_we_0),
    .rdata_valid                    (rdata_valid_0),
    .rdata_ready                    (rdata_ready_0),
    .rdata_first                    (rdata_first_0),
    .rdata_last                     (rdata_last_0),
    .rdata_payload_data             (rdata_payload_data_0),
    .cmd_valid_1                    (native_cmd_valid_1),
    .cmd_ready_1                    (native_cmd_ready_1),
    .cmd_first_1                    (native_cmd_first_1),
    .cmd_last_1                     (native_cmd_last_1),
    .cmd_payload_we_1               (native_cmd_payload_we_1),
    .cmd_payload_mw_1               (native_cmd_payload_mw_1),
    .cmd_payload_addr_1             (native_cmd_payload_addr_1),
    .wdata_valid_1                  (wdata_valid_1),
    .wdata_ready_1                  (wdata_ready_1),
    .wdata_first_1                  (wdata_first_1),
    .wdata_last_1                   (wdata_last_1),
    .wdata_payload_data_1           (wdata_payload_data_1),
    .wdata_payload_we_1             (wdata_payload_we_1),
    .rdata_valid_1                  (rdata_valid_1),
    .rdata_ready_1                  (rdata_ready_1),
    .rdata_first_1                  (rdata_first_1),
    .rdata_last_1                   (rdata_last_1),
    .rdata_payload_data_1           (rdata_payload_data_1),
    .sys_clk                        (sys_clk),
    .sys_rst                        (sys_rst)
);

//cmd_request_rw
    logic cmd_valid;
	logic cmd_ready;
	logic cmd_first;
	logic cmd_last;
	logic [16:0] cmd_payload_a;
	logic [2:0] cmd_payload_ba;
	logic cmd_payload_cas;
	logic cmd_payload_ras;
	logic cmd_payload_we;
    logic cmd_payload_is_mw;
	logic cmd_payload_is_cmd;
	logic cmd_payload_is_read;
	logic cmd_payload_is_write;
	logic refresh_req;
	logic refresh_gnt;

	logic cmd_valid_1;
	logic cmd_ready_1;
	logic cmd_first_1;
	logic cmd_last_1;
	logic [16:0] cmd_payload_a_1;
	logic [2:0] cmd_payload_ba_1;
	logic cmd_payload_cas_1;
	logic cmd_payload_ras_1;
	logic cmd_payload_we_1;
    logic cmd_payload_is_mw_1;
	logic cmd_payload_is_cmd_1;
	logic cmd_payload_is_read_1;
	logic cmd_payload_is_write_1;
	logic refresh_req_1;
	logic refresh_gnt_1;

	logic cmd_valid_2;
	logic cmd_ready_2;
	logic cmd_first_2;
	logic cmd_last_2;
	logic [16:0] cmd_payload_a_2;
	logic [2:0] cmd_payload_ba_2;
	logic cmd_payload_cas_2;
	logic cmd_payload_ras_2;
	logic cmd_payload_we_2;
    logic cmd_payload_is_mw_2;
	logic cmd_payload_is_cmd_2;
	logic cmd_payload_is_read_2;
	logic cmd_payload_is_write_2;
	logic refresh_req_2;
	logic refresh_gnt_2;

	logic cmd_valid_3;
	logic cmd_ready_3;
	logic cmd_first_3;
	logic cmd_last_3;
	logic [16:0] cmd_payload_a_3;
	logic [2:0] cmd_payload_ba_3;
	logic cmd_payload_cas_3;
	logic cmd_payload_ras_3;
	logic cmd_payload_we_3;
    logic cmd_payload_is_mw_3;
	logic cmd_payload_is_cmd_3;
	logic cmd_payload_is_read_3;
	logic cmd_payload_is_write_3;
	logic refresh_req_3;
	logic refresh_gnt_3;
	logic cmd_valid_4;
	logic cmd_ready_4;
	logic cmd_first_4;
	logic cmd_last_4;
	logic [16:0] cmd_payload_a_4;
	logic [2:0] cmd_payload_ba_4;
	logic cmd_payload_cas_4;
	logic cmd_payload_ras_4;
	logic cmd_payload_we_4;
    logic cmd_payload_is_mw_4;
	logic cmd_payload_is_cmd_4;
	logic cmd_payload_is_read_4;
	logic cmd_payload_is_write_4;
	logic refresh_req_4;
	logic refresh_gnt_4;

	logic cmd_valid_5;
	logic cmd_ready_5;
	logic cmd_first_5;
	logic cmd_last_5;
	logic [16:0] cmd_payload_a_5;
	logic [2:0] cmd_payload_ba_5;
	logic cmd_payload_cas_5;
	logic cmd_payload_ras_5;
	logic cmd_payload_we_5;
    logic cmd_payload_is_mw_5;
	logic cmd_payload_is_cmd_5;
	logic cmd_payload_is_read_5;
	logic cmd_payload_is_write_5;
	logic refresh_req_5;
	logic refresh_gnt_5;

	logic cmd_valid_6;
	logic cmd_ready_6;
	logic cmd_first_6;
	logic cmd_last_6;
	logic [16:0] cmd_payload_a_6;
	logic [2:0] cmd_payload_ba_6;
	logic cmd_payload_cas_6;
	logic cmd_payload_ras_6;
	logic cmd_payload_we_6;
    logic cmd_payload_is_mw_6;
	logic cmd_payload_is_cmd_6;
	logic cmd_payload_is_read_6;
	logic cmd_payload_is_write_6;
	logic refresh_req_6;
	logic refresh_gnt_6;

	logic cmd_valid_7;
	logic cmd_ready_7;
	logic cmd_first_7;
	logic cmd_last_7;
	logic [16:0] cmd_payload_a_7;
	logic [2:0] cmd_payload_ba_7;
	logic cmd_payload_cas_7;
	logic cmd_payload_ras_7;
	logic cmd_payload_we_7;
    logic cmd_payload_is_mw_7;
	logic cmd_payload_is_cmd_7;
	logic cmd_payload_is_read_7;
	logic cmd_payload_is_write_7;
	logic refresh_req_7;
	logic refresh_gnt_7;

    //refresher cmd
	logic cmd_valid_8;
	logic cmd_ready_8;
	logic cmd_first_8;
	logic cmd_last_8;
	logic [16:0] cmd_payload_a_8;
	logic [2:0] cmd_payload_ba_8;
	logic cmd_payload_cas_8;
	logic cmd_payload_ras_8;
	logic cmd_payload_we_8;
    logic cmd_payload_is_mw_8;
	logic cmd_payload_is_cmd_8;
	logic cmd_payload_is_read_8;
	logic cmd_payload_is_write_8;
    
bankmachine_0 u_bankmachine_0 (
    .req_valid                (interface_bank0_valid),
    .req_ready                (interface_bank0_ready),
    .req_we                   (interface_bank0_we),
    .req_mw                   (interface_bank0_mw),
    .req_addr                 (interface_bank0_addr),
    .req_lock                 (interface_bank0_lock),
    .req_wdata_ready          (interface_bank0_wdata_ready),
    .req_rdata_valid          (interface_bank0_rdata_valid),
    .refresh_req              (refresh_req),
    .refresh_gnt              (refresh_gnt),
    .cmd_valid                (cmd_valid),
    .cmd_ready                (cmd_ready),
    .cmd_first                (cmd_first),
    .cmd_last                 (cmd_last),
    .cmd_payload_a            (cmd_payload_a),
    .cmd_payload_ba           (cmd_payload_ba),
    .cmd_payload_cas          (cmd_payload_cas),
    .cmd_payload_ras          (cmd_payload_ras),
    .cmd_payload_we           (cmd_payload_we),
    .cmd_payload_mw           (cmd_payload_is_mw),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd),
    .cmd_payload_is_read      (cmd_payload_is_read),
    .cmd_payload_is_write     (cmd_payload_is_write),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

bankmachine_1 u_bankmachine_1 (
    .req_valid                (interface_bank1_valid),
    .req_ready                (interface_bank1_ready),
    .req_we                   (interface_bank1_we),
    .req_mw                   (interface_bank1_mw),
    .req_addr                 (interface_bank1_addr),
    .req_lock                 (interface_bank1_lock),
    .req_wdata_ready          (interface_bank1_wdata_ready),
    .req_rdata_valid          (interface_bank1_rdata_valid),
    .refresh_req              (refresh_req_1),
    .refresh_gnt              (refresh_gnt_1),
    .cmd_valid                (cmd_valid_1),
    .cmd_ready                (cmd_ready_1),
    .cmd_first                (cmd_first_1),
    .cmd_last                 (cmd_last_1),
    .cmd_payload_a            (cmd_payload_a_1),
    .cmd_payload_ba           (cmd_payload_ba_1),
    .cmd_payload_cas          (cmd_payload_cas_1),
    .cmd_payload_ras          (cmd_payload_ras_1),
    .cmd_payload_we           (cmd_payload_we_1),
    .cmd_payload_mw           (cmd_payload_is_mw_1),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd_1),
    .cmd_payload_is_read      (cmd_payload_is_read_1),
    .cmd_payload_is_write     (cmd_payload_is_write_1),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

bankmachine_2 u_bankmachine_2 (
    .req_valid                (interface_bank2_valid),
    .req_ready                (interface_bank2_ready),
    .req_we                   (interface_bank2_we),
    .req_mw                   (interface_bank2_mw),
    .req_addr                 (interface_bank2_addr),
    .req_lock                 (interface_bank2_lock),
    .req_wdata_ready          (interface_bank2_wdata_ready),
    .req_rdata_valid          (interface_bank2_rdata_valid),
    .refresh_req              (refresh_req_2),
    .refresh_gnt              (refresh_gnt_2),
    .cmd_valid                (cmd_valid_2),
    .cmd_ready                (cmd_ready_2),
    .cmd_first                (cmd_first_2),
    .cmd_last                 (cmd_last_2),
    .cmd_payload_a            (cmd_payload_a_2),
    .cmd_payload_ba           (cmd_payload_ba_2),
    .cmd_payload_cas          (cmd_payload_cas_2),
    .cmd_payload_ras          (cmd_payload_ras_2),
    .cmd_payload_we           (cmd_payload_we_2),
    .cmd_payload_mw           (cmd_payload_is_mw_2),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd_2),
    .cmd_payload_is_read      (cmd_payload_is_read_2),
    .cmd_payload_is_write     (cmd_payload_is_write_2),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

bankmachine_3 u_bankmachine_3 (
    .req_valid                (interface_bank3_valid),
    .req_ready                (interface_bank3_ready),
    .req_we                   (interface_bank3_we),
    .req_mw                   (interface_bank3_mw),
    .req_addr                 (interface_bank3_addr),
    .req_lock                 (interface_bank3_lock),
    .req_wdata_ready          (interface_bank3_wdata_ready),
    .req_rdata_valid          (interface_bank3_rdata_valid),
    .refresh_req              (refresh_req_3),
    .refresh_gnt              (refresh_gnt_3),
    .cmd_valid                (cmd_valid_3),
    .cmd_ready                (cmd_ready_3),
    .cmd_first                (cmd_first_3),
    .cmd_last                 (cmd_last_3),
    .cmd_payload_a            (cmd_payload_a_3),
    .cmd_payload_ba           (cmd_payload_ba_3),
    .cmd_payload_cas          (cmd_payload_cas_3),
    .cmd_payload_ras          (cmd_payload_ras_3),
    .cmd_payload_we           (cmd_payload_we_3),
    .cmd_payload_mw           (cmd_payload_is_mw_3),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd_3),
    .cmd_payload_is_read      (cmd_payload_is_read_3),
    .cmd_payload_is_write     (cmd_payload_is_write_3),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

bankmachine_4 u_bankmachine_4 (
    .req_valid                (interface_bank4_valid),
    .req_ready                (interface_bank4_ready),
    .req_we                   (interface_bank4_we),
    .req_mw                   (interface_bank4_mw),
    .req_addr                 (interface_bank4_addr),
    .req_lock                 (interface_bank4_lock),
    .req_wdata_ready          (interface_bank4_wdata_ready),
    .req_rdata_valid          (interface_bank4_rdata_valid),
    .refresh_req              (refresh_req_4),
    .refresh_gnt              (refresh_gnt_4),
    .cmd_valid                (cmd_valid_4),
    .cmd_ready                (cmd_ready_4),
    .cmd_first                (cmd_first_4),
    .cmd_last                 (cmd_last_4),
    .cmd_payload_a            (cmd_payload_a_4),
    .cmd_payload_ba           (cmd_payload_ba_4),
    .cmd_payload_cas          (cmd_payload_cas_4),
    .cmd_payload_ras          (cmd_payload_ras_4),
    .cmd_payload_we           (cmd_payload_we_4),
    .cmd_payload_mw           (cmd_payload_is_mw_4),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd_4),
    .cmd_payload_is_read      (cmd_payload_is_read_4),
    .cmd_payload_is_write     (cmd_payload_is_write_4),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

bankmachine_5 u_bankmachine_5 (
    .req_valid                (interface_bank5_valid),
    .req_ready                (interface_bank5_ready),
    .req_we                   (interface_bank5_we),
    .req_mw                   (interface_bank5_mw),
    .req_addr                 (interface_bank5_addr),
    .req_lock                 (interface_bank5_lock),
    .req_wdata_ready          (interface_bank5_wdata_ready),
    .req_rdata_valid          (interface_bank5_rdata_valid),
    .refresh_req              (refresh_req_5),
    .refresh_gnt              (refresh_gnt_5),
    .cmd_valid                (cmd_valid_5),
    .cmd_ready                (cmd_ready_5),
    .cmd_first                (cmd_first_5),
    .cmd_last                 (cmd_last_5),
    .cmd_payload_a            (cmd_payload_a_5),
    .cmd_payload_ba           (cmd_payload_ba_5),
    .cmd_payload_cas          (cmd_payload_cas_5),
    .cmd_payload_ras          (cmd_payload_ras_5),
    .cmd_payload_we           (cmd_payload_we_5),
    .cmd_payload_mw           (cmd_payload_is_mw_5),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd_5),
    .cmd_payload_is_read      (cmd_payload_is_read_5),
    .cmd_payload_is_write     (cmd_payload_is_write_5),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

bankmachine_6 u_bankmachine_6 (
    .req_valid                (interface_bank6_valid),
    .req_ready                (interface_bank6_ready),
    .req_we                   (interface_bank6_we),
    .req_mw                   (interface_bank6_mw),
    .req_addr                 (interface_bank6_addr),
    .req_lock                 (interface_bank6_lock),
    .req_wdata_ready          (interface_bank6_wdata_ready),
    .req_rdata_valid          (interface_bank6_rdata_valid),
    .refresh_req              (refresh_req_6),
    .refresh_gnt              (refresh_gnt_6),
    .cmd_valid                (cmd_valid_6),
    .cmd_ready                (cmd_ready_6),
    .cmd_first                (cmd_first_6),
    .cmd_last                 (cmd_last_6),
    .cmd_payload_a            (cmd_payload_a_6),
    .cmd_payload_ba           (cmd_payload_ba_6),
    .cmd_payload_cas          (cmd_payload_cas_6),
    .cmd_payload_ras          (cmd_payload_ras_6),
    .cmd_payload_we           (cmd_payload_we_6),
    .cmd_payload_mw           (cmd_payload_is_mw_6),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd_6),
    .cmd_payload_is_read      (cmd_payload_is_read_6),
    .cmd_payload_is_write     (cmd_payload_is_write_6),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

bankmachine_7 u_bankmachine_7 (
    .req_valid                (interface_bank7_valid),
    .req_ready                (interface_bank7_ready),
    .req_we                   (interface_bank7_we),
    .req_mw                   (interface_bank7_mw),
    .req_addr                 (interface_bank7_addr),
    .req_lock                 (interface_bank7_lock),
    .req_wdata_ready          (interface_bank7_wdata_ready),
    .req_rdata_valid          (interface_bank7_rdata_valid),
    .refresh_req              (refresh_req_7),
    .refresh_gnt              (refresh_gnt_7),
    .cmd_valid                (cmd_valid_7),
    .cmd_ready                (cmd_ready_7),
    .cmd_first                (cmd_first_7),
    .cmd_last                 (cmd_last_7),
    .cmd_payload_a            (cmd_payload_a_7),
    .cmd_payload_ba           (cmd_payload_ba_7),
    .cmd_payload_cas          (cmd_payload_cas_7),
    .cmd_payload_ras          (cmd_payload_ras_7),
    .cmd_payload_we           (cmd_payload_we_7),
    .cmd_payload_mw           (cmd_payload_is_mw_7),
    .cmd_payload_is_cmd       (cmd_payload_is_cmd_7),
    .cmd_payload_is_read      (cmd_payload_is_read_7),
    .cmd_payload_is_write     (cmd_payload_is_write_7),
    .bm_PRECHARGE_TIME_cfg    (bm_PRECHARGE_TIME_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .sys_clk                  (sys_clk),
    .sys_rst                  (sys_rst)
);

//refresher
refresher_pos_8 u_refresher_pos_8 (
    .cmd_valid           (cmd_valid_8),
    .cmd_ready           (cmd_ready_8),
    .cmd_last            (cmd_last_8),
    .cmd_payload_a       (cmd_payload_a_8),
    .cmd_payload_ba      (cmd_payload_ba_8),
    .cmd_payload_cas     (cmd_payload_cas_8),
    .cmd_payload_ras     (cmd_payload_ras_8),
    .cmd_payload_we      (cmd_payload_we_8),
    .ref_tRP_cfg         (ref_tRP_cfg),
    .ref_tRFC_cfg        (ref_tRFC_cfg),
    .ref_tREFI_cfg       (ref_tREFI_cfg),
    .ref_POSTPONE_cfg    (ref_POSTPONE_cfg),
    .sys_clk             (sys_clk),
    .sys_rst             (sys_rst)
);

//multiplexer
multiplexer_b8 u_multiplexer_b8 (
    .interface_wdata           (interface_wdata),
    .interface_wdata_we        (interface_wdata_we),
    .interface_rdata           (interface_rdata),
    .dfi_p0_address            (dfi_p0_address),
    .dfi_p0_bank               (dfi_p0_bank),
    .dfi_p0_cas_n              (dfi_p0_cas_n),
    .dfi_p0_cs_n               (dfi_p0_cs_n),
    .dfi_p0_ras_n              (dfi_p0_ras_n),
    .dfi_p0_we_n               (dfi_p0_we_n),
    .dfi_p0_cke                (dfi_p0_cke),
    .dfi_p0_odt                (dfi_p0_odt),
    .dfi_p0_reset_n            (dfi_p0_reset_n),
    .dfi_p0_act_n              (dfi_p0_act_n),
    .dfi_p0_mw                 (dfi_p0_mw),
    .dfi_p0_wrdata             (dfi_p0_wrdata),
    .dfi_p0_wrdata_en          (dfi_p0_wrdata_en),
    .dfi_p0_wrdata_mask        (dfi_p0_wrdata_mask),
    .dfi_p0_rddata_en          (dfi_p0_rddata_en),
    .dfi_p0_rddata             (dfi_p0_rddata),
    .dfi_p0_rddata_valid       (dfi_p0_rddata_valid),
    .dfi_p1_address            (dfi_p1_address),
    .dfi_p1_bank               (dfi_p1_bank),
    .dfi_p1_cas_n              (dfi_p1_cas_n),
    .dfi_p1_cs_n               (dfi_p1_cs_n),
    .dfi_p1_ras_n              (dfi_p1_ras_n),
    .dfi_p1_we_n               (dfi_p1_we_n),
    .dfi_p1_cke                (dfi_p1_cke),
    .dfi_p1_odt                (dfi_p1_odt),
    .dfi_p1_reset_n            (dfi_p1_reset_n),
    .dfi_p1_act_n              (dfi_p1_act_n),
    .dfi_p1_mw                 (dfi_p1_mw),
    .dfi_p1_wrdata             (dfi_p1_wrdata),
    .dfi_p1_wrdata_en          (dfi_p1_wrdata_en),
    .dfi_p1_wrdata_mask        (dfi_p1_wrdata_mask),
    .dfi_p1_rddata_en          (dfi_p1_rddata_en),
    .dfi_p1_rddata             (dfi_p1_rddata),
    .dfi_p1_rddata_valid       (dfi_p1_rddata_valid),
    .dfi_p2_address            (dfi_p2_address),
    .dfi_p2_bank               (dfi_p2_bank),
    .dfi_p2_cas_n              (dfi_p2_cas_n),
    .dfi_p2_cs_n               (dfi_p2_cs_n),
    .dfi_p2_ras_n              (dfi_p2_ras_n),
    .dfi_p2_we_n               (dfi_p2_we_n),
    .dfi_p2_cke                (dfi_p2_cke),
    .dfi_p2_odt                (dfi_p2_odt),
    .dfi_p2_reset_n            (dfi_p2_reset_n),
    .dfi_p2_act_n              (dfi_p2_act_n),
    .dfi_p2_mw                 (dfi_p2_mw),
    .dfi_p2_wrdata             (dfi_p2_wrdata),
    .dfi_p2_wrdata_en          (dfi_p2_wrdata_en),
    .dfi_p2_wrdata_mask        (dfi_p2_wrdata_mask),
    .dfi_p2_rddata_en          (dfi_p2_rddata_en),
    .dfi_p2_rddata             (dfi_p2_rddata),
    .dfi_p2_rddata_valid       (dfi_p2_rddata_valid),
    .dfi_p3_address            (dfi_p3_address),
    .dfi_p3_bank               (dfi_p3_bank),
    .dfi_p3_cas_n              (dfi_p3_cas_n),
    .dfi_p3_cs_n               (dfi_p3_cs_n),
    .dfi_p3_ras_n              (dfi_p3_ras_n),
    .dfi_p3_we_n               (dfi_p3_we_n),
    .dfi_p3_cke                (dfi_p3_cke),
    .dfi_p3_odt                (dfi_p3_odt),
    .dfi_p3_reset_n            (dfi_p3_reset_n),
    .dfi_p3_act_n              (dfi_p3_act_n),
    .dfi_p3_mw                 (dfi_p3_mw),
    .dfi_p3_wrdata             (dfi_p3_wrdata),
    .dfi_p3_wrdata_en          (dfi_p3_wrdata_en),
    .dfi_p3_wrdata_mask        (dfi_p3_wrdata_mask),
    .dfi_p3_rddata_en          (dfi_p3_rddata_en),
    .dfi_p3_rddata             (dfi_p3_rddata),
    .dfi_p3_rddata_valid       (dfi_p3_rddata_valid),
    .cmd_valid                 (cmd_valid),
    .cmd_ready                 (cmd_ready),
    .cmd_first                 (cmd_first),
    .cmd_last                  (cmd_last),
    .cmd_payload_a             (cmd_payload_a),
    .cmd_payload_ba            (cmd_payload_ba),
    .cmd_payload_cas           (cmd_payload_cas),
    .cmd_payload_ras           (cmd_payload_ras),
    .cmd_payload_we            (cmd_payload_we),
    .cmd_payload_is_cmd        (cmd_payload_is_cmd),
    .cmd_payload_is_read       (cmd_payload_is_read),
    .cmd_payload_is_write      (cmd_payload_is_write),
    .cmd_payload_is_mw         (cmd_payload_is_mw),
    .refresh_req               (refresh_req),
    .refresh_gnt               (refresh_gnt),
    .cmd_valid_1               (cmd_valid_1),
    .cmd_ready_1               (cmd_ready_1),
    .cmd_first_1               (cmd_first_1),
    .cmd_last_1                (cmd_last_1),
    .cmd_payload_a_1           (cmd_payload_a_1),
    .cmd_payload_ba_1          (cmd_payload_ba_1),
    .cmd_payload_cas_1         (cmd_payload_cas_1),
    .cmd_payload_ras_1         (cmd_payload_ras_1),
    .cmd_payload_we_1          (cmd_payload_we_1),
    .cmd_payload_is_cmd_1      (cmd_payload_is_cmd_1),
    .cmd_payload_is_read_1     (cmd_payload_is_read_1),
    .cmd_payload_is_write_1    (cmd_payload_is_write_1),
    .cmd_payload_is_mw_1       (cmd_payload_is_mw_1),
    .refresh_req_1             (refresh_req_1),
    .refresh_gnt_1             (refresh_gnt_1),
    .cmd_valid_2               (cmd_valid_2),
    .cmd_ready_2               (cmd_ready_2),
    .cmd_first_2               (cmd_first_2),
    .cmd_last_2                (cmd_last_2),
    .cmd_payload_a_2           (cmd_payload_a_2),
    .cmd_payload_ba_2          (cmd_payload_ba_2),
    .cmd_payload_cas_2         (cmd_payload_cas_2),
    .cmd_payload_ras_2         (cmd_payload_ras_2),
    .cmd_payload_we_2          (cmd_payload_we_2),
    .cmd_payload_is_cmd_2      (cmd_payload_is_cmd_2),
    .cmd_payload_is_read_2     (cmd_payload_is_read_2),
    .cmd_payload_is_write_2    (cmd_payload_is_write_2),
    .cmd_payload_is_mw_2       (cmd_payload_is_mw_2),
    .refresh_req_2             (refresh_req_2),
    .refresh_gnt_2             (refresh_gnt_2),
    .cmd_valid_3               (cmd_valid_3),
    .cmd_ready_3               (cmd_ready_3),
    .cmd_first_3               (cmd_first_3),
    .cmd_last_3                (cmd_last_3),
    .cmd_payload_a_3           (cmd_payload_a_3),
    .cmd_payload_ba_3          (cmd_payload_ba_3),
    .cmd_payload_cas_3         (cmd_payload_cas_3),
    .cmd_payload_ras_3         (cmd_payload_ras_3),
    .cmd_payload_we_3          (cmd_payload_we_3),
    .cmd_payload_is_cmd_3      (cmd_payload_is_cmd_3),
    .cmd_payload_is_read_3     (cmd_payload_is_read_3),
    .cmd_payload_is_write_3    (cmd_payload_is_write_3),
    .cmd_payload_is_mw_3       (cmd_payload_is_mw_3),
    .refresh_req_3             (refresh_req_3),
    .refresh_gnt_3             (refresh_gnt_3),
    .cmd_valid_4               (cmd_valid_4),
    .cmd_ready_4               (cmd_ready_4),
    .cmd_first_4               (cmd_first_4),
    .cmd_last_4                (cmd_last_4),
    .cmd_payload_a_4           (cmd_payload_a_4),
    .cmd_payload_ba_4          (cmd_payload_ba_4),
    .cmd_payload_cas_4         (cmd_payload_cas_4),
    .cmd_payload_ras_4         (cmd_payload_ras_4),
    .cmd_payload_we_4          (cmd_payload_we_4),
    .cmd_payload_is_cmd_4      (cmd_payload_is_cmd_4),
    .cmd_payload_is_read_4     (cmd_payload_is_read_4),
    .cmd_payload_is_write_4    (cmd_payload_is_write_4),
    .cmd_payload_is_mw_4       (cmd_payload_is_mw_4),
    .refresh_req_4             (refresh_req_4),
    .refresh_gnt_4             (refresh_gnt_4),
    .cmd_valid_5               (cmd_valid_5),
    .cmd_ready_5               (cmd_ready_5),
    .cmd_first_5               (cmd_first_5),
    .cmd_last_5                (cmd_last_5),
    .cmd_payload_a_5           (cmd_payload_a_5),
    .cmd_payload_ba_5          (cmd_payload_ba_5),
    .cmd_payload_cas_5         (cmd_payload_cas_5),
    .cmd_payload_ras_5         (cmd_payload_ras_5),
    .cmd_payload_we_5          (cmd_payload_we_5),
    .cmd_payload_is_cmd_5      (cmd_payload_is_cmd_5),
    .cmd_payload_is_read_5     (cmd_payload_is_read_5),
    .cmd_payload_is_write_5    (cmd_payload_is_write_5),
    .cmd_payload_is_mw_5       (cmd_payload_is_mw_5),
    .refresh_req_5             (refresh_req_5),
    .refresh_gnt_5             (refresh_gnt_5),
    .cmd_valid_6               (cmd_valid_6),
    .cmd_ready_6               (cmd_ready_6),
    .cmd_first_6               (cmd_first_6),
    .cmd_last_6                (cmd_last_6),
    .cmd_payload_a_6           (cmd_payload_a_6),
    .cmd_payload_ba_6          (cmd_payload_ba_6),
    .cmd_payload_cas_6         (cmd_payload_cas_6),
    .cmd_payload_ras_6         (cmd_payload_ras_6),
    .cmd_payload_we_6          (cmd_payload_we_6),
    .cmd_payload_is_cmd_6      (cmd_payload_is_cmd_6),
    .cmd_payload_is_read_6     (cmd_payload_is_read_6),
    .cmd_payload_is_write_6    (cmd_payload_is_write_6),
    .cmd_payload_is_mw_6       (cmd_payload_is_mw_6),
    .refresh_req_6             (refresh_req_6),
    .refresh_gnt_6             (refresh_gnt_6),
    .cmd_valid_7               (cmd_valid_7),
    .cmd_ready_7               (cmd_ready_7),
    .cmd_first_7               (cmd_first_7),
    .cmd_last_7                (cmd_last_7),
    .cmd_payload_a_7           (cmd_payload_a_7),
    .cmd_payload_ba_7          (cmd_payload_ba_7),
    .cmd_payload_cas_7         (cmd_payload_cas_7),
    .cmd_payload_ras_7         (cmd_payload_ras_7),
    .cmd_payload_we_7          (cmd_payload_we_7),
    .cmd_payload_is_cmd_7      (cmd_payload_is_cmd_7),
    .cmd_payload_is_read_7     (cmd_payload_is_read_7),
    .cmd_payload_is_write_7    (cmd_payload_is_write_7),
    .cmd_payload_is_mw_7       (cmd_payload_is_mw_7),
    .refresh_req_7             (refresh_req_7),
    .refresh_gnt_7             (refresh_gnt_7),
    .cmd_valid_8               (cmd_valid_8),
    .cmd_ready_8               (cmd_ready_8),
    .cmd_first_8               (cmd_first_8),
    .cmd_last_8                (cmd_last_8),
    .cmd_payload_a_8           (cmd_payload_a_8),
    .cmd_payload_ba_8          (cmd_payload_ba_8),
    .cmd_payload_cas_8         (cmd_payload_cas_8),
    .cmd_payload_ras_8         (cmd_payload_ras_8),
    .cmd_payload_we_8          (cmd_payload_we_8),
    .cmd_payload_is_cmd_8      (cmd_payload_is_cmd_8),
    .cmd_payload_is_read_8     (cmd_payload_is_read_8),
    .cmd_payload_is_write_8    (cmd_payload_is_write_8),
    .cmd_payload_is_mw_8       (cmd_payload_is_mw_8),
    .mul_tRRD_cfg              (mul_tRRD_cfg),
    .mul_tFAW_cfg              (mul_tFAW_cfg),
    .mul_tCCD_cfg              (mul_tCCD_cfg),
    .mul_WTR_LATENCY_cfg       (mul_WTR_LATENCY_cfg),
    .mul_RTW_LATENCT_cfg       (mul_RTW_LATENCT_cfg),
    .mul_READ_TIME_cfg         (mul_READ_TIME_cfg),
    .mul_WRITE_TIME_cfg        (mul_WRITE_TIME_cfg),
    .mul_rd_phase_cfg          (mul_rd_phase_cfg),
    .mul_wr_phase_cfg          (mul_wr_phase_cfg),
    .mul_rdcmd_phase_cfg       (mul_rdcmd_phase_cfg),
    .mul_wrcmd_phase_cfg       (mul_wrcmd_phase_cfg),
    .sys_clk                   (sys_clk),
    .sys_rst                   (sys_rst)
);
endmodule