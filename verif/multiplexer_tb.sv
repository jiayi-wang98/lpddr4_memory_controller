`timescale 1ns/10ps

module multiplexer_tb();

    logic [255:0] interface_wdata;
	logic [31:0] interface_wdata_we;
	logic [255:0] interface_rdata;
	logic [16:0] dfi_p0_address;
	logic [2:0] dfi_p0_bank;
	logic dfi_p0_cas_n;
	logic dfi_p0_cs_n;
	logic dfi_p0_ras_n;
	logic dfi_p0_we_n;
	logic dfi_p0_cke;
	logic dfi_p0_odt;
	logic dfi_p0_reset_n;
	logic dfi_p0_act_n;
	logic [63:0] dfi_p0_wrdata;
	logic dfi_p0_wrdata_en;
	logic [7:0] dfi_p0_wrdata_mask;
	logic dfi_p0_rddata_en;
	logic [63:0] dfi_p0_rddata;
	logic dfi_p0_rddata_valid;
	logic [16:0] dfi_p1_address;
	logic [2:0] dfi_p1_bank;
	logic dfi_p1_cas_n;
	logic dfi_p1_cs_n;
	logic dfi_p1_ras_n;
	logic dfi_p1_we_n;
	logic dfi_p1_cke;
	logic dfi_p1_odt;
	logic dfi_p1_reset_n;
	logic dfi_p1_act_n;
	logic [63:0] dfi_p1_wrdata;
	logic dfi_p1_wrdata_en;
	logic [7:0] dfi_p1_wrdata_mask;
	logic dfi_p1_rddata_en;
	logic [63:0] dfi_p1_rddata;
	logic dfi_p1_rddata_valid;
	logic [16:0] dfi_p2_address;
	logic [2:0] dfi_p2_bank;
	logic dfi_p2_cas_n;
	logic dfi_p2_cs_n;
	logic dfi_p2_ras_n;
	logic dfi_p2_we_n;
	logic dfi_p2_cke;
	logic dfi_p2_odt;
	logic dfi_p2_reset_n;
	logic dfi_p2_act_n;
	logic [63:0] dfi_p2_wrdata;
	logic dfi_p2_wrdata_en;
	logic [7:0] dfi_p2_wrdata_mask;
	logic dfi_p2_rddata_en;
	logic [63:0] dfi_p2_rddata;
	logic dfi_p2_rddata_valid;
	logic [16:0] dfi_p3_address;
	logic [2:0] dfi_p3_bank;
	logic dfi_p3_cas_n;
	logic dfi_p3_cs_n;
	logic dfi_p3_ras_n;
	logic dfi_p3_we_n;
	logic dfi_p3_cke;
	logic dfi_p3_odt;
	logic dfi_p3_reset_n;
	logic dfi_p3_act_n;
	logic [63:0] dfi_p3_wrdata;
	logic dfi_p3_wrdata_en;
	logic [7:0] dfi_p3_wrdata_mask;
	logic dfi_p3_rddata_en;
	logic [63:0] dfi_p3_rddata;
	logic dfi_p3_rddata_valid;
	logic cmd_valid;
	logic cmd_ready;
	logic cmd_first;
	logic cmd_last;
	logic [16:0] cmd_payload_a;
	logic [2:0] cmd_payload_ba;
	logic cmd_payload_cas;
	logic cmd_payload_ras;
	logic cmd_payload_we;
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
	logic cmd_payload_is_cmd_7;
	logic cmd_payload_is_read_7;
	logic cmd_payload_is_write_7;
	logic refresh_req_7;
	logic refresh_gnt_7;
	logic cmd_valid_8;
	logic cmd_ready_8;
	logic cmd_first_8;
	logic cmd_last_8;
	logic [16:0] cmd_payload_a_8;
	logic [2:0] cmd_payload_ba_8;
	logic cmd_payload_cas_8;
	logic cmd_payload_ras_8;
	logic cmd_payload_we_8;
	logic cmd_payload_is_cmd_8;
	logic cmd_payload_is_read_8;
	logic cmd_payload_is_write_8;
	logic [7:0] mul_tRRD_cfg;
	logic [7:0] mul_tFAW_cfg;
	logic [7:0] mul_tCCD_cfg;
	logic [7:0] mul_WTR_LATENCY_cfg;
	logic [7:0] mul_RTW_LATENCY_cfg;
	logic [7:0] mul_READ_TIME_cfg;
	logic [7:0] mul_WRITE_TIME_cfg;
	logic [1:0] mul_rd_phase_cfg;
	logic [1:0] mul_wr_phase_cfg;
	logic [1:0] mul_rdcmd_phase_cfg;
	logic [1:0] mul_wrcmd_phase_cfg;
	logic sys_clk;
	logic sys_rst;

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
    .mul_tRRD_cfg              (mul_tRRD_cfg),
    .mul_tFAW_cfg              (mul_tFAW_cfg),
    .mul_tCCD_cfg              (mul_tCCD_cfg),
    .mul_WTR_LATENCY_cfg       (mul_WTR_LATENCY_cfg),
    .mul_RTW_LATENCY_cfg       (mul_RTW_LATENCY_cfg),
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