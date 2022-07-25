module mc_top(
    input clk,rst,
    native_interface native_if_0,native_if_1,
    input ahb_extclk,ahb_extrst,
    dfi_lpddr4_interface dfi_lpddr4_if,
    ahb_interface ahb_if
);

native_interface native_if_0(clk,rst);
native_interface native_if_1(clk,rst);
 //CSR
    logic [1:0] mul_rd_phase_cfg;
    logic [1:0] mul_wr_phase_cfg;
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

    logic [7:0] bm_tWTP_cfg;
    logic [7:0] bm_tRTP_cfg;
    logic [7:0] bm_tRAS_cfg;
    logic [7:0] bm_tRC_cfg;
    logic [7:0] bm_tRP_cfg;
    logic [7:0] bm_tRCD_cfg;
    logic [7:0] bm_tCCDMW_cfg;

    logic [7:0] crb_READ_LATENCY_cfg;
    logic [7:0] crb_WRITE_LATENCY_cfg;

    logic [7:0] dfi_rddata_en_latency_cfg;
    logic [7:0] dfi_wrdata_en_latency_cfg;

    logic [7:0] dfi_wdqs_preamble_cfg;

mc_ahb_csr u_mc_ahb_csr (
    .i_sysclk                   (clk),
    .i_sysrst                   (rst),
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
    .o_mul_rdphase_cfg          (mul_rd_phase_cfg),
    .o_mul_wrphase_cfg          (mul_wr_phase_cfg),
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
    .o_bm_tRTP_cfg              (bm_tRTP_cfg),
    .o_bm_tWTP_cfg              (bm_tWTP_cfg),
    .o_bm_tRAS_cfg              (bm_tRAS_cfg),
    .o_bm_tRC_cfg               (bm_tRC_cfg),
    .o_bm_tRP_cfg               (bm_tRP_cfg),
    .o_bm_tRCD_cfg              (bm_tRCD_cfg),
    .o_bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .o_crb_READ_LATENCY_cfg     (crb_READ_LATENCY_cfg),
    .o_crb_WRITE_LATENCY_cfg    (crb_WRITE_LATENCY_cfg),
    .o_dfi_rddata_en_latency_cfg(dfi_rddata_en_latency_cfg),
    .o_dfi_wrdata_en_latency_cfg(dfi_wrdata_en_latency_cfg),
    .o_dfi_wdqs_preamble_cfg    (dfi_wdqs_preamble_cfg)
);
mc_core u_mc_core (
    .native_if_0              (native_if_0),
    .native_if_1              (native_if_1),
    .dfi_lpddr4_if            (dfi_lpddr4_if),
    //system clock/reset
	.clk                      (clk),
    .rst                      (rst),
    //CSR
    .mul_rd_phase_cfg         (mul_rd_phase_cfg),
    .mul_wr_phase_cfg         (mul_wr_phase_cfg),
    .mul_rdcmd_phase_cfg      (mul_rdcmd_phase_cfg),
    .mul_wrcmd_phase_cfg      (mul_wrcmd_phase_cfg),
    .mul_tRRD_cfg             (mul_tRRD_cfg),
    .mul_tFAW_cfg             (mul_tFAW_cfg),
    .mul_tCCD_cfg             (mul_tCCD_cfg),
    .mul_WTR_LATENCY_cfg      (mul_WTR_LATENCY_cfg),
    .mul_RTW_LATENCY_cfg      (mul_RTW_LATENCY_cfg),
    .mul_READ_TIME_cfg        (mul_READ_TIME_cfg),
    .mul_WRITE_TIME_cfg       (mul_WRITE_TIME_cfg),
    .ref_tREFI_cfg            (ref_tREFI_cfg),
    .ref_POSTPONE_cfg         (ref_POSTPONE_cfg),
    .ref_tRP_cfg              (ref_tRP_cfg),
    .ref_tRFC_cfg             (ref_tRFC_cfg),
    .bm_tWTP_cfg              (bm_tWTP_cfg),
    .bm_tRTP_cfg              (bm_tRTP_cfg),
    .bm_tRAS_cfg              (bm_tRAS_cfg),
    .bm_tRC_cfg               (bm_tRC_cfg),
    .bm_tRP_cfg               (bm_tRP_cfg),
    .bm_tRCD_cfg              (bm_tRCD_cfg),
    .bm_tCCDMW_cfg            (bm_tCCDMW_cfg),
    .crb_READ_LATENCY_cfg     (crb_READ_LATENCY_cfg),
    .crb_WRITE_LATENCY_cfg    (crb_WRITE_LATENCY_cfg),
    .dfi_rddata_en_latency_cfg(dfi_rddata_en_latency_cfg),
    .dfi_wrdata_en_latency_cfg(dfi_wrdata_en_latency_cfg),
    .dfi_wdqs_preamble_cfg    (dfi_wdqs_preamble_cfg)
);

endmodule