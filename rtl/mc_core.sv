module mc_core(
    native_interface native_if_0,native_if_1,
    dfi_interface dfi_if,
	//system clock/reset
	input clk,
	input rst,

    //CSR
    input [1:0] mul_rdphase_cfg,
    input [1:0] mul_wrphase_cfg,
    input [1:0] mul_rdcmd_phase_cfg,
    input [1:0] mul_wrcmd_phase_cfg,
    input [7:0] mul_tRRD_cfg,
    input [7:0] mul_tFAW_cfg,
    input [7:0] mul_tCCD_cfg,
    input [7:0] mul_WTR_LATENCY_cfg,
    input [7:0] mul_RTW_LATENCY_cfg,
    input [7:0] mul_READ_TIME_cfg,
    input [7:0] mul_WRITE_TIME_cfg,

    input [11:0] ref_tREFI_cfg,
    input [3:0] ref_POSTPONE_cfg,
    input [7:0] ref_tRP_cfg,
    input [7:0] ref_tRFC_cfg,

    input [7:0] bm_tWTP_cfg,
    input [7:0] bm_tRTP_cfg,
    input [7:0] bm_tRAS_cfg,
    input [7:0] bm_tRC_cfg,
    input [7:0] bm_tRP_cfg,
    input [7:0] bm_tRCD_cfg,
    input [7:0] bm_tCCDMW_cfg,

    input [7:0] crb_READ_LATENCY_cfg,
    input [7:0] crb_WRITE_LATENCY_cfg

    
);

litedram_interface litedram_if(clk,rst);

crossbar_2ports_wrapper u_crossbar_2ports_wrapper (
    .clk                      (clk),
    .rst                      (rst),
    .crb_READ_LATENCY_cfg     (crb_READ_LATENCY_cfg),
    .crb_WRITE_LATENCY_cfg    (crb_WRITE_LATENCY_cfg),
    .native_if_0              (native_if_0),
    .native_if_1              (native_if_1),
    .litedram_if              (litedram_if)
);

cmd_rw_interface cmd_rw_if_0(clk,rst);
cmd_rw_interface cmd_rw_if_1(clk,rst);
cmd_rw_interface cmd_rw_if_2(clk,rst);
cmd_rw_interface cmd_rw_if_3(clk,rst);
cmd_rw_interface cmd_rw_if_4(clk,rst);
cmd_rw_interface cmd_rw_if_5(clk,rst);
cmd_rw_interface cmd_rw_if_6(clk,rst);
cmd_rw_interface cmd_rw_if_7(clk,rst);

bankmachine_wrapper u_bankmachine_wrapper (
    .clk              (clk),
    .rst              (rst),
    .litedram_if      (litedram_if),
    .cmd_rw_if_0      (cmd_rw_if_0),
    .cmd_rw_if_1      (cmd_rw_if_1),
    .cmd_rw_if_2      (cmd_rw_if_2),
    .cmd_rw_if_3      (cmd_rw_if_3),
    .cmd_rw_if_4      (cmd_rw_if_4),
    .cmd_rw_if_5      (cmd_rw_if_5),
    .cmd_rw_if_6      (cmd_rw_if_6),
    .cmd_rw_if_7      (cmd_rw_if_7),
    .bm_tRTP_cfg      (bm_tRTP_cfg),
    .bm_tWTP_cfg      (bm_tWTP_cfg),
    .bm_tRC_cfg       (bm_tRC_cfg),
    .bm_tRAS_cfg      (bm_tRAS_cfg),
    .bm_tRP_cfg       (bm_tRP_cfg),
    .bm_tRCD_cfg      (bm_tRCD_cfg),
    .bm_tCCDMW_cfg    (bm_tCCDMW_cfg)
);

cmd_rw_interface cmd_rw_if_refresher(clk,rst);

refresher_pos_8_wrapper u_refresher_pos_8_wrapper (
    .cmd_rw_if_refresher    (cmd_rw_if_refresher),
    .ref_tRP_cfg            (ref_tRP_cfg),
    .ref_tRFC_cfg           (ref_tRFC_cfg),
    .ref_tREFI_cfg          (ref_tREFI_cfg),
    .ref_POSTPONE_cfg       (ref_POSTPONE_cfg),
    .clk                    (clk),
    .rst                    (rst)
);

multiplexer_b8_wrapper u_multiplexer_b8_wrapper (
    .clk                    (clk),
    .rst                    (rst),
    .cmd_rw_if_0            (cmd_rw_if_0),
    .cmd_rw_if_1            (cmd_rw_if_1),
    .cmd_rw_if_2            (cmd_rw_if_2),
    .cmd_rw_if_3            (cmd_rw_if_3),
    .cmd_rw_if_4            (cmd_rw_if_4),
    .cmd_rw_if_5            (cmd_rw_if_5),
    .cmd_rw_if_6            (cmd_rw_if_6),
    .cmd_rw_if_7            (cmd_rw_if_7),
    .litedram_if            (litedram_if),
    .dfi_if                 (dfi_if),
    .cmd_rw_if_refresher    (cmd_rw_if_refresher),
    .mul_tRRD_cfg           (mul_tRRD_cfg),
    .mul_tFAW_cfg           (mul_tFAW_cfg),
    .mul_tCCD_cfg           (mul_tCCD_cfg),
    .mul_WTR_LATENCY_cfg    (mul_WTR_LATENCY_cfg),
    .mul_RTW_LATENCT_cfg    (mul_RTW_LATENCT_cfg),
    .mul_READ_TIME_cfg      (mul_READ_TIME_cfg),
    .mul_WRITE_TIME_cfg     (mul_WRITE_TIME_cfg),
    .mul_rd_phase_cfg       (mul_rd_phase_cfg),
    .mul_wr_phase_cfg       (mul_wr_phase_cfg),
    .mul_rdcmd_phase_cfg    (mul_rdcmd_phase_cfg),
    .mul_wrcmd_phase_cfg    (mul_wrcmd_phase_cfg)
);

endmodule