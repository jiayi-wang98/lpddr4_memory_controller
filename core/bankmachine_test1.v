/* Machine-generated using Migen */
module LiteDram_bankmachine_test1(
	input sys_clk,
	input sys_rst
);

reg [2:0] phy_rdphase_storage = 3'd0;
reg [2:0] phy_wrphase_storage = 3'd2;
wire [16:0] phy_dfi_p0_address;
wire [5:0] phy_dfi_p0_bank;
wire phy_dfi_p0_cas_n;
wire phy_dfi_p0_cs_n;
wire phy_dfi_p0_ras_n;
wire phy_dfi_p0_we_n;
wire phy_dfi_p0_cke;
wire phy_dfi_p0_odt;
wire phy_dfi_p0_reset_n;
wire phy_dfi_p0_act_n;
wire [31:0] phy_dfi_p0_wrdata;
wire phy_dfi_p0_wrdata_en;
wire [3:0] phy_dfi_p0_wrdata_mask;
wire phy_dfi_p0_rddata_en;
reg [31:0] phy_dfi_p0_rddata = 32'd0;
reg phy_dfi_p0_rddata_valid = 1'd0;
wire [16:0] phy_dfi_p1_address;
wire [5:0] phy_dfi_p1_bank;
wire phy_dfi_p1_cas_n;
wire phy_dfi_p1_cs_n;
wire phy_dfi_p1_ras_n;
wire phy_dfi_p1_we_n;
wire phy_dfi_p1_cke;
wire phy_dfi_p1_odt;
wire phy_dfi_p1_reset_n;
wire phy_dfi_p1_act_n;
wire [31:0] phy_dfi_p1_wrdata;
wire phy_dfi_p1_wrdata_en;
wire [3:0] phy_dfi_p1_wrdata_mask;
wire phy_dfi_p1_rddata_en;
reg [31:0] phy_dfi_p1_rddata = 32'd0;
reg phy_dfi_p1_rddata_valid = 1'd0;
wire [16:0] phy_dfi_p2_address;
wire [5:0] phy_dfi_p2_bank;
wire phy_dfi_p2_cas_n;
wire phy_dfi_p2_cs_n;
wire phy_dfi_p2_ras_n;
wire phy_dfi_p2_we_n;
wire phy_dfi_p2_cke;
wire phy_dfi_p2_odt;
wire phy_dfi_p2_reset_n;
wire phy_dfi_p2_act_n;
wire [31:0] phy_dfi_p2_wrdata;
wire phy_dfi_p2_wrdata_en;
wire [3:0] phy_dfi_p2_wrdata_mask;
wire phy_dfi_p2_rddata_en;
reg [31:0] phy_dfi_p2_rddata = 32'd0;
reg phy_dfi_p2_rddata_valid = 1'd0;
wire [16:0] phy_dfi_p3_address;
wire [5:0] phy_dfi_p3_bank;
wire phy_dfi_p3_cas_n;
wire phy_dfi_p3_cs_n;
wire phy_dfi_p3_ras_n;
wire phy_dfi_p3_we_n;
wire phy_dfi_p3_cke;
wire phy_dfi_p3_odt;
wire phy_dfi_p3_reset_n;
wire phy_dfi_p3_act_n;
wire [31:0] phy_dfi_p3_wrdata;
wire phy_dfi_p3_wrdata_en;
wire [3:0] phy_dfi_p3_wrdata_mask;
wire phy_dfi_p3_rddata_en;
reg [31:0] phy_dfi_p3_rddata = 32'd0;
reg phy_dfi_p3_rddata_valid = 1'd0;
wire [16:0] phy_dfi_p4_address;
wire [5:0] phy_dfi_p4_bank;
wire phy_dfi_p4_cas_n;
wire phy_dfi_p4_cs_n;
wire phy_dfi_p4_ras_n;
wire phy_dfi_p4_we_n;
wire phy_dfi_p4_cke;
wire phy_dfi_p4_odt;
wire phy_dfi_p4_reset_n;
wire phy_dfi_p4_act_n;
wire [31:0] phy_dfi_p4_wrdata;
wire phy_dfi_p4_wrdata_en;
wire [3:0] phy_dfi_p4_wrdata_mask;
wire phy_dfi_p4_rddata_en;
reg [31:0] phy_dfi_p4_rddata = 32'd0;
reg phy_dfi_p4_rddata_valid = 1'd0;
wire [16:0] phy_dfi_p5_address;
wire [5:0] phy_dfi_p5_bank;
wire phy_dfi_p5_cas_n;
wire phy_dfi_p5_cs_n;
wire phy_dfi_p5_ras_n;
wire phy_dfi_p5_we_n;
wire phy_dfi_p5_cke;
wire phy_dfi_p5_odt;
wire phy_dfi_p5_reset_n;
wire phy_dfi_p5_act_n;
wire [31:0] phy_dfi_p5_wrdata;
wire phy_dfi_p5_wrdata_en;
wire [3:0] phy_dfi_p5_wrdata_mask;
wire phy_dfi_p5_rddata_en;
reg [31:0] phy_dfi_p5_rddata = 32'd0;
reg phy_dfi_p5_rddata_valid = 1'd0;
wire [16:0] phy_dfi_p6_address;
wire [5:0] phy_dfi_p6_bank;
wire phy_dfi_p6_cas_n;
wire phy_dfi_p6_cs_n;
wire phy_dfi_p6_ras_n;
wire phy_dfi_p6_we_n;
wire phy_dfi_p6_cke;
wire phy_dfi_p6_odt;
wire phy_dfi_p6_reset_n;
wire phy_dfi_p6_act_n;
wire [31:0] phy_dfi_p6_wrdata;
wire phy_dfi_p6_wrdata_en;
wire [3:0] phy_dfi_p6_wrdata_mask;
wire phy_dfi_p6_rddata_en;
reg [31:0] phy_dfi_p6_rddata = 32'd0;
reg phy_dfi_p6_rddata_valid = 1'd0;
wire [16:0] phy_dfi_p7_address;
wire [5:0] phy_dfi_p7_bank;
wire phy_dfi_p7_cas_n;
wire phy_dfi_p7_cs_n;
wire phy_dfi_p7_ras_n;
wire phy_dfi_p7_we_n;
wire phy_dfi_p7_cke;
wire phy_dfi_p7_odt;
wire phy_dfi_p7_reset_n;
wire phy_dfi_p7_act_n;
wire [31:0] phy_dfi_p7_wrdata;
wire phy_dfi_p7_wrdata_en;
wire [3:0] phy_dfi_p7_wrdata_mask;
wire phy_dfi_p7_rddata_en;
reg [31:0] phy_dfi_p7_rddata = 32'd0;
reg phy_dfi_p7_rddata_valid = 1'd0;
wire [16:0] litedram_core_slave_p0_address;
wire [5:0] litedram_core_slave_p0_bank;
wire litedram_core_slave_p0_cas_n;
wire litedram_core_slave_p0_cs_n;
wire litedram_core_slave_p0_ras_n;
wire litedram_core_slave_p0_we_n;
wire litedram_core_slave_p0_cke;
wire litedram_core_slave_p0_odt;
wire litedram_core_slave_p0_reset_n;
wire litedram_core_slave_p0_act_n;
wire [31:0] litedram_core_slave_p0_wrdata;
wire litedram_core_slave_p0_wrdata_en;
wire [3:0] litedram_core_slave_p0_wrdata_mask;
wire litedram_core_slave_p0_rddata_en;
reg [31:0] litedram_core_slave_p0_rddata;
reg litedram_core_slave_p0_rddata_valid;
wire [16:0] litedram_core_slave_p1_address;
wire [5:0] litedram_core_slave_p1_bank;
wire litedram_core_slave_p1_cas_n;
wire litedram_core_slave_p1_cs_n;
wire litedram_core_slave_p1_ras_n;
wire litedram_core_slave_p1_we_n;
wire litedram_core_slave_p1_cke;
wire litedram_core_slave_p1_odt;
wire litedram_core_slave_p1_reset_n;
wire litedram_core_slave_p1_act_n;
wire [31:0] litedram_core_slave_p1_wrdata;
wire litedram_core_slave_p1_wrdata_en;
wire [3:0] litedram_core_slave_p1_wrdata_mask;
wire litedram_core_slave_p1_rddata_en;
reg [31:0] litedram_core_slave_p1_rddata;
reg litedram_core_slave_p1_rddata_valid;
wire [16:0] litedram_core_slave_p2_address;
wire [5:0] litedram_core_slave_p2_bank;
wire litedram_core_slave_p2_cas_n;
wire litedram_core_slave_p2_cs_n;
wire litedram_core_slave_p2_ras_n;
wire litedram_core_slave_p2_we_n;
wire litedram_core_slave_p2_cke;
wire litedram_core_slave_p2_odt;
wire litedram_core_slave_p2_reset_n;
wire litedram_core_slave_p2_act_n;
wire [31:0] litedram_core_slave_p2_wrdata;
wire litedram_core_slave_p2_wrdata_en;
wire [3:0] litedram_core_slave_p2_wrdata_mask;
wire litedram_core_slave_p2_rddata_en;
reg [31:0] litedram_core_slave_p2_rddata;
reg litedram_core_slave_p2_rddata_valid;
wire [16:0] litedram_core_slave_p3_address;
wire [5:0] litedram_core_slave_p3_bank;
wire litedram_core_slave_p3_cas_n;
wire litedram_core_slave_p3_cs_n;
wire litedram_core_slave_p3_ras_n;
wire litedram_core_slave_p3_we_n;
wire litedram_core_slave_p3_cke;
wire litedram_core_slave_p3_odt;
wire litedram_core_slave_p3_reset_n;
wire litedram_core_slave_p3_act_n;
wire [31:0] litedram_core_slave_p3_wrdata;
wire litedram_core_slave_p3_wrdata_en;
wire [3:0] litedram_core_slave_p3_wrdata_mask;
wire litedram_core_slave_p3_rddata_en;
reg [31:0] litedram_core_slave_p3_rddata;
reg litedram_core_slave_p3_rddata_valid;
wire [16:0] litedram_core_slave_p4_address;
wire [5:0] litedram_core_slave_p4_bank;
wire litedram_core_slave_p4_cas_n;
wire litedram_core_slave_p4_cs_n;
wire litedram_core_slave_p4_ras_n;
wire litedram_core_slave_p4_we_n;
wire litedram_core_slave_p4_cke;
wire litedram_core_slave_p4_odt;
wire litedram_core_slave_p4_reset_n;
wire litedram_core_slave_p4_act_n;
wire [31:0] litedram_core_slave_p4_wrdata;
wire litedram_core_slave_p4_wrdata_en;
wire [3:0] litedram_core_slave_p4_wrdata_mask;
wire litedram_core_slave_p4_rddata_en;
reg [31:0] litedram_core_slave_p4_rddata;
reg litedram_core_slave_p4_rddata_valid;
wire [16:0] litedram_core_slave_p5_address;
wire [5:0] litedram_core_slave_p5_bank;
wire litedram_core_slave_p5_cas_n;
wire litedram_core_slave_p5_cs_n;
wire litedram_core_slave_p5_ras_n;
wire litedram_core_slave_p5_we_n;
wire litedram_core_slave_p5_cke;
wire litedram_core_slave_p5_odt;
wire litedram_core_slave_p5_reset_n;
wire litedram_core_slave_p5_act_n;
wire [31:0] litedram_core_slave_p5_wrdata;
wire litedram_core_slave_p5_wrdata_en;
wire [3:0] litedram_core_slave_p5_wrdata_mask;
wire litedram_core_slave_p5_rddata_en;
reg [31:0] litedram_core_slave_p5_rddata;
reg litedram_core_slave_p5_rddata_valid;
wire [16:0] litedram_core_slave_p6_address;
wire [5:0] litedram_core_slave_p6_bank;
wire litedram_core_slave_p6_cas_n;
wire litedram_core_slave_p6_cs_n;
wire litedram_core_slave_p6_ras_n;
wire litedram_core_slave_p6_we_n;
wire litedram_core_slave_p6_cke;
wire litedram_core_slave_p6_odt;
wire litedram_core_slave_p6_reset_n;
wire litedram_core_slave_p6_act_n;
wire [31:0] litedram_core_slave_p6_wrdata;
wire litedram_core_slave_p6_wrdata_en;
wire [3:0] litedram_core_slave_p6_wrdata_mask;
wire litedram_core_slave_p6_rddata_en;
reg [31:0] litedram_core_slave_p6_rddata;
reg litedram_core_slave_p6_rddata_valid;
wire [16:0] litedram_core_slave_p7_address;
wire [5:0] litedram_core_slave_p7_bank;
wire litedram_core_slave_p7_cas_n;
wire litedram_core_slave_p7_cs_n;
wire litedram_core_slave_p7_ras_n;
wire litedram_core_slave_p7_we_n;
wire litedram_core_slave_p7_cke;
wire litedram_core_slave_p7_odt;
wire litedram_core_slave_p7_reset_n;
wire litedram_core_slave_p7_act_n;
wire [31:0] litedram_core_slave_p7_wrdata;
wire litedram_core_slave_p7_wrdata_en;
wire [3:0] litedram_core_slave_p7_wrdata_mask;
wire litedram_core_slave_p7_rddata_en;
reg [31:0] litedram_core_slave_p7_rddata;
reg litedram_core_slave_p7_rddata_valid;
reg [16:0] litedram_core_master_p0_address;
reg [5:0] litedram_core_master_p0_bank;
reg litedram_core_master_p0_cas_n;
reg litedram_core_master_p0_cs_n;
reg litedram_core_master_p0_ras_n;
reg litedram_core_master_p0_we_n;
reg litedram_core_master_p0_cke;
reg litedram_core_master_p0_odt;
reg litedram_core_master_p0_reset_n;
reg litedram_core_master_p0_act_n;
reg [31:0] litedram_core_master_p0_wrdata;
reg litedram_core_master_p0_wrdata_en;
reg [3:0] litedram_core_master_p0_wrdata_mask;
reg litedram_core_master_p0_rddata_en;
wire [31:0] litedram_core_master_p0_rddata;
wire litedram_core_master_p0_rddata_valid;
reg [16:0] litedram_core_master_p1_address;
reg [5:0] litedram_core_master_p1_bank;
reg litedram_core_master_p1_cas_n;
reg litedram_core_master_p1_cs_n;
reg litedram_core_master_p1_ras_n;
reg litedram_core_master_p1_we_n;
reg litedram_core_master_p1_cke;
reg litedram_core_master_p1_odt;
reg litedram_core_master_p1_reset_n;
reg litedram_core_master_p1_act_n;
reg [31:0] litedram_core_master_p1_wrdata;
reg litedram_core_master_p1_wrdata_en;
reg [3:0] litedram_core_master_p1_wrdata_mask;
reg litedram_core_master_p1_rddata_en;
wire [31:0] litedram_core_master_p1_rddata;
wire litedram_core_master_p1_rddata_valid;
reg [16:0] litedram_core_master_p2_address;
reg [5:0] litedram_core_master_p2_bank;
reg litedram_core_master_p2_cas_n;
reg litedram_core_master_p2_cs_n;
reg litedram_core_master_p2_ras_n;
reg litedram_core_master_p2_we_n;
reg litedram_core_master_p2_cke;
reg litedram_core_master_p2_odt;
reg litedram_core_master_p2_reset_n;
reg litedram_core_master_p2_act_n;
reg [31:0] litedram_core_master_p2_wrdata;
reg litedram_core_master_p2_wrdata_en;
reg [3:0] litedram_core_master_p2_wrdata_mask;
reg litedram_core_master_p2_rddata_en;
wire [31:0] litedram_core_master_p2_rddata;
wire litedram_core_master_p2_rddata_valid;
reg [16:0] litedram_core_master_p3_address;
reg [5:0] litedram_core_master_p3_bank;
reg litedram_core_master_p3_cas_n;
reg litedram_core_master_p3_cs_n;
reg litedram_core_master_p3_ras_n;
reg litedram_core_master_p3_we_n;
reg litedram_core_master_p3_cke;
reg litedram_core_master_p3_odt;
reg litedram_core_master_p3_reset_n;
reg litedram_core_master_p3_act_n;
reg [31:0] litedram_core_master_p3_wrdata;
reg litedram_core_master_p3_wrdata_en;
reg [3:0] litedram_core_master_p3_wrdata_mask;
reg litedram_core_master_p3_rddata_en;
wire [31:0] litedram_core_master_p3_rddata;
wire litedram_core_master_p3_rddata_valid;
reg [16:0] litedram_core_master_p4_address;
reg [5:0] litedram_core_master_p4_bank;
reg litedram_core_master_p4_cas_n;
reg litedram_core_master_p4_cs_n;
reg litedram_core_master_p4_ras_n;
reg litedram_core_master_p4_we_n;
reg litedram_core_master_p4_cke;
reg litedram_core_master_p4_odt;
reg litedram_core_master_p4_reset_n;
reg litedram_core_master_p4_act_n;
reg [31:0] litedram_core_master_p4_wrdata;
reg litedram_core_master_p4_wrdata_en;
reg [3:0] litedram_core_master_p4_wrdata_mask;
reg litedram_core_master_p4_rddata_en;
wire [31:0] litedram_core_master_p4_rddata;
wire litedram_core_master_p4_rddata_valid;
reg [16:0] litedram_core_master_p5_address;
reg [5:0] litedram_core_master_p5_bank;
reg litedram_core_master_p5_cas_n;
reg litedram_core_master_p5_cs_n;
reg litedram_core_master_p5_ras_n;
reg litedram_core_master_p5_we_n;
reg litedram_core_master_p5_cke;
reg litedram_core_master_p5_odt;
reg litedram_core_master_p5_reset_n;
reg litedram_core_master_p5_act_n;
reg [31:0] litedram_core_master_p5_wrdata;
reg litedram_core_master_p5_wrdata_en;
reg [3:0] litedram_core_master_p5_wrdata_mask;
reg litedram_core_master_p5_rddata_en;
wire [31:0] litedram_core_master_p5_rddata;
wire litedram_core_master_p5_rddata_valid;
reg [16:0] litedram_core_master_p6_address;
reg [5:0] litedram_core_master_p6_bank;
reg litedram_core_master_p6_cas_n;
reg litedram_core_master_p6_cs_n;
reg litedram_core_master_p6_ras_n;
reg litedram_core_master_p6_we_n;
reg litedram_core_master_p6_cke;
reg litedram_core_master_p6_odt;
reg litedram_core_master_p6_reset_n;
reg litedram_core_master_p6_act_n;
reg [31:0] litedram_core_master_p6_wrdata;
reg litedram_core_master_p6_wrdata_en;
reg [3:0] litedram_core_master_p6_wrdata_mask;
reg litedram_core_master_p6_rddata_en;
wire [31:0] litedram_core_master_p6_rddata;
wire litedram_core_master_p6_rddata_valid;
reg [16:0] litedram_core_master_p7_address;
reg [5:0] litedram_core_master_p7_bank;
reg litedram_core_master_p7_cas_n;
reg litedram_core_master_p7_cs_n;
reg litedram_core_master_p7_ras_n;
reg litedram_core_master_p7_we_n;
reg litedram_core_master_p7_cke;
reg litedram_core_master_p7_odt;
reg litedram_core_master_p7_reset_n;
reg litedram_core_master_p7_act_n;
reg [31:0] litedram_core_master_p7_wrdata;
reg litedram_core_master_p7_wrdata_en;
reg [3:0] litedram_core_master_p7_wrdata_mask;
reg litedram_core_master_p7_rddata_en;
wire [31:0] litedram_core_master_p7_rddata;
wire litedram_core_master_p7_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p0_address;
wire [5:0] litedram_core_csr_dfi_p0_bank;
reg litedram_core_csr_dfi_p0_cas_n;
reg litedram_core_csr_dfi_p0_cs_n;
reg litedram_core_csr_dfi_p0_ras_n;
reg litedram_core_csr_dfi_p0_we_n;
wire litedram_core_csr_dfi_p0_cke;
wire litedram_core_csr_dfi_p0_odt;
wire litedram_core_csr_dfi_p0_reset_n;
reg litedram_core_csr_dfi_p0_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p0_wrdata;
wire litedram_core_csr_dfi_p0_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p0_wrdata_mask;
wire litedram_core_csr_dfi_p0_rddata_en;
reg [31:0] litedram_core_csr_dfi_p0_rddata;
reg litedram_core_csr_dfi_p0_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p1_address;
wire [5:0] litedram_core_csr_dfi_p1_bank;
reg litedram_core_csr_dfi_p1_cas_n;
reg litedram_core_csr_dfi_p1_cs_n;
reg litedram_core_csr_dfi_p1_ras_n;
reg litedram_core_csr_dfi_p1_we_n;
wire litedram_core_csr_dfi_p1_cke;
wire litedram_core_csr_dfi_p1_odt;
wire litedram_core_csr_dfi_p1_reset_n;
reg litedram_core_csr_dfi_p1_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p1_wrdata;
wire litedram_core_csr_dfi_p1_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p1_wrdata_mask;
wire litedram_core_csr_dfi_p1_rddata_en;
reg [31:0] litedram_core_csr_dfi_p1_rddata;
reg litedram_core_csr_dfi_p1_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p2_address;
wire [5:0] litedram_core_csr_dfi_p2_bank;
reg litedram_core_csr_dfi_p2_cas_n;
reg litedram_core_csr_dfi_p2_cs_n;
reg litedram_core_csr_dfi_p2_ras_n;
reg litedram_core_csr_dfi_p2_we_n;
wire litedram_core_csr_dfi_p2_cke;
wire litedram_core_csr_dfi_p2_odt;
wire litedram_core_csr_dfi_p2_reset_n;
reg litedram_core_csr_dfi_p2_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p2_wrdata;
wire litedram_core_csr_dfi_p2_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p2_wrdata_mask;
wire litedram_core_csr_dfi_p2_rddata_en;
reg [31:0] litedram_core_csr_dfi_p2_rddata;
reg litedram_core_csr_dfi_p2_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p3_address;
wire [5:0] litedram_core_csr_dfi_p3_bank;
reg litedram_core_csr_dfi_p3_cas_n;
reg litedram_core_csr_dfi_p3_cs_n;
reg litedram_core_csr_dfi_p3_ras_n;
reg litedram_core_csr_dfi_p3_we_n;
wire litedram_core_csr_dfi_p3_cke;
wire litedram_core_csr_dfi_p3_odt;
wire litedram_core_csr_dfi_p3_reset_n;
reg litedram_core_csr_dfi_p3_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p3_wrdata;
wire litedram_core_csr_dfi_p3_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p3_wrdata_mask;
wire litedram_core_csr_dfi_p3_rddata_en;
reg [31:0] litedram_core_csr_dfi_p3_rddata;
reg litedram_core_csr_dfi_p3_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p4_address;
wire [5:0] litedram_core_csr_dfi_p4_bank;
reg litedram_core_csr_dfi_p4_cas_n;
reg litedram_core_csr_dfi_p4_cs_n;
reg litedram_core_csr_dfi_p4_ras_n;
reg litedram_core_csr_dfi_p4_we_n;
wire litedram_core_csr_dfi_p4_cke;
wire litedram_core_csr_dfi_p4_odt;
wire litedram_core_csr_dfi_p4_reset_n;
reg litedram_core_csr_dfi_p4_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p4_wrdata;
wire litedram_core_csr_dfi_p4_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p4_wrdata_mask;
wire litedram_core_csr_dfi_p4_rddata_en;
reg [31:0] litedram_core_csr_dfi_p4_rddata;
reg litedram_core_csr_dfi_p4_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p5_address;
wire [5:0] litedram_core_csr_dfi_p5_bank;
reg litedram_core_csr_dfi_p5_cas_n;
reg litedram_core_csr_dfi_p5_cs_n;
reg litedram_core_csr_dfi_p5_ras_n;
reg litedram_core_csr_dfi_p5_we_n;
wire litedram_core_csr_dfi_p5_cke;
wire litedram_core_csr_dfi_p5_odt;
wire litedram_core_csr_dfi_p5_reset_n;
reg litedram_core_csr_dfi_p5_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p5_wrdata;
wire litedram_core_csr_dfi_p5_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p5_wrdata_mask;
wire litedram_core_csr_dfi_p5_rddata_en;
reg [31:0] litedram_core_csr_dfi_p5_rddata;
reg litedram_core_csr_dfi_p5_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p6_address;
wire [5:0] litedram_core_csr_dfi_p6_bank;
reg litedram_core_csr_dfi_p6_cas_n;
reg litedram_core_csr_dfi_p6_cs_n;
reg litedram_core_csr_dfi_p6_ras_n;
reg litedram_core_csr_dfi_p6_we_n;
wire litedram_core_csr_dfi_p6_cke;
wire litedram_core_csr_dfi_p6_odt;
wire litedram_core_csr_dfi_p6_reset_n;
reg litedram_core_csr_dfi_p6_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p6_wrdata;
wire litedram_core_csr_dfi_p6_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p6_wrdata_mask;
wire litedram_core_csr_dfi_p6_rddata_en;
reg [31:0] litedram_core_csr_dfi_p6_rddata;
reg litedram_core_csr_dfi_p6_rddata_valid;
wire [16:0] litedram_core_csr_dfi_p7_address;
wire [5:0] litedram_core_csr_dfi_p7_bank;
reg litedram_core_csr_dfi_p7_cas_n;
reg litedram_core_csr_dfi_p7_cs_n;
reg litedram_core_csr_dfi_p7_ras_n;
reg litedram_core_csr_dfi_p7_we_n;
wire litedram_core_csr_dfi_p7_cke;
wire litedram_core_csr_dfi_p7_odt;
wire litedram_core_csr_dfi_p7_reset_n;
reg litedram_core_csr_dfi_p7_act_n = 1'd1;
wire [31:0] litedram_core_csr_dfi_p7_wrdata;
wire litedram_core_csr_dfi_p7_wrdata_en;
wire [3:0] litedram_core_csr_dfi_p7_wrdata_mask;
wire litedram_core_csr_dfi_p7_rddata_en;
reg [31:0] litedram_core_csr_dfi_p7_rddata;
reg litedram_core_csr_dfi_p7_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p0_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p0_bank = 6'd0;
reg litedram_core_ext_dfi_p0_cas_n = 1'd1;
reg litedram_core_ext_dfi_p0_cs_n = 1'd1;
reg litedram_core_ext_dfi_p0_ras_n = 1'd1;
reg litedram_core_ext_dfi_p0_we_n = 1'd1;
reg litedram_core_ext_dfi_p0_cke = 1'd0;
reg litedram_core_ext_dfi_p0_odt = 1'd0;
reg litedram_core_ext_dfi_p0_reset_n = 1'd0;
reg litedram_core_ext_dfi_p0_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p0_wrdata = 32'd0;
reg litedram_core_ext_dfi_p0_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p0_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p0_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p0_rddata;
reg litedram_core_ext_dfi_p0_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p1_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p1_bank = 6'd0;
reg litedram_core_ext_dfi_p1_cas_n = 1'd1;
reg litedram_core_ext_dfi_p1_cs_n = 1'd1;
reg litedram_core_ext_dfi_p1_ras_n = 1'd1;
reg litedram_core_ext_dfi_p1_we_n = 1'd1;
reg litedram_core_ext_dfi_p1_cke = 1'd0;
reg litedram_core_ext_dfi_p1_odt = 1'd0;
reg litedram_core_ext_dfi_p1_reset_n = 1'd0;
reg litedram_core_ext_dfi_p1_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p1_wrdata = 32'd0;
reg litedram_core_ext_dfi_p1_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p1_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p1_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p1_rddata;
reg litedram_core_ext_dfi_p1_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p2_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p2_bank = 6'd0;
reg litedram_core_ext_dfi_p2_cas_n = 1'd1;
reg litedram_core_ext_dfi_p2_cs_n = 1'd1;
reg litedram_core_ext_dfi_p2_ras_n = 1'd1;
reg litedram_core_ext_dfi_p2_we_n = 1'd1;
reg litedram_core_ext_dfi_p2_cke = 1'd0;
reg litedram_core_ext_dfi_p2_odt = 1'd0;
reg litedram_core_ext_dfi_p2_reset_n = 1'd0;
reg litedram_core_ext_dfi_p2_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p2_wrdata = 32'd0;
reg litedram_core_ext_dfi_p2_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p2_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p2_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p2_rddata;
reg litedram_core_ext_dfi_p2_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p3_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p3_bank = 6'd0;
reg litedram_core_ext_dfi_p3_cas_n = 1'd1;
reg litedram_core_ext_dfi_p3_cs_n = 1'd1;
reg litedram_core_ext_dfi_p3_ras_n = 1'd1;
reg litedram_core_ext_dfi_p3_we_n = 1'd1;
reg litedram_core_ext_dfi_p3_cke = 1'd0;
reg litedram_core_ext_dfi_p3_odt = 1'd0;
reg litedram_core_ext_dfi_p3_reset_n = 1'd0;
reg litedram_core_ext_dfi_p3_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p3_wrdata = 32'd0;
reg litedram_core_ext_dfi_p3_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p3_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p3_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p3_rddata;
reg litedram_core_ext_dfi_p3_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p4_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p4_bank = 6'd0;
reg litedram_core_ext_dfi_p4_cas_n = 1'd1;
reg litedram_core_ext_dfi_p4_cs_n = 1'd1;
reg litedram_core_ext_dfi_p4_ras_n = 1'd1;
reg litedram_core_ext_dfi_p4_we_n = 1'd1;
reg litedram_core_ext_dfi_p4_cke = 1'd0;
reg litedram_core_ext_dfi_p4_odt = 1'd0;
reg litedram_core_ext_dfi_p4_reset_n = 1'd0;
reg litedram_core_ext_dfi_p4_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p4_wrdata = 32'd0;
reg litedram_core_ext_dfi_p4_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p4_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p4_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p4_rddata;
reg litedram_core_ext_dfi_p4_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p5_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p5_bank = 6'd0;
reg litedram_core_ext_dfi_p5_cas_n = 1'd1;
reg litedram_core_ext_dfi_p5_cs_n = 1'd1;
reg litedram_core_ext_dfi_p5_ras_n = 1'd1;
reg litedram_core_ext_dfi_p5_we_n = 1'd1;
reg litedram_core_ext_dfi_p5_cke = 1'd0;
reg litedram_core_ext_dfi_p5_odt = 1'd0;
reg litedram_core_ext_dfi_p5_reset_n = 1'd0;
reg litedram_core_ext_dfi_p5_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p5_wrdata = 32'd0;
reg litedram_core_ext_dfi_p5_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p5_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p5_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p5_rddata;
reg litedram_core_ext_dfi_p5_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p6_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p6_bank = 6'd0;
reg litedram_core_ext_dfi_p6_cas_n = 1'd1;
reg litedram_core_ext_dfi_p6_cs_n = 1'd1;
reg litedram_core_ext_dfi_p6_ras_n = 1'd1;
reg litedram_core_ext_dfi_p6_we_n = 1'd1;
reg litedram_core_ext_dfi_p6_cke = 1'd0;
reg litedram_core_ext_dfi_p6_odt = 1'd0;
reg litedram_core_ext_dfi_p6_reset_n = 1'd0;
reg litedram_core_ext_dfi_p6_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p6_wrdata = 32'd0;
reg litedram_core_ext_dfi_p6_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p6_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p6_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p6_rddata;
reg litedram_core_ext_dfi_p6_rddata_valid;
reg [16:0] litedram_core_ext_dfi_p7_address = 17'd0;
reg [5:0] litedram_core_ext_dfi_p7_bank = 6'd0;
reg litedram_core_ext_dfi_p7_cas_n = 1'd1;
reg litedram_core_ext_dfi_p7_cs_n = 1'd1;
reg litedram_core_ext_dfi_p7_ras_n = 1'd1;
reg litedram_core_ext_dfi_p7_we_n = 1'd1;
reg litedram_core_ext_dfi_p7_cke = 1'd0;
reg litedram_core_ext_dfi_p7_odt = 1'd0;
reg litedram_core_ext_dfi_p7_reset_n = 1'd0;
reg litedram_core_ext_dfi_p7_act_n = 1'd1;
reg [31:0] litedram_core_ext_dfi_p7_wrdata = 32'd0;
reg litedram_core_ext_dfi_p7_wrdata_en = 1'd0;
reg [3:0] litedram_core_ext_dfi_p7_wrdata_mask = 4'd0;
reg litedram_core_ext_dfi_p7_rddata_en = 1'd0;
reg [31:0] litedram_core_ext_dfi_p7_rddata;
reg litedram_core_ext_dfi_p7_rddata_valid;
reg litedram_core_ext_dfi_sel = 1'd0;
reg litedram_core_sel = 1'd1;
reg litedram_core_cke = 1'd0;
reg litedram_core_odt = 1'd0;
reg litedram_core_reset_n = 1'd0;
reg litedram_core_phaseinjector0_cs = 1'd0;
reg litedram_core_phaseinjector0_we = 1'd0;
reg litedram_core_phaseinjector0_cas = 1'd0;
reg litedram_core_phaseinjector0_ras = 1'd0;
reg litedram_core_phaseinjector0_wren = 1'd0;
reg litedram_core_phaseinjector0_rden = 1'd0;
reg litedram_core_phaseinjector0_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector0_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector0_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector0_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector0_status = 32'd0;
reg litedram_core_phaseinjector1_cs = 1'd0;
reg litedram_core_phaseinjector1_we = 1'd0;
reg litedram_core_phaseinjector1_cas = 1'd0;
reg litedram_core_phaseinjector1_ras = 1'd0;
reg litedram_core_phaseinjector1_wren = 1'd0;
reg litedram_core_phaseinjector1_rden = 1'd0;
reg litedram_core_phaseinjector1_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector1_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector1_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector1_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector1_status = 32'd0;
reg litedram_core_phaseinjector2_cs = 1'd0;
reg litedram_core_phaseinjector2_we = 1'd0;
reg litedram_core_phaseinjector2_cas = 1'd0;
reg litedram_core_phaseinjector2_ras = 1'd0;
reg litedram_core_phaseinjector2_wren = 1'd0;
reg litedram_core_phaseinjector2_rden = 1'd0;
reg litedram_core_phaseinjector2_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector2_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector2_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector2_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector2_status = 32'd0;
reg litedram_core_phaseinjector3_cs = 1'd0;
reg litedram_core_phaseinjector3_we = 1'd0;
reg litedram_core_phaseinjector3_cas = 1'd0;
reg litedram_core_phaseinjector3_ras = 1'd0;
reg litedram_core_phaseinjector3_wren = 1'd0;
reg litedram_core_phaseinjector3_rden = 1'd0;
reg litedram_core_phaseinjector3_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector3_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector3_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector3_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector3_status = 32'd0;
reg litedram_core_phaseinjector4_cs = 1'd0;
reg litedram_core_phaseinjector4_we = 1'd0;
reg litedram_core_phaseinjector4_cas = 1'd0;
reg litedram_core_phaseinjector4_ras = 1'd0;
reg litedram_core_phaseinjector4_wren = 1'd0;
reg litedram_core_phaseinjector4_rden = 1'd0;
reg litedram_core_phaseinjector4_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector4_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector4_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector4_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector4_status = 32'd0;
reg litedram_core_phaseinjector5_cs = 1'd0;
reg litedram_core_phaseinjector5_we = 1'd0;
reg litedram_core_phaseinjector5_cas = 1'd0;
reg litedram_core_phaseinjector5_ras = 1'd0;
reg litedram_core_phaseinjector5_wren = 1'd0;
reg litedram_core_phaseinjector5_rden = 1'd0;
reg litedram_core_phaseinjector5_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector5_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector5_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector5_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector5_status = 32'd0;
reg litedram_core_phaseinjector6_cs = 1'd0;
reg litedram_core_phaseinjector6_we = 1'd0;
reg litedram_core_phaseinjector6_cas = 1'd0;
reg litedram_core_phaseinjector6_ras = 1'd0;
reg litedram_core_phaseinjector6_wren = 1'd0;
reg litedram_core_phaseinjector6_rden = 1'd0;
reg litedram_core_phaseinjector6_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector6_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector6_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector6_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector6_status = 32'd0;
reg litedram_core_phaseinjector7_cs = 1'd0;
reg litedram_core_phaseinjector7_we = 1'd0;
reg litedram_core_phaseinjector7_cas = 1'd0;
reg litedram_core_phaseinjector7_ras = 1'd0;
reg litedram_core_phaseinjector7_wren = 1'd0;
reg litedram_core_phaseinjector7_rden = 1'd0;
reg litedram_core_phaseinjector7_command_issue_re = 1'd0;
reg [16:0] litedram_core_phaseinjector7_address_storage = 17'd0;
reg [5:0] litedram_core_phaseinjector7_baddress_storage = 6'd0;
reg [31:0] litedram_core_phaseinjector7_wrdata_storage = 32'd0;
reg [31:0] litedram_core_phaseinjector7_status = 32'd0;
reg litedram_core_interface_bank0_valid = 1'd0;
wire litedram_core_interface_bank0_ready;
reg litedram_core_interface_bank0_we = 1'd0;
reg [9:0] litedram_core_interface_bank0_addr = 10'd0;
wire litedram_core_interface_bank0_lock;
wire litedram_core_interface_bank0_wdata_ready;
wire litedram_core_interface_bank0_rdata_valid;
reg litedram_core_interface_bank1_valid = 1'd0;
wire litedram_core_interface_bank1_ready;
reg litedram_core_interface_bank1_we = 1'd0;
reg [9:0] litedram_core_interface_bank1_addr = 10'd0;
wire litedram_core_interface_bank1_lock;
wire litedram_core_interface_bank1_wdata_ready;
wire litedram_core_interface_bank1_rdata_valid;
reg litedram_core_interface_bank2_valid = 1'd0;
wire litedram_core_interface_bank2_ready;
reg litedram_core_interface_bank2_we = 1'd0;
reg [9:0] litedram_core_interface_bank2_addr = 10'd0;
wire litedram_core_interface_bank2_lock;
wire litedram_core_interface_bank2_wdata_ready;
wire litedram_core_interface_bank2_rdata_valid;
reg litedram_core_interface_bank3_valid = 1'd0;
wire litedram_core_interface_bank3_ready;
reg litedram_core_interface_bank3_we = 1'd0;
reg [9:0] litedram_core_interface_bank3_addr = 10'd0;
wire litedram_core_interface_bank3_lock;
wire litedram_core_interface_bank3_wdata_ready;
wire litedram_core_interface_bank3_rdata_valid;
reg litedram_core_interface_bank4_valid = 1'd0;
wire litedram_core_interface_bank4_ready;
reg litedram_core_interface_bank4_we = 1'd0;
reg [9:0] litedram_core_interface_bank4_addr = 10'd0;
wire litedram_core_interface_bank4_lock;
wire litedram_core_interface_bank4_wdata_ready;
wire litedram_core_interface_bank4_rdata_valid;
reg litedram_core_interface_bank5_valid = 1'd0;
wire litedram_core_interface_bank5_ready;
reg litedram_core_interface_bank5_we = 1'd0;
reg [9:0] litedram_core_interface_bank5_addr = 10'd0;
wire litedram_core_interface_bank5_lock;
wire litedram_core_interface_bank5_wdata_ready;
wire litedram_core_interface_bank5_rdata_valid;
reg litedram_core_interface_bank6_valid = 1'd0;
wire litedram_core_interface_bank6_ready;
reg litedram_core_interface_bank6_we = 1'd0;
reg [9:0] litedram_core_interface_bank6_addr = 10'd0;
wire litedram_core_interface_bank6_lock;
wire litedram_core_interface_bank6_wdata_ready;
wire litedram_core_interface_bank6_rdata_valid;
reg litedram_core_interface_bank7_valid = 1'd0;
wire litedram_core_interface_bank7_ready;
reg litedram_core_interface_bank7_we = 1'd0;
reg [9:0] litedram_core_interface_bank7_addr = 10'd0;
wire litedram_core_interface_bank7_lock;
wire litedram_core_interface_bank7_wdata_ready;
wire litedram_core_interface_bank7_rdata_valid;
reg [255:0] litedram_core_interface_wdata = 256'd0;
reg [31:0] litedram_core_interface_wdata_we = 32'd0;
wire [255:0] litedram_core_interface_rdata;
reg [6:0] litedram_core_dfi_p0_address = 7'd0;
reg [2:0] litedram_core_dfi_p0_bank = 3'd0;
reg litedram_core_dfi_p0_cas_n = 1'd1;
reg litedram_core_dfi_p0_cs_n = 1'd1;
reg litedram_core_dfi_p0_ras_n = 1'd1;
reg litedram_core_dfi_p0_we_n = 1'd1;
wire litedram_core_dfi_p0_cke;
wire litedram_core_dfi_p0_odt;
wire litedram_core_dfi_p0_reset_n;
reg litedram_core_dfi_p0_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p0_wrdata;
reg litedram_core_dfi_p0_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p0_wrdata_mask;
reg litedram_core_dfi_p0_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p0_rddata;
wire litedram_core_dfi_p0_rddata_valid;
reg [6:0] litedram_core_dfi_p1_address = 7'd0;
reg [2:0] litedram_core_dfi_p1_bank = 3'd0;
reg litedram_core_dfi_p1_cas_n = 1'd1;
reg litedram_core_dfi_p1_cs_n = 1'd1;
reg litedram_core_dfi_p1_ras_n = 1'd1;
reg litedram_core_dfi_p1_we_n = 1'd1;
wire litedram_core_dfi_p1_cke;
wire litedram_core_dfi_p1_odt;
wire litedram_core_dfi_p1_reset_n;
reg litedram_core_dfi_p1_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p1_wrdata;
reg litedram_core_dfi_p1_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p1_wrdata_mask;
reg litedram_core_dfi_p1_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p1_rddata;
wire litedram_core_dfi_p1_rddata_valid;
reg [6:0] litedram_core_dfi_p2_address = 7'd0;
reg [2:0] litedram_core_dfi_p2_bank = 3'd0;
reg litedram_core_dfi_p2_cas_n = 1'd1;
reg litedram_core_dfi_p2_cs_n = 1'd1;
reg litedram_core_dfi_p2_ras_n = 1'd1;
reg litedram_core_dfi_p2_we_n = 1'd1;
wire litedram_core_dfi_p2_cke;
wire litedram_core_dfi_p2_odt;
wire litedram_core_dfi_p2_reset_n;
reg litedram_core_dfi_p2_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p2_wrdata;
reg litedram_core_dfi_p2_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p2_wrdata_mask;
reg litedram_core_dfi_p2_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p2_rddata;
wire litedram_core_dfi_p2_rddata_valid;
reg [6:0] litedram_core_dfi_p3_address = 7'd0;
reg [2:0] litedram_core_dfi_p3_bank = 3'd0;
reg litedram_core_dfi_p3_cas_n = 1'd1;
reg litedram_core_dfi_p3_cs_n = 1'd1;
reg litedram_core_dfi_p3_ras_n = 1'd1;
reg litedram_core_dfi_p3_we_n = 1'd1;
wire litedram_core_dfi_p3_cke;
wire litedram_core_dfi_p3_odt;
wire litedram_core_dfi_p3_reset_n;
reg litedram_core_dfi_p3_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p3_wrdata;
reg litedram_core_dfi_p3_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p3_wrdata_mask;
reg litedram_core_dfi_p3_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p3_rddata;
wire litedram_core_dfi_p3_rddata_valid;
reg [6:0] litedram_core_dfi_p4_address = 7'd0;
reg [2:0] litedram_core_dfi_p4_bank = 3'd0;
reg litedram_core_dfi_p4_cas_n = 1'd1;
reg litedram_core_dfi_p4_cs_n = 1'd1;
reg litedram_core_dfi_p4_ras_n = 1'd1;
reg litedram_core_dfi_p4_we_n = 1'd1;
wire litedram_core_dfi_p4_cke;
wire litedram_core_dfi_p4_odt;
wire litedram_core_dfi_p4_reset_n;
reg litedram_core_dfi_p4_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p4_wrdata;
reg litedram_core_dfi_p4_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p4_wrdata_mask;
reg litedram_core_dfi_p4_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p4_rddata;
wire litedram_core_dfi_p4_rddata_valid;
reg [6:0] litedram_core_dfi_p5_address = 7'd0;
reg [2:0] litedram_core_dfi_p5_bank = 3'd0;
reg litedram_core_dfi_p5_cas_n = 1'd1;
reg litedram_core_dfi_p5_cs_n = 1'd1;
reg litedram_core_dfi_p5_ras_n = 1'd1;
reg litedram_core_dfi_p5_we_n = 1'd1;
wire litedram_core_dfi_p5_cke;
wire litedram_core_dfi_p5_odt;
wire litedram_core_dfi_p5_reset_n;
reg litedram_core_dfi_p5_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p5_wrdata;
reg litedram_core_dfi_p5_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p5_wrdata_mask;
reg litedram_core_dfi_p5_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p5_rddata;
wire litedram_core_dfi_p5_rddata_valid;
reg [6:0] litedram_core_dfi_p6_address = 7'd0;
reg [2:0] litedram_core_dfi_p6_bank = 3'd0;
reg litedram_core_dfi_p6_cas_n = 1'd1;
reg litedram_core_dfi_p6_cs_n = 1'd1;
reg litedram_core_dfi_p6_ras_n = 1'd1;
reg litedram_core_dfi_p6_we_n = 1'd1;
wire litedram_core_dfi_p6_cke;
wire litedram_core_dfi_p6_odt;
wire litedram_core_dfi_p6_reset_n;
reg litedram_core_dfi_p6_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p6_wrdata;
reg litedram_core_dfi_p6_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p6_wrdata_mask;
reg litedram_core_dfi_p6_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p6_rddata;
wire litedram_core_dfi_p6_rddata_valid;
reg [6:0] litedram_core_dfi_p7_address = 7'd0;
reg [2:0] litedram_core_dfi_p7_bank = 3'd0;
reg litedram_core_dfi_p7_cas_n = 1'd1;
reg litedram_core_dfi_p7_cs_n = 1'd1;
reg litedram_core_dfi_p7_ras_n = 1'd1;
reg litedram_core_dfi_p7_we_n = 1'd1;
wire litedram_core_dfi_p7_cke;
wire litedram_core_dfi_p7_odt;
wire litedram_core_dfi_p7_reset_n;
reg litedram_core_dfi_p7_act_n = 1'd1;
wire [31:0] litedram_core_dfi_p7_wrdata;
reg litedram_core_dfi_p7_wrdata_en = 1'd0;
wire [3:0] litedram_core_dfi_p7_wrdata_mask;
reg litedram_core_dfi_p7_rddata_en = 1'd0;
wire [31:0] litedram_core_dfi_p7_rddata;
wire litedram_core_dfi_p7_rddata_valid;
reg litedram_core_cmd_valid;
reg litedram_core_cmd_ready;
reg litedram_core_cmd_last;
reg [6:0] litedram_core_cmd_payload_a = 7'd0;
reg [2:0] litedram_core_cmd_payload_ba = 3'd0;
reg litedram_core_cmd_payload_cas = 1'd0;
reg litedram_core_cmd_payload_ras = 1'd0;
reg litedram_core_cmd_payload_we = 1'd0;
reg litedram_core_cmd_payload_is_read = 1'd0;
reg litedram_core_cmd_payload_is_write = 1'd0;
wire litedram_core_wants_refresh;
wire litedram_core_wants_zqcs;
wire litedram_core_timer_wait;
wire litedram_core_timer_done0;
wire [8:0] litedram_core_timer_count0;
wire litedram_core_timer_done1;
reg [8:0] litedram_core_timer_count1 = 9'd299;
wire litedram_core_postponer_req_i;
reg litedram_core_postponer_req_o = 1'd0;
reg litedram_core_postponer_count = 1'd0;
reg litedram_core_sequencer_start0;
wire litedram_core_sequencer_done0;
wire litedram_core_sequencer_start1;
reg litedram_core_sequencer_done1 = 1'd0;
reg [2:0] litedram_core_sequencer_counter = 3'd0;
reg litedram_core_sequencer_count = 1'd0;
wire litedram_core_zqcs_timer_wait;
wire litedram_core_zqcs_timer_done0;
wire [27:0] litedram_core_zqcs_timer_count0;
wire litedram_core_zqcs_timer_done1;
reg [27:0] litedram_core_zqcs_timer_count1 = 28'd265999999;
reg litedram_core_zqcs_executer_start;
reg litedram_core_zqcs_executer_done = 1'd0;
reg [3:0] litedram_core_zqcs_executer_counter = 4'd0;
wire litedram_core_bankmachine0_req_valid;
wire litedram_core_bankmachine0_req_ready;
wire litedram_core_bankmachine0_req_we;
wire [9:0] litedram_core_bankmachine0_req_addr;
wire litedram_core_bankmachine0_req_lock;
reg litedram_core_bankmachine0_req_wdata_ready;
reg litedram_core_bankmachine0_req_rdata_valid;
wire litedram_core_bankmachine0_refresh_req;
reg litedram_core_bankmachine0_refresh_gnt;
reg litedram_core_bankmachine0_cmd_valid;
reg litedram_core_bankmachine0_cmd_ready;
reg [6:0] litedram_core_bankmachine0_cmd_payload_a;
wire [2:0] litedram_core_bankmachine0_cmd_payload_ba;
reg litedram_core_bankmachine0_cmd_payload_cas;
reg litedram_core_bankmachine0_cmd_payload_ras;
reg litedram_core_bankmachine0_cmd_payload_we;
reg litedram_core_bankmachine0_cmd_payload_is_cmd;
reg litedram_core_bankmachine0_cmd_payload_is_read;
reg litedram_core_bankmachine0_cmd_payload_is_write;
reg litedram_core_bankmachine0_auto_precharge;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine0_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine0_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_we;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_re;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
wire [12:0] litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
wire [12:0] litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
reg [3:0] litedram_core_bankmachine0_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine0_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine0_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine0_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine0_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine0_cmd_buffer_sink_valid;
wire litedram_core_bankmachine0_cmd_buffer_sink_ready;
wire litedram_core_bankmachine0_cmd_buffer_sink_first;
wire litedram_core_bankmachine0_cmd_buffer_sink_last;
wire litedram_core_bankmachine0_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine0_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine0_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine0_cmd_buffer_source_ready;
reg litedram_core_bankmachine0_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine0_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine0_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine0_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine0_row = 7'd0;
reg litedram_core_bankmachine0_row_opened = 1'd0;
wire litedram_core_bankmachine0_row_hit;
reg litedram_core_bankmachine0_row_open;
reg litedram_core_bankmachine0_row_close;
reg litedram_core_bankmachine0_row_col_n_addr_sel;
wire litedram_core_bankmachine0_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine0_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine0_twtpcon_count = 3'd0;
wire litedram_core_bankmachine0_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine0_trccon_ready = 1'd1;
wire litedram_core_bankmachine0_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine0_trascon_ready = 1'd1;
wire litedram_core_bankmachine1_req_valid;
wire litedram_core_bankmachine1_req_ready;
wire litedram_core_bankmachine1_req_we;
wire [9:0] litedram_core_bankmachine1_req_addr;
wire litedram_core_bankmachine1_req_lock;
reg litedram_core_bankmachine1_req_wdata_ready;
reg litedram_core_bankmachine1_req_rdata_valid;
wire litedram_core_bankmachine1_refresh_req;
reg litedram_core_bankmachine1_refresh_gnt;
reg litedram_core_bankmachine1_cmd_valid;
reg litedram_core_bankmachine1_cmd_ready;
reg [6:0] litedram_core_bankmachine1_cmd_payload_a;
wire [2:0] litedram_core_bankmachine1_cmd_payload_ba;
reg litedram_core_bankmachine1_cmd_payload_cas;
reg litedram_core_bankmachine1_cmd_payload_ras;
reg litedram_core_bankmachine1_cmd_payload_we;
reg litedram_core_bankmachine1_cmd_payload_is_cmd;
reg litedram_core_bankmachine1_cmd_payload_is_read;
reg litedram_core_bankmachine1_cmd_payload_is_write;
reg litedram_core_bankmachine1_auto_precharge;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine1_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine1_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_we;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_re;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
wire [12:0] litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
wire [12:0] litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
reg [3:0] litedram_core_bankmachine1_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine1_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine1_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine1_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine1_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine1_cmd_buffer_sink_valid;
wire litedram_core_bankmachine1_cmd_buffer_sink_ready;
wire litedram_core_bankmachine1_cmd_buffer_sink_first;
wire litedram_core_bankmachine1_cmd_buffer_sink_last;
wire litedram_core_bankmachine1_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine1_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine1_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine1_cmd_buffer_source_ready;
reg litedram_core_bankmachine1_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine1_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine1_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine1_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine1_row = 7'd0;
reg litedram_core_bankmachine1_row_opened = 1'd0;
wire litedram_core_bankmachine1_row_hit;
reg litedram_core_bankmachine1_row_open;
reg litedram_core_bankmachine1_row_close;
reg litedram_core_bankmachine1_row_col_n_addr_sel;
wire litedram_core_bankmachine1_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine1_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine1_twtpcon_count = 3'd0;
wire litedram_core_bankmachine1_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine1_trccon_ready = 1'd1;
wire litedram_core_bankmachine1_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine1_trascon_ready = 1'd1;
wire litedram_core_bankmachine2_req_valid;
wire litedram_core_bankmachine2_req_ready;
wire litedram_core_bankmachine2_req_we;
wire [9:0] litedram_core_bankmachine2_req_addr;
wire litedram_core_bankmachine2_req_lock;
reg litedram_core_bankmachine2_req_wdata_ready;
reg litedram_core_bankmachine2_req_rdata_valid;
wire litedram_core_bankmachine2_refresh_req;
reg litedram_core_bankmachine2_refresh_gnt;
reg litedram_core_bankmachine2_cmd_valid;
reg litedram_core_bankmachine2_cmd_ready;
reg [6:0] litedram_core_bankmachine2_cmd_payload_a;
wire [2:0] litedram_core_bankmachine2_cmd_payload_ba;
reg litedram_core_bankmachine2_cmd_payload_cas;
reg litedram_core_bankmachine2_cmd_payload_ras;
reg litedram_core_bankmachine2_cmd_payload_we;
reg litedram_core_bankmachine2_cmd_payload_is_cmd;
reg litedram_core_bankmachine2_cmd_payload_is_read;
reg litedram_core_bankmachine2_cmd_payload_is_write;
reg litedram_core_bankmachine2_auto_precharge;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine2_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine2_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_we;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_re;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
wire [12:0] litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
wire [12:0] litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
reg [3:0] litedram_core_bankmachine2_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine2_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine2_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine2_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine2_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine2_cmd_buffer_sink_valid;
wire litedram_core_bankmachine2_cmd_buffer_sink_ready;
wire litedram_core_bankmachine2_cmd_buffer_sink_first;
wire litedram_core_bankmachine2_cmd_buffer_sink_last;
wire litedram_core_bankmachine2_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine2_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine2_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine2_cmd_buffer_source_ready;
reg litedram_core_bankmachine2_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine2_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine2_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine2_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine2_row = 7'd0;
reg litedram_core_bankmachine2_row_opened = 1'd0;
wire litedram_core_bankmachine2_row_hit;
reg litedram_core_bankmachine2_row_open;
reg litedram_core_bankmachine2_row_close;
reg litedram_core_bankmachine2_row_col_n_addr_sel;
wire litedram_core_bankmachine2_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine2_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine2_twtpcon_count = 3'd0;
wire litedram_core_bankmachine2_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine2_trccon_ready = 1'd1;
wire litedram_core_bankmachine2_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine2_trascon_ready = 1'd1;
wire litedram_core_bankmachine3_req_valid;
wire litedram_core_bankmachine3_req_ready;
wire litedram_core_bankmachine3_req_we;
wire [9:0] litedram_core_bankmachine3_req_addr;
wire litedram_core_bankmachine3_req_lock;
reg litedram_core_bankmachine3_req_wdata_ready;
reg litedram_core_bankmachine3_req_rdata_valid;
wire litedram_core_bankmachine3_refresh_req;
reg litedram_core_bankmachine3_refresh_gnt;
reg litedram_core_bankmachine3_cmd_valid;
reg litedram_core_bankmachine3_cmd_ready;
reg [6:0] litedram_core_bankmachine3_cmd_payload_a;
wire [2:0] litedram_core_bankmachine3_cmd_payload_ba;
reg litedram_core_bankmachine3_cmd_payload_cas;
reg litedram_core_bankmachine3_cmd_payload_ras;
reg litedram_core_bankmachine3_cmd_payload_we;
reg litedram_core_bankmachine3_cmd_payload_is_cmd;
reg litedram_core_bankmachine3_cmd_payload_is_read;
reg litedram_core_bankmachine3_cmd_payload_is_write;
reg litedram_core_bankmachine3_auto_precharge;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine3_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine3_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_we;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_re;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
wire [12:0] litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
wire [12:0] litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
reg [3:0] litedram_core_bankmachine3_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine3_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine3_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine3_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine3_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine3_cmd_buffer_sink_valid;
wire litedram_core_bankmachine3_cmd_buffer_sink_ready;
wire litedram_core_bankmachine3_cmd_buffer_sink_first;
wire litedram_core_bankmachine3_cmd_buffer_sink_last;
wire litedram_core_bankmachine3_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine3_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine3_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine3_cmd_buffer_source_ready;
reg litedram_core_bankmachine3_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine3_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine3_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine3_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine3_row = 7'd0;
reg litedram_core_bankmachine3_row_opened = 1'd0;
wire litedram_core_bankmachine3_row_hit;
reg litedram_core_bankmachine3_row_open;
reg litedram_core_bankmachine3_row_close;
reg litedram_core_bankmachine3_row_col_n_addr_sel;
wire litedram_core_bankmachine3_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine3_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine3_twtpcon_count = 3'd0;
wire litedram_core_bankmachine3_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine3_trccon_ready = 1'd1;
wire litedram_core_bankmachine3_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine3_trascon_ready = 1'd1;
wire litedram_core_bankmachine4_req_valid;
wire litedram_core_bankmachine4_req_ready;
wire litedram_core_bankmachine4_req_we;
wire [9:0] litedram_core_bankmachine4_req_addr;
wire litedram_core_bankmachine4_req_lock;
reg litedram_core_bankmachine4_req_wdata_ready;
reg litedram_core_bankmachine4_req_rdata_valid;
wire litedram_core_bankmachine4_refresh_req;
reg litedram_core_bankmachine4_refresh_gnt;
reg litedram_core_bankmachine4_cmd_valid;
reg litedram_core_bankmachine4_cmd_ready;
reg [6:0] litedram_core_bankmachine4_cmd_payload_a;
wire [2:0] litedram_core_bankmachine4_cmd_payload_ba;
reg litedram_core_bankmachine4_cmd_payload_cas;
reg litedram_core_bankmachine4_cmd_payload_ras;
reg litedram_core_bankmachine4_cmd_payload_we;
reg litedram_core_bankmachine4_cmd_payload_is_cmd;
reg litedram_core_bankmachine4_cmd_payload_is_read;
reg litedram_core_bankmachine4_cmd_payload_is_write;
reg litedram_core_bankmachine4_auto_precharge;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine4_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine4_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_we;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_re;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
wire [12:0] litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
wire [12:0] litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
reg [3:0] litedram_core_bankmachine4_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine4_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine4_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine4_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine4_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine4_cmd_buffer_sink_valid;
wire litedram_core_bankmachine4_cmd_buffer_sink_ready;
wire litedram_core_bankmachine4_cmd_buffer_sink_first;
wire litedram_core_bankmachine4_cmd_buffer_sink_last;
wire litedram_core_bankmachine4_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine4_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine4_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine4_cmd_buffer_source_ready;
reg litedram_core_bankmachine4_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine4_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine4_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine4_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine4_row = 7'd0;
reg litedram_core_bankmachine4_row_opened = 1'd0;
wire litedram_core_bankmachine4_row_hit;
reg litedram_core_bankmachine4_row_open;
reg litedram_core_bankmachine4_row_close;
reg litedram_core_bankmachine4_row_col_n_addr_sel;
wire litedram_core_bankmachine4_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine4_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine4_twtpcon_count = 3'd0;
wire litedram_core_bankmachine4_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine4_trccon_ready = 1'd1;
wire litedram_core_bankmachine4_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine4_trascon_ready = 1'd1;
wire litedram_core_bankmachine5_req_valid;
wire litedram_core_bankmachine5_req_ready;
wire litedram_core_bankmachine5_req_we;
wire [9:0] litedram_core_bankmachine5_req_addr;
wire litedram_core_bankmachine5_req_lock;
reg litedram_core_bankmachine5_req_wdata_ready;
reg litedram_core_bankmachine5_req_rdata_valid;
wire litedram_core_bankmachine5_refresh_req;
reg litedram_core_bankmachine5_refresh_gnt;
reg litedram_core_bankmachine5_cmd_valid;
reg litedram_core_bankmachine5_cmd_ready;
reg [6:0] litedram_core_bankmachine5_cmd_payload_a;
wire [2:0] litedram_core_bankmachine5_cmd_payload_ba;
reg litedram_core_bankmachine5_cmd_payload_cas;
reg litedram_core_bankmachine5_cmd_payload_ras;
reg litedram_core_bankmachine5_cmd_payload_we;
reg litedram_core_bankmachine5_cmd_payload_is_cmd;
reg litedram_core_bankmachine5_cmd_payload_is_read;
reg litedram_core_bankmachine5_cmd_payload_is_write;
reg litedram_core_bankmachine5_auto_precharge;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine5_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine5_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_we;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_re;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
wire [12:0] litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
wire [12:0] litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
reg [3:0] litedram_core_bankmachine5_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine5_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine5_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine5_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine5_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine5_cmd_buffer_sink_valid;
wire litedram_core_bankmachine5_cmd_buffer_sink_ready;
wire litedram_core_bankmachine5_cmd_buffer_sink_first;
wire litedram_core_bankmachine5_cmd_buffer_sink_last;
wire litedram_core_bankmachine5_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine5_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine5_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine5_cmd_buffer_source_ready;
reg litedram_core_bankmachine5_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine5_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine5_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine5_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine5_row = 7'd0;
reg litedram_core_bankmachine5_row_opened = 1'd0;
wire litedram_core_bankmachine5_row_hit;
reg litedram_core_bankmachine5_row_open;
reg litedram_core_bankmachine5_row_close;
reg litedram_core_bankmachine5_row_col_n_addr_sel;
wire litedram_core_bankmachine5_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine5_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine5_twtpcon_count = 3'd0;
wire litedram_core_bankmachine5_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine5_trccon_ready = 1'd1;
wire litedram_core_bankmachine5_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine5_trascon_ready = 1'd1;
wire litedram_core_bankmachine6_req_valid;
wire litedram_core_bankmachine6_req_ready;
wire litedram_core_bankmachine6_req_we;
wire [9:0] litedram_core_bankmachine6_req_addr;
wire litedram_core_bankmachine6_req_lock;
reg litedram_core_bankmachine6_req_wdata_ready;
reg litedram_core_bankmachine6_req_rdata_valid;
wire litedram_core_bankmachine6_refresh_req;
reg litedram_core_bankmachine6_refresh_gnt;
reg litedram_core_bankmachine6_cmd_valid;
reg litedram_core_bankmachine6_cmd_ready;
reg [6:0] litedram_core_bankmachine6_cmd_payload_a;
wire [2:0] litedram_core_bankmachine6_cmd_payload_ba;
reg litedram_core_bankmachine6_cmd_payload_cas;
reg litedram_core_bankmachine6_cmd_payload_ras;
reg litedram_core_bankmachine6_cmd_payload_we;
reg litedram_core_bankmachine6_cmd_payload_is_cmd;
reg litedram_core_bankmachine6_cmd_payload_is_read;
reg litedram_core_bankmachine6_cmd_payload_is_write;
reg litedram_core_bankmachine6_auto_precharge;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine6_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine6_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_we;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_re;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
wire [12:0] litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
wire [12:0] litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
reg [3:0] litedram_core_bankmachine6_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine6_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine6_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine6_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine6_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine6_cmd_buffer_sink_valid;
wire litedram_core_bankmachine6_cmd_buffer_sink_ready;
wire litedram_core_bankmachine6_cmd_buffer_sink_first;
wire litedram_core_bankmachine6_cmd_buffer_sink_last;
wire litedram_core_bankmachine6_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine6_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine6_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine6_cmd_buffer_source_ready;
reg litedram_core_bankmachine6_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine6_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine6_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine6_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine6_row = 7'd0;
reg litedram_core_bankmachine6_row_opened = 1'd0;
wire litedram_core_bankmachine6_row_hit;
reg litedram_core_bankmachine6_row_open;
reg litedram_core_bankmachine6_row_close;
reg litedram_core_bankmachine6_row_col_n_addr_sel;
wire litedram_core_bankmachine6_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine6_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine6_twtpcon_count = 3'd0;
wire litedram_core_bankmachine6_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine6_trccon_ready = 1'd1;
wire litedram_core_bankmachine6_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine6_trascon_ready = 1'd1;
wire litedram_core_bankmachine7_req_valid;
wire litedram_core_bankmachine7_req_ready;
wire litedram_core_bankmachine7_req_we;
wire [9:0] litedram_core_bankmachine7_req_addr;
wire litedram_core_bankmachine7_req_lock;
reg litedram_core_bankmachine7_req_wdata_ready;
reg litedram_core_bankmachine7_req_rdata_valid;
wire litedram_core_bankmachine7_refresh_req;
reg litedram_core_bankmachine7_refresh_gnt;
reg litedram_core_bankmachine7_cmd_valid;
reg litedram_core_bankmachine7_cmd_ready;
reg [6:0] litedram_core_bankmachine7_cmd_payload_a;
wire [2:0] litedram_core_bankmachine7_cmd_payload_ba;
reg litedram_core_bankmachine7_cmd_payload_cas;
reg litedram_core_bankmachine7_cmd_payload_ras;
reg litedram_core_bankmachine7_cmd_payload_we;
reg litedram_core_bankmachine7_cmd_payload_is_cmd;
reg litedram_core_bankmachine7_cmd_payload_is_read;
reg litedram_core_bankmachine7_cmd_payload_is_write;
reg litedram_core_bankmachine7_auto_precharge;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_sink_valid;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_sink_ready;
reg litedram_core_bankmachine7_cmd_buffer_lookahead_sink_first = 1'd0;
reg litedram_core_bankmachine7_cmd_buffer_lookahead_sink_last = 1'd0;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
wire [9:0] litedram_core_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_source_valid;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_source_ready;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_source_first;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_source_last;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_source_payload_we;
wire [9:0] litedram_core_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_we;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_re;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
wire [12:0] litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
wire [12:0] litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
reg [3:0] litedram_core_bankmachine7_cmd_buffer_lookahead_level = 4'd0;
reg litedram_core_bankmachine7_cmd_buffer_lookahead_replace = 1'd0;
reg [2:0] litedram_core_bankmachine7_cmd_buffer_lookahead_produce = 3'd0;
reg [2:0] litedram_core_bankmachine7_cmd_buffer_lookahead_consume = 3'd0;
reg [2:0] litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_adr;
wire [12:0] litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_dat_r;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_we;
wire [12:0] litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_do_read;
wire [2:0] litedram_core_bankmachine7_cmd_buffer_lookahead_rdport_adr;
wire [12:0] litedram_core_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we;
wire [9:0] litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_first;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_last;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
wire [9:0] litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
wire litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
wire litedram_core_bankmachine7_cmd_buffer_sink_valid;
wire litedram_core_bankmachine7_cmd_buffer_sink_ready;
wire litedram_core_bankmachine7_cmd_buffer_sink_first;
wire litedram_core_bankmachine7_cmd_buffer_sink_last;
wire litedram_core_bankmachine7_cmd_buffer_sink_payload_we;
wire [9:0] litedram_core_bankmachine7_cmd_buffer_sink_payload_addr;
reg litedram_core_bankmachine7_cmd_buffer_source_valid = 1'd0;
wire litedram_core_bankmachine7_cmd_buffer_source_ready;
reg litedram_core_bankmachine7_cmd_buffer_source_first = 1'd0;
reg litedram_core_bankmachine7_cmd_buffer_source_last = 1'd0;
reg litedram_core_bankmachine7_cmd_buffer_source_payload_we = 1'd0;
reg [9:0] litedram_core_bankmachine7_cmd_buffer_source_payload_addr = 10'd0;
reg [6:0] litedram_core_bankmachine7_row = 7'd0;
reg litedram_core_bankmachine7_row_opened = 1'd0;
wire litedram_core_bankmachine7_row_hit;
reg litedram_core_bankmachine7_row_open;
reg litedram_core_bankmachine7_row_close;
reg litedram_core_bankmachine7_row_col_n_addr_sel;
wire litedram_core_bankmachine7_twtpcon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine7_twtpcon_ready = 1'd0;
reg [2:0] litedram_core_bankmachine7_twtpcon_count = 3'd0;
wire litedram_core_bankmachine7_trccon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine7_trccon_ready = 1'd1;
wire litedram_core_bankmachine7_trascon_valid;
(* no_retiming = "true" *) reg litedram_core_bankmachine7_trascon_ready = 1'd1;
wire litedram_core_ras_allowed;
wire litedram_core_cas_allowed;
wire [2:0] litedram_core_rdcmdphase;
wire [2:0] litedram_core_wrcmdphase;
reg litedram_core_choose_cmd_want_reads = 1'd0;
reg litedram_core_choose_cmd_want_writes = 1'd0;
reg litedram_core_choose_cmd_want_cmds = 1'd0;
reg litedram_core_choose_cmd_want_activates;
wire litedram_core_choose_cmd_cmd_valid;
reg litedram_core_choose_cmd_cmd_ready;
wire [6:0] litedram_core_choose_cmd_cmd_payload_a;
wire [2:0] litedram_core_choose_cmd_cmd_payload_ba;
reg litedram_core_choose_cmd_cmd_payload_cas;
reg litedram_core_choose_cmd_cmd_payload_ras;
reg litedram_core_choose_cmd_cmd_payload_we;
wire litedram_core_choose_cmd_cmd_payload_is_cmd;
wire litedram_core_choose_cmd_cmd_payload_is_read;
wire litedram_core_choose_cmd_cmd_payload_is_write;
reg [7:0] litedram_core_choose_cmd_valids;
wire [7:0] litedram_core_choose_cmd_request;
reg [2:0] litedram_core_choose_cmd_grant = 3'd0;
wire litedram_core_choose_cmd_ce;
reg litedram_core_choose_req_want_reads;
reg litedram_core_choose_req_want_writes;
reg litedram_core_choose_req_want_cmds = 1'd0;
reg litedram_core_choose_req_want_activates = 1'd0;
wire litedram_core_choose_req_cmd_valid;
reg litedram_core_choose_req_cmd_ready;
wire [6:0] litedram_core_choose_req_cmd_payload_a;
wire [2:0] litedram_core_choose_req_cmd_payload_ba;
reg litedram_core_choose_req_cmd_payload_cas;
reg litedram_core_choose_req_cmd_payload_ras;
reg litedram_core_choose_req_cmd_payload_we;
wire litedram_core_choose_req_cmd_payload_is_cmd;
wire litedram_core_choose_req_cmd_payload_is_read;
wire litedram_core_choose_req_cmd_payload_is_write;
reg [7:0] litedram_core_choose_req_valids;
wire [7:0] litedram_core_choose_req_request;
reg [2:0] litedram_core_choose_req_grant = 3'd0;
wire litedram_core_choose_req_ce;
reg [6:0] litedram_core_nop_a = 7'd0;
reg [2:0] litedram_core_nop_ba = 3'd0;
reg [1:0] litedram_core_steerer_sel0;
reg [1:0] litedram_core_steerer_sel1;
reg [1:0] litedram_core_steerer_sel2;
reg [1:0] litedram_core_steerer_sel3;
reg [1:0] litedram_core_steerer_sel4;
reg [1:0] litedram_core_steerer_sel5;
reg [1:0] litedram_core_steerer_sel6;
reg [1:0] litedram_core_steerer_sel7;
reg litedram_core_steerer0 = 1'd1;
reg litedram_core_steerer1 = 1'd1;
reg litedram_core_steerer2 = 1'd1;
reg litedram_core_steerer3 = 1'd1;
reg litedram_core_steerer4 = 1'd1;
reg litedram_core_steerer5 = 1'd1;
reg litedram_core_steerer6 = 1'd1;
reg litedram_core_steerer7 = 1'd1;
reg litedram_core_steerer8 = 1'd1;
reg litedram_core_steerer9 = 1'd1;
reg litedram_core_steerer10 = 1'd1;
reg litedram_core_steerer11 = 1'd1;
reg litedram_core_steerer12 = 1'd1;
reg litedram_core_steerer13 = 1'd1;
reg litedram_core_steerer14 = 1'd1;
reg litedram_core_steerer15 = 1'd1;
wire litedram_core_trrdcon_valid;
(* no_retiming = "true" *) reg litedram_core_trrdcon_ready = 1'd0;
reg litedram_core_trrdcon_count = 1'd0;
wire litedram_core_tfawcon_valid;
(* no_retiming = "true" *) reg litedram_core_tfawcon_ready = 1'd1;
wire litedram_core_tfawcon_count;
reg [1:0] litedram_core_tfawcon_window = 2'd0;
wire litedram_core_tccdcon_valid;
(* no_retiming = "true" *) reg litedram_core_tccdcon_ready = 1'd0;
reg litedram_core_tccdcon_count = 1'd0;
wire litedram_core_twtrcon_valid;
(* no_retiming = "true" *) reg litedram_core_twtrcon_ready = 1'd0;
reg [2:0] litedram_core_twtrcon_count = 3'd0;
wire litedram_core_read_available;
wire litedram_core_write_available;
reg litedram_core_en0;
wire litedram_core_max_time0;
reg [4:0] litedram_core_time0 = 5'd0;
reg litedram_core_en1;
wire litedram_core_max_time1;
reg [3:0] litedram_core_time1 = 4'd0;
wire litedram_core_go_to_refresh;
reg [1:0] refresher_state = 2'd0;
reg [1:0] refresher_next_state;
reg [2:0] bankmachine0_state = 3'd0;
reg [2:0] bankmachine0_next_state;
reg [2:0] bankmachine1_state = 3'd0;
reg [2:0] bankmachine1_next_state;
reg [2:0] bankmachine2_state = 3'd0;
reg [2:0] bankmachine2_next_state;
reg [2:0] bankmachine3_state = 3'd0;
reg [2:0] bankmachine3_next_state;
reg [2:0] bankmachine4_state = 3'd0;
reg [2:0] bankmachine4_next_state;
reg [2:0] bankmachine5_state = 3'd0;
reg [2:0] bankmachine5_next_state;
reg [2:0] bankmachine6_state = 3'd0;
reg [2:0] bankmachine6_next_state;
reg [2:0] bankmachine7_state = 3'd0;
reg [2:0] bankmachine7_next_state;
reg [3:0] multiplexer_state = 4'd0;
reg [3:0] multiplexer_next_state;
reg rhs_array_muxed0;
reg [6:0] rhs_array_muxed1;
reg [2:0] rhs_array_muxed2;
reg rhs_array_muxed3;
reg rhs_array_muxed4;
reg rhs_array_muxed5;
reg t_array_muxed0;
reg t_array_muxed1;
reg t_array_muxed2;
reg rhs_array_muxed6;
reg [6:0] rhs_array_muxed7;
reg [2:0] rhs_array_muxed8;
reg rhs_array_muxed9;
reg rhs_array_muxed10;
reg rhs_array_muxed11;
reg t_array_muxed3;
reg t_array_muxed4;
reg t_array_muxed5;
reg [2:0] array_muxed0;
reg [6:0] array_muxed1;
reg array_muxed2;
reg array_muxed3;
reg array_muxed4;
reg array_muxed5;
reg array_muxed6;
reg [2:0] array_muxed7;
reg [6:0] array_muxed8;
reg array_muxed9;
reg array_muxed10;
reg array_muxed11;
reg array_muxed12;
reg array_muxed13;
reg [2:0] array_muxed14;
reg [6:0] array_muxed15;
reg array_muxed16;
reg array_muxed17;
reg array_muxed18;
reg array_muxed19;
reg array_muxed20;
reg [2:0] array_muxed21;
reg [6:0] array_muxed22;
reg array_muxed23;
reg array_muxed24;
reg array_muxed25;
reg array_muxed26;
reg array_muxed27;
reg [2:0] array_muxed28;
reg [6:0] array_muxed29;
reg array_muxed30;
reg array_muxed31;
reg array_muxed32;
reg array_muxed33;
reg array_muxed34;
reg [2:0] array_muxed35;
reg [6:0] array_muxed36;
reg array_muxed37;
reg array_muxed38;
reg array_muxed39;
reg array_muxed40;
reg array_muxed41;
reg [2:0] array_muxed42;
reg [6:0] array_muxed43;
reg array_muxed44;
reg array_muxed45;
reg array_muxed46;
reg array_muxed47;
reg array_muxed48;
reg [2:0] array_muxed49;
reg [6:0] array_muxed50;
reg array_muxed51;
reg array_muxed52;
reg array_muxed53;
reg array_muxed54;
reg array_muxed55;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign phy_dfi_p0_address = litedram_core_master_p0_address;
assign phy_dfi_p0_bank = litedram_core_master_p0_bank;
assign phy_dfi_p0_cas_n = litedram_core_master_p0_cas_n;
assign phy_dfi_p0_cs_n = litedram_core_master_p0_cs_n;
assign phy_dfi_p0_ras_n = litedram_core_master_p0_ras_n;
assign phy_dfi_p0_we_n = litedram_core_master_p0_we_n;
assign phy_dfi_p0_cke = litedram_core_master_p0_cke;
assign phy_dfi_p0_odt = litedram_core_master_p0_odt;
assign phy_dfi_p0_reset_n = litedram_core_master_p0_reset_n;
assign phy_dfi_p0_act_n = litedram_core_master_p0_act_n;
assign phy_dfi_p0_wrdata = litedram_core_master_p0_wrdata;
assign phy_dfi_p0_wrdata_en = litedram_core_master_p0_wrdata_en;
assign phy_dfi_p0_wrdata_mask = litedram_core_master_p0_wrdata_mask;
assign phy_dfi_p0_rddata_en = litedram_core_master_p0_rddata_en;
assign litedram_core_master_p0_rddata = phy_dfi_p0_rddata;
assign litedram_core_master_p0_rddata_valid = phy_dfi_p0_rddata_valid;
assign phy_dfi_p1_address = litedram_core_master_p1_address;
assign phy_dfi_p1_bank = litedram_core_master_p1_bank;
assign phy_dfi_p1_cas_n = litedram_core_master_p1_cas_n;
assign phy_dfi_p1_cs_n = litedram_core_master_p1_cs_n;
assign phy_dfi_p1_ras_n = litedram_core_master_p1_ras_n;
assign phy_dfi_p1_we_n = litedram_core_master_p1_we_n;
assign phy_dfi_p1_cke = litedram_core_master_p1_cke;
assign phy_dfi_p1_odt = litedram_core_master_p1_odt;
assign phy_dfi_p1_reset_n = litedram_core_master_p1_reset_n;
assign phy_dfi_p1_act_n = litedram_core_master_p1_act_n;
assign phy_dfi_p1_wrdata = litedram_core_master_p1_wrdata;
assign phy_dfi_p1_wrdata_en = litedram_core_master_p1_wrdata_en;
assign phy_dfi_p1_wrdata_mask = litedram_core_master_p1_wrdata_mask;
assign phy_dfi_p1_rddata_en = litedram_core_master_p1_rddata_en;
assign litedram_core_master_p1_rddata = phy_dfi_p1_rddata;
assign litedram_core_master_p1_rddata_valid = phy_dfi_p1_rddata_valid;
assign phy_dfi_p2_address = litedram_core_master_p2_address;
assign phy_dfi_p2_bank = litedram_core_master_p2_bank;
assign phy_dfi_p2_cas_n = litedram_core_master_p2_cas_n;
assign phy_dfi_p2_cs_n = litedram_core_master_p2_cs_n;
assign phy_dfi_p2_ras_n = litedram_core_master_p2_ras_n;
assign phy_dfi_p2_we_n = litedram_core_master_p2_we_n;
assign phy_dfi_p2_cke = litedram_core_master_p2_cke;
assign phy_dfi_p2_odt = litedram_core_master_p2_odt;
assign phy_dfi_p2_reset_n = litedram_core_master_p2_reset_n;
assign phy_dfi_p2_act_n = litedram_core_master_p2_act_n;
assign phy_dfi_p2_wrdata = litedram_core_master_p2_wrdata;
assign phy_dfi_p2_wrdata_en = litedram_core_master_p2_wrdata_en;
assign phy_dfi_p2_wrdata_mask = litedram_core_master_p2_wrdata_mask;
assign phy_dfi_p2_rddata_en = litedram_core_master_p2_rddata_en;
assign litedram_core_master_p2_rddata = phy_dfi_p2_rddata;
assign litedram_core_master_p2_rddata_valid = phy_dfi_p2_rddata_valid;
assign phy_dfi_p3_address = litedram_core_master_p3_address;
assign phy_dfi_p3_bank = litedram_core_master_p3_bank;
assign phy_dfi_p3_cas_n = litedram_core_master_p3_cas_n;
assign phy_dfi_p3_cs_n = litedram_core_master_p3_cs_n;
assign phy_dfi_p3_ras_n = litedram_core_master_p3_ras_n;
assign phy_dfi_p3_we_n = litedram_core_master_p3_we_n;
assign phy_dfi_p3_cke = litedram_core_master_p3_cke;
assign phy_dfi_p3_odt = litedram_core_master_p3_odt;
assign phy_dfi_p3_reset_n = litedram_core_master_p3_reset_n;
assign phy_dfi_p3_act_n = litedram_core_master_p3_act_n;
assign phy_dfi_p3_wrdata = litedram_core_master_p3_wrdata;
assign phy_dfi_p3_wrdata_en = litedram_core_master_p3_wrdata_en;
assign phy_dfi_p3_wrdata_mask = litedram_core_master_p3_wrdata_mask;
assign phy_dfi_p3_rddata_en = litedram_core_master_p3_rddata_en;
assign litedram_core_master_p3_rddata = phy_dfi_p3_rddata;
assign litedram_core_master_p3_rddata_valid = phy_dfi_p3_rddata_valid;
assign phy_dfi_p4_address = litedram_core_master_p4_address;
assign phy_dfi_p4_bank = litedram_core_master_p4_bank;
assign phy_dfi_p4_cas_n = litedram_core_master_p4_cas_n;
assign phy_dfi_p4_cs_n = litedram_core_master_p4_cs_n;
assign phy_dfi_p4_ras_n = litedram_core_master_p4_ras_n;
assign phy_dfi_p4_we_n = litedram_core_master_p4_we_n;
assign phy_dfi_p4_cke = litedram_core_master_p4_cke;
assign phy_dfi_p4_odt = litedram_core_master_p4_odt;
assign phy_dfi_p4_reset_n = litedram_core_master_p4_reset_n;
assign phy_dfi_p4_act_n = litedram_core_master_p4_act_n;
assign phy_dfi_p4_wrdata = litedram_core_master_p4_wrdata;
assign phy_dfi_p4_wrdata_en = litedram_core_master_p4_wrdata_en;
assign phy_dfi_p4_wrdata_mask = litedram_core_master_p4_wrdata_mask;
assign phy_dfi_p4_rddata_en = litedram_core_master_p4_rddata_en;
assign litedram_core_master_p4_rddata = phy_dfi_p4_rddata;
assign litedram_core_master_p4_rddata_valid = phy_dfi_p4_rddata_valid;
assign phy_dfi_p5_address = litedram_core_master_p5_address;
assign phy_dfi_p5_bank = litedram_core_master_p5_bank;
assign phy_dfi_p5_cas_n = litedram_core_master_p5_cas_n;
assign phy_dfi_p5_cs_n = litedram_core_master_p5_cs_n;
assign phy_dfi_p5_ras_n = litedram_core_master_p5_ras_n;
assign phy_dfi_p5_we_n = litedram_core_master_p5_we_n;
assign phy_dfi_p5_cke = litedram_core_master_p5_cke;
assign phy_dfi_p5_odt = litedram_core_master_p5_odt;
assign phy_dfi_p5_reset_n = litedram_core_master_p5_reset_n;
assign phy_dfi_p5_act_n = litedram_core_master_p5_act_n;
assign phy_dfi_p5_wrdata = litedram_core_master_p5_wrdata;
assign phy_dfi_p5_wrdata_en = litedram_core_master_p5_wrdata_en;
assign phy_dfi_p5_wrdata_mask = litedram_core_master_p5_wrdata_mask;
assign phy_dfi_p5_rddata_en = litedram_core_master_p5_rddata_en;
assign litedram_core_master_p5_rddata = phy_dfi_p5_rddata;
assign litedram_core_master_p5_rddata_valid = phy_dfi_p5_rddata_valid;
assign phy_dfi_p6_address = litedram_core_master_p6_address;
assign phy_dfi_p6_bank = litedram_core_master_p6_bank;
assign phy_dfi_p6_cas_n = litedram_core_master_p6_cas_n;
assign phy_dfi_p6_cs_n = litedram_core_master_p6_cs_n;
assign phy_dfi_p6_ras_n = litedram_core_master_p6_ras_n;
assign phy_dfi_p6_we_n = litedram_core_master_p6_we_n;
assign phy_dfi_p6_cke = litedram_core_master_p6_cke;
assign phy_dfi_p6_odt = litedram_core_master_p6_odt;
assign phy_dfi_p6_reset_n = litedram_core_master_p6_reset_n;
assign phy_dfi_p6_act_n = litedram_core_master_p6_act_n;
assign phy_dfi_p6_wrdata = litedram_core_master_p6_wrdata;
assign phy_dfi_p6_wrdata_en = litedram_core_master_p6_wrdata_en;
assign phy_dfi_p6_wrdata_mask = litedram_core_master_p6_wrdata_mask;
assign phy_dfi_p6_rddata_en = litedram_core_master_p6_rddata_en;
assign litedram_core_master_p6_rddata = phy_dfi_p6_rddata;
assign litedram_core_master_p6_rddata_valid = phy_dfi_p6_rddata_valid;
assign phy_dfi_p7_address = litedram_core_master_p7_address;
assign phy_dfi_p7_bank = litedram_core_master_p7_bank;
assign phy_dfi_p7_cas_n = litedram_core_master_p7_cas_n;
assign phy_dfi_p7_cs_n = litedram_core_master_p7_cs_n;
assign phy_dfi_p7_ras_n = litedram_core_master_p7_ras_n;
assign phy_dfi_p7_we_n = litedram_core_master_p7_we_n;
assign phy_dfi_p7_cke = litedram_core_master_p7_cke;
assign phy_dfi_p7_odt = litedram_core_master_p7_odt;
assign phy_dfi_p7_reset_n = litedram_core_master_p7_reset_n;
assign phy_dfi_p7_act_n = litedram_core_master_p7_act_n;
assign phy_dfi_p7_wrdata = litedram_core_master_p7_wrdata;
assign phy_dfi_p7_wrdata_en = litedram_core_master_p7_wrdata_en;
assign phy_dfi_p7_wrdata_mask = litedram_core_master_p7_wrdata_mask;
assign phy_dfi_p7_rddata_en = litedram_core_master_p7_rddata_en;
assign litedram_core_master_p7_rddata = phy_dfi_p7_rddata;
assign litedram_core_master_p7_rddata_valid = phy_dfi_p7_rddata_valid;
assign litedram_core_slave_p0_address = litedram_core_dfi_p0_address;
assign litedram_core_slave_p0_bank = litedram_core_dfi_p0_bank;
assign litedram_core_slave_p0_cas_n = litedram_core_dfi_p0_cas_n;
assign litedram_core_slave_p0_cs_n = litedram_core_dfi_p0_cs_n;
assign litedram_core_slave_p0_ras_n = litedram_core_dfi_p0_ras_n;
assign litedram_core_slave_p0_we_n = litedram_core_dfi_p0_we_n;
assign litedram_core_slave_p0_cke = litedram_core_dfi_p0_cke;
assign litedram_core_slave_p0_odt = litedram_core_dfi_p0_odt;
assign litedram_core_slave_p0_reset_n = litedram_core_dfi_p0_reset_n;
assign litedram_core_slave_p0_act_n = litedram_core_dfi_p0_act_n;
assign litedram_core_slave_p0_wrdata = litedram_core_dfi_p0_wrdata;
assign litedram_core_slave_p0_wrdata_en = litedram_core_dfi_p0_wrdata_en;
assign litedram_core_slave_p0_wrdata_mask = litedram_core_dfi_p0_wrdata_mask;
assign litedram_core_slave_p0_rddata_en = litedram_core_dfi_p0_rddata_en;
assign litedram_core_dfi_p0_rddata = litedram_core_slave_p0_rddata;
assign litedram_core_dfi_p0_rddata_valid = litedram_core_slave_p0_rddata_valid;
assign litedram_core_slave_p1_address = litedram_core_dfi_p1_address;
assign litedram_core_slave_p1_bank = litedram_core_dfi_p1_bank;
assign litedram_core_slave_p1_cas_n = litedram_core_dfi_p1_cas_n;
assign litedram_core_slave_p1_cs_n = litedram_core_dfi_p1_cs_n;
assign litedram_core_slave_p1_ras_n = litedram_core_dfi_p1_ras_n;
assign litedram_core_slave_p1_we_n = litedram_core_dfi_p1_we_n;
assign litedram_core_slave_p1_cke = litedram_core_dfi_p1_cke;
assign litedram_core_slave_p1_odt = litedram_core_dfi_p1_odt;
assign litedram_core_slave_p1_reset_n = litedram_core_dfi_p1_reset_n;
assign litedram_core_slave_p1_act_n = litedram_core_dfi_p1_act_n;
assign litedram_core_slave_p1_wrdata = litedram_core_dfi_p1_wrdata;
assign litedram_core_slave_p1_wrdata_en = litedram_core_dfi_p1_wrdata_en;
assign litedram_core_slave_p1_wrdata_mask = litedram_core_dfi_p1_wrdata_mask;
assign litedram_core_slave_p1_rddata_en = litedram_core_dfi_p1_rddata_en;
assign litedram_core_dfi_p1_rddata = litedram_core_slave_p1_rddata;
assign litedram_core_dfi_p1_rddata_valid = litedram_core_slave_p1_rddata_valid;
assign litedram_core_slave_p2_address = litedram_core_dfi_p2_address;
assign litedram_core_slave_p2_bank = litedram_core_dfi_p2_bank;
assign litedram_core_slave_p2_cas_n = litedram_core_dfi_p2_cas_n;
assign litedram_core_slave_p2_cs_n = litedram_core_dfi_p2_cs_n;
assign litedram_core_slave_p2_ras_n = litedram_core_dfi_p2_ras_n;
assign litedram_core_slave_p2_we_n = litedram_core_dfi_p2_we_n;
assign litedram_core_slave_p2_cke = litedram_core_dfi_p2_cke;
assign litedram_core_slave_p2_odt = litedram_core_dfi_p2_odt;
assign litedram_core_slave_p2_reset_n = litedram_core_dfi_p2_reset_n;
assign litedram_core_slave_p2_act_n = litedram_core_dfi_p2_act_n;
assign litedram_core_slave_p2_wrdata = litedram_core_dfi_p2_wrdata;
assign litedram_core_slave_p2_wrdata_en = litedram_core_dfi_p2_wrdata_en;
assign litedram_core_slave_p2_wrdata_mask = litedram_core_dfi_p2_wrdata_mask;
assign litedram_core_slave_p2_rddata_en = litedram_core_dfi_p2_rddata_en;
assign litedram_core_dfi_p2_rddata = litedram_core_slave_p2_rddata;
assign litedram_core_dfi_p2_rddata_valid = litedram_core_slave_p2_rddata_valid;
assign litedram_core_slave_p3_address = litedram_core_dfi_p3_address;
assign litedram_core_slave_p3_bank = litedram_core_dfi_p3_bank;
assign litedram_core_slave_p3_cas_n = litedram_core_dfi_p3_cas_n;
assign litedram_core_slave_p3_cs_n = litedram_core_dfi_p3_cs_n;
assign litedram_core_slave_p3_ras_n = litedram_core_dfi_p3_ras_n;
assign litedram_core_slave_p3_we_n = litedram_core_dfi_p3_we_n;
assign litedram_core_slave_p3_cke = litedram_core_dfi_p3_cke;
assign litedram_core_slave_p3_odt = litedram_core_dfi_p3_odt;
assign litedram_core_slave_p3_reset_n = litedram_core_dfi_p3_reset_n;
assign litedram_core_slave_p3_act_n = litedram_core_dfi_p3_act_n;
assign litedram_core_slave_p3_wrdata = litedram_core_dfi_p3_wrdata;
assign litedram_core_slave_p3_wrdata_en = litedram_core_dfi_p3_wrdata_en;
assign litedram_core_slave_p3_wrdata_mask = litedram_core_dfi_p3_wrdata_mask;
assign litedram_core_slave_p3_rddata_en = litedram_core_dfi_p3_rddata_en;
assign litedram_core_dfi_p3_rddata = litedram_core_slave_p3_rddata;
assign litedram_core_dfi_p3_rddata_valid = litedram_core_slave_p3_rddata_valid;
assign litedram_core_slave_p4_address = litedram_core_dfi_p4_address;
assign litedram_core_slave_p4_bank = litedram_core_dfi_p4_bank;
assign litedram_core_slave_p4_cas_n = litedram_core_dfi_p4_cas_n;
assign litedram_core_slave_p4_cs_n = litedram_core_dfi_p4_cs_n;
assign litedram_core_slave_p4_ras_n = litedram_core_dfi_p4_ras_n;
assign litedram_core_slave_p4_we_n = litedram_core_dfi_p4_we_n;
assign litedram_core_slave_p4_cke = litedram_core_dfi_p4_cke;
assign litedram_core_slave_p4_odt = litedram_core_dfi_p4_odt;
assign litedram_core_slave_p4_reset_n = litedram_core_dfi_p4_reset_n;
assign litedram_core_slave_p4_act_n = litedram_core_dfi_p4_act_n;
assign litedram_core_slave_p4_wrdata = litedram_core_dfi_p4_wrdata;
assign litedram_core_slave_p4_wrdata_en = litedram_core_dfi_p4_wrdata_en;
assign litedram_core_slave_p4_wrdata_mask = litedram_core_dfi_p4_wrdata_mask;
assign litedram_core_slave_p4_rddata_en = litedram_core_dfi_p4_rddata_en;
assign litedram_core_dfi_p4_rddata = litedram_core_slave_p4_rddata;
assign litedram_core_dfi_p4_rddata_valid = litedram_core_slave_p4_rddata_valid;
assign litedram_core_slave_p5_address = litedram_core_dfi_p5_address;
assign litedram_core_slave_p5_bank = litedram_core_dfi_p5_bank;
assign litedram_core_slave_p5_cas_n = litedram_core_dfi_p5_cas_n;
assign litedram_core_slave_p5_cs_n = litedram_core_dfi_p5_cs_n;
assign litedram_core_slave_p5_ras_n = litedram_core_dfi_p5_ras_n;
assign litedram_core_slave_p5_we_n = litedram_core_dfi_p5_we_n;
assign litedram_core_slave_p5_cke = litedram_core_dfi_p5_cke;
assign litedram_core_slave_p5_odt = litedram_core_dfi_p5_odt;
assign litedram_core_slave_p5_reset_n = litedram_core_dfi_p5_reset_n;
assign litedram_core_slave_p5_act_n = litedram_core_dfi_p5_act_n;
assign litedram_core_slave_p5_wrdata = litedram_core_dfi_p5_wrdata;
assign litedram_core_slave_p5_wrdata_en = litedram_core_dfi_p5_wrdata_en;
assign litedram_core_slave_p5_wrdata_mask = litedram_core_dfi_p5_wrdata_mask;
assign litedram_core_slave_p5_rddata_en = litedram_core_dfi_p5_rddata_en;
assign litedram_core_dfi_p5_rddata = litedram_core_slave_p5_rddata;
assign litedram_core_dfi_p5_rddata_valid = litedram_core_slave_p5_rddata_valid;
assign litedram_core_slave_p6_address = litedram_core_dfi_p6_address;
assign litedram_core_slave_p6_bank = litedram_core_dfi_p6_bank;
assign litedram_core_slave_p6_cas_n = litedram_core_dfi_p6_cas_n;
assign litedram_core_slave_p6_cs_n = litedram_core_dfi_p6_cs_n;
assign litedram_core_slave_p6_ras_n = litedram_core_dfi_p6_ras_n;
assign litedram_core_slave_p6_we_n = litedram_core_dfi_p6_we_n;
assign litedram_core_slave_p6_cke = litedram_core_dfi_p6_cke;
assign litedram_core_slave_p6_odt = litedram_core_dfi_p6_odt;
assign litedram_core_slave_p6_reset_n = litedram_core_dfi_p6_reset_n;
assign litedram_core_slave_p6_act_n = litedram_core_dfi_p6_act_n;
assign litedram_core_slave_p6_wrdata = litedram_core_dfi_p6_wrdata;
assign litedram_core_slave_p6_wrdata_en = litedram_core_dfi_p6_wrdata_en;
assign litedram_core_slave_p6_wrdata_mask = litedram_core_dfi_p6_wrdata_mask;
assign litedram_core_slave_p6_rddata_en = litedram_core_dfi_p6_rddata_en;
assign litedram_core_dfi_p6_rddata = litedram_core_slave_p6_rddata;
assign litedram_core_dfi_p6_rddata_valid = litedram_core_slave_p6_rddata_valid;
assign litedram_core_slave_p7_address = litedram_core_dfi_p7_address;
assign litedram_core_slave_p7_bank = litedram_core_dfi_p7_bank;
assign litedram_core_slave_p7_cas_n = litedram_core_dfi_p7_cas_n;
assign litedram_core_slave_p7_cs_n = litedram_core_dfi_p7_cs_n;
assign litedram_core_slave_p7_ras_n = litedram_core_dfi_p7_ras_n;
assign litedram_core_slave_p7_we_n = litedram_core_dfi_p7_we_n;
assign litedram_core_slave_p7_cke = litedram_core_dfi_p7_cke;
assign litedram_core_slave_p7_odt = litedram_core_dfi_p7_odt;
assign litedram_core_slave_p7_reset_n = litedram_core_dfi_p7_reset_n;
assign litedram_core_slave_p7_act_n = litedram_core_dfi_p7_act_n;
assign litedram_core_slave_p7_wrdata = litedram_core_dfi_p7_wrdata;
assign litedram_core_slave_p7_wrdata_en = litedram_core_dfi_p7_wrdata_en;
assign litedram_core_slave_p7_wrdata_mask = litedram_core_dfi_p7_wrdata_mask;
assign litedram_core_slave_p7_rddata_en = litedram_core_dfi_p7_rddata_en;
assign litedram_core_dfi_p7_rddata = litedram_core_slave_p7_rddata;
assign litedram_core_dfi_p7_rddata_valid = litedram_core_slave_p7_rddata_valid;

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	litedram_core_slave_p0_rddata <= 32'd0;
	litedram_core_slave_p0_rddata_valid <= 1'd0;
	litedram_core_slave_p1_rddata <= 32'd0;
	litedram_core_slave_p1_rddata_valid <= 1'd0;
	litedram_core_slave_p2_rddata <= 32'd0;
	litedram_core_slave_p2_rddata_valid <= 1'd0;
	litedram_core_slave_p3_rddata <= 32'd0;
	litedram_core_slave_p3_rddata_valid <= 1'd0;
	litedram_core_slave_p4_rddata <= 32'd0;
	litedram_core_slave_p4_rddata_valid <= 1'd0;
	litedram_core_slave_p5_rddata <= 32'd0;
	litedram_core_slave_p5_rddata_valid <= 1'd0;
	litedram_core_slave_p6_rddata <= 32'd0;
	litedram_core_slave_p6_rddata_valid <= 1'd0;
	litedram_core_slave_p7_rddata <= 32'd0;
	litedram_core_slave_p7_rddata_valid <= 1'd0;
	litedram_core_master_p0_address <= 17'd0;
	litedram_core_master_p0_bank <= 6'd0;
	litedram_core_master_p0_cas_n <= 1'd1;
	litedram_core_master_p0_cs_n <= 1'd1;
	litedram_core_master_p0_ras_n <= 1'd1;
	litedram_core_master_p0_we_n <= 1'd1;
	litedram_core_master_p0_cke <= 1'd0;
	litedram_core_master_p0_odt <= 1'd0;
	litedram_core_master_p0_reset_n <= 1'd0;
	litedram_core_master_p0_act_n <= 1'd1;
	litedram_core_master_p0_wrdata <= 32'd0;
	litedram_core_master_p0_wrdata_en <= 1'd0;
	litedram_core_master_p0_wrdata_mask <= 4'd0;
	litedram_core_master_p0_rddata_en <= 1'd0;
	litedram_core_master_p1_address <= 17'd0;
	litedram_core_master_p1_bank <= 6'd0;
	litedram_core_master_p1_cas_n <= 1'd1;
	litedram_core_master_p1_cs_n <= 1'd1;
	litedram_core_master_p1_ras_n <= 1'd1;
	litedram_core_master_p1_we_n <= 1'd1;
	litedram_core_master_p1_cke <= 1'd0;
	litedram_core_master_p1_odt <= 1'd0;
	litedram_core_master_p1_reset_n <= 1'd0;
	litedram_core_master_p1_act_n <= 1'd1;
	litedram_core_master_p1_wrdata <= 32'd0;
	litedram_core_master_p1_wrdata_en <= 1'd0;
	litedram_core_master_p1_wrdata_mask <= 4'd0;
	litedram_core_master_p1_rddata_en <= 1'd0;
	litedram_core_master_p2_address <= 17'd0;
	litedram_core_master_p2_bank <= 6'd0;
	litedram_core_master_p2_cas_n <= 1'd1;
	litedram_core_master_p2_cs_n <= 1'd1;
	litedram_core_master_p2_ras_n <= 1'd1;
	litedram_core_master_p2_we_n <= 1'd1;
	litedram_core_master_p2_cke <= 1'd0;
	litedram_core_master_p2_odt <= 1'd0;
	litedram_core_master_p2_reset_n <= 1'd0;
	litedram_core_master_p2_act_n <= 1'd1;
	litedram_core_master_p2_wrdata <= 32'd0;
	litedram_core_master_p2_wrdata_en <= 1'd0;
	litedram_core_master_p2_wrdata_mask <= 4'd0;
	litedram_core_master_p2_rddata_en <= 1'd0;
	litedram_core_master_p3_address <= 17'd0;
	litedram_core_master_p3_bank <= 6'd0;
	litedram_core_master_p3_cas_n <= 1'd1;
	litedram_core_master_p3_cs_n <= 1'd1;
	litedram_core_master_p3_ras_n <= 1'd1;
	litedram_core_master_p3_we_n <= 1'd1;
	litedram_core_master_p3_cke <= 1'd0;
	litedram_core_master_p3_odt <= 1'd0;
	litedram_core_master_p3_reset_n <= 1'd0;
	litedram_core_master_p3_act_n <= 1'd1;
	litedram_core_master_p3_wrdata <= 32'd0;
	litedram_core_master_p3_wrdata_en <= 1'd0;
	litedram_core_master_p3_wrdata_mask <= 4'd0;
	litedram_core_master_p3_rddata_en <= 1'd0;
	litedram_core_master_p4_address <= 17'd0;
	litedram_core_master_p4_bank <= 6'd0;
	litedram_core_master_p4_cas_n <= 1'd1;
	litedram_core_master_p4_cs_n <= 1'd1;
	litedram_core_master_p4_ras_n <= 1'd1;
	litedram_core_master_p4_we_n <= 1'd1;
	litedram_core_master_p4_cke <= 1'd0;
	litedram_core_master_p4_odt <= 1'd0;
	litedram_core_master_p4_reset_n <= 1'd0;
	litedram_core_master_p4_act_n <= 1'd1;
	litedram_core_master_p4_wrdata <= 32'd0;
	litedram_core_master_p4_wrdata_en <= 1'd0;
	litedram_core_master_p4_wrdata_mask <= 4'd0;
	litedram_core_master_p4_rddata_en <= 1'd0;
	litedram_core_master_p5_address <= 17'd0;
	litedram_core_master_p5_bank <= 6'd0;
	litedram_core_master_p5_cas_n <= 1'd1;
	litedram_core_master_p5_cs_n <= 1'd1;
	litedram_core_master_p5_ras_n <= 1'd1;
	litedram_core_master_p5_we_n <= 1'd1;
	litedram_core_master_p5_cke <= 1'd0;
	litedram_core_master_p5_odt <= 1'd0;
	litedram_core_master_p5_reset_n <= 1'd0;
	litedram_core_master_p5_act_n <= 1'd1;
	litedram_core_master_p5_wrdata <= 32'd0;
	litedram_core_master_p5_wrdata_en <= 1'd0;
	litedram_core_master_p5_wrdata_mask <= 4'd0;
	litedram_core_master_p5_rddata_en <= 1'd0;
	litedram_core_master_p6_address <= 17'd0;
	litedram_core_master_p6_bank <= 6'd0;
	litedram_core_master_p6_cas_n <= 1'd1;
	litedram_core_master_p6_cs_n <= 1'd1;
	litedram_core_master_p6_ras_n <= 1'd1;
	litedram_core_master_p6_we_n <= 1'd1;
	litedram_core_master_p6_cke <= 1'd0;
	litedram_core_master_p6_odt <= 1'd0;
	litedram_core_master_p6_reset_n <= 1'd0;
	litedram_core_master_p6_act_n <= 1'd1;
	litedram_core_master_p6_wrdata <= 32'd0;
	litedram_core_master_p6_wrdata_en <= 1'd0;
	litedram_core_master_p6_wrdata_mask <= 4'd0;
	litedram_core_master_p6_rddata_en <= 1'd0;
	litedram_core_master_p7_address <= 17'd0;
	litedram_core_master_p7_bank <= 6'd0;
	litedram_core_master_p7_cas_n <= 1'd1;
	litedram_core_master_p7_cs_n <= 1'd1;
	litedram_core_master_p7_ras_n <= 1'd1;
	litedram_core_master_p7_we_n <= 1'd1;
	litedram_core_master_p7_cke <= 1'd0;
	litedram_core_master_p7_odt <= 1'd0;
	litedram_core_master_p7_reset_n <= 1'd0;
	litedram_core_master_p7_act_n <= 1'd1;
	litedram_core_master_p7_wrdata <= 32'd0;
	litedram_core_master_p7_wrdata_en <= 1'd0;
	litedram_core_master_p7_wrdata_mask <= 4'd0;
	litedram_core_master_p7_rddata_en <= 1'd0;
	litedram_core_csr_dfi_p0_rddata <= 32'd0;
	litedram_core_csr_dfi_p0_rddata_valid <= 1'd0;
	litedram_core_csr_dfi_p1_rddata <= 32'd0;
	litedram_core_csr_dfi_p1_rddata_valid <= 1'd0;
	litedram_core_csr_dfi_p2_rddata <= 32'd0;
	litedram_core_csr_dfi_p2_rddata_valid <= 1'd0;
	litedram_core_csr_dfi_p3_rddata <= 32'd0;
	litedram_core_csr_dfi_p3_rddata_valid <= 1'd0;
	litedram_core_csr_dfi_p4_rddata <= 32'd0;
	litedram_core_csr_dfi_p4_rddata_valid <= 1'd0;
	litedram_core_csr_dfi_p5_rddata <= 32'd0;
	litedram_core_csr_dfi_p5_rddata_valid <= 1'd0;
	litedram_core_csr_dfi_p6_rddata <= 32'd0;
	litedram_core_csr_dfi_p6_rddata_valid <= 1'd0;
	litedram_core_csr_dfi_p7_rddata <= 32'd0;
	litedram_core_csr_dfi_p7_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p0_rddata <= 32'd0;
	litedram_core_ext_dfi_p0_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p1_rddata <= 32'd0;
	litedram_core_ext_dfi_p1_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p2_rddata <= 32'd0;
	litedram_core_ext_dfi_p2_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p3_rddata <= 32'd0;
	litedram_core_ext_dfi_p3_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p4_rddata <= 32'd0;
	litedram_core_ext_dfi_p4_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p5_rddata <= 32'd0;
	litedram_core_ext_dfi_p5_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p6_rddata <= 32'd0;
	litedram_core_ext_dfi_p6_rddata_valid <= 1'd0;
	litedram_core_ext_dfi_p7_rddata <= 32'd0;
	litedram_core_ext_dfi_p7_rddata_valid <= 1'd0;
	if (litedram_core_sel) begin
		if (litedram_core_ext_dfi_sel) begin
			litedram_core_master_p0_address <= litedram_core_ext_dfi_p0_address;
			litedram_core_master_p0_bank <= litedram_core_ext_dfi_p0_bank;
			litedram_core_master_p0_cas_n <= litedram_core_ext_dfi_p0_cas_n;
			litedram_core_master_p0_cs_n <= litedram_core_ext_dfi_p0_cs_n;
			litedram_core_master_p0_ras_n <= litedram_core_ext_dfi_p0_ras_n;
			litedram_core_master_p0_we_n <= litedram_core_ext_dfi_p0_we_n;
			litedram_core_master_p0_cke <= litedram_core_ext_dfi_p0_cke;
			litedram_core_master_p0_odt <= litedram_core_ext_dfi_p0_odt;
			litedram_core_master_p0_reset_n <= litedram_core_ext_dfi_p0_reset_n;
			litedram_core_master_p0_act_n <= litedram_core_ext_dfi_p0_act_n;
			litedram_core_master_p0_wrdata <= litedram_core_ext_dfi_p0_wrdata;
			litedram_core_master_p0_wrdata_en <= litedram_core_ext_dfi_p0_wrdata_en;
			litedram_core_master_p0_wrdata_mask <= litedram_core_ext_dfi_p0_wrdata_mask;
			litedram_core_master_p0_rddata_en <= litedram_core_ext_dfi_p0_rddata_en;
			litedram_core_ext_dfi_p0_rddata <= litedram_core_master_p0_rddata;
			litedram_core_ext_dfi_p0_rddata_valid <= litedram_core_master_p0_rddata_valid;
			litedram_core_master_p1_address <= litedram_core_ext_dfi_p1_address;
			litedram_core_master_p1_bank <= litedram_core_ext_dfi_p1_bank;
			litedram_core_master_p1_cas_n <= litedram_core_ext_dfi_p1_cas_n;
			litedram_core_master_p1_cs_n <= litedram_core_ext_dfi_p1_cs_n;
			litedram_core_master_p1_ras_n <= litedram_core_ext_dfi_p1_ras_n;
			litedram_core_master_p1_we_n <= litedram_core_ext_dfi_p1_we_n;
			litedram_core_master_p1_cke <= litedram_core_ext_dfi_p1_cke;
			litedram_core_master_p1_odt <= litedram_core_ext_dfi_p1_odt;
			litedram_core_master_p1_reset_n <= litedram_core_ext_dfi_p1_reset_n;
			litedram_core_master_p1_act_n <= litedram_core_ext_dfi_p1_act_n;
			litedram_core_master_p1_wrdata <= litedram_core_ext_dfi_p1_wrdata;
			litedram_core_master_p1_wrdata_en <= litedram_core_ext_dfi_p1_wrdata_en;
			litedram_core_master_p1_wrdata_mask <= litedram_core_ext_dfi_p1_wrdata_mask;
			litedram_core_master_p1_rddata_en <= litedram_core_ext_dfi_p1_rddata_en;
			litedram_core_ext_dfi_p1_rddata <= litedram_core_master_p1_rddata;
			litedram_core_ext_dfi_p1_rddata_valid <= litedram_core_master_p1_rddata_valid;
			litedram_core_master_p2_address <= litedram_core_ext_dfi_p2_address;
			litedram_core_master_p2_bank <= litedram_core_ext_dfi_p2_bank;
			litedram_core_master_p2_cas_n <= litedram_core_ext_dfi_p2_cas_n;
			litedram_core_master_p2_cs_n <= litedram_core_ext_dfi_p2_cs_n;
			litedram_core_master_p2_ras_n <= litedram_core_ext_dfi_p2_ras_n;
			litedram_core_master_p2_we_n <= litedram_core_ext_dfi_p2_we_n;
			litedram_core_master_p2_cke <= litedram_core_ext_dfi_p2_cke;
			litedram_core_master_p2_odt <= litedram_core_ext_dfi_p2_odt;
			litedram_core_master_p2_reset_n <= litedram_core_ext_dfi_p2_reset_n;
			litedram_core_master_p2_act_n <= litedram_core_ext_dfi_p2_act_n;
			litedram_core_master_p2_wrdata <= litedram_core_ext_dfi_p2_wrdata;
			litedram_core_master_p2_wrdata_en <= litedram_core_ext_dfi_p2_wrdata_en;
			litedram_core_master_p2_wrdata_mask <= litedram_core_ext_dfi_p2_wrdata_mask;
			litedram_core_master_p2_rddata_en <= litedram_core_ext_dfi_p2_rddata_en;
			litedram_core_ext_dfi_p2_rddata <= litedram_core_master_p2_rddata;
			litedram_core_ext_dfi_p2_rddata_valid <= litedram_core_master_p2_rddata_valid;
			litedram_core_master_p3_address <= litedram_core_ext_dfi_p3_address;
			litedram_core_master_p3_bank <= litedram_core_ext_dfi_p3_bank;
			litedram_core_master_p3_cas_n <= litedram_core_ext_dfi_p3_cas_n;
			litedram_core_master_p3_cs_n <= litedram_core_ext_dfi_p3_cs_n;
			litedram_core_master_p3_ras_n <= litedram_core_ext_dfi_p3_ras_n;
			litedram_core_master_p3_we_n <= litedram_core_ext_dfi_p3_we_n;
			litedram_core_master_p3_cke <= litedram_core_ext_dfi_p3_cke;
			litedram_core_master_p3_odt <= litedram_core_ext_dfi_p3_odt;
			litedram_core_master_p3_reset_n <= litedram_core_ext_dfi_p3_reset_n;
			litedram_core_master_p3_act_n <= litedram_core_ext_dfi_p3_act_n;
			litedram_core_master_p3_wrdata <= litedram_core_ext_dfi_p3_wrdata;
			litedram_core_master_p3_wrdata_en <= litedram_core_ext_dfi_p3_wrdata_en;
			litedram_core_master_p3_wrdata_mask <= litedram_core_ext_dfi_p3_wrdata_mask;
			litedram_core_master_p3_rddata_en <= litedram_core_ext_dfi_p3_rddata_en;
			litedram_core_ext_dfi_p3_rddata <= litedram_core_master_p3_rddata;
			litedram_core_ext_dfi_p3_rddata_valid <= litedram_core_master_p3_rddata_valid;
			litedram_core_master_p4_address <= litedram_core_ext_dfi_p4_address;
			litedram_core_master_p4_bank <= litedram_core_ext_dfi_p4_bank;
			litedram_core_master_p4_cas_n <= litedram_core_ext_dfi_p4_cas_n;
			litedram_core_master_p4_cs_n <= litedram_core_ext_dfi_p4_cs_n;
			litedram_core_master_p4_ras_n <= litedram_core_ext_dfi_p4_ras_n;
			litedram_core_master_p4_we_n <= litedram_core_ext_dfi_p4_we_n;
			litedram_core_master_p4_cke <= litedram_core_ext_dfi_p4_cke;
			litedram_core_master_p4_odt <= litedram_core_ext_dfi_p4_odt;
			litedram_core_master_p4_reset_n <= litedram_core_ext_dfi_p4_reset_n;
			litedram_core_master_p4_act_n <= litedram_core_ext_dfi_p4_act_n;
			litedram_core_master_p4_wrdata <= litedram_core_ext_dfi_p4_wrdata;
			litedram_core_master_p4_wrdata_en <= litedram_core_ext_dfi_p4_wrdata_en;
			litedram_core_master_p4_wrdata_mask <= litedram_core_ext_dfi_p4_wrdata_mask;
			litedram_core_master_p4_rddata_en <= litedram_core_ext_dfi_p4_rddata_en;
			litedram_core_ext_dfi_p4_rddata <= litedram_core_master_p4_rddata;
			litedram_core_ext_dfi_p4_rddata_valid <= litedram_core_master_p4_rddata_valid;
			litedram_core_master_p5_address <= litedram_core_ext_dfi_p5_address;
			litedram_core_master_p5_bank <= litedram_core_ext_dfi_p5_bank;
			litedram_core_master_p5_cas_n <= litedram_core_ext_dfi_p5_cas_n;
			litedram_core_master_p5_cs_n <= litedram_core_ext_dfi_p5_cs_n;
			litedram_core_master_p5_ras_n <= litedram_core_ext_dfi_p5_ras_n;
			litedram_core_master_p5_we_n <= litedram_core_ext_dfi_p5_we_n;
			litedram_core_master_p5_cke <= litedram_core_ext_dfi_p5_cke;
			litedram_core_master_p5_odt <= litedram_core_ext_dfi_p5_odt;
			litedram_core_master_p5_reset_n <= litedram_core_ext_dfi_p5_reset_n;
			litedram_core_master_p5_act_n <= litedram_core_ext_dfi_p5_act_n;
			litedram_core_master_p5_wrdata <= litedram_core_ext_dfi_p5_wrdata;
			litedram_core_master_p5_wrdata_en <= litedram_core_ext_dfi_p5_wrdata_en;
			litedram_core_master_p5_wrdata_mask <= litedram_core_ext_dfi_p5_wrdata_mask;
			litedram_core_master_p5_rddata_en <= litedram_core_ext_dfi_p5_rddata_en;
			litedram_core_ext_dfi_p5_rddata <= litedram_core_master_p5_rddata;
			litedram_core_ext_dfi_p5_rddata_valid <= litedram_core_master_p5_rddata_valid;
			litedram_core_master_p6_address <= litedram_core_ext_dfi_p6_address;
			litedram_core_master_p6_bank <= litedram_core_ext_dfi_p6_bank;
			litedram_core_master_p6_cas_n <= litedram_core_ext_dfi_p6_cas_n;
			litedram_core_master_p6_cs_n <= litedram_core_ext_dfi_p6_cs_n;
			litedram_core_master_p6_ras_n <= litedram_core_ext_dfi_p6_ras_n;
			litedram_core_master_p6_we_n <= litedram_core_ext_dfi_p6_we_n;
			litedram_core_master_p6_cke <= litedram_core_ext_dfi_p6_cke;
			litedram_core_master_p6_odt <= litedram_core_ext_dfi_p6_odt;
			litedram_core_master_p6_reset_n <= litedram_core_ext_dfi_p6_reset_n;
			litedram_core_master_p6_act_n <= litedram_core_ext_dfi_p6_act_n;
			litedram_core_master_p6_wrdata <= litedram_core_ext_dfi_p6_wrdata;
			litedram_core_master_p6_wrdata_en <= litedram_core_ext_dfi_p6_wrdata_en;
			litedram_core_master_p6_wrdata_mask <= litedram_core_ext_dfi_p6_wrdata_mask;
			litedram_core_master_p6_rddata_en <= litedram_core_ext_dfi_p6_rddata_en;
			litedram_core_ext_dfi_p6_rddata <= litedram_core_master_p6_rddata;
			litedram_core_ext_dfi_p6_rddata_valid <= litedram_core_master_p6_rddata_valid;
			litedram_core_master_p7_address <= litedram_core_ext_dfi_p7_address;
			litedram_core_master_p7_bank <= litedram_core_ext_dfi_p7_bank;
			litedram_core_master_p7_cas_n <= litedram_core_ext_dfi_p7_cas_n;
			litedram_core_master_p7_cs_n <= litedram_core_ext_dfi_p7_cs_n;
			litedram_core_master_p7_ras_n <= litedram_core_ext_dfi_p7_ras_n;
			litedram_core_master_p7_we_n <= litedram_core_ext_dfi_p7_we_n;
			litedram_core_master_p7_cke <= litedram_core_ext_dfi_p7_cke;
			litedram_core_master_p7_odt <= litedram_core_ext_dfi_p7_odt;
			litedram_core_master_p7_reset_n <= litedram_core_ext_dfi_p7_reset_n;
			litedram_core_master_p7_act_n <= litedram_core_ext_dfi_p7_act_n;
			litedram_core_master_p7_wrdata <= litedram_core_ext_dfi_p7_wrdata;
			litedram_core_master_p7_wrdata_en <= litedram_core_ext_dfi_p7_wrdata_en;
			litedram_core_master_p7_wrdata_mask <= litedram_core_ext_dfi_p7_wrdata_mask;
			litedram_core_master_p7_rddata_en <= litedram_core_ext_dfi_p7_rddata_en;
			litedram_core_ext_dfi_p7_rddata <= litedram_core_master_p7_rddata;
			litedram_core_ext_dfi_p7_rddata_valid <= litedram_core_master_p7_rddata_valid;
		end else begin
			litedram_core_master_p0_address <= litedram_core_slave_p0_address;
			litedram_core_master_p0_bank <= litedram_core_slave_p0_bank;
			litedram_core_master_p0_cas_n <= litedram_core_slave_p0_cas_n;
			litedram_core_master_p0_cs_n <= litedram_core_slave_p0_cs_n;
			litedram_core_master_p0_ras_n <= litedram_core_slave_p0_ras_n;
			litedram_core_master_p0_we_n <= litedram_core_slave_p0_we_n;
			litedram_core_master_p0_cke <= litedram_core_slave_p0_cke;
			litedram_core_master_p0_odt <= litedram_core_slave_p0_odt;
			litedram_core_master_p0_reset_n <= litedram_core_slave_p0_reset_n;
			litedram_core_master_p0_act_n <= litedram_core_slave_p0_act_n;
			litedram_core_master_p0_wrdata <= litedram_core_slave_p0_wrdata;
			litedram_core_master_p0_wrdata_en <= litedram_core_slave_p0_wrdata_en;
			litedram_core_master_p0_wrdata_mask <= litedram_core_slave_p0_wrdata_mask;
			litedram_core_master_p0_rddata_en <= litedram_core_slave_p0_rddata_en;
			litedram_core_slave_p0_rddata <= litedram_core_master_p0_rddata;
			litedram_core_slave_p0_rddata_valid <= litedram_core_master_p0_rddata_valid;
			litedram_core_master_p1_address <= litedram_core_slave_p1_address;
			litedram_core_master_p1_bank <= litedram_core_slave_p1_bank;
			litedram_core_master_p1_cas_n <= litedram_core_slave_p1_cas_n;
			litedram_core_master_p1_cs_n <= litedram_core_slave_p1_cs_n;
			litedram_core_master_p1_ras_n <= litedram_core_slave_p1_ras_n;
			litedram_core_master_p1_we_n <= litedram_core_slave_p1_we_n;
			litedram_core_master_p1_cke <= litedram_core_slave_p1_cke;
			litedram_core_master_p1_odt <= litedram_core_slave_p1_odt;
			litedram_core_master_p1_reset_n <= litedram_core_slave_p1_reset_n;
			litedram_core_master_p1_act_n <= litedram_core_slave_p1_act_n;
			litedram_core_master_p1_wrdata <= litedram_core_slave_p1_wrdata;
			litedram_core_master_p1_wrdata_en <= litedram_core_slave_p1_wrdata_en;
			litedram_core_master_p1_wrdata_mask <= litedram_core_slave_p1_wrdata_mask;
			litedram_core_master_p1_rddata_en <= litedram_core_slave_p1_rddata_en;
			litedram_core_slave_p1_rddata <= litedram_core_master_p1_rddata;
			litedram_core_slave_p1_rddata_valid <= litedram_core_master_p1_rddata_valid;
			litedram_core_master_p2_address <= litedram_core_slave_p2_address;
			litedram_core_master_p2_bank <= litedram_core_slave_p2_bank;
			litedram_core_master_p2_cas_n <= litedram_core_slave_p2_cas_n;
			litedram_core_master_p2_cs_n <= litedram_core_slave_p2_cs_n;
			litedram_core_master_p2_ras_n <= litedram_core_slave_p2_ras_n;
			litedram_core_master_p2_we_n <= litedram_core_slave_p2_we_n;
			litedram_core_master_p2_cke <= litedram_core_slave_p2_cke;
			litedram_core_master_p2_odt <= litedram_core_slave_p2_odt;
			litedram_core_master_p2_reset_n <= litedram_core_slave_p2_reset_n;
			litedram_core_master_p2_act_n <= litedram_core_slave_p2_act_n;
			litedram_core_master_p2_wrdata <= litedram_core_slave_p2_wrdata;
			litedram_core_master_p2_wrdata_en <= litedram_core_slave_p2_wrdata_en;
			litedram_core_master_p2_wrdata_mask <= litedram_core_slave_p2_wrdata_mask;
			litedram_core_master_p2_rddata_en <= litedram_core_slave_p2_rddata_en;
			litedram_core_slave_p2_rddata <= litedram_core_master_p2_rddata;
			litedram_core_slave_p2_rddata_valid <= litedram_core_master_p2_rddata_valid;
			litedram_core_master_p3_address <= litedram_core_slave_p3_address;
			litedram_core_master_p3_bank <= litedram_core_slave_p3_bank;
			litedram_core_master_p3_cas_n <= litedram_core_slave_p3_cas_n;
			litedram_core_master_p3_cs_n <= litedram_core_slave_p3_cs_n;
			litedram_core_master_p3_ras_n <= litedram_core_slave_p3_ras_n;
			litedram_core_master_p3_we_n <= litedram_core_slave_p3_we_n;
			litedram_core_master_p3_cke <= litedram_core_slave_p3_cke;
			litedram_core_master_p3_odt <= litedram_core_slave_p3_odt;
			litedram_core_master_p3_reset_n <= litedram_core_slave_p3_reset_n;
			litedram_core_master_p3_act_n <= litedram_core_slave_p3_act_n;
			litedram_core_master_p3_wrdata <= litedram_core_slave_p3_wrdata;
			litedram_core_master_p3_wrdata_en <= litedram_core_slave_p3_wrdata_en;
			litedram_core_master_p3_wrdata_mask <= litedram_core_slave_p3_wrdata_mask;
			litedram_core_master_p3_rddata_en <= litedram_core_slave_p3_rddata_en;
			litedram_core_slave_p3_rddata <= litedram_core_master_p3_rddata;
			litedram_core_slave_p3_rddata_valid <= litedram_core_master_p3_rddata_valid;
			litedram_core_master_p4_address <= litedram_core_slave_p4_address;
			litedram_core_master_p4_bank <= litedram_core_slave_p4_bank;
			litedram_core_master_p4_cas_n <= litedram_core_slave_p4_cas_n;
			litedram_core_master_p4_cs_n <= litedram_core_slave_p4_cs_n;
			litedram_core_master_p4_ras_n <= litedram_core_slave_p4_ras_n;
			litedram_core_master_p4_we_n <= litedram_core_slave_p4_we_n;
			litedram_core_master_p4_cke <= litedram_core_slave_p4_cke;
			litedram_core_master_p4_odt <= litedram_core_slave_p4_odt;
			litedram_core_master_p4_reset_n <= litedram_core_slave_p4_reset_n;
			litedram_core_master_p4_act_n <= litedram_core_slave_p4_act_n;
			litedram_core_master_p4_wrdata <= litedram_core_slave_p4_wrdata;
			litedram_core_master_p4_wrdata_en <= litedram_core_slave_p4_wrdata_en;
			litedram_core_master_p4_wrdata_mask <= litedram_core_slave_p4_wrdata_mask;
			litedram_core_master_p4_rddata_en <= litedram_core_slave_p4_rddata_en;
			litedram_core_slave_p4_rddata <= litedram_core_master_p4_rddata;
			litedram_core_slave_p4_rddata_valid <= litedram_core_master_p4_rddata_valid;
			litedram_core_master_p5_address <= litedram_core_slave_p5_address;
			litedram_core_master_p5_bank <= litedram_core_slave_p5_bank;
			litedram_core_master_p5_cas_n <= litedram_core_slave_p5_cas_n;
			litedram_core_master_p5_cs_n <= litedram_core_slave_p5_cs_n;
			litedram_core_master_p5_ras_n <= litedram_core_slave_p5_ras_n;
			litedram_core_master_p5_we_n <= litedram_core_slave_p5_we_n;
			litedram_core_master_p5_cke <= litedram_core_slave_p5_cke;
			litedram_core_master_p5_odt <= litedram_core_slave_p5_odt;
			litedram_core_master_p5_reset_n <= litedram_core_slave_p5_reset_n;
			litedram_core_master_p5_act_n <= litedram_core_slave_p5_act_n;
			litedram_core_master_p5_wrdata <= litedram_core_slave_p5_wrdata;
			litedram_core_master_p5_wrdata_en <= litedram_core_slave_p5_wrdata_en;
			litedram_core_master_p5_wrdata_mask <= litedram_core_slave_p5_wrdata_mask;
			litedram_core_master_p5_rddata_en <= litedram_core_slave_p5_rddata_en;
			litedram_core_slave_p5_rddata <= litedram_core_master_p5_rddata;
			litedram_core_slave_p5_rddata_valid <= litedram_core_master_p5_rddata_valid;
			litedram_core_master_p6_address <= litedram_core_slave_p6_address;
			litedram_core_master_p6_bank <= litedram_core_slave_p6_bank;
			litedram_core_master_p6_cas_n <= litedram_core_slave_p6_cas_n;
			litedram_core_master_p6_cs_n <= litedram_core_slave_p6_cs_n;
			litedram_core_master_p6_ras_n <= litedram_core_slave_p6_ras_n;
			litedram_core_master_p6_we_n <= litedram_core_slave_p6_we_n;
			litedram_core_master_p6_cke <= litedram_core_slave_p6_cke;
			litedram_core_master_p6_odt <= litedram_core_slave_p6_odt;
			litedram_core_master_p6_reset_n <= litedram_core_slave_p6_reset_n;
			litedram_core_master_p6_act_n <= litedram_core_slave_p6_act_n;
			litedram_core_master_p6_wrdata <= litedram_core_slave_p6_wrdata;
			litedram_core_master_p6_wrdata_en <= litedram_core_slave_p6_wrdata_en;
			litedram_core_master_p6_wrdata_mask <= litedram_core_slave_p6_wrdata_mask;
			litedram_core_master_p6_rddata_en <= litedram_core_slave_p6_rddata_en;
			litedram_core_slave_p6_rddata <= litedram_core_master_p6_rddata;
			litedram_core_slave_p6_rddata_valid <= litedram_core_master_p6_rddata_valid;
			litedram_core_master_p7_address <= litedram_core_slave_p7_address;
			litedram_core_master_p7_bank <= litedram_core_slave_p7_bank;
			litedram_core_master_p7_cas_n <= litedram_core_slave_p7_cas_n;
			litedram_core_master_p7_cs_n <= litedram_core_slave_p7_cs_n;
			litedram_core_master_p7_ras_n <= litedram_core_slave_p7_ras_n;
			litedram_core_master_p7_we_n <= litedram_core_slave_p7_we_n;
			litedram_core_master_p7_cke <= litedram_core_slave_p7_cke;
			litedram_core_master_p7_odt <= litedram_core_slave_p7_odt;
			litedram_core_master_p7_reset_n <= litedram_core_slave_p7_reset_n;
			litedram_core_master_p7_act_n <= litedram_core_slave_p7_act_n;
			litedram_core_master_p7_wrdata <= litedram_core_slave_p7_wrdata;
			litedram_core_master_p7_wrdata_en <= litedram_core_slave_p7_wrdata_en;
			litedram_core_master_p7_wrdata_mask <= litedram_core_slave_p7_wrdata_mask;
			litedram_core_master_p7_rddata_en <= litedram_core_slave_p7_rddata_en;
			litedram_core_slave_p7_rddata <= litedram_core_master_p7_rddata;
			litedram_core_slave_p7_rddata_valid <= litedram_core_master_p7_rddata_valid;
		end
	end else begin
		litedram_core_master_p0_address <= litedram_core_csr_dfi_p0_address;
		litedram_core_master_p0_bank <= litedram_core_csr_dfi_p0_bank;
		litedram_core_master_p0_cas_n <= litedram_core_csr_dfi_p0_cas_n;
		litedram_core_master_p0_cs_n <= litedram_core_csr_dfi_p0_cs_n;
		litedram_core_master_p0_ras_n <= litedram_core_csr_dfi_p0_ras_n;
		litedram_core_master_p0_we_n <= litedram_core_csr_dfi_p0_we_n;
		litedram_core_master_p0_cke <= litedram_core_csr_dfi_p0_cke;
		litedram_core_master_p0_odt <= litedram_core_csr_dfi_p0_odt;
		litedram_core_master_p0_reset_n <= litedram_core_csr_dfi_p0_reset_n;
		litedram_core_master_p0_act_n <= litedram_core_csr_dfi_p0_act_n;
		litedram_core_master_p0_wrdata <= litedram_core_csr_dfi_p0_wrdata;
		litedram_core_master_p0_wrdata_en <= litedram_core_csr_dfi_p0_wrdata_en;
		litedram_core_master_p0_wrdata_mask <= litedram_core_csr_dfi_p0_wrdata_mask;
		litedram_core_master_p0_rddata_en <= litedram_core_csr_dfi_p0_rddata_en;
		litedram_core_csr_dfi_p0_rddata <= litedram_core_master_p0_rddata;
		litedram_core_csr_dfi_p0_rddata_valid <= litedram_core_master_p0_rddata_valid;
		litedram_core_master_p1_address <= litedram_core_csr_dfi_p1_address;
		litedram_core_master_p1_bank <= litedram_core_csr_dfi_p1_bank;
		litedram_core_master_p1_cas_n <= litedram_core_csr_dfi_p1_cas_n;
		litedram_core_master_p1_cs_n <= litedram_core_csr_dfi_p1_cs_n;
		litedram_core_master_p1_ras_n <= litedram_core_csr_dfi_p1_ras_n;
		litedram_core_master_p1_we_n <= litedram_core_csr_dfi_p1_we_n;
		litedram_core_master_p1_cke <= litedram_core_csr_dfi_p1_cke;
		litedram_core_master_p1_odt <= litedram_core_csr_dfi_p1_odt;
		litedram_core_master_p1_reset_n <= litedram_core_csr_dfi_p1_reset_n;
		litedram_core_master_p1_act_n <= litedram_core_csr_dfi_p1_act_n;
		litedram_core_master_p1_wrdata <= litedram_core_csr_dfi_p1_wrdata;
		litedram_core_master_p1_wrdata_en <= litedram_core_csr_dfi_p1_wrdata_en;
		litedram_core_master_p1_wrdata_mask <= litedram_core_csr_dfi_p1_wrdata_mask;
		litedram_core_master_p1_rddata_en <= litedram_core_csr_dfi_p1_rddata_en;
		litedram_core_csr_dfi_p1_rddata <= litedram_core_master_p1_rddata;
		litedram_core_csr_dfi_p1_rddata_valid <= litedram_core_master_p1_rddata_valid;
		litedram_core_master_p2_address <= litedram_core_csr_dfi_p2_address;
		litedram_core_master_p2_bank <= litedram_core_csr_dfi_p2_bank;
		litedram_core_master_p2_cas_n <= litedram_core_csr_dfi_p2_cas_n;
		litedram_core_master_p2_cs_n <= litedram_core_csr_dfi_p2_cs_n;
		litedram_core_master_p2_ras_n <= litedram_core_csr_dfi_p2_ras_n;
		litedram_core_master_p2_we_n <= litedram_core_csr_dfi_p2_we_n;
		litedram_core_master_p2_cke <= litedram_core_csr_dfi_p2_cke;
		litedram_core_master_p2_odt <= litedram_core_csr_dfi_p2_odt;
		litedram_core_master_p2_reset_n <= litedram_core_csr_dfi_p2_reset_n;
		litedram_core_master_p2_act_n <= litedram_core_csr_dfi_p2_act_n;
		litedram_core_master_p2_wrdata <= litedram_core_csr_dfi_p2_wrdata;
		litedram_core_master_p2_wrdata_en <= litedram_core_csr_dfi_p2_wrdata_en;
		litedram_core_master_p2_wrdata_mask <= litedram_core_csr_dfi_p2_wrdata_mask;
		litedram_core_master_p2_rddata_en <= litedram_core_csr_dfi_p2_rddata_en;
		litedram_core_csr_dfi_p2_rddata <= litedram_core_master_p2_rddata;
		litedram_core_csr_dfi_p2_rddata_valid <= litedram_core_master_p2_rddata_valid;
		litedram_core_master_p3_address <= litedram_core_csr_dfi_p3_address;
		litedram_core_master_p3_bank <= litedram_core_csr_dfi_p3_bank;
		litedram_core_master_p3_cas_n <= litedram_core_csr_dfi_p3_cas_n;
		litedram_core_master_p3_cs_n <= litedram_core_csr_dfi_p3_cs_n;
		litedram_core_master_p3_ras_n <= litedram_core_csr_dfi_p3_ras_n;
		litedram_core_master_p3_we_n <= litedram_core_csr_dfi_p3_we_n;
		litedram_core_master_p3_cke <= litedram_core_csr_dfi_p3_cke;
		litedram_core_master_p3_odt <= litedram_core_csr_dfi_p3_odt;
		litedram_core_master_p3_reset_n <= litedram_core_csr_dfi_p3_reset_n;
		litedram_core_master_p3_act_n <= litedram_core_csr_dfi_p3_act_n;
		litedram_core_master_p3_wrdata <= litedram_core_csr_dfi_p3_wrdata;
		litedram_core_master_p3_wrdata_en <= litedram_core_csr_dfi_p3_wrdata_en;
		litedram_core_master_p3_wrdata_mask <= litedram_core_csr_dfi_p3_wrdata_mask;
		litedram_core_master_p3_rddata_en <= litedram_core_csr_dfi_p3_rddata_en;
		litedram_core_csr_dfi_p3_rddata <= litedram_core_master_p3_rddata;
		litedram_core_csr_dfi_p3_rddata_valid <= litedram_core_master_p3_rddata_valid;
		litedram_core_master_p4_address <= litedram_core_csr_dfi_p4_address;
		litedram_core_master_p4_bank <= litedram_core_csr_dfi_p4_bank;
		litedram_core_master_p4_cas_n <= litedram_core_csr_dfi_p4_cas_n;
		litedram_core_master_p4_cs_n <= litedram_core_csr_dfi_p4_cs_n;
		litedram_core_master_p4_ras_n <= litedram_core_csr_dfi_p4_ras_n;
		litedram_core_master_p4_we_n <= litedram_core_csr_dfi_p4_we_n;
		litedram_core_master_p4_cke <= litedram_core_csr_dfi_p4_cke;
		litedram_core_master_p4_odt <= litedram_core_csr_dfi_p4_odt;
		litedram_core_master_p4_reset_n <= litedram_core_csr_dfi_p4_reset_n;
		litedram_core_master_p4_act_n <= litedram_core_csr_dfi_p4_act_n;
		litedram_core_master_p4_wrdata <= litedram_core_csr_dfi_p4_wrdata;
		litedram_core_master_p4_wrdata_en <= litedram_core_csr_dfi_p4_wrdata_en;
		litedram_core_master_p4_wrdata_mask <= litedram_core_csr_dfi_p4_wrdata_mask;
		litedram_core_master_p4_rddata_en <= litedram_core_csr_dfi_p4_rddata_en;
		litedram_core_csr_dfi_p4_rddata <= litedram_core_master_p4_rddata;
		litedram_core_csr_dfi_p4_rddata_valid <= litedram_core_master_p4_rddata_valid;
		litedram_core_master_p5_address <= litedram_core_csr_dfi_p5_address;
		litedram_core_master_p5_bank <= litedram_core_csr_dfi_p5_bank;
		litedram_core_master_p5_cas_n <= litedram_core_csr_dfi_p5_cas_n;
		litedram_core_master_p5_cs_n <= litedram_core_csr_dfi_p5_cs_n;
		litedram_core_master_p5_ras_n <= litedram_core_csr_dfi_p5_ras_n;
		litedram_core_master_p5_we_n <= litedram_core_csr_dfi_p5_we_n;
		litedram_core_master_p5_cke <= litedram_core_csr_dfi_p5_cke;
		litedram_core_master_p5_odt <= litedram_core_csr_dfi_p5_odt;
		litedram_core_master_p5_reset_n <= litedram_core_csr_dfi_p5_reset_n;
		litedram_core_master_p5_act_n <= litedram_core_csr_dfi_p5_act_n;
		litedram_core_master_p5_wrdata <= litedram_core_csr_dfi_p5_wrdata;
		litedram_core_master_p5_wrdata_en <= litedram_core_csr_dfi_p5_wrdata_en;
		litedram_core_master_p5_wrdata_mask <= litedram_core_csr_dfi_p5_wrdata_mask;
		litedram_core_master_p5_rddata_en <= litedram_core_csr_dfi_p5_rddata_en;
		litedram_core_csr_dfi_p5_rddata <= litedram_core_master_p5_rddata;
		litedram_core_csr_dfi_p5_rddata_valid <= litedram_core_master_p5_rddata_valid;
		litedram_core_master_p6_address <= litedram_core_csr_dfi_p6_address;
		litedram_core_master_p6_bank <= litedram_core_csr_dfi_p6_bank;
		litedram_core_master_p6_cas_n <= litedram_core_csr_dfi_p6_cas_n;
		litedram_core_master_p6_cs_n <= litedram_core_csr_dfi_p6_cs_n;
		litedram_core_master_p6_ras_n <= litedram_core_csr_dfi_p6_ras_n;
		litedram_core_master_p6_we_n <= litedram_core_csr_dfi_p6_we_n;
		litedram_core_master_p6_cke <= litedram_core_csr_dfi_p6_cke;
		litedram_core_master_p6_odt <= litedram_core_csr_dfi_p6_odt;
		litedram_core_master_p6_reset_n <= litedram_core_csr_dfi_p6_reset_n;
		litedram_core_master_p6_act_n <= litedram_core_csr_dfi_p6_act_n;
		litedram_core_master_p6_wrdata <= litedram_core_csr_dfi_p6_wrdata;
		litedram_core_master_p6_wrdata_en <= litedram_core_csr_dfi_p6_wrdata_en;
		litedram_core_master_p6_wrdata_mask <= litedram_core_csr_dfi_p6_wrdata_mask;
		litedram_core_master_p6_rddata_en <= litedram_core_csr_dfi_p6_rddata_en;
		litedram_core_csr_dfi_p6_rddata <= litedram_core_master_p6_rddata;
		litedram_core_csr_dfi_p6_rddata_valid <= litedram_core_master_p6_rddata_valid;
		litedram_core_master_p7_address <= litedram_core_csr_dfi_p7_address;
		litedram_core_master_p7_bank <= litedram_core_csr_dfi_p7_bank;
		litedram_core_master_p7_cas_n <= litedram_core_csr_dfi_p7_cas_n;
		litedram_core_master_p7_cs_n <= litedram_core_csr_dfi_p7_cs_n;
		litedram_core_master_p7_ras_n <= litedram_core_csr_dfi_p7_ras_n;
		litedram_core_master_p7_we_n <= litedram_core_csr_dfi_p7_we_n;
		litedram_core_master_p7_cke <= litedram_core_csr_dfi_p7_cke;
		litedram_core_master_p7_odt <= litedram_core_csr_dfi_p7_odt;
		litedram_core_master_p7_reset_n <= litedram_core_csr_dfi_p7_reset_n;
		litedram_core_master_p7_act_n <= litedram_core_csr_dfi_p7_act_n;
		litedram_core_master_p7_wrdata <= litedram_core_csr_dfi_p7_wrdata;
		litedram_core_master_p7_wrdata_en <= litedram_core_csr_dfi_p7_wrdata_en;
		litedram_core_master_p7_wrdata_mask <= litedram_core_csr_dfi_p7_wrdata_mask;
		litedram_core_master_p7_rddata_en <= litedram_core_csr_dfi_p7_rddata_en;
		litedram_core_csr_dfi_p7_rddata <= litedram_core_master_p7_rddata;
		litedram_core_csr_dfi_p7_rddata_valid <= litedram_core_master_p7_rddata_valid;
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p0_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p1_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p2_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p3_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p4_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p5_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p6_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p7_cke = litedram_core_cke;
assign litedram_core_csr_dfi_p0_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p1_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p2_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p3_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p4_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p5_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p6_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p7_odt = litedram_core_odt;
assign litedram_core_csr_dfi_p0_reset_n = litedram_core_reset_n;
assign litedram_core_csr_dfi_p1_reset_n = litedram_core_reset_n;
assign litedram_core_csr_dfi_p2_reset_n = litedram_core_reset_n;
assign litedram_core_csr_dfi_p3_reset_n = litedram_core_reset_n;
assign litedram_core_csr_dfi_p4_reset_n = litedram_core_reset_n;
assign litedram_core_csr_dfi_p5_reset_n = litedram_core_reset_n;
assign litedram_core_csr_dfi_p6_reset_n = litedram_core_reset_n;
assign litedram_core_csr_dfi_p7_reset_n = litedram_core_reset_n;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p0_cas_n <= 1'd1;
	litedram_core_csr_dfi_p0_cs_n <= 1'd1;
	litedram_core_csr_dfi_p0_ras_n <= 1'd1;
	litedram_core_csr_dfi_p0_we_n <= 1'd1;
	if (litedram_core_phaseinjector0_command_issue_re) begin
		litedram_core_csr_dfi_p0_cs_n <= {1{(~litedram_core_phaseinjector0_cs)}};
		litedram_core_csr_dfi_p0_we_n <= (~litedram_core_phaseinjector0_we);
		litedram_core_csr_dfi_p0_cas_n <= (~litedram_core_phaseinjector0_cas);
		litedram_core_csr_dfi_p0_ras_n <= (~litedram_core_phaseinjector0_ras);
	end else begin
		litedram_core_csr_dfi_p0_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p0_we_n <= 1'd1;
		litedram_core_csr_dfi_p0_cas_n <= 1'd1;
		litedram_core_csr_dfi_p0_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p0_address = litedram_core_phaseinjector0_address_storage;
assign litedram_core_csr_dfi_p0_bank = litedram_core_phaseinjector0_baddress_storage;
assign litedram_core_csr_dfi_p0_wrdata_en = (litedram_core_phaseinjector0_command_issue_re & litedram_core_phaseinjector0_wren);
assign litedram_core_csr_dfi_p0_rddata_en = (litedram_core_phaseinjector0_command_issue_re & litedram_core_phaseinjector0_rden);
assign litedram_core_csr_dfi_p0_wrdata = litedram_core_phaseinjector0_wrdata_storage;
assign litedram_core_csr_dfi_p0_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_2;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p1_cas_n <= 1'd1;
	litedram_core_csr_dfi_p1_cs_n <= 1'd1;
	litedram_core_csr_dfi_p1_ras_n <= 1'd1;
	litedram_core_csr_dfi_p1_we_n <= 1'd1;
	if (litedram_core_phaseinjector1_command_issue_re) begin
		litedram_core_csr_dfi_p1_cs_n <= {1{(~litedram_core_phaseinjector1_cs)}};
		litedram_core_csr_dfi_p1_we_n <= (~litedram_core_phaseinjector1_we);
		litedram_core_csr_dfi_p1_cas_n <= (~litedram_core_phaseinjector1_cas);
		litedram_core_csr_dfi_p1_ras_n <= (~litedram_core_phaseinjector1_ras);
	end else begin
		litedram_core_csr_dfi_p1_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p1_we_n <= 1'd1;
		litedram_core_csr_dfi_p1_cas_n <= 1'd1;
		litedram_core_csr_dfi_p1_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_2 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p1_address = litedram_core_phaseinjector1_address_storage;
assign litedram_core_csr_dfi_p1_bank = litedram_core_phaseinjector1_baddress_storage;
assign litedram_core_csr_dfi_p1_wrdata_en = (litedram_core_phaseinjector1_command_issue_re & litedram_core_phaseinjector1_wren);
assign litedram_core_csr_dfi_p1_rddata_en = (litedram_core_phaseinjector1_command_issue_re & litedram_core_phaseinjector1_rden);
assign litedram_core_csr_dfi_p1_wrdata = litedram_core_phaseinjector1_wrdata_storage;
assign litedram_core_csr_dfi_p1_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_3;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p2_cas_n <= 1'd1;
	litedram_core_csr_dfi_p2_cs_n <= 1'd1;
	litedram_core_csr_dfi_p2_ras_n <= 1'd1;
	litedram_core_csr_dfi_p2_we_n <= 1'd1;
	if (litedram_core_phaseinjector2_command_issue_re) begin
		litedram_core_csr_dfi_p2_cs_n <= {1{(~litedram_core_phaseinjector2_cs)}};
		litedram_core_csr_dfi_p2_we_n <= (~litedram_core_phaseinjector2_we);
		litedram_core_csr_dfi_p2_cas_n <= (~litedram_core_phaseinjector2_cas);
		litedram_core_csr_dfi_p2_ras_n <= (~litedram_core_phaseinjector2_ras);
	end else begin
		litedram_core_csr_dfi_p2_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p2_we_n <= 1'd1;
		litedram_core_csr_dfi_p2_cas_n <= 1'd1;
		litedram_core_csr_dfi_p2_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_3 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p2_address = litedram_core_phaseinjector2_address_storage;
assign litedram_core_csr_dfi_p2_bank = litedram_core_phaseinjector2_baddress_storage;
assign litedram_core_csr_dfi_p2_wrdata_en = (litedram_core_phaseinjector2_command_issue_re & litedram_core_phaseinjector2_wren);
assign litedram_core_csr_dfi_p2_rddata_en = (litedram_core_phaseinjector2_command_issue_re & litedram_core_phaseinjector2_rden);
assign litedram_core_csr_dfi_p2_wrdata = litedram_core_phaseinjector2_wrdata_storage;
assign litedram_core_csr_dfi_p2_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_4;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p3_cas_n <= 1'd1;
	litedram_core_csr_dfi_p3_cs_n <= 1'd1;
	litedram_core_csr_dfi_p3_ras_n <= 1'd1;
	litedram_core_csr_dfi_p3_we_n <= 1'd1;
	if (litedram_core_phaseinjector3_command_issue_re) begin
		litedram_core_csr_dfi_p3_cs_n <= {1{(~litedram_core_phaseinjector3_cs)}};
		litedram_core_csr_dfi_p3_we_n <= (~litedram_core_phaseinjector3_we);
		litedram_core_csr_dfi_p3_cas_n <= (~litedram_core_phaseinjector3_cas);
		litedram_core_csr_dfi_p3_ras_n <= (~litedram_core_phaseinjector3_ras);
	end else begin
		litedram_core_csr_dfi_p3_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p3_we_n <= 1'd1;
		litedram_core_csr_dfi_p3_cas_n <= 1'd1;
		litedram_core_csr_dfi_p3_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_4 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p3_address = litedram_core_phaseinjector3_address_storage;
assign litedram_core_csr_dfi_p3_bank = litedram_core_phaseinjector3_baddress_storage;
assign litedram_core_csr_dfi_p3_wrdata_en = (litedram_core_phaseinjector3_command_issue_re & litedram_core_phaseinjector3_wren);
assign litedram_core_csr_dfi_p3_rddata_en = (litedram_core_phaseinjector3_command_issue_re & litedram_core_phaseinjector3_rden);
assign litedram_core_csr_dfi_p3_wrdata = litedram_core_phaseinjector3_wrdata_storage;
assign litedram_core_csr_dfi_p3_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_5;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p4_cas_n <= 1'd1;
	litedram_core_csr_dfi_p4_cs_n <= 1'd1;
	litedram_core_csr_dfi_p4_ras_n <= 1'd1;
	litedram_core_csr_dfi_p4_we_n <= 1'd1;
	if (litedram_core_phaseinjector4_command_issue_re) begin
		litedram_core_csr_dfi_p4_cs_n <= {1{(~litedram_core_phaseinjector4_cs)}};
		litedram_core_csr_dfi_p4_we_n <= (~litedram_core_phaseinjector4_we);
		litedram_core_csr_dfi_p4_cas_n <= (~litedram_core_phaseinjector4_cas);
		litedram_core_csr_dfi_p4_ras_n <= (~litedram_core_phaseinjector4_ras);
	end else begin
		litedram_core_csr_dfi_p4_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p4_we_n <= 1'd1;
		litedram_core_csr_dfi_p4_cas_n <= 1'd1;
		litedram_core_csr_dfi_p4_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_5 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p4_address = litedram_core_phaseinjector4_address_storage;
assign litedram_core_csr_dfi_p4_bank = litedram_core_phaseinjector4_baddress_storage;
assign litedram_core_csr_dfi_p4_wrdata_en = (litedram_core_phaseinjector4_command_issue_re & litedram_core_phaseinjector4_wren);
assign litedram_core_csr_dfi_p4_rddata_en = (litedram_core_phaseinjector4_command_issue_re & litedram_core_phaseinjector4_rden);
assign litedram_core_csr_dfi_p4_wrdata = litedram_core_phaseinjector4_wrdata_storage;
assign litedram_core_csr_dfi_p4_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_6;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p5_cas_n <= 1'd1;
	litedram_core_csr_dfi_p5_cs_n <= 1'd1;
	litedram_core_csr_dfi_p5_ras_n <= 1'd1;
	litedram_core_csr_dfi_p5_we_n <= 1'd1;
	if (litedram_core_phaseinjector5_command_issue_re) begin
		litedram_core_csr_dfi_p5_cs_n <= {1{(~litedram_core_phaseinjector5_cs)}};
		litedram_core_csr_dfi_p5_we_n <= (~litedram_core_phaseinjector5_we);
		litedram_core_csr_dfi_p5_cas_n <= (~litedram_core_phaseinjector5_cas);
		litedram_core_csr_dfi_p5_ras_n <= (~litedram_core_phaseinjector5_ras);
	end else begin
		litedram_core_csr_dfi_p5_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p5_we_n <= 1'd1;
		litedram_core_csr_dfi_p5_cas_n <= 1'd1;
		litedram_core_csr_dfi_p5_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_6 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p5_address = litedram_core_phaseinjector5_address_storage;
assign litedram_core_csr_dfi_p5_bank = litedram_core_phaseinjector5_baddress_storage;
assign litedram_core_csr_dfi_p5_wrdata_en = (litedram_core_phaseinjector5_command_issue_re & litedram_core_phaseinjector5_wren);
assign litedram_core_csr_dfi_p5_rddata_en = (litedram_core_phaseinjector5_command_issue_re & litedram_core_phaseinjector5_rden);
assign litedram_core_csr_dfi_p5_wrdata = litedram_core_phaseinjector5_wrdata_storage;
assign litedram_core_csr_dfi_p5_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_7;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p6_cas_n <= 1'd1;
	litedram_core_csr_dfi_p6_cs_n <= 1'd1;
	litedram_core_csr_dfi_p6_ras_n <= 1'd1;
	litedram_core_csr_dfi_p6_we_n <= 1'd1;
	if (litedram_core_phaseinjector6_command_issue_re) begin
		litedram_core_csr_dfi_p6_cs_n <= {1{(~litedram_core_phaseinjector6_cs)}};
		litedram_core_csr_dfi_p6_we_n <= (~litedram_core_phaseinjector6_we);
		litedram_core_csr_dfi_p6_cas_n <= (~litedram_core_phaseinjector6_cas);
		litedram_core_csr_dfi_p6_ras_n <= (~litedram_core_phaseinjector6_ras);
	end else begin
		litedram_core_csr_dfi_p6_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p6_we_n <= 1'd1;
		litedram_core_csr_dfi_p6_cas_n <= 1'd1;
		litedram_core_csr_dfi_p6_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_7 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p6_address = litedram_core_phaseinjector6_address_storage;
assign litedram_core_csr_dfi_p6_bank = litedram_core_phaseinjector6_baddress_storage;
assign litedram_core_csr_dfi_p6_wrdata_en = (litedram_core_phaseinjector6_command_issue_re & litedram_core_phaseinjector6_wren);
assign litedram_core_csr_dfi_p6_rddata_en = (litedram_core_phaseinjector6_command_issue_re & litedram_core_phaseinjector6_rden);
assign litedram_core_csr_dfi_p6_wrdata = litedram_core_phaseinjector6_wrdata_storage;
assign litedram_core_csr_dfi_p6_wrdata_mask = 1'd0;

// synthesis translate_off
reg dummy_d_8;
// synthesis translate_on
always @(*) begin
	litedram_core_csr_dfi_p7_cas_n <= 1'd1;
	litedram_core_csr_dfi_p7_cs_n <= 1'd1;
	litedram_core_csr_dfi_p7_ras_n <= 1'd1;
	litedram_core_csr_dfi_p7_we_n <= 1'd1;
	if (litedram_core_phaseinjector7_command_issue_re) begin
		litedram_core_csr_dfi_p7_cs_n <= {1{(~litedram_core_phaseinjector7_cs)}};
		litedram_core_csr_dfi_p7_we_n <= (~litedram_core_phaseinjector7_we);
		litedram_core_csr_dfi_p7_cas_n <= (~litedram_core_phaseinjector7_cas);
		litedram_core_csr_dfi_p7_ras_n <= (~litedram_core_phaseinjector7_ras);
	end else begin
		litedram_core_csr_dfi_p7_cs_n <= {1{1'd1}};
		litedram_core_csr_dfi_p7_we_n <= 1'd1;
		litedram_core_csr_dfi_p7_cas_n <= 1'd1;
		litedram_core_csr_dfi_p7_ras_n <= 1'd1;
	end
// synthesis translate_off
	dummy_d_8 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_csr_dfi_p7_address = litedram_core_phaseinjector7_address_storage;
assign litedram_core_csr_dfi_p7_bank = litedram_core_phaseinjector7_baddress_storage;
assign litedram_core_csr_dfi_p7_wrdata_en = (litedram_core_phaseinjector7_command_issue_re & litedram_core_phaseinjector7_wren);
assign litedram_core_csr_dfi_p7_rddata_en = (litedram_core_phaseinjector7_command_issue_re & litedram_core_phaseinjector7_rden);
assign litedram_core_csr_dfi_p7_wrdata = litedram_core_phaseinjector7_wrdata_storage;
assign litedram_core_csr_dfi_p7_wrdata_mask = 1'd0;
assign litedram_core_bankmachine0_req_valid = litedram_core_interface_bank0_valid;
assign litedram_core_interface_bank0_ready = litedram_core_bankmachine0_req_ready;
assign litedram_core_bankmachine0_req_we = litedram_core_interface_bank0_we;
assign litedram_core_bankmachine0_req_addr = litedram_core_interface_bank0_addr;
assign litedram_core_interface_bank0_lock = litedram_core_bankmachine0_req_lock;
assign litedram_core_interface_bank0_wdata_ready = litedram_core_bankmachine0_req_wdata_ready;
assign litedram_core_interface_bank0_rdata_valid = litedram_core_bankmachine0_req_rdata_valid;
assign litedram_core_bankmachine1_req_valid = litedram_core_interface_bank1_valid;
assign litedram_core_interface_bank1_ready = litedram_core_bankmachine1_req_ready;
assign litedram_core_bankmachine1_req_we = litedram_core_interface_bank1_we;
assign litedram_core_bankmachine1_req_addr = litedram_core_interface_bank1_addr;
assign litedram_core_interface_bank1_lock = litedram_core_bankmachine1_req_lock;
assign litedram_core_interface_bank1_wdata_ready = litedram_core_bankmachine1_req_wdata_ready;
assign litedram_core_interface_bank1_rdata_valid = litedram_core_bankmachine1_req_rdata_valid;
assign litedram_core_bankmachine2_req_valid = litedram_core_interface_bank2_valid;
assign litedram_core_interface_bank2_ready = litedram_core_bankmachine2_req_ready;
assign litedram_core_bankmachine2_req_we = litedram_core_interface_bank2_we;
assign litedram_core_bankmachine2_req_addr = litedram_core_interface_bank2_addr;
assign litedram_core_interface_bank2_lock = litedram_core_bankmachine2_req_lock;
assign litedram_core_interface_bank2_wdata_ready = litedram_core_bankmachine2_req_wdata_ready;
assign litedram_core_interface_bank2_rdata_valid = litedram_core_bankmachine2_req_rdata_valid;
assign litedram_core_bankmachine3_req_valid = litedram_core_interface_bank3_valid;
assign litedram_core_interface_bank3_ready = litedram_core_bankmachine3_req_ready;
assign litedram_core_bankmachine3_req_we = litedram_core_interface_bank3_we;
assign litedram_core_bankmachine3_req_addr = litedram_core_interface_bank3_addr;
assign litedram_core_interface_bank3_lock = litedram_core_bankmachine3_req_lock;
assign litedram_core_interface_bank3_wdata_ready = litedram_core_bankmachine3_req_wdata_ready;
assign litedram_core_interface_bank3_rdata_valid = litedram_core_bankmachine3_req_rdata_valid;
assign litedram_core_bankmachine4_req_valid = litedram_core_interface_bank4_valid;
assign litedram_core_interface_bank4_ready = litedram_core_bankmachine4_req_ready;
assign litedram_core_bankmachine4_req_we = litedram_core_interface_bank4_we;
assign litedram_core_bankmachine4_req_addr = litedram_core_interface_bank4_addr;
assign litedram_core_interface_bank4_lock = litedram_core_bankmachine4_req_lock;
assign litedram_core_interface_bank4_wdata_ready = litedram_core_bankmachine4_req_wdata_ready;
assign litedram_core_interface_bank4_rdata_valid = litedram_core_bankmachine4_req_rdata_valid;
assign litedram_core_bankmachine5_req_valid = litedram_core_interface_bank5_valid;
assign litedram_core_interface_bank5_ready = litedram_core_bankmachine5_req_ready;
assign litedram_core_bankmachine5_req_we = litedram_core_interface_bank5_we;
assign litedram_core_bankmachine5_req_addr = litedram_core_interface_bank5_addr;
assign litedram_core_interface_bank5_lock = litedram_core_bankmachine5_req_lock;
assign litedram_core_interface_bank5_wdata_ready = litedram_core_bankmachine5_req_wdata_ready;
assign litedram_core_interface_bank5_rdata_valid = litedram_core_bankmachine5_req_rdata_valid;
assign litedram_core_bankmachine6_req_valid = litedram_core_interface_bank6_valid;
assign litedram_core_interface_bank6_ready = litedram_core_bankmachine6_req_ready;
assign litedram_core_bankmachine6_req_we = litedram_core_interface_bank6_we;
assign litedram_core_bankmachine6_req_addr = litedram_core_interface_bank6_addr;
assign litedram_core_interface_bank6_lock = litedram_core_bankmachine6_req_lock;
assign litedram_core_interface_bank6_wdata_ready = litedram_core_bankmachine6_req_wdata_ready;
assign litedram_core_interface_bank6_rdata_valid = litedram_core_bankmachine6_req_rdata_valid;
assign litedram_core_bankmachine7_req_valid = litedram_core_interface_bank7_valid;
assign litedram_core_interface_bank7_ready = litedram_core_bankmachine7_req_ready;
assign litedram_core_bankmachine7_req_we = litedram_core_interface_bank7_we;
assign litedram_core_bankmachine7_req_addr = litedram_core_interface_bank7_addr;
assign litedram_core_interface_bank7_lock = litedram_core_bankmachine7_req_lock;
assign litedram_core_interface_bank7_wdata_ready = litedram_core_bankmachine7_req_wdata_ready;
assign litedram_core_interface_bank7_rdata_valid = litedram_core_bankmachine7_req_rdata_valid;
assign litedram_core_timer_wait = (~litedram_core_timer_done0);
assign litedram_core_postponer_req_i = litedram_core_timer_done0;
assign litedram_core_wants_refresh = litedram_core_postponer_req_o;
assign litedram_core_wants_zqcs = litedram_core_zqcs_timer_done0;
assign litedram_core_zqcs_timer_wait = (~litedram_core_zqcs_executer_done);
assign litedram_core_timer_done1 = (litedram_core_timer_count1 == 1'd0);
assign litedram_core_timer_done0 = litedram_core_timer_done1;
assign litedram_core_timer_count0 = litedram_core_timer_count1;
assign litedram_core_sequencer_start1 = (litedram_core_sequencer_start0 | (litedram_core_sequencer_count != 1'd0));
assign litedram_core_sequencer_done0 = (litedram_core_sequencer_done1 & (litedram_core_sequencer_count == 1'd0));
assign litedram_core_zqcs_timer_done1 = (litedram_core_zqcs_timer_count1 == 1'd0);
assign litedram_core_zqcs_timer_done0 = litedram_core_zqcs_timer_done1;
assign litedram_core_zqcs_timer_count0 = litedram_core_zqcs_timer_count1;

// synthesis translate_off
reg dummy_d_9;
// synthesis translate_on
always @(*) begin
	litedram_core_cmd_valid <= 1'd0;
	litedram_core_cmd_last <= 1'd0;
	litedram_core_sequencer_start0 <= 1'd0;
	litedram_core_zqcs_executer_start <= 1'd0;
	refresher_next_state <= 2'd0;
	refresher_next_state <= refresher_state;
	case (refresher_state)
		1'd1: begin
			litedram_core_cmd_valid <= 1'd1;
			if (litedram_core_cmd_ready) begin
				litedram_core_sequencer_start0 <= 1'd1;
				refresher_next_state <= 2'd2;
			end
		end
		2'd2: begin
			litedram_core_cmd_valid <= 1'd1;
			if (litedram_core_sequencer_done0) begin
				if (litedram_core_wants_zqcs) begin
					litedram_core_zqcs_executer_start <= 1'd1;
					refresher_next_state <= 2'd3;
				end else begin
					litedram_core_cmd_valid <= 1'd0;
					litedram_core_cmd_last <= 1'd1;
					refresher_next_state <= 1'd0;
				end
			end
		end
		2'd3: begin
			litedram_core_cmd_valid <= 1'd1;
			if (litedram_core_zqcs_executer_done) begin
				litedram_core_cmd_valid <= 1'd0;
				litedram_core_cmd_last <= 1'd1;
				refresher_next_state <= 1'd0;
			end
		end
		default: begin
			if (1'd1) begin
				if (litedram_core_wants_refresh) begin
					refresher_next_state <= 1'd1;
				end
			end
		end
	endcase
// synthesis translate_off
	dummy_d_9 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine0_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine0_req_valid;
assign litedram_core_bankmachine0_req_ready = litedram_core_bankmachine0_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine0_req_we;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine0_req_addr;
assign litedram_core_bankmachine0_cmd_buffer_sink_valid = litedram_core_bankmachine0_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine0_cmd_buffer_sink_ready;
assign litedram_core_bankmachine0_cmd_buffer_sink_first = litedram_core_bankmachine0_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine0_cmd_buffer_sink_last = litedram_core_bankmachine0_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine0_cmd_buffer_sink_payload_we = litedram_core_bankmachine0_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine0_cmd_buffer_sink_payload_addr = litedram_core_bankmachine0_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine0_cmd_buffer_source_ready = (litedram_core_bankmachine0_req_wdata_ready | litedram_core_bankmachine0_req_rdata_valid);
assign litedram_core_bankmachine0_req_lock = (litedram_core_bankmachine0_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine0_cmd_buffer_source_valid);
assign litedram_core_bankmachine0_row_hit = (litedram_core_bankmachine0_row == litedram_core_bankmachine0_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine0_cmd_payload_ba = 1'd0;

// synthesis translate_off
reg dummy_d_10;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine0_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine0_row_col_n_addr_sel) begin
		litedram_core_bankmachine0_cmd_payload_a <= litedram_core_bankmachine0_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine0_cmd_payload_a <= ((litedram_core_bankmachine0_auto_precharge <<< 4'd10) | {litedram_core_bankmachine0_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_10 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine0_twtpcon_valid = ((litedram_core_bankmachine0_cmd_valid & litedram_core_bankmachine0_cmd_ready) & litedram_core_bankmachine0_cmd_payload_is_write);
assign litedram_core_bankmachine0_trccon_valid = ((litedram_core_bankmachine0_cmd_valid & litedram_core_bankmachine0_cmd_ready) & litedram_core_bankmachine0_row_open);
assign litedram_core_bankmachine0_trascon_valid = ((litedram_core_bankmachine0_cmd_valid & litedram_core_bankmachine0_cmd_ready) & litedram_core_bankmachine0_row_open);

// synthesis translate_off
reg dummy_d_11;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine0_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine0_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine0_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine0_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine0_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine0_auto_precharge <= (litedram_core_bankmachine0_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_11 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_din = {litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_we = litedram_core_bankmachine0_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine0_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine0_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine0_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine0_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_source_first = litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_source_last = litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine0_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_re = litedram_core_bankmachine0_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_12;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine0_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine0_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine0_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_12 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_din;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & (litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable | litedram_core_bankmachine0_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine0_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable & litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_re);
assign litedram_core_bankmachine0_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine0_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_dout = litedram_core_bankmachine0_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable = (litedram_core_bankmachine0_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_readable = (litedram_core_bankmachine0_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine0_cmd_buffer_sink_ready = ((~litedram_core_bankmachine0_cmd_buffer_source_valid) | litedram_core_bankmachine0_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_13;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine0_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine0_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine0_refresh_gnt <= 1'd0;
	litedram_core_bankmachine0_cmd_valid <= 1'd0;
	litedram_core_bankmachine0_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine0_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine0_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine0_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine0_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine0_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine0_row_open <= 1'd0;
	litedram_core_bankmachine0_row_close <= 1'd0;
	litedram_core_bankmachine0_row_col_n_addr_sel <= 1'd0;
	bankmachine0_next_state <= 3'd0;
	bankmachine0_next_state <= bankmachine0_state;
	case (bankmachine0_state)
		1'd1: begin
			if ((litedram_core_bankmachine0_twtpcon_ready & litedram_core_bankmachine0_trascon_ready)) begin
				litedram_core_bankmachine0_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd5;
				end
				litedram_core_bankmachine0_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine0_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine0_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine0_twtpcon_ready & litedram_core_bankmachine0_trascon_ready)) begin
				bankmachine0_next_state <= 3'd5;
			end
			litedram_core_bankmachine0_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine0_trccon_ready) begin
				litedram_core_bankmachine0_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine0_row_open <= 1'd1;
				litedram_core_bankmachine0_cmd_valid <= 1'd1;
				litedram_core_bankmachine0_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine0_cmd_ready) begin
					bankmachine0_next_state <= 3'd6;
				end
				litedram_core_bankmachine0_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine0_twtpcon_ready) begin
				litedram_core_bankmachine0_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine0_row_close <= 1'd1;
			litedram_core_bankmachine0_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine0_refresh_req)) begin
				bankmachine0_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine0_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine0_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine0_refresh_req) begin
				bankmachine0_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine0_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine0_row_opened) begin
						if (litedram_core_bankmachine0_row_hit) begin
							litedram_core_bankmachine0_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine0_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine0_req_wdata_ready <= litedram_core_bankmachine0_cmd_ready;
								litedram_core_bankmachine0_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine0_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine0_req_rdata_valid <= litedram_core_bankmachine0_cmd_ready;
								litedram_core_bankmachine0_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine0_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine0_cmd_ready & litedram_core_bankmachine0_auto_precharge)) begin
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
	dummy_d_13 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine1_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine1_req_valid;
assign litedram_core_bankmachine1_req_ready = litedram_core_bankmachine1_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine1_req_we;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine1_req_addr;
assign litedram_core_bankmachine1_cmd_buffer_sink_valid = litedram_core_bankmachine1_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine1_cmd_buffer_sink_ready;
assign litedram_core_bankmachine1_cmd_buffer_sink_first = litedram_core_bankmachine1_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine1_cmd_buffer_sink_last = litedram_core_bankmachine1_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine1_cmd_buffer_sink_payload_we = litedram_core_bankmachine1_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine1_cmd_buffer_sink_payload_addr = litedram_core_bankmachine1_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine1_cmd_buffer_source_ready = (litedram_core_bankmachine1_req_wdata_ready | litedram_core_bankmachine1_req_rdata_valid);
assign litedram_core_bankmachine1_req_lock = (litedram_core_bankmachine1_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine1_cmd_buffer_source_valid);
assign litedram_core_bankmachine1_row_hit = (litedram_core_bankmachine1_row == litedram_core_bankmachine1_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine1_cmd_payload_ba = 1'd1;

// synthesis translate_off
reg dummy_d_14;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine1_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine1_row_col_n_addr_sel) begin
		litedram_core_bankmachine1_cmd_payload_a <= litedram_core_bankmachine1_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine1_cmd_payload_a <= ((litedram_core_bankmachine1_auto_precharge <<< 4'd10) | {litedram_core_bankmachine1_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_14 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine1_twtpcon_valid = ((litedram_core_bankmachine1_cmd_valid & litedram_core_bankmachine1_cmd_ready) & litedram_core_bankmachine1_cmd_payload_is_write);
assign litedram_core_bankmachine1_trccon_valid = ((litedram_core_bankmachine1_cmd_valid & litedram_core_bankmachine1_cmd_ready) & litedram_core_bankmachine1_row_open);
assign litedram_core_bankmachine1_trascon_valid = ((litedram_core_bankmachine1_cmd_valid & litedram_core_bankmachine1_cmd_ready) & litedram_core_bankmachine1_row_open);

// synthesis translate_off
reg dummy_d_15;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine1_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine1_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine1_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine1_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine1_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine1_auto_precharge <= (litedram_core_bankmachine1_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_15 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_din = {litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_we = litedram_core_bankmachine1_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine1_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine1_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine1_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine1_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_source_first = litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_source_last = litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine1_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_re = litedram_core_bankmachine1_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_16;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine1_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine1_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine1_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_16 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_din;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & (litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable | litedram_core_bankmachine1_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine1_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable & litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_re);
assign litedram_core_bankmachine1_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine1_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_dout = litedram_core_bankmachine1_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable = (litedram_core_bankmachine1_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_readable = (litedram_core_bankmachine1_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine1_cmd_buffer_sink_ready = ((~litedram_core_bankmachine1_cmd_buffer_source_valid) | litedram_core_bankmachine1_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_17;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine1_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine1_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine1_refresh_gnt <= 1'd0;
	litedram_core_bankmachine1_cmd_valid <= 1'd0;
	litedram_core_bankmachine1_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine1_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine1_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine1_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine1_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine1_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine1_row_open <= 1'd0;
	litedram_core_bankmachine1_row_close <= 1'd0;
	litedram_core_bankmachine1_row_col_n_addr_sel <= 1'd0;
	bankmachine1_next_state <= 3'd0;
	bankmachine1_next_state <= bankmachine1_state;
	case (bankmachine1_state)
		1'd1: begin
			if ((litedram_core_bankmachine1_twtpcon_ready & litedram_core_bankmachine1_trascon_ready)) begin
				litedram_core_bankmachine1_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd5;
				end
				litedram_core_bankmachine1_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine1_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine1_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine1_twtpcon_ready & litedram_core_bankmachine1_trascon_ready)) begin
				bankmachine1_next_state <= 3'd5;
			end
			litedram_core_bankmachine1_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine1_trccon_ready) begin
				litedram_core_bankmachine1_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine1_row_open <= 1'd1;
				litedram_core_bankmachine1_cmd_valid <= 1'd1;
				litedram_core_bankmachine1_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine1_cmd_ready) begin
					bankmachine1_next_state <= 3'd6;
				end
				litedram_core_bankmachine1_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine1_twtpcon_ready) begin
				litedram_core_bankmachine1_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine1_row_close <= 1'd1;
			litedram_core_bankmachine1_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine1_refresh_req)) begin
				bankmachine1_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine1_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine1_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine1_refresh_req) begin
				bankmachine1_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine1_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine1_row_opened) begin
						if (litedram_core_bankmachine1_row_hit) begin
							litedram_core_bankmachine1_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine1_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine1_req_wdata_ready <= litedram_core_bankmachine1_cmd_ready;
								litedram_core_bankmachine1_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine1_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine1_req_rdata_valid <= litedram_core_bankmachine1_cmd_ready;
								litedram_core_bankmachine1_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine1_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine1_cmd_ready & litedram_core_bankmachine1_auto_precharge)) begin
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
	dummy_d_17 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine2_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine2_req_valid;
assign litedram_core_bankmachine2_req_ready = litedram_core_bankmachine2_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine2_req_we;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine2_req_addr;
assign litedram_core_bankmachine2_cmd_buffer_sink_valid = litedram_core_bankmachine2_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine2_cmd_buffer_sink_ready;
assign litedram_core_bankmachine2_cmd_buffer_sink_first = litedram_core_bankmachine2_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine2_cmd_buffer_sink_last = litedram_core_bankmachine2_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine2_cmd_buffer_sink_payload_we = litedram_core_bankmachine2_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine2_cmd_buffer_sink_payload_addr = litedram_core_bankmachine2_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine2_cmd_buffer_source_ready = (litedram_core_bankmachine2_req_wdata_ready | litedram_core_bankmachine2_req_rdata_valid);
assign litedram_core_bankmachine2_req_lock = (litedram_core_bankmachine2_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine2_cmd_buffer_source_valid);
assign litedram_core_bankmachine2_row_hit = (litedram_core_bankmachine2_row == litedram_core_bankmachine2_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine2_cmd_payload_ba = 2'd2;

// synthesis translate_off
reg dummy_d_18;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine2_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine2_row_col_n_addr_sel) begin
		litedram_core_bankmachine2_cmd_payload_a <= litedram_core_bankmachine2_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine2_cmd_payload_a <= ((litedram_core_bankmachine2_auto_precharge <<< 4'd10) | {litedram_core_bankmachine2_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_18 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine2_twtpcon_valid = ((litedram_core_bankmachine2_cmd_valid & litedram_core_bankmachine2_cmd_ready) & litedram_core_bankmachine2_cmd_payload_is_write);
assign litedram_core_bankmachine2_trccon_valid = ((litedram_core_bankmachine2_cmd_valid & litedram_core_bankmachine2_cmd_ready) & litedram_core_bankmachine2_row_open);
assign litedram_core_bankmachine2_trascon_valid = ((litedram_core_bankmachine2_cmd_valid & litedram_core_bankmachine2_cmd_ready) & litedram_core_bankmachine2_row_open);

// synthesis translate_off
reg dummy_d_19;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine2_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine2_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine2_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine2_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine2_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine2_auto_precharge <= (litedram_core_bankmachine2_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_19 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_din = {litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_we = litedram_core_bankmachine2_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine2_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine2_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine2_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine2_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_source_first = litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_source_last = litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine2_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_re = litedram_core_bankmachine2_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_20;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine2_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine2_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine2_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_20 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_din;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & (litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable | litedram_core_bankmachine2_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine2_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable & litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_re);
assign litedram_core_bankmachine2_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine2_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_dout = litedram_core_bankmachine2_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable = (litedram_core_bankmachine2_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_readable = (litedram_core_bankmachine2_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine2_cmd_buffer_sink_ready = ((~litedram_core_bankmachine2_cmd_buffer_source_valid) | litedram_core_bankmachine2_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_21;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine2_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine2_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine2_refresh_gnt <= 1'd0;
	litedram_core_bankmachine2_cmd_valid <= 1'd0;
	litedram_core_bankmachine2_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine2_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine2_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine2_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine2_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine2_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine2_row_open <= 1'd0;
	litedram_core_bankmachine2_row_close <= 1'd0;
	litedram_core_bankmachine2_row_col_n_addr_sel <= 1'd0;
	bankmachine2_next_state <= 3'd0;
	bankmachine2_next_state <= bankmachine2_state;
	case (bankmachine2_state)
		1'd1: begin
			if ((litedram_core_bankmachine2_twtpcon_ready & litedram_core_bankmachine2_trascon_ready)) begin
				litedram_core_bankmachine2_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd5;
				end
				litedram_core_bankmachine2_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine2_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine2_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine2_twtpcon_ready & litedram_core_bankmachine2_trascon_ready)) begin
				bankmachine2_next_state <= 3'd5;
			end
			litedram_core_bankmachine2_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine2_trccon_ready) begin
				litedram_core_bankmachine2_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine2_row_open <= 1'd1;
				litedram_core_bankmachine2_cmd_valid <= 1'd1;
				litedram_core_bankmachine2_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine2_cmd_ready) begin
					bankmachine2_next_state <= 3'd6;
				end
				litedram_core_bankmachine2_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine2_twtpcon_ready) begin
				litedram_core_bankmachine2_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine2_row_close <= 1'd1;
			litedram_core_bankmachine2_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine2_refresh_req)) begin
				bankmachine2_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine2_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine2_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine2_refresh_req) begin
				bankmachine2_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine2_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine2_row_opened) begin
						if (litedram_core_bankmachine2_row_hit) begin
							litedram_core_bankmachine2_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine2_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine2_req_wdata_ready <= litedram_core_bankmachine2_cmd_ready;
								litedram_core_bankmachine2_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine2_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine2_req_rdata_valid <= litedram_core_bankmachine2_cmd_ready;
								litedram_core_bankmachine2_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine2_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine2_cmd_ready & litedram_core_bankmachine2_auto_precharge)) begin
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
	dummy_d_21 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine3_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine3_req_valid;
assign litedram_core_bankmachine3_req_ready = litedram_core_bankmachine3_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine3_req_we;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine3_req_addr;
assign litedram_core_bankmachine3_cmd_buffer_sink_valid = litedram_core_bankmachine3_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine3_cmd_buffer_sink_ready;
assign litedram_core_bankmachine3_cmd_buffer_sink_first = litedram_core_bankmachine3_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine3_cmd_buffer_sink_last = litedram_core_bankmachine3_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine3_cmd_buffer_sink_payload_we = litedram_core_bankmachine3_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine3_cmd_buffer_sink_payload_addr = litedram_core_bankmachine3_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine3_cmd_buffer_source_ready = (litedram_core_bankmachine3_req_wdata_ready | litedram_core_bankmachine3_req_rdata_valid);
assign litedram_core_bankmachine3_req_lock = (litedram_core_bankmachine3_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine3_cmd_buffer_source_valid);
assign litedram_core_bankmachine3_row_hit = (litedram_core_bankmachine3_row == litedram_core_bankmachine3_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine3_cmd_payload_ba = 2'd3;

// synthesis translate_off
reg dummy_d_22;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine3_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine3_row_col_n_addr_sel) begin
		litedram_core_bankmachine3_cmd_payload_a <= litedram_core_bankmachine3_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine3_cmd_payload_a <= ((litedram_core_bankmachine3_auto_precharge <<< 4'd10) | {litedram_core_bankmachine3_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_22 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine3_twtpcon_valid = ((litedram_core_bankmachine3_cmd_valid & litedram_core_bankmachine3_cmd_ready) & litedram_core_bankmachine3_cmd_payload_is_write);
assign litedram_core_bankmachine3_trccon_valid = ((litedram_core_bankmachine3_cmd_valid & litedram_core_bankmachine3_cmd_ready) & litedram_core_bankmachine3_row_open);
assign litedram_core_bankmachine3_trascon_valid = ((litedram_core_bankmachine3_cmd_valid & litedram_core_bankmachine3_cmd_ready) & litedram_core_bankmachine3_row_open);

// synthesis translate_off
reg dummy_d_23;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine3_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine3_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine3_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine3_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine3_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine3_auto_precharge <= (litedram_core_bankmachine3_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_23 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_din = {litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_we = litedram_core_bankmachine3_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine3_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine3_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine3_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine3_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_source_first = litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_source_last = litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine3_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_re = litedram_core_bankmachine3_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_24;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine3_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine3_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine3_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_24 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_din;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & (litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable | litedram_core_bankmachine3_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine3_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable & litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_re);
assign litedram_core_bankmachine3_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine3_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_dout = litedram_core_bankmachine3_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable = (litedram_core_bankmachine3_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_readable = (litedram_core_bankmachine3_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine3_cmd_buffer_sink_ready = ((~litedram_core_bankmachine3_cmd_buffer_source_valid) | litedram_core_bankmachine3_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_25;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine3_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine3_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine3_refresh_gnt <= 1'd0;
	litedram_core_bankmachine3_cmd_valid <= 1'd0;
	litedram_core_bankmachine3_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine3_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine3_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine3_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine3_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine3_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine3_row_open <= 1'd0;
	litedram_core_bankmachine3_row_close <= 1'd0;
	litedram_core_bankmachine3_row_col_n_addr_sel <= 1'd0;
	bankmachine3_next_state <= 3'd0;
	bankmachine3_next_state <= bankmachine3_state;
	case (bankmachine3_state)
		1'd1: begin
			if ((litedram_core_bankmachine3_twtpcon_ready & litedram_core_bankmachine3_trascon_ready)) begin
				litedram_core_bankmachine3_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd5;
				end
				litedram_core_bankmachine3_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine3_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine3_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine3_twtpcon_ready & litedram_core_bankmachine3_trascon_ready)) begin
				bankmachine3_next_state <= 3'd5;
			end
			litedram_core_bankmachine3_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine3_trccon_ready) begin
				litedram_core_bankmachine3_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine3_row_open <= 1'd1;
				litedram_core_bankmachine3_cmd_valid <= 1'd1;
				litedram_core_bankmachine3_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine3_cmd_ready) begin
					bankmachine3_next_state <= 3'd6;
				end
				litedram_core_bankmachine3_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine3_twtpcon_ready) begin
				litedram_core_bankmachine3_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine3_row_close <= 1'd1;
			litedram_core_bankmachine3_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine3_refresh_req)) begin
				bankmachine3_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine3_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine3_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine3_refresh_req) begin
				bankmachine3_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine3_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine3_row_opened) begin
						if (litedram_core_bankmachine3_row_hit) begin
							litedram_core_bankmachine3_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine3_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine3_req_wdata_ready <= litedram_core_bankmachine3_cmd_ready;
								litedram_core_bankmachine3_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine3_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine3_req_rdata_valid <= litedram_core_bankmachine3_cmd_ready;
								litedram_core_bankmachine3_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine3_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine3_cmd_ready & litedram_core_bankmachine3_auto_precharge)) begin
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
	dummy_d_25 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine4_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine4_req_valid;
assign litedram_core_bankmachine4_req_ready = litedram_core_bankmachine4_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine4_req_we;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine4_req_addr;
assign litedram_core_bankmachine4_cmd_buffer_sink_valid = litedram_core_bankmachine4_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine4_cmd_buffer_sink_ready;
assign litedram_core_bankmachine4_cmd_buffer_sink_first = litedram_core_bankmachine4_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine4_cmd_buffer_sink_last = litedram_core_bankmachine4_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine4_cmd_buffer_sink_payload_we = litedram_core_bankmachine4_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine4_cmd_buffer_sink_payload_addr = litedram_core_bankmachine4_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine4_cmd_buffer_source_ready = (litedram_core_bankmachine4_req_wdata_ready | litedram_core_bankmachine4_req_rdata_valid);
assign litedram_core_bankmachine4_req_lock = (litedram_core_bankmachine4_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine4_cmd_buffer_source_valid);
assign litedram_core_bankmachine4_row_hit = (litedram_core_bankmachine4_row == litedram_core_bankmachine4_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine4_cmd_payload_ba = 3'd4;

// synthesis translate_off
reg dummy_d_26;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine4_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine4_row_col_n_addr_sel) begin
		litedram_core_bankmachine4_cmd_payload_a <= litedram_core_bankmachine4_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine4_cmd_payload_a <= ((litedram_core_bankmachine4_auto_precharge <<< 4'd10) | {litedram_core_bankmachine4_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_26 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine4_twtpcon_valid = ((litedram_core_bankmachine4_cmd_valid & litedram_core_bankmachine4_cmd_ready) & litedram_core_bankmachine4_cmd_payload_is_write);
assign litedram_core_bankmachine4_trccon_valid = ((litedram_core_bankmachine4_cmd_valid & litedram_core_bankmachine4_cmd_ready) & litedram_core_bankmachine4_row_open);
assign litedram_core_bankmachine4_trascon_valid = ((litedram_core_bankmachine4_cmd_valid & litedram_core_bankmachine4_cmd_ready) & litedram_core_bankmachine4_row_open);

// synthesis translate_off
reg dummy_d_27;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine4_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine4_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine4_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine4_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine4_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine4_auto_precharge <= (litedram_core_bankmachine4_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_27 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_din = {litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_we = litedram_core_bankmachine4_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine4_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine4_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine4_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine4_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_source_first = litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_source_last = litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine4_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_re = litedram_core_bankmachine4_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_28;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine4_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine4_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine4_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_28 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_din;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & (litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable | litedram_core_bankmachine4_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine4_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable & litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_re);
assign litedram_core_bankmachine4_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine4_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_dout = litedram_core_bankmachine4_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable = (litedram_core_bankmachine4_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_readable = (litedram_core_bankmachine4_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine4_cmd_buffer_sink_ready = ((~litedram_core_bankmachine4_cmd_buffer_source_valid) | litedram_core_bankmachine4_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_29;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine4_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine4_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine4_refresh_gnt <= 1'd0;
	litedram_core_bankmachine4_cmd_valid <= 1'd0;
	litedram_core_bankmachine4_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine4_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine4_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine4_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine4_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine4_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine4_row_open <= 1'd0;
	litedram_core_bankmachine4_row_close <= 1'd0;
	litedram_core_bankmachine4_row_col_n_addr_sel <= 1'd0;
	bankmachine4_next_state <= 3'd0;
	bankmachine4_next_state <= bankmachine4_state;
	case (bankmachine4_state)
		1'd1: begin
			if ((litedram_core_bankmachine4_twtpcon_ready & litedram_core_bankmachine4_trascon_ready)) begin
				litedram_core_bankmachine4_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd5;
				end
				litedram_core_bankmachine4_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine4_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine4_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine4_twtpcon_ready & litedram_core_bankmachine4_trascon_ready)) begin
				bankmachine4_next_state <= 3'd5;
			end
			litedram_core_bankmachine4_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine4_trccon_ready) begin
				litedram_core_bankmachine4_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine4_row_open <= 1'd1;
				litedram_core_bankmachine4_cmd_valid <= 1'd1;
				litedram_core_bankmachine4_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine4_cmd_ready) begin
					bankmachine4_next_state <= 3'd6;
				end
				litedram_core_bankmachine4_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine4_twtpcon_ready) begin
				litedram_core_bankmachine4_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine4_row_close <= 1'd1;
			litedram_core_bankmachine4_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine4_refresh_req)) begin
				bankmachine4_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine4_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine4_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine4_refresh_req) begin
				bankmachine4_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine4_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine4_row_opened) begin
						if (litedram_core_bankmachine4_row_hit) begin
							litedram_core_bankmachine4_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine4_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine4_req_wdata_ready <= litedram_core_bankmachine4_cmd_ready;
								litedram_core_bankmachine4_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine4_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine4_req_rdata_valid <= litedram_core_bankmachine4_cmd_ready;
								litedram_core_bankmachine4_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine4_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine4_cmd_ready & litedram_core_bankmachine4_auto_precharge)) begin
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
	dummy_d_29 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine5_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine5_req_valid;
assign litedram_core_bankmachine5_req_ready = litedram_core_bankmachine5_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine5_req_we;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine5_req_addr;
assign litedram_core_bankmachine5_cmd_buffer_sink_valid = litedram_core_bankmachine5_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine5_cmd_buffer_sink_ready;
assign litedram_core_bankmachine5_cmd_buffer_sink_first = litedram_core_bankmachine5_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine5_cmd_buffer_sink_last = litedram_core_bankmachine5_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine5_cmd_buffer_sink_payload_we = litedram_core_bankmachine5_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine5_cmd_buffer_sink_payload_addr = litedram_core_bankmachine5_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine5_cmd_buffer_source_ready = (litedram_core_bankmachine5_req_wdata_ready | litedram_core_bankmachine5_req_rdata_valid);
assign litedram_core_bankmachine5_req_lock = (litedram_core_bankmachine5_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine5_cmd_buffer_source_valid);
assign litedram_core_bankmachine5_row_hit = (litedram_core_bankmachine5_row == litedram_core_bankmachine5_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine5_cmd_payload_ba = 3'd5;

// synthesis translate_off
reg dummy_d_30;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine5_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine5_row_col_n_addr_sel) begin
		litedram_core_bankmachine5_cmd_payload_a <= litedram_core_bankmachine5_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine5_cmd_payload_a <= ((litedram_core_bankmachine5_auto_precharge <<< 4'd10) | {litedram_core_bankmachine5_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_30 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine5_twtpcon_valid = ((litedram_core_bankmachine5_cmd_valid & litedram_core_bankmachine5_cmd_ready) & litedram_core_bankmachine5_cmd_payload_is_write);
assign litedram_core_bankmachine5_trccon_valid = ((litedram_core_bankmachine5_cmd_valid & litedram_core_bankmachine5_cmd_ready) & litedram_core_bankmachine5_row_open);
assign litedram_core_bankmachine5_trascon_valid = ((litedram_core_bankmachine5_cmd_valid & litedram_core_bankmachine5_cmd_ready) & litedram_core_bankmachine5_row_open);

// synthesis translate_off
reg dummy_d_31;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine5_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine5_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine5_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine5_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine5_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine5_auto_precharge <= (litedram_core_bankmachine5_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_31 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_din = {litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_we = litedram_core_bankmachine5_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine5_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine5_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine5_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine5_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_source_first = litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_source_last = litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine5_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_re = litedram_core_bankmachine5_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_32;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine5_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine5_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine5_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_32 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_din;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & (litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable | litedram_core_bankmachine5_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine5_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable & litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_re);
assign litedram_core_bankmachine5_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine5_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_dout = litedram_core_bankmachine5_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable = (litedram_core_bankmachine5_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_readable = (litedram_core_bankmachine5_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine5_cmd_buffer_sink_ready = ((~litedram_core_bankmachine5_cmd_buffer_source_valid) | litedram_core_bankmachine5_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_33;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine5_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine5_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine5_refresh_gnt <= 1'd0;
	litedram_core_bankmachine5_cmd_valid <= 1'd0;
	litedram_core_bankmachine5_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine5_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine5_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine5_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine5_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine5_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine5_row_open <= 1'd0;
	litedram_core_bankmachine5_row_close <= 1'd0;
	litedram_core_bankmachine5_row_col_n_addr_sel <= 1'd0;
	bankmachine5_next_state <= 3'd0;
	bankmachine5_next_state <= bankmachine5_state;
	case (bankmachine5_state)
		1'd1: begin
			if ((litedram_core_bankmachine5_twtpcon_ready & litedram_core_bankmachine5_trascon_ready)) begin
				litedram_core_bankmachine5_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd5;
				end
				litedram_core_bankmachine5_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine5_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine5_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine5_twtpcon_ready & litedram_core_bankmachine5_trascon_ready)) begin
				bankmachine5_next_state <= 3'd5;
			end
			litedram_core_bankmachine5_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine5_trccon_ready) begin
				litedram_core_bankmachine5_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine5_row_open <= 1'd1;
				litedram_core_bankmachine5_cmd_valid <= 1'd1;
				litedram_core_bankmachine5_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine5_cmd_ready) begin
					bankmachine5_next_state <= 3'd6;
				end
				litedram_core_bankmachine5_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine5_twtpcon_ready) begin
				litedram_core_bankmachine5_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine5_row_close <= 1'd1;
			litedram_core_bankmachine5_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine5_refresh_req)) begin
				bankmachine5_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine5_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine5_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine5_refresh_req) begin
				bankmachine5_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine5_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine5_row_opened) begin
						if (litedram_core_bankmachine5_row_hit) begin
							litedram_core_bankmachine5_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine5_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine5_req_wdata_ready <= litedram_core_bankmachine5_cmd_ready;
								litedram_core_bankmachine5_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine5_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine5_req_rdata_valid <= litedram_core_bankmachine5_cmd_ready;
								litedram_core_bankmachine5_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine5_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine5_cmd_ready & litedram_core_bankmachine5_auto_precharge)) begin
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
	dummy_d_33 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine6_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine6_req_valid;
assign litedram_core_bankmachine6_req_ready = litedram_core_bankmachine6_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine6_req_we;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine6_req_addr;
assign litedram_core_bankmachine6_cmd_buffer_sink_valid = litedram_core_bankmachine6_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine6_cmd_buffer_sink_ready;
assign litedram_core_bankmachine6_cmd_buffer_sink_first = litedram_core_bankmachine6_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine6_cmd_buffer_sink_last = litedram_core_bankmachine6_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine6_cmd_buffer_sink_payload_we = litedram_core_bankmachine6_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine6_cmd_buffer_sink_payload_addr = litedram_core_bankmachine6_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine6_cmd_buffer_source_ready = (litedram_core_bankmachine6_req_wdata_ready | litedram_core_bankmachine6_req_rdata_valid);
assign litedram_core_bankmachine6_req_lock = (litedram_core_bankmachine6_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine6_cmd_buffer_source_valid);
assign litedram_core_bankmachine6_row_hit = (litedram_core_bankmachine6_row == litedram_core_bankmachine6_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine6_cmd_payload_ba = 3'd6;

// synthesis translate_off
reg dummy_d_34;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine6_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine6_row_col_n_addr_sel) begin
		litedram_core_bankmachine6_cmd_payload_a <= litedram_core_bankmachine6_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine6_cmd_payload_a <= ((litedram_core_bankmachine6_auto_precharge <<< 4'd10) | {litedram_core_bankmachine6_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_34 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine6_twtpcon_valid = ((litedram_core_bankmachine6_cmd_valid & litedram_core_bankmachine6_cmd_ready) & litedram_core_bankmachine6_cmd_payload_is_write);
assign litedram_core_bankmachine6_trccon_valid = ((litedram_core_bankmachine6_cmd_valid & litedram_core_bankmachine6_cmd_ready) & litedram_core_bankmachine6_row_open);
assign litedram_core_bankmachine6_trascon_valid = ((litedram_core_bankmachine6_cmd_valid & litedram_core_bankmachine6_cmd_ready) & litedram_core_bankmachine6_row_open);

// synthesis translate_off
reg dummy_d_35;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine6_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine6_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine6_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine6_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine6_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine6_auto_precharge <= (litedram_core_bankmachine6_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_35 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_din = {litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_we = litedram_core_bankmachine6_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine6_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine6_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine6_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine6_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_source_first = litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_source_last = litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine6_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_re = litedram_core_bankmachine6_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_36;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine6_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine6_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine6_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_36 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_din;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & (litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable | litedram_core_bankmachine6_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine6_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable & litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_re);
assign litedram_core_bankmachine6_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine6_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_dout = litedram_core_bankmachine6_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable = (litedram_core_bankmachine6_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_readable = (litedram_core_bankmachine6_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine6_cmd_buffer_sink_ready = ((~litedram_core_bankmachine6_cmd_buffer_source_valid) | litedram_core_bankmachine6_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_37;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine6_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine6_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine6_refresh_gnt <= 1'd0;
	litedram_core_bankmachine6_cmd_valid <= 1'd0;
	litedram_core_bankmachine6_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine6_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine6_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine6_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine6_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine6_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine6_row_open <= 1'd0;
	litedram_core_bankmachine6_row_close <= 1'd0;
	litedram_core_bankmachine6_row_col_n_addr_sel <= 1'd0;
	bankmachine6_next_state <= 3'd0;
	bankmachine6_next_state <= bankmachine6_state;
	case (bankmachine6_state)
		1'd1: begin
			if ((litedram_core_bankmachine6_twtpcon_ready & litedram_core_bankmachine6_trascon_ready)) begin
				litedram_core_bankmachine6_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd5;
				end
				litedram_core_bankmachine6_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine6_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine6_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine6_twtpcon_ready & litedram_core_bankmachine6_trascon_ready)) begin
				bankmachine6_next_state <= 3'd5;
			end
			litedram_core_bankmachine6_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine6_trccon_ready) begin
				litedram_core_bankmachine6_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine6_row_open <= 1'd1;
				litedram_core_bankmachine6_cmd_valid <= 1'd1;
				litedram_core_bankmachine6_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine6_cmd_ready) begin
					bankmachine6_next_state <= 3'd6;
				end
				litedram_core_bankmachine6_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine6_twtpcon_ready) begin
				litedram_core_bankmachine6_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine6_row_close <= 1'd1;
			litedram_core_bankmachine6_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine6_refresh_req)) begin
				bankmachine6_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine6_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine6_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine6_refresh_req) begin
				bankmachine6_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine6_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine6_row_opened) begin
						if (litedram_core_bankmachine6_row_hit) begin
							litedram_core_bankmachine6_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine6_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine6_req_wdata_ready <= litedram_core_bankmachine6_cmd_ready;
								litedram_core_bankmachine6_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine6_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine6_req_rdata_valid <= litedram_core_bankmachine6_cmd_ready;
								litedram_core_bankmachine6_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine6_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine6_cmd_ready & litedram_core_bankmachine6_auto_precharge)) begin
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
	dummy_d_37 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine7_cmd_buffer_lookahead_sink_valid = litedram_core_bankmachine7_req_valid;
assign litedram_core_bankmachine7_req_ready = litedram_core_bankmachine7_cmd_buffer_lookahead_sink_ready;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_sink_payload_we = litedram_core_bankmachine7_req_we;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_sink_payload_addr = litedram_core_bankmachine7_req_addr;
assign litedram_core_bankmachine7_cmd_buffer_sink_valid = litedram_core_bankmachine7_cmd_buffer_lookahead_source_valid;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_source_ready = litedram_core_bankmachine7_cmd_buffer_sink_ready;
assign litedram_core_bankmachine7_cmd_buffer_sink_first = litedram_core_bankmachine7_cmd_buffer_lookahead_source_first;
assign litedram_core_bankmachine7_cmd_buffer_sink_last = litedram_core_bankmachine7_cmd_buffer_lookahead_source_last;
assign litedram_core_bankmachine7_cmd_buffer_sink_payload_we = litedram_core_bankmachine7_cmd_buffer_lookahead_source_payload_we;
assign litedram_core_bankmachine7_cmd_buffer_sink_payload_addr = litedram_core_bankmachine7_cmd_buffer_lookahead_source_payload_addr;
assign litedram_core_bankmachine7_cmd_buffer_source_ready = (litedram_core_bankmachine7_req_wdata_ready | litedram_core_bankmachine7_req_rdata_valid);
assign litedram_core_bankmachine7_req_lock = (litedram_core_bankmachine7_cmd_buffer_lookahead_source_valid | litedram_core_bankmachine7_cmd_buffer_source_valid);
assign litedram_core_bankmachine7_row_hit = (litedram_core_bankmachine7_row == litedram_core_bankmachine7_cmd_buffer_source_payload_addr[9:3]);
assign litedram_core_bankmachine7_cmd_payload_ba = 3'd7;

// synthesis translate_off
reg dummy_d_38;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine7_cmd_payload_a <= 7'd0;
	if (litedram_core_bankmachine7_row_col_n_addr_sel) begin
		litedram_core_bankmachine7_cmd_payload_a <= litedram_core_bankmachine7_cmd_buffer_source_payload_addr[9:3];
	end else begin
		litedram_core_bankmachine7_cmd_payload_a <= ((litedram_core_bankmachine7_auto_precharge <<< 4'd10) | {litedram_core_bankmachine7_cmd_buffer_source_payload_addr[2:0], {4{1'd0}}});
	end
// synthesis translate_off
	dummy_d_38 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine7_twtpcon_valid = ((litedram_core_bankmachine7_cmd_valid & litedram_core_bankmachine7_cmd_ready) & litedram_core_bankmachine7_cmd_payload_is_write);
assign litedram_core_bankmachine7_trccon_valid = ((litedram_core_bankmachine7_cmd_valid & litedram_core_bankmachine7_cmd_ready) & litedram_core_bankmachine7_row_open);
assign litedram_core_bankmachine7_trascon_valid = ((litedram_core_bankmachine7_cmd_valid & litedram_core_bankmachine7_cmd_ready) & litedram_core_bankmachine7_row_open);

// synthesis translate_off
reg dummy_d_39;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine7_auto_precharge <= 1'd0;
	if ((litedram_core_bankmachine7_cmd_buffer_lookahead_source_valid & litedram_core_bankmachine7_cmd_buffer_source_valid)) begin
		if ((litedram_core_bankmachine7_cmd_buffer_lookahead_source_payload_addr[9:3] != litedram_core_bankmachine7_cmd_buffer_source_payload_addr[9:3])) begin
			litedram_core_bankmachine7_auto_precharge <= (litedram_core_bankmachine7_row_close == 1'd0);
		end
	end
// synthesis translate_off
	dummy_d_39 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_din = {litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_last, litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_first, litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr, litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we};
assign {litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_last, litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_first, litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr, litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we} = litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_sink_ready = litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_we = litedram_core_bankmachine7_cmd_buffer_lookahead_sink_valid;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_first = litedram_core_bankmachine7_cmd_buffer_lookahead_sink_first;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_last = litedram_core_bankmachine7_cmd_buffer_lookahead_sink_last;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_we = litedram_core_bankmachine7_cmd_buffer_lookahead_sink_payload_we;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_in_payload_addr = litedram_core_bankmachine7_cmd_buffer_lookahead_sink_payload_addr;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_source_valid = litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_source_first = litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_first;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_source_last = litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_last;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_source_payload_we = litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_we;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_source_payload_addr = litedram_core_bankmachine7_cmd_buffer_lookahead_fifo_out_payload_addr;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_re = litedram_core_bankmachine7_cmd_buffer_lookahead_source_ready;

// synthesis translate_off
reg dummy_d_40;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_adr <= 3'd0;
	if (litedram_core_bankmachine7_cmd_buffer_lookahead_replace) begin
		litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_adr <= (litedram_core_bankmachine7_cmd_buffer_lookahead_produce - 1'd1);
	end else begin
		litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_adr <= litedram_core_bankmachine7_cmd_buffer_lookahead_produce;
	end
// synthesis translate_off
	dummy_d_40 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_dat_w = litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_din;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_we = (litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & (litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable | litedram_core_bankmachine7_cmd_buffer_lookahead_replace));
assign litedram_core_bankmachine7_cmd_buffer_lookahead_do_read = (litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable & litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_re);
assign litedram_core_bankmachine7_cmd_buffer_lookahead_rdport_adr = litedram_core_bankmachine7_cmd_buffer_lookahead_consume;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_dout = litedram_core_bankmachine7_cmd_buffer_lookahead_rdport_dat_r;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable = (litedram_core_bankmachine7_cmd_buffer_lookahead_level != 4'd8);
assign litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_readable = (litedram_core_bankmachine7_cmd_buffer_lookahead_level != 1'd0);
assign litedram_core_bankmachine7_cmd_buffer_sink_ready = ((~litedram_core_bankmachine7_cmd_buffer_source_valid) | litedram_core_bankmachine7_cmd_buffer_source_ready);

// synthesis translate_off
reg dummy_d_41;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine7_req_wdata_ready <= 1'd0;
	litedram_core_bankmachine7_req_rdata_valid <= 1'd0;
	litedram_core_bankmachine7_refresh_gnt <= 1'd0;
	litedram_core_bankmachine7_cmd_valid <= 1'd0;
	litedram_core_bankmachine7_cmd_payload_cas <= 1'd0;
	litedram_core_bankmachine7_cmd_payload_ras <= 1'd0;
	litedram_core_bankmachine7_cmd_payload_we <= 1'd0;
	litedram_core_bankmachine7_cmd_payload_is_cmd <= 1'd0;
	litedram_core_bankmachine7_cmd_payload_is_read <= 1'd0;
	litedram_core_bankmachine7_cmd_payload_is_write <= 1'd0;
	litedram_core_bankmachine7_row_open <= 1'd0;
	litedram_core_bankmachine7_row_close <= 1'd0;
	litedram_core_bankmachine7_row_col_n_addr_sel <= 1'd0;
	bankmachine7_next_state <= 3'd0;
	bankmachine7_next_state <= bankmachine7_state;
	case (bankmachine7_state)
		1'd1: begin
			if ((litedram_core_bankmachine7_twtpcon_ready & litedram_core_bankmachine7_trascon_ready)) begin
				litedram_core_bankmachine7_cmd_valid <= 1'd1;
				if (litedram_core_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd5;
				end
				litedram_core_bankmachine7_cmd_payload_ras <= 1'd1;
				litedram_core_bankmachine7_cmd_payload_we <= 1'd1;
				litedram_core_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			end
			litedram_core_bankmachine7_row_close <= 1'd1;
		end
		2'd2: begin
			if ((litedram_core_bankmachine7_twtpcon_ready & litedram_core_bankmachine7_trascon_ready)) begin
				bankmachine7_next_state <= 3'd5;
			end
			litedram_core_bankmachine7_row_close <= 1'd1;
		end
		2'd3: begin
			if (litedram_core_bankmachine7_trccon_ready) begin
				litedram_core_bankmachine7_row_col_n_addr_sel <= 1'd1;
				litedram_core_bankmachine7_row_open <= 1'd1;
				litedram_core_bankmachine7_cmd_valid <= 1'd1;
				litedram_core_bankmachine7_cmd_payload_is_cmd <= 1'd1;
				if (litedram_core_bankmachine7_cmd_ready) begin
					bankmachine7_next_state <= 3'd6;
				end
				litedram_core_bankmachine7_cmd_payload_ras <= 1'd1;
			end
		end
		3'd4: begin
			if (litedram_core_bankmachine7_twtpcon_ready) begin
				litedram_core_bankmachine7_refresh_gnt <= 1'd1;
			end
			litedram_core_bankmachine7_row_close <= 1'd1;
			litedram_core_bankmachine7_cmd_payload_is_cmd <= 1'd1;
			if ((~litedram_core_bankmachine7_refresh_req)) begin
				bankmachine7_next_state <= 1'd0;
			end
		end
		3'd5: begin
			bankmachine7_next_state <= 2'd3;
		end
		3'd6: begin
			bankmachine7_next_state <= 1'd0;
		end
		default: begin
			if (litedram_core_bankmachine7_refresh_req) begin
				bankmachine7_next_state <= 3'd4;
			end else begin
				if (litedram_core_bankmachine7_cmd_buffer_source_valid) begin
					if (litedram_core_bankmachine7_row_opened) begin
						if (litedram_core_bankmachine7_row_hit) begin
							litedram_core_bankmachine7_cmd_valid <= 1'd1;
							if (litedram_core_bankmachine7_cmd_buffer_source_payload_we) begin
								litedram_core_bankmachine7_req_wdata_ready <= litedram_core_bankmachine7_cmd_ready;
								litedram_core_bankmachine7_cmd_payload_is_write <= 1'd1;
								litedram_core_bankmachine7_cmd_payload_we <= 1'd1;
							end else begin
								litedram_core_bankmachine7_req_rdata_valid <= litedram_core_bankmachine7_cmd_ready;
								litedram_core_bankmachine7_cmd_payload_is_read <= 1'd1;
							end
							litedram_core_bankmachine7_cmd_payload_cas <= 1'd1;
							if ((litedram_core_bankmachine7_cmd_ready & litedram_core_bankmachine7_auto_precharge)) begin
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
	dummy_d_41 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_rdcmdphase = (phy_rdphase_storage - 1'd1);
assign litedram_core_wrcmdphase = (phy_wrphase_storage - 1'd1);
assign litedram_core_trrdcon_valid = ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & ((litedram_core_choose_cmd_cmd_payload_ras & (~litedram_core_choose_cmd_cmd_payload_cas)) & (~litedram_core_choose_cmd_cmd_payload_we)));
assign litedram_core_tfawcon_valid = ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & ((litedram_core_choose_cmd_cmd_payload_ras & (~litedram_core_choose_cmd_cmd_payload_cas)) & (~litedram_core_choose_cmd_cmd_payload_we)));
assign litedram_core_ras_allowed = (litedram_core_trrdcon_ready & litedram_core_tfawcon_ready);
assign litedram_core_tccdcon_valid = ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_cmd_payload_is_write | litedram_core_choose_req_cmd_payload_is_read));
assign litedram_core_cas_allowed = litedram_core_tccdcon_ready;
assign litedram_core_twtrcon_valid = ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
assign litedram_core_read_available = ((((((((litedram_core_bankmachine0_cmd_valid & litedram_core_bankmachine0_cmd_payload_is_read) | (litedram_core_bankmachine1_cmd_valid & litedram_core_bankmachine1_cmd_payload_is_read)) | (litedram_core_bankmachine2_cmd_valid & litedram_core_bankmachine2_cmd_payload_is_read)) | (litedram_core_bankmachine3_cmd_valid & litedram_core_bankmachine3_cmd_payload_is_read)) | (litedram_core_bankmachine4_cmd_valid & litedram_core_bankmachine4_cmd_payload_is_read)) | (litedram_core_bankmachine5_cmd_valid & litedram_core_bankmachine5_cmd_payload_is_read)) | (litedram_core_bankmachine6_cmd_valid & litedram_core_bankmachine6_cmd_payload_is_read)) | (litedram_core_bankmachine7_cmd_valid & litedram_core_bankmachine7_cmd_payload_is_read));
assign litedram_core_write_available = ((((((((litedram_core_bankmachine0_cmd_valid & litedram_core_bankmachine0_cmd_payload_is_write) | (litedram_core_bankmachine1_cmd_valid & litedram_core_bankmachine1_cmd_payload_is_write)) | (litedram_core_bankmachine2_cmd_valid & litedram_core_bankmachine2_cmd_payload_is_write)) | (litedram_core_bankmachine3_cmd_valid & litedram_core_bankmachine3_cmd_payload_is_write)) | (litedram_core_bankmachine4_cmd_valid & litedram_core_bankmachine4_cmd_payload_is_write)) | (litedram_core_bankmachine5_cmd_valid & litedram_core_bankmachine5_cmd_payload_is_write)) | (litedram_core_bankmachine6_cmd_valid & litedram_core_bankmachine6_cmd_payload_is_write)) | (litedram_core_bankmachine7_cmd_valid & litedram_core_bankmachine7_cmd_payload_is_write));
assign litedram_core_max_time0 = (litedram_core_time0 == 1'd0);
assign litedram_core_max_time1 = (litedram_core_time1 == 1'd0);
assign litedram_core_bankmachine0_refresh_req = litedram_core_cmd_valid;
assign litedram_core_bankmachine1_refresh_req = litedram_core_cmd_valid;
assign litedram_core_bankmachine2_refresh_req = litedram_core_cmd_valid;
assign litedram_core_bankmachine3_refresh_req = litedram_core_cmd_valid;
assign litedram_core_bankmachine4_refresh_req = litedram_core_cmd_valid;
assign litedram_core_bankmachine5_refresh_req = litedram_core_cmd_valid;
assign litedram_core_bankmachine6_refresh_req = litedram_core_cmd_valid;
assign litedram_core_bankmachine7_refresh_req = litedram_core_cmd_valid;
assign litedram_core_go_to_refresh = (((((((litedram_core_bankmachine0_refresh_gnt & litedram_core_bankmachine1_refresh_gnt) & litedram_core_bankmachine2_refresh_gnt) & litedram_core_bankmachine3_refresh_gnt) & litedram_core_bankmachine4_refresh_gnt) & litedram_core_bankmachine5_refresh_gnt) & litedram_core_bankmachine6_refresh_gnt) & litedram_core_bankmachine7_refresh_gnt);
assign litedram_core_interface_rdata = {litedram_core_dfi_p7_rddata, litedram_core_dfi_p6_rddata, litedram_core_dfi_p5_rddata, litedram_core_dfi_p4_rddata, litedram_core_dfi_p3_rddata, litedram_core_dfi_p2_rddata, litedram_core_dfi_p1_rddata, litedram_core_dfi_p0_rddata};
assign {litedram_core_dfi_p7_wrdata, litedram_core_dfi_p6_wrdata, litedram_core_dfi_p5_wrdata, litedram_core_dfi_p4_wrdata, litedram_core_dfi_p3_wrdata, litedram_core_dfi_p2_wrdata, litedram_core_dfi_p1_wrdata, litedram_core_dfi_p0_wrdata} = litedram_core_interface_wdata;
assign {litedram_core_dfi_p7_wrdata_mask, litedram_core_dfi_p6_wrdata_mask, litedram_core_dfi_p5_wrdata_mask, litedram_core_dfi_p4_wrdata_mask, litedram_core_dfi_p3_wrdata_mask, litedram_core_dfi_p2_wrdata_mask, litedram_core_dfi_p1_wrdata_mask, litedram_core_dfi_p0_wrdata_mask} = (~litedram_core_interface_wdata_we);

// synthesis translate_off
reg dummy_d_42;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_cmd_valids <= 8'd0;
	litedram_core_choose_cmd_valids[0] <= (litedram_core_bankmachine0_cmd_valid & (((litedram_core_bankmachine0_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine0_cmd_payload_ras & (~litedram_core_bankmachine0_cmd_payload_cas)) & (~litedram_core_bankmachine0_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine0_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine0_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
	litedram_core_choose_cmd_valids[1] <= (litedram_core_bankmachine1_cmd_valid & (((litedram_core_bankmachine1_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine1_cmd_payload_ras & (~litedram_core_bankmachine1_cmd_payload_cas)) & (~litedram_core_bankmachine1_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine1_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine1_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
	litedram_core_choose_cmd_valids[2] <= (litedram_core_bankmachine2_cmd_valid & (((litedram_core_bankmachine2_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine2_cmd_payload_ras & (~litedram_core_bankmachine2_cmd_payload_cas)) & (~litedram_core_bankmachine2_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine2_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine2_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
	litedram_core_choose_cmd_valids[3] <= (litedram_core_bankmachine3_cmd_valid & (((litedram_core_bankmachine3_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine3_cmd_payload_ras & (~litedram_core_bankmachine3_cmd_payload_cas)) & (~litedram_core_bankmachine3_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine3_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine3_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
	litedram_core_choose_cmd_valids[4] <= (litedram_core_bankmachine4_cmd_valid & (((litedram_core_bankmachine4_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine4_cmd_payload_ras & (~litedram_core_bankmachine4_cmd_payload_cas)) & (~litedram_core_bankmachine4_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine4_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine4_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
	litedram_core_choose_cmd_valids[5] <= (litedram_core_bankmachine5_cmd_valid & (((litedram_core_bankmachine5_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine5_cmd_payload_ras & (~litedram_core_bankmachine5_cmd_payload_cas)) & (~litedram_core_bankmachine5_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine5_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine5_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
	litedram_core_choose_cmd_valids[6] <= (litedram_core_bankmachine6_cmd_valid & (((litedram_core_bankmachine6_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine6_cmd_payload_ras & (~litedram_core_bankmachine6_cmd_payload_cas)) & (~litedram_core_bankmachine6_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine6_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine6_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
	litedram_core_choose_cmd_valids[7] <= (litedram_core_bankmachine7_cmd_valid & (((litedram_core_bankmachine7_cmd_payload_is_cmd & litedram_core_choose_cmd_want_cmds) & ((~((litedram_core_bankmachine7_cmd_payload_ras & (~litedram_core_bankmachine7_cmd_payload_cas)) & (~litedram_core_bankmachine7_cmd_payload_we))) | litedram_core_choose_cmd_want_activates)) | ((litedram_core_bankmachine7_cmd_payload_is_read == litedram_core_choose_cmd_want_reads) & (litedram_core_bankmachine7_cmd_payload_is_write == litedram_core_choose_cmd_want_writes))));
// synthesis translate_off
	dummy_d_42 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_choose_cmd_request = litedram_core_choose_cmd_valids;
assign litedram_core_choose_cmd_cmd_valid = rhs_array_muxed0;
assign litedram_core_choose_cmd_cmd_payload_a = rhs_array_muxed1;
assign litedram_core_choose_cmd_cmd_payload_ba = rhs_array_muxed2;
assign litedram_core_choose_cmd_cmd_payload_is_read = rhs_array_muxed3;
assign litedram_core_choose_cmd_cmd_payload_is_write = rhs_array_muxed4;
assign litedram_core_choose_cmd_cmd_payload_is_cmd = rhs_array_muxed5;

// synthesis translate_off
reg dummy_d_43;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_cmd_cmd_payload_cas <= 1'd0;
	if (litedram_core_choose_cmd_cmd_valid) begin
		litedram_core_choose_cmd_cmd_payload_cas <= t_array_muxed0;
	end
// synthesis translate_off
	dummy_d_43 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_44;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_cmd_cmd_payload_ras <= 1'd0;
	if (litedram_core_choose_cmd_cmd_valid) begin
		litedram_core_choose_cmd_cmd_payload_ras <= t_array_muxed1;
	end
// synthesis translate_off
	dummy_d_44 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_45;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_cmd_cmd_payload_we <= 1'd0;
	if (litedram_core_choose_cmd_cmd_valid) begin
		litedram_core_choose_cmd_cmd_payload_we <= t_array_muxed2;
	end
// synthesis translate_off
	dummy_d_45 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_choose_cmd_ce = (litedram_core_choose_cmd_cmd_ready | (~litedram_core_choose_cmd_cmd_valid));

// synthesis translate_off
reg dummy_d_46;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_req_valids <= 8'd0;
	litedram_core_choose_req_valids[0] <= (litedram_core_bankmachine0_cmd_valid & (((litedram_core_bankmachine0_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine0_cmd_payload_ras & (~litedram_core_bankmachine0_cmd_payload_cas)) & (~litedram_core_bankmachine0_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine0_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine0_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
	litedram_core_choose_req_valids[1] <= (litedram_core_bankmachine1_cmd_valid & (((litedram_core_bankmachine1_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine1_cmd_payload_ras & (~litedram_core_bankmachine1_cmd_payload_cas)) & (~litedram_core_bankmachine1_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine1_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine1_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
	litedram_core_choose_req_valids[2] <= (litedram_core_bankmachine2_cmd_valid & (((litedram_core_bankmachine2_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine2_cmd_payload_ras & (~litedram_core_bankmachine2_cmd_payload_cas)) & (~litedram_core_bankmachine2_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine2_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine2_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
	litedram_core_choose_req_valids[3] <= (litedram_core_bankmachine3_cmd_valid & (((litedram_core_bankmachine3_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine3_cmd_payload_ras & (~litedram_core_bankmachine3_cmd_payload_cas)) & (~litedram_core_bankmachine3_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine3_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine3_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
	litedram_core_choose_req_valids[4] <= (litedram_core_bankmachine4_cmd_valid & (((litedram_core_bankmachine4_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine4_cmd_payload_ras & (~litedram_core_bankmachine4_cmd_payload_cas)) & (~litedram_core_bankmachine4_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine4_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine4_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
	litedram_core_choose_req_valids[5] <= (litedram_core_bankmachine5_cmd_valid & (((litedram_core_bankmachine5_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine5_cmd_payload_ras & (~litedram_core_bankmachine5_cmd_payload_cas)) & (~litedram_core_bankmachine5_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine5_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine5_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
	litedram_core_choose_req_valids[6] <= (litedram_core_bankmachine6_cmd_valid & (((litedram_core_bankmachine6_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine6_cmd_payload_ras & (~litedram_core_bankmachine6_cmd_payload_cas)) & (~litedram_core_bankmachine6_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine6_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine6_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
	litedram_core_choose_req_valids[7] <= (litedram_core_bankmachine7_cmd_valid & (((litedram_core_bankmachine7_cmd_payload_is_cmd & litedram_core_choose_req_want_cmds) & ((~((litedram_core_bankmachine7_cmd_payload_ras & (~litedram_core_bankmachine7_cmd_payload_cas)) & (~litedram_core_bankmachine7_cmd_payload_we))) | litedram_core_choose_req_want_activates)) | ((litedram_core_bankmachine7_cmd_payload_is_read == litedram_core_choose_req_want_reads) & (litedram_core_bankmachine7_cmd_payload_is_write == litedram_core_choose_req_want_writes))));
// synthesis translate_off
	dummy_d_46 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_choose_req_request = litedram_core_choose_req_valids;
assign litedram_core_choose_req_cmd_valid = rhs_array_muxed6;
assign litedram_core_choose_req_cmd_payload_a = rhs_array_muxed7;
assign litedram_core_choose_req_cmd_payload_ba = rhs_array_muxed8;
assign litedram_core_choose_req_cmd_payload_is_read = rhs_array_muxed9;
assign litedram_core_choose_req_cmd_payload_is_write = rhs_array_muxed10;
assign litedram_core_choose_req_cmd_payload_is_cmd = rhs_array_muxed11;

// synthesis translate_off
reg dummy_d_47;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_req_cmd_payload_cas <= 1'd0;
	if (litedram_core_choose_req_cmd_valid) begin
		litedram_core_choose_req_cmd_payload_cas <= t_array_muxed3;
	end
// synthesis translate_off
	dummy_d_47 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_48;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_req_cmd_payload_ras <= 1'd0;
	if (litedram_core_choose_req_cmd_valid) begin
		litedram_core_choose_req_cmd_payload_ras <= t_array_muxed4;
	end
// synthesis translate_off
	dummy_d_48 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_49;
// synthesis translate_on
always @(*) begin
	litedram_core_choose_req_cmd_payload_we <= 1'd0;
	if (litedram_core_choose_req_cmd_valid) begin
		litedram_core_choose_req_cmd_payload_we <= t_array_muxed5;
	end
// synthesis translate_off
	dummy_d_49 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_50;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine0_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 1'd0))) begin
		litedram_core_bankmachine0_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 1'd0))) begin
		litedram_core_bankmachine0_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_50 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_51;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine1_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 1'd1))) begin
		litedram_core_bankmachine1_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 1'd1))) begin
		litedram_core_bankmachine1_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_51 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_52;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine2_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 2'd2))) begin
		litedram_core_bankmachine2_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 2'd2))) begin
		litedram_core_bankmachine2_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_52 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_53;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine3_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 2'd3))) begin
		litedram_core_bankmachine3_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 2'd3))) begin
		litedram_core_bankmachine3_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_53 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_54;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine4_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 3'd4))) begin
		litedram_core_bankmachine4_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 3'd4))) begin
		litedram_core_bankmachine4_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_54 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_55;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine5_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 3'd5))) begin
		litedram_core_bankmachine5_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 3'd5))) begin
		litedram_core_bankmachine5_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_55 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_56;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine6_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 3'd6))) begin
		litedram_core_bankmachine6_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 3'd6))) begin
		litedram_core_bankmachine6_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_56 <= dummy_s;
// synthesis translate_on
end

// synthesis translate_off
reg dummy_d_57;
// synthesis translate_on
always @(*) begin
	litedram_core_bankmachine7_cmd_ready <= 1'd0;
	if (((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & (litedram_core_choose_cmd_grant == 3'd7))) begin
		litedram_core_bankmachine7_cmd_ready <= 1'd1;
	end
	if (((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & (litedram_core_choose_req_grant == 3'd7))) begin
		litedram_core_bankmachine7_cmd_ready <= 1'd1;
	end
// synthesis translate_off
	dummy_d_57 <= dummy_s;
// synthesis translate_on
end
assign litedram_core_choose_req_ce = (litedram_core_choose_req_cmd_ready | (~litedram_core_choose_req_cmd_valid));
assign litedram_core_dfi_p0_reset_n = 1'd1;
assign litedram_core_dfi_p0_cke = {1{litedram_core_steerer0}};
assign litedram_core_dfi_p0_odt = {1{litedram_core_steerer1}};
assign litedram_core_dfi_p1_reset_n = 1'd1;
assign litedram_core_dfi_p1_cke = {1{litedram_core_steerer2}};
assign litedram_core_dfi_p1_odt = {1{litedram_core_steerer3}};
assign litedram_core_dfi_p2_reset_n = 1'd1;
assign litedram_core_dfi_p2_cke = {1{litedram_core_steerer4}};
assign litedram_core_dfi_p2_odt = {1{litedram_core_steerer5}};
assign litedram_core_dfi_p3_reset_n = 1'd1;
assign litedram_core_dfi_p3_cke = {1{litedram_core_steerer6}};
assign litedram_core_dfi_p3_odt = {1{litedram_core_steerer7}};
assign litedram_core_dfi_p4_reset_n = 1'd1;
assign litedram_core_dfi_p4_cke = {1{litedram_core_steerer8}};
assign litedram_core_dfi_p4_odt = {1{litedram_core_steerer9}};
assign litedram_core_dfi_p5_reset_n = 1'd1;
assign litedram_core_dfi_p5_cke = {1{litedram_core_steerer10}};
assign litedram_core_dfi_p5_odt = {1{litedram_core_steerer11}};
assign litedram_core_dfi_p6_reset_n = 1'd1;
assign litedram_core_dfi_p6_cke = {1{litedram_core_steerer12}};
assign litedram_core_dfi_p6_odt = {1{litedram_core_steerer13}};
assign litedram_core_dfi_p7_reset_n = 1'd1;
assign litedram_core_dfi_p7_cke = {1{litedram_core_steerer14}};
assign litedram_core_dfi_p7_odt = {1{litedram_core_steerer15}};
assign litedram_core_tfawcon_count = (litedram_core_tfawcon_window[0] + litedram_core_tfawcon_window[1]);

// synthesis translate_off
reg dummy_d_58;
// synthesis translate_on
always @(*) begin
	litedram_core_cmd_ready <= 1'd0;
	litedram_core_choose_cmd_want_activates <= 1'd0;
	litedram_core_choose_cmd_cmd_ready <= 1'd0;
	litedram_core_choose_req_want_reads <= 1'd0;
	litedram_core_choose_req_want_writes <= 1'd0;
	litedram_core_choose_req_cmd_ready <= 1'd0;
	litedram_core_steerer_sel0 <= 2'd0;
	litedram_core_steerer_sel1 <= 2'd0;
	litedram_core_steerer_sel2 <= 2'd0;
	litedram_core_steerer_sel3 <= 2'd0;
	litedram_core_steerer_sel4 <= 2'd0;
	litedram_core_steerer_sel5 <= 2'd0;
	litedram_core_steerer_sel6 <= 2'd0;
	litedram_core_steerer_sel7 <= 2'd0;
	litedram_core_en0 <= 1'd0;
	litedram_core_en1 <= 1'd0;
	multiplexer_next_state <= 4'd0;
	multiplexer_next_state <= multiplexer_state;
	case (multiplexer_state)
		1'd1: begin
			litedram_core_en1 <= 1'd1;
			litedram_core_choose_req_want_writes <= 1'd1;
			if (1'd0) begin
				litedram_core_choose_req_cmd_ready <= (litedram_core_cas_allowed & ((~((litedram_core_choose_req_cmd_payload_ras & (~litedram_core_choose_req_cmd_payload_cas)) & (~litedram_core_choose_req_cmd_payload_we))) | litedram_core_ras_allowed));
			end else begin
				litedram_core_choose_cmd_want_activates <= litedram_core_ras_allowed;
				litedram_core_choose_cmd_cmd_ready <= ((~((litedram_core_choose_cmd_cmd_payload_ras & (~litedram_core_choose_cmd_cmd_payload_cas)) & (~litedram_core_choose_cmd_cmd_payload_we))) | litedram_core_ras_allowed);
				litedram_core_choose_req_cmd_ready <= litedram_core_cas_allowed;
			end
			litedram_core_steerer_sel0 <= 1'd0;
			if ((phy_wrphase_storage == 1'd0)) begin
				litedram_core_steerer_sel0 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 1'd0)) begin
				litedram_core_steerer_sel0 <= 1'd1;
			end
			litedram_core_steerer_sel1 <= 1'd0;
			if ((phy_wrphase_storage == 1'd1)) begin
				litedram_core_steerer_sel1 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 1'd1)) begin
				litedram_core_steerer_sel1 <= 1'd1;
			end
			litedram_core_steerer_sel2 <= 1'd0;
			if ((phy_wrphase_storage == 2'd2)) begin
				litedram_core_steerer_sel2 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 2'd2)) begin
				litedram_core_steerer_sel2 <= 1'd1;
			end
			litedram_core_steerer_sel3 <= 1'd0;
			if ((phy_wrphase_storage == 2'd3)) begin
				litedram_core_steerer_sel3 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 2'd3)) begin
				litedram_core_steerer_sel3 <= 1'd1;
			end
			litedram_core_steerer_sel4 <= 1'd0;
			if ((phy_wrphase_storage == 3'd4)) begin
				litedram_core_steerer_sel4 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 3'd4)) begin
				litedram_core_steerer_sel4 <= 1'd1;
			end
			litedram_core_steerer_sel5 <= 1'd0;
			if ((phy_wrphase_storage == 3'd5)) begin
				litedram_core_steerer_sel5 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 3'd5)) begin
				litedram_core_steerer_sel5 <= 1'd1;
			end
			litedram_core_steerer_sel6 <= 1'd0;
			if ((phy_wrphase_storage == 3'd6)) begin
				litedram_core_steerer_sel6 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 3'd6)) begin
				litedram_core_steerer_sel6 <= 1'd1;
			end
			litedram_core_steerer_sel7 <= 1'd0;
			if ((phy_wrphase_storage == 3'd7)) begin
				litedram_core_steerer_sel7 <= 2'd2;
			end
			if ((litedram_core_wrcmdphase == 3'd7)) begin
				litedram_core_steerer_sel7 <= 1'd1;
			end
			if (litedram_core_read_available) begin
				if (((~litedram_core_write_available) | litedram_core_max_time1)) begin
					multiplexer_next_state <= 2'd3;
				end
			end
			if (litedram_core_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
		end
		2'd2: begin
			litedram_core_steerer_sel0 <= 2'd3;
			litedram_core_cmd_ready <= 1'd1;
			if (litedram_core_cmd_last) begin
				multiplexer_next_state <= 1'd0;
			end
		end
		2'd3: begin
			if (litedram_core_twtrcon_ready) begin
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
			litedram_core_en0 <= 1'd1;
			litedram_core_choose_req_want_reads <= 1'd1;
			if (1'd0) begin
				litedram_core_choose_req_cmd_ready <= (litedram_core_cas_allowed & ((~((litedram_core_choose_req_cmd_payload_ras & (~litedram_core_choose_req_cmd_payload_cas)) & (~litedram_core_choose_req_cmd_payload_we))) | litedram_core_ras_allowed));
			end else begin
				litedram_core_choose_cmd_want_activates <= litedram_core_ras_allowed;
				litedram_core_choose_cmd_cmd_ready <= ((~((litedram_core_choose_cmd_cmd_payload_ras & (~litedram_core_choose_cmd_cmd_payload_cas)) & (~litedram_core_choose_cmd_cmd_payload_we))) | litedram_core_ras_allowed);
				litedram_core_choose_req_cmd_ready <= litedram_core_cas_allowed;
			end
			litedram_core_steerer_sel0 <= 1'd0;
			if ((phy_rdphase_storage == 1'd0)) begin
				litedram_core_steerer_sel0 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 1'd0)) begin
				litedram_core_steerer_sel0 <= 1'd1;
			end
			litedram_core_steerer_sel1 <= 1'd0;
			if ((phy_rdphase_storage == 1'd1)) begin
				litedram_core_steerer_sel1 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 1'd1)) begin
				litedram_core_steerer_sel1 <= 1'd1;
			end
			litedram_core_steerer_sel2 <= 1'd0;
			if ((phy_rdphase_storage == 2'd2)) begin
				litedram_core_steerer_sel2 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 2'd2)) begin
				litedram_core_steerer_sel2 <= 1'd1;
			end
			litedram_core_steerer_sel3 <= 1'd0;
			if ((phy_rdphase_storage == 2'd3)) begin
				litedram_core_steerer_sel3 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 2'd3)) begin
				litedram_core_steerer_sel3 <= 1'd1;
			end
			litedram_core_steerer_sel4 <= 1'd0;
			if ((phy_rdphase_storage == 3'd4)) begin
				litedram_core_steerer_sel4 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 3'd4)) begin
				litedram_core_steerer_sel4 <= 1'd1;
			end
			litedram_core_steerer_sel5 <= 1'd0;
			if ((phy_rdphase_storage == 3'd5)) begin
				litedram_core_steerer_sel5 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 3'd5)) begin
				litedram_core_steerer_sel5 <= 1'd1;
			end
			litedram_core_steerer_sel6 <= 1'd0;
			if ((phy_rdphase_storage == 3'd6)) begin
				litedram_core_steerer_sel6 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 3'd6)) begin
				litedram_core_steerer_sel6 <= 1'd1;
			end
			litedram_core_steerer_sel7 <= 1'd0;
			if ((phy_rdphase_storage == 3'd7)) begin
				litedram_core_steerer_sel7 <= 2'd2;
			end
			if ((litedram_core_rdcmdphase == 3'd7)) begin
				litedram_core_steerer_sel7 <= 1'd1;
			end
			if (litedram_core_write_available) begin
				if (((~litedram_core_read_available) | litedram_core_max_time0)) begin
					multiplexer_next_state <= 3'd4;
				end
			end
			if (litedram_core_go_to_refresh) begin
				multiplexer_next_state <= 2'd2;
			end
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
	rhs_array_muxed0 <= 1'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[0];
		end
		1'd1: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[1];
		end
		2'd2: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[2];
		end
		2'd3: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[3];
		end
		3'd4: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[4];
		end
		3'd5: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[5];
		end
		3'd6: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[6];
		end
		default: begin
			rhs_array_muxed0 <= litedram_core_choose_cmd_valids[7];
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
	rhs_array_muxed1 <= 7'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed1 <= litedram_core_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed1 <= litedram_core_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed1 <= litedram_core_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed1 <= litedram_core_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed1 <= litedram_core_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed1 <= litedram_core_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed1 <= litedram_core_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed1 <= litedram_core_bankmachine7_cmd_payload_a;
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
	rhs_array_muxed2 <= 3'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed2 <= litedram_core_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed2 <= litedram_core_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed2 <= litedram_core_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed2 <= litedram_core_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed2 <= litedram_core_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed2 <= litedram_core_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed2 <= litedram_core_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed2 <= litedram_core_bankmachine7_cmd_payload_ba;
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
	rhs_array_muxed3 <= 1'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed3 <= litedram_core_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed3 <= litedram_core_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed3 <= litedram_core_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed3 <= litedram_core_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed3 <= litedram_core_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed3 <= litedram_core_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed3 <= litedram_core_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed3 <= litedram_core_bankmachine7_cmd_payload_is_read;
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
	rhs_array_muxed4 <= 1'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed4 <= litedram_core_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed4 <= litedram_core_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed4 <= litedram_core_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed4 <= litedram_core_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed4 <= litedram_core_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed4 <= litedram_core_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed4 <= litedram_core_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed4 <= litedram_core_bankmachine7_cmd_payload_is_write;
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
	rhs_array_muxed5 <= 1'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			rhs_array_muxed5 <= litedram_core_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed5 <= litedram_core_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed5 <= litedram_core_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed5 <= litedram_core_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed5 <= litedram_core_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed5 <= litedram_core_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed5 <= litedram_core_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed5 <= litedram_core_bankmachine7_cmd_payload_is_cmd;
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
	t_array_muxed0 <= 1'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			t_array_muxed0 <= litedram_core_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed0 <= litedram_core_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed0 <= litedram_core_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed0 <= litedram_core_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed0 <= litedram_core_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed0 <= litedram_core_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed0 <= litedram_core_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed0 <= litedram_core_bankmachine7_cmd_payload_cas;
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
	t_array_muxed1 <= 1'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			t_array_muxed1 <= litedram_core_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed1 <= litedram_core_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed1 <= litedram_core_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed1 <= litedram_core_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed1 <= litedram_core_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed1 <= litedram_core_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed1 <= litedram_core_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed1 <= litedram_core_bankmachine7_cmd_payload_ras;
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
	t_array_muxed2 <= 1'd0;
	case (litedram_core_choose_cmd_grant)
		1'd0: begin
			t_array_muxed2 <= litedram_core_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed2 <= litedram_core_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed2 <= litedram_core_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed2 <= litedram_core_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed2 <= litedram_core_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed2 <= litedram_core_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed2 <= litedram_core_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed2 <= litedram_core_bankmachine7_cmd_payload_we;
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
	rhs_array_muxed6 <= 1'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[0];
		end
		1'd1: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[1];
		end
		2'd2: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[2];
		end
		2'd3: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[3];
		end
		3'd4: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[4];
		end
		3'd5: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[5];
		end
		3'd6: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[6];
		end
		default: begin
			rhs_array_muxed6 <= litedram_core_choose_req_valids[7];
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
	rhs_array_muxed7 <= 7'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			rhs_array_muxed7 <= litedram_core_bankmachine0_cmd_payload_a;
		end
		1'd1: begin
			rhs_array_muxed7 <= litedram_core_bankmachine1_cmd_payload_a;
		end
		2'd2: begin
			rhs_array_muxed7 <= litedram_core_bankmachine2_cmd_payload_a;
		end
		2'd3: begin
			rhs_array_muxed7 <= litedram_core_bankmachine3_cmd_payload_a;
		end
		3'd4: begin
			rhs_array_muxed7 <= litedram_core_bankmachine4_cmd_payload_a;
		end
		3'd5: begin
			rhs_array_muxed7 <= litedram_core_bankmachine5_cmd_payload_a;
		end
		3'd6: begin
			rhs_array_muxed7 <= litedram_core_bankmachine6_cmd_payload_a;
		end
		default: begin
			rhs_array_muxed7 <= litedram_core_bankmachine7_cmd_payload_a;
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
	rhs_array_muxed8 <= 3'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			rhs_array_muxed8 <= litedram_core_bankmachine0_cmd_payload_ba;
		end
		1'd1: begin
			rhs_array_muxed8 <= litedram_core_bankmachine1_cmd_payload_ba;
		end
		2'd2: begin
			rhs_array_muxed8 <= litedram_core_bankmachine2_cmd_payload_ba;
		end
		2'd3: begin
			rhs_array_muxed8 <= litedram_core_bankmachine3_cmd_payload_ba;
		end
		3'd4: begin
			rhs_array_muxed8 <= litedram_core_bankmachine4_cmd_payload_ba;
		end
		3'd5: begin
			rhs_array_muxed8 <= litedram_core_bankmachine5_cmd_payload_ba;
		end
		3'd6: begin
			rhs_array_muxed8 <= litedram_core_bankmachine6_cmd_payload_ba;
		end
		default: begin
			rhs_array_muxed8 <= litedram_core_bankmachine7_cmd_payload_ba;
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
	rhs_array_muxed9 <= 1'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			rhs_array_muxed9 <= litedram_core_bankmachine0_cmd_payload_is_read;
		end
		1'd1: begin
			rhs_array_muxed9 <= litedram_core_bankmachine1_cmd_payload_is_read;
		end
		2'd2: begin
			rhs_array_muxed9 <= litedram_core_bankmachine2_cmd_payload_is_read;
		end
		2'd3: begin
			rhs_array_muxed9 <= litedram_core_bankmachine3_cmd_payload_is_read;
		end
		3'd4: begin
			rhs_array_muxed9 <= litedram_core_bankmachine4_cmd_payload_is_read;
		end
		3'd5: begin
			rhs_array_muxed9 <= litedram_core_bankmachine5_cmd_payload_is_read;
		end
		3'd6: begin
			rhs_array_muxed9 <= litedram_core_bankmachine6_cmd_payload_is_read;
		end
		default: begin
			rhs_array_muxed9 <= litedram_core_bankmachine7_cmd_payload_is_read;
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
	rhs_array_muxed10 <= 1'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			rhs_array_muxed10 <= litedram_core_bankmachine0_cmd_payload_is_write;
		end
		1'd1: begin
			rhs_array_muxed10 <= litedram_core_bankmachine1_cmd_payload_is_write;
		end
		2'd2: begin
			rhs_array_muxed10 <= litedram_core_bankmachine2_cmd_payload_is_write;
		end
		2'd3: begin
			rhs_array_muxed10 <= litedram_core_bankmachine3_cmd_payload_is_write;
		end
		3'd4: begin
			rhs_array_muxed10 <= litedram_core_bankmachine4_cmd_payload_is_write;
		end
		3'd5: begin
			rhs_array_muxed10 <= litedram_core_bankmachine5_cmd_payload_is_write;
		end
		3'd6: begin
			rhs_array_muxed10 <= litedram_core_bankmachine6_cmd_payload_is_write;
		end
		default: begin
			rhs_array_muxed10 <= litedram_core_bankmachine7_cmd_payload_is_write;
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
	rhs_array_muxed11 <= 1'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			rhs_array_muxed11 <= litedram_core_bankmachine0_cmd_payload_is_cmd;
		end
		1'd1: begin
			rhs_array_muxed11 <= litedram_core_bankmachine1_cmd_payload_is_cmd;
		end
		2'd2: begin
			rhs_array_muxed11 <= litedram_core_bankmachine2_cmd_payload_is_cmd;
		end
		2'd3: begin
			rhs_array_muxed11 <= litedram_core_bankmachine3_cmd_payload_is_cmd;
		end
		3'd4: begin
			rhs_array_muxed11 <= litedram_core_bankmachine4_cmd_payload_is_cmd;
		end
		3'd5: begin
			rhs_array_muxed11 <= litedram_core_bankmachine5_cmd_payload_is_cmd;
		end
		3'd6: begin
			rhs_array_muxed11 <= litedram_core_bankmachine6_cmd_payload_is_cmd;
		end
		default: begin
			rhs_array_muxed11 <= litedram_core_bankmachine7_cmd_payload_is_cmd;
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
	t_array_muxed3 <= 1'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			t_array_muxed3 <= litedram_core_bankmachine0_cmd_payload_cas;
		end
		1'd1: begin
			t_array_muxed3 <= litedram_core_bankmachine1_cmd_payload_cas;
		end
		2'd2: begin
			t_array_muxed3 <= litedram_core_bankmachine2_cmd_payload_cas;
		end
		2'd3: begin
			t_array_muxed3 <= litedram_core_bankmachine3_cmd_payload_cas;
		end
		3'd4: begin
			t_array_muxed3 <= litedram_core_bankmachine4_cmd_payload_cas;
		end
		3'd5: begin
			t_array_muxed3 <= litedram_core_bankmachine5_cmd_payload_cas;
		end
		3'd6: begin
			t_array_muxed3 <= litedram_core_bankmachine6_cmd_payload_cas;
		end
		default: begin
			t_array_muxed3 <= litedram_core_bankmachine7_cmd_payload_cas;
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
	t_array_muxed4 <= 1'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			t_array_muxed4 <= litedram_core_bankmachine0_cmd_payload_ras;
		end
		1'd1: begin
			t_array_muxed4 <= litedram_core_bankmachine1_cmd_payload_ras;
		end
		2'd2: begin
			t_array_muxed4 <= litedram_core_bankmachine2_cmd_payload_ras;
		end
		2'd3: begin
			t_array_muxed4 <= litedram_core_bankmachine3_cmd_payload_ras;
		end
		3'd4: begin
			t_array_muxed4 <= litedram_core_bankmachine4_cmd_payload_ras;
		end
		3'd5: begin
			t_array_muxed4 <= litedram_core_bankmachine5_cmd_payload_ras;
		end
		3'd6: begin
			t_array_muxed4 <= litedram_core_bankmachine6_cmd_payload_ras;
		end
		default: begin
			t_array_muxed4 <= litedram_core_bankmachine7_cmd_payload_ras;
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
	t_array_muxed5 <= 1'd0;
	case (litedram_core_choose_req_grant)
		1'd0: begin
			t_array_muxed5 <= litedram_core_bankmachine0_cmd_payload_we;
		end
		1'd1: begin
			t_array_muxed5 <= litedram_core_bankmachine1_cmd_payload_we;
		end
		2'd2: begin
			t_array_muxed5 <= litedram_core_bankmachine2_cmd_payload_we;
		end
		2'd3: begin
			t_array_muxed5 <= litedram_core_bankmachine3_cmd_payload_we;
		end
		3'd4: begin
			t_array_muxed5 <= litedram_core_bankmachine4_cmd_payload_we;
		end
		3'd5: begin
			t_array_muxed5 <= litedram_core_bankmachine5_cmd_payload_we;
		end
		3'd6: begin
			t_array_muxed5 <= litedram_core_bankmachine6_cmd_payload_we;
		end
		default: begin
			t_array_muxed5 <= litedram_core_bankmachine7_cmd_payload_we;
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
	array_muxed0 <= 3'd0;
	case (litedram_core_steerer_sel0)
		1'd0: begin
			array_muxed0 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed0 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed0 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed0 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed1 <= 7'd0;
	case (litedram_core_steerer_sel0)
		1'd0: begin
			array_muxed1 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed1 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed1 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed1 <= litedram_core_cmd_payload_a;
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
	array_muxed2 <= 1'd0;
	case (litedram_core_steerer_sel0)
		1'd0: begin
			array_muxed2 <= 1'd0;
		end
		1'd1: begin
			array_muxed2 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed2 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed2 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed3 <= 1'd0;
	case (litedram_core_steerer_sel0)
		1'd0: begin
			array_muxed3 <= 1'd0;
		end
		1'd1: begin
			array_muxed3 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed3 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed3 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed4 <= 1'd0;
	case (litedram_core_steerer_sel0)
		1'd0: begin
			array_muxed4 <= 1'd0;
		end
		1'd1: begin
			array_muxed4 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed4 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed4 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed5 <= 1'd0;
	case (litedram_core_steerer_sel0)
		1'd0: begin
			array_muxed5 <= 1'd0;
		end
		1'd1: begin
			array_muxed5 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed5 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed5 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed6 <= 1'd0;
	case (litedram_core_steerer_sel0)
		1'd0: begin
			array_muxed6 <= 1'd0;
		end
		1'd1: begin
			array_muxed6 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed6 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed6 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
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
	array_muxed7 <= 3'd0;
	case (litedram_core_steerer_sel1)
		1'd0: begin
			array_muxed7 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed7 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed7 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed7 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed8 <= 7'd0;
	case (litedram_core_steerer_sel1)
		1'd0: begin
			array_muxed8 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed8 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed8 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed8 <= litedram_core_cmd_payload_a;
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
	array_muxed9 <= 1'd0;
	case (litedram_core_steerer_sel1)
		1'd0: begin
			array_muxed9 <= 1'd0;
		end
		1'd1: begin
			array_muxed9 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed9 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed9 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed10 <= 1'd0;
	case (litedram_core_steerer_sel1)
		1'd0: begin
			array_muxed10 <= 1'd0;
		end
		1'd1: begin
			array_muxed10 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed10 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed10 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed11 <= 1'd0;
	case (litedram_core_steerer_sel1)
		1'd0: begin
			array_muxed11 <= 1'd0;
		end
		1'd1: begin
			array_muxed11 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed11 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed11 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed12 <= 1'd0;
	case (litedram_core_steerer_sel1)
		1'd0: begin
			array_muxed12 <= 1'd0;
		end
		1'd1: begin
			array_muxed12 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed12 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed12 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed13 <= 1'd0;
	case (litedram_core_steerer_sel1)
		1'd0: begin
			array_muxed13 <= 1'd0;
		end
		1'd1: begin
			array_muxed13 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed13 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed13 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
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
	array_muxed14 <= 3'd0;
	case (litedram_core_steerer_sel2)
		1'd0: begin
			array_muxed14 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed14 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed14 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed14 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed15 <= 7'd0;
	case (litedram_core_steerer_sel2)
		1'd0: begin
			array_muxed15 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed15 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed15 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed15 <= litedram_core_cmd_payload_a;
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
	array_muxed16 <= 1'd0;
	case (litedram_core_steerer_sel2)
		1'd0: begin
			array_muxed16 <= 1'd0;
		end
		1'd1: begin
			array_muxed16 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed16 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed16 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed17 <= 1'd0;
	case (litedram_core_steerer_sel2)
		1'd0: begin
			array_muxed17 <= 1'd0;
		end
		1'd1: begin
			array_muxed17 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed17 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed17 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed18 <= 1'd0;
	case (litedram_core_steerer_sel2)
		1'd0: begin
			array_muxed18 <= 1'd0;
		end
		1'd1: begin
			array_muxed18 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed18 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed18 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed19 <= 1'd0;
	case (litedram_core_steerer_sel2)
		1'd0: begin
			array_muxed19 <= 1'd0;
		end
		1'd1: begin
			array_muxed19 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed19 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed19 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed20 <= 1'd0;
	case (litedram_core_steerer_sel2)
		1'd0: begin
			array_muxed20 <= 1'd0;
		end
		1'd1: begin
			array_muxed20 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed20 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed20 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
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
	array_muxed21 <= 3'd0;
	case (litedram_core_steerer_sel3)
		1'd0: begin
			array_muxed21 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed21 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed21 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed21 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed22 <= 7'd0;
	case (litedram_core_steerer_sel3)
		1'd0: begin
			array_muxed22 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed22 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed22 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed22 <= litedram_core_cmd_payload_a;
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
	array_muxed23 <= 1'd0;
	case (litedram_core_steerer_sel3)
		1'd0: begin
			array_muxed23 <= 1'd0;
		end
		1'd1: begin
			array_muxed23 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed23 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed23 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed24 <= 1'd0;
	case (litedram_core_steerer_sel3)
		1'd0: begin
			array_muxed24 <= 1'd0;
		end
		1'd1: begin
			array_muxed24 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed24 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed24 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed25 <= 1'd0;
	case (litedram_core_steerer_sel3)
		1'd0: begin
			array_muxed25 <= 1'd0;
		end
		1'd1: begin
			array_muxed25 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed25 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed25 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed26 <= 1'd0;
	case (litedram_core_steerer_sel3)
		1'd0: begin
			array_muxed26 <= 1'd0;
		end
		1'd1: begin
			array_muxed26 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed26 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed26 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed27 <= 1'd0;
	case (litedram_core_steerer_sel3)
		1'd0: begin
			array_muxed27 <= 1'd0;
		end
		1'd1: begin
			array_muxed27 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed27 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed27 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
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
	array_muxed28 <= 3'd0;
	case (litedram_core_steerer_sel4)
		1'd0: begin
			array_muxed28 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed28 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed28 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed28 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed29 <= 7'd0;
	case (litedram_core_steerer_sel4)
		1'd0: begin
			array_muxed29 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed29 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed29 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed29 <= litedram_core_cmd_payload_a;
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
	array_muxed30 <= 1'd0;
	case (litedram_core_steerer_sel4)
		1'd0: begin
			array_muxed30 <= 1'd0;
		end
		1'd1: begin
			array_muxed30 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed30 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed30 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed31 <= 1'd0;
	case (litedram_core_steerer_sel4)
		1'd0: begin
			array_muxed31 <= 1'd0;
		end
		1'd1: begin
			array_muxed31 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed31 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed31 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed32 <= 1'd0;
	case (litedram_core_steerer_sel4)
		1'd0: begin
			array_muxed32 <= 1'd0;
		end
		1'd1: begin
			array_muxed32 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed32 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed32 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed33 <= 1'd0;
	case (litedram_core_steerer_sel4)
		1'd0: begin
			array_muxed33 <= 1'd0;
		end
		1'd1: begin
			array_muxed33 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed33 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed33 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed34 <= 1'd0;
	case (litedram_core_steerer_sel4)
		1'd0: begin
			array_muxed34 <= 1'd0;
		end
		1'd1: begin
			array_muxed34 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed34 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed34 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
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
	array_muxed35 <= 3'd0;
	case (litedram_core_steerer_sel5)
		1'd0: begin
			array_muxed35 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed35 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed35 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed35 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed36 <= 7'd0;
	case (litedram_core_steerer_sel5)
		1'd0: begin
			array_muxed36 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed36 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed36 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed36 <= litedram_core_cmd_payload_a;
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
	array_muxed37 <= 1'd0;
	case (litedram_core_steerer_sel5)
		1'd0: begin
			array_muxed37 <= 1'd0;
		end
		1'd1: begin
			array_muxed37 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed37 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed37 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed38 <= 1'd0;
	case (litedram_core_steerer_sel5)
		1'd0: begin
			array_muxed38 <= 1'd0;
		end
		1'd1: begin
			array_muxed38 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed38 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed38 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed39 <= 1'd0;
	case (litedram_core_steerer_sel5)
		1'd0: begin
			array_muxed39 <= 1'd0;
		end
		1'd1: begin
			array_muxed39 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed39 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed39 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed40 <= 1'd0;
	case (litedram_core_steerer_sel5)
		1'd0: begin
			array_muxed40 <= 1'd0;
		end
		1'd1: begin
			array_muxed40 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed40 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed40 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed41 <= 1'd0;
	case (litedram_core_steerer_sel5)
		1'd0: begin
			array_muxed41 <= 1'd0;
		end
		1'd1: begin
			array_muxed41 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed41 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed41 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
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
	array_muxed42 <= 3'd0;
	case (litedram_core_steerer_sel6)
		1'd0: begin
			array_muxed42 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed42 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed42 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed42 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed43 <= 7'd0;
	case (litedram_core_steerer_sel6)
		1'd0: begin
			array_muxed43 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed43 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed43 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed43 <= litedram_core_cmd_payload_a;
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
	array_muxed44 <= 1'd0;
	case (litedram_core_steerer_sel6)
		1'd0: begin
			array_muxed44 <= 1'd0;
		end
		1'd1: begin
			array_muxed44 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed44 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed44 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed45 <= 1'd0;
	case (litedram_core_steerer_sel6)
		1'd0: begin
			array_muxed45 <= 1'd0;
		end
		1'd1: begin
			array_muxed45 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed45 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed45 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed46 <= 1'd0;
	case (litedram_core_steerer_sel6)
		1'd0: begin
			array_muxed46 <= 1'd0;
		end
		1'd1: begin
			array_muxed46 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed46 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed46 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed47 <= 1'd0;
	case (litedram_core_steerer_sel6)
		1'd0: begin
			array_muxed47 <= 1'd0;
		end
		1'd1: begin
			array_muxed47 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed47 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed47 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed48 <= 1'd0;
	case (litedram_core_steerer_sel6)
		1'd0: begin
			array_muxed48 <= 1'd0;
		end
		1'd1: begin
			array_muxed48 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed48 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed48 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
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
	array_muxed49 <= 3'd0;
	case (litedram_core_steerer_sel7)
		1'd0: begin
			array_muxed49 <= litedram_core_nop_ba[2:0];
		end
		1'd1: begin
			array_muxed49 <= litedram_core_choose_cmd_cmd_payload_ba[2:0];
		end
		2'd2: begin
			array_muxed49 <= litedram_core_choose_req_cmd_payload_ba[2:0];
		end
		default: begin
			array_muxed49 <= litedram_core_cmd_payload_ba[2:0];
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
	array_muxed50 <= 7'd0;
	case (litedram_core_steerer_sel7)
		1'd0: begin
			array_muxed50 <= litedram_core_nop_a;
		end
		1'd1: begin
			array_muxed50 <= litedram_core_choose_cmd_cmd_payload_a;
		end
		2'd2: begin
			array_muxed50 <= litedram_core_choose_req_cmd_payload_a;
		end
		default: begin
			array_muxed50 <= litedram_core_cmd_payload_a;
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
	array_muxed51 <= 1'd0;
	case (litedram_core_steerer_sel7)
		1'd0: begin
			array_muxed51 <= 1'd0;
		end
		1'd1: begin
			array_muxed51 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_cas);
		end
		2'd2: begin
			array_muxed51 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_cas);
		end
		default: begin
			array_muxed51 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_cas);
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
	array_muxed52 <= 1'd0;
	case (litedram_core_steerer_sel7)
		1'd0: begin
			array_muxed52 <= 1'd0;
		end
		1'd1: begin
			array_muxed52 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_ras);
		end
		2'd2: begin
			array_muxed52 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_ras);
		end
		default: begin
			array_muxed52 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_ras);
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
	array_muxed53 <= 1'd0;
	case (litedram_core_steerer_sel7)
		1'd0: begin
			array_muxed53 <= 1'd0;
		end
		1'd1: begin
			array_muxed53 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_we);
		end
		2'd2: begin
			array_muxed53 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_we);
		end
		default: begin
			array_muxed53 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_we);
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
	array_muxed54 <= 1'd0;
	case (litedram_core_steerer_sel7)
		1'd0: begin
			array_muxed54 <= 1'd0;
		end
		1'd1: begin
			array_muxed54 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_read);
		end
		2'd2: begin
			array_muxed54 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_read);
		end
		default: begin
			array_muxed54 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_read);
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
	array_muxed55 <= 1'd0;
	case (litedram_core_steerer_sel7)
		1'd0: begin
			array_muxed55 <= 1'd0;
		end
		1'd1: begin
			array_muxed55 <= ((litedram_core_choose_cmd_cmd_valid & litedram_core_choose_cmd_cmd_ready) & litedram_core_choose_cmd_cmd_payload_is_write);
		end
		2'd2: begin
			array_muxed55 <= ((litedram_core_choose_req_cmd_valid & litedram_core_choose_req_cmd_ready) & litedram_core_choose_req_cmd_payload_is_write);
		end
		default: begin
			array_muxed55 <= ((litedram_core_cmd_valid & litedram_core_cmd_ready) & litedram_core_cmd_payload_is_write);
		end
	endcase
// synthesis translate_off
	dummy_d_132 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	if (litedram_core_csr_dfi_p0_rddata_valid) begin
		litedram_core_phaseinjector0_status <= litedram_core_csr_dfi_p0_rddata;
	end
	if (litedram_core_csr_dfi_p1_rddata_valid) begin
		litedram_core_phaseinjector1_status <= litedram_core_csr_dfi_p1_rddata;
	end
	if (litedram_core_csr_dfi_p2_rddata_valid) begin
		litedram_core_phaseinjector2_status <= litedram_core_csr_dfi_p2_rddata;
	end
	if (litedram_core_csr_dfi_p3_rddata_valid) begin
		litedram_core_phaseinjector3_status <= litedram_core_csr_dfi_p3_rddata;
	end
	if (litedram_core_csr_dfi_p4_rddata_valid) begin
		litedram_core_phaseinjector4_status <= litedram_core_csr_dfi_p4_rddata;
	end
	if (litedram_core_csr_dfi_p5_rddata_valid) begin
		litedram_core_phaseinjector5_status <= litedram_core_csr_dfi_p5_rddata;
	end
	if (litedram_core_csr_dfi_p6_rddata_valid) begin
		litedram_core_phaseinjector6_status <= litedram_core_csr_dfi_p6_rddata;
	end
	if (litedram_core_csr_dfi_p7_rddata_valid) begin
		litedram_core_phaseinjector7_status <= litedram_core_csr_dfi_p7_rddata;
	end
	if ((litedram_core_timer_wait & (~litedram_core_timer_done0))) begin
		litedram_core_timer_count1 <= (litedram_core_timer_count1 - 1'd1);
	end else begin
		litedram_core_timer_count1 <= 9'd299;
	end
	litedram_core_postponer_req_o <= 1'd0;
	if (litedram_core_postponer_req_i) begin
		litedram_core_postponer_count <= (litedram_core_postponer_count - 1'd1);
		if ((litedram_core_postponer_count == 1'd0)) begin
			litedram_core_postponer_count <= 1'd0;
			litedram_core_postponer_req_o <= 1'd1;
		end
	end
	if (litedram_core_sequencer_start0) begin
		litedram_core_sequencer_count <= 1'd0;
	end else begin
		if (litedram_core_sequencer_done1) begin
			if ((litedram_core_sequencer_count != 1'd0)) begin
				litedram_core_sequencer_count <= (litedram_core_sequencer_count - 1'd1);
			end
		end
	end
	litedram_core_cmd_payload_a <= 1'd0;
	litedram_core_cmd_payload_ba <= 1'd0;
	litedram_core_cmd_payload_cas <= 1'd0;
	litedram_core_cmd_payload_ras <= 1'd0;
	litedram_core_cmd_payload_we <= 1'd0;
	litedram_core_sequencer_done1 <= 1'd0;
	if ((litedram_core_sequencer_start1 & (litedram_core_sequencer_counter == 1'd0))) begin
		litedram_core_cmd_payload_a <= 11'd1024;
		litedram_core_cmd_payload_ba <= 1'd0;
		litedram_core_cmd_payload_cas <= 1'd0;
		litedram_core_cmd_payload_ras <= 1'd1;
		litedram_core_cmd_payload_we <= 1'd1;
	end
	if ((litedram_core_sequencer_counter == 2'd2)) begin
		litedram_core_cmd_payload_a <= 11'd1024;
		litedram_core_cmd_payload_ba <= 1'd0;
		litedram_core_cmd_payload_cas <= 1'd1;
		litedram_core_cmd_payload_ras <= 1'd1;
		litedram_core_cmd_payload_we <= 1'd0;
	end
	if ((litedram_core_sequencer_counter == 3'd5)) begin
		litedram_core_cmd_payload_a <= 1'd0;
		litedram_core_cmd_payload_ba <= 1'd0;
		litedram_core_cmd_payload_cas <= 1'd0;
		litedram_core_cmd_payload_ras <= 1'd0;
		litedram_core_cmd_payload_we <= 1'd0;
		litedram_core_sequencer_done1 <= 1'd1;
	end
	if ((litedram_core_sequencer_counter == 3'd5)) begin
		litedram_core_sequencer_counter <= 1'd0;
	end else begin
		if ((litedram_core_sequencer_counter != 1'd0)) begin
			litedram_core_sequencer_counter <= (litedram_core_sequencer_counter + 1'd1);
		end else begin
			if (litedram_core_sequencer_start1) begin
				litedram_core_sequencer_counter <= 1'd1;
			end
		end
	end
	if ((litedram_core_zqcs_timer_wait & (~litedram_core_zqcs_timer_done0))) begin
		litedram_core_zqcs_timer_count1 <= (litedram_core_zqcs_timer_count1 - 1'd1);
	end else begin
		litedram_core_zqcs_timer_count1 <= 28'd265999999;
	end
	litedram_core_zqcs_executer_done <= 1'd0;
	if ((litedram_core_zqcs_executer_start & (litedram_core_zqcs_executer_counter == 1'd0))) begin
		litedram_core_cmd_payload_a <= 11'd1024;
		litedram_core_cmd_payload_ba <= 1'd0;
		litedram_core_cmd_payload_cas <= 1'd0;
		litedram_core_cmd_payload_ras <= 1'd1;
		litedram_core_cmd_payload_we <= 1'd1;
	end
	if ((litedram_core_zqcs_executer_counter == 2'd2)) begin
		litedram_core_cmd_payload_a <= 1'd0;
		litedram_core_cmd_payload_ba <= 1'd0;
		litedram_core_cmd_payload_cas <= 1'd0;
		litedram_core_cmd_payload_ras <= 1'd0;
		litedram_core_cmd_payload_we <= 1'd1;
	end
	if ((litedram_core_zqcs_executer_counter == 4'd12)) begin
		litedram_core_cmd_payload_a <= 1'd0;
		litedram_core_cmd_payload_ba <= 1'd0;
		litedram_core_cmd_payload_cas <= 1'd0;
		litedram_core_cmd_payload_ras <= 1'd0;
		litedram_core_cmd_payload_we <= 1'd0;
		litedram_core_zqcs_executer_done <= 1'd1;
	end
	if ((litedram_core_zqcs_executer_counter == 4'd12)) begin
		litedram_core_zqcs_executer_counter <= 1'd0;
	end else begin
		if ((litedram_core_zqcs_executer_counter != 1'd0)) begin
			litedram_core_zqcs_executer_counter <= (litedram_core_zqcs_executer_counter + 1'd1);
		end else begin
			if (litedram_core_zqcs_executer_start) begin
				litedram_core_zqcs_executer_counter <= 1'd1;
			end
		end
	end
	refresher_state <= refresher_next_state;
	if (litedram_core_bankmachine0_row_close) begin
		litedram_core_bankmachine0_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine0_row_open) begin
			litedram_core_bankmachine0_row_opened <= 1'd1;
			litedram_core_bankmachine0_row <= litedram_core_bankmachine0_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~litedram_core_bankmachine0_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine0_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine0_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine0_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine0_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine0_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_we & litedram_core_bankmachine0_cmd_buffer_lookahead_syncfifo0_writable) & (~litedram_core_bankmachine0_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine0_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine0_cmd_buffer_lookahead_level <= (litedram_core_bankmachine0_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine0_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine0_cmd_buffer_lookahead_level <= (litedram_core_bankmachine0_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine0_cmd_buffer_source_valid) | litedram_core_bankmachine0_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine0_cmd_buffer_source_valid <= litedram_core_bankmachine0_cmd_buffer_sink_valid;
		litedram_core_bankmachine0_cmd_buffer_source_first <= litedram_core_bankmachine0_cmd_buffer_sink_first;
		litedram_core_bankmachine0_cmd_buffer_source_last <= litedram_core_bankmachine0_cmd_buffer_sink_last;
		litedram_core_bankmachine0_cmd_buffer_source_payload_we <= litedram_core_bankmachine0_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine0_cmd_buffer_source_payload_addr <= litedram_core_bankmachine0_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine0_twtpcon_valid) begin
		litedram_core_bankmachine0_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine0_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine0_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine0_twtpcon_ready)) begin
			litedram_core_bankmachine0_twtpcon_count <= (litedram_core_bankmachine0_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine0_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine0_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine0_state <= bankmachine0_next_state;
	if (litedram_core_bankmachine1_row_close) begin
		litedram_core_bankmachine1_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine1_row_open) begin
			litedram_core_bankmachine1_row_opened <= 1'd1;
			litedram_core_bankmachine1_row <= litedram_core_bankmachine1_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~litedram_core_bankmachine1_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine1_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine1_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine1_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine1_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine1_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_we & litedram_core_bankmachine1_cmd_buffer_lookahead_syncfifo1_writable) & (~litedram_core_bankmachine1_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine1_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine1_cmd_buffer_lookahead_level <= (litedram_core_bankmachine1_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine1_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine1_cmd_buffer_lookahead_level <= (litedram_core_bankmachine1_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine1_cmd_buffer_source_valid) | litedram_core_bankmachine1_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine1_cmd_buffer_source_valid <= litedram_core_bankmachine1_cmd_buffer_sink_valid;
		litedram_core_bankmachine1_cmd_buffer_source_first <= litedram_core_bankmachine1_cmd_buffer_sink_first;
		litedram_core_bankmachine1_cmd_buffer_source_last <= litedram_core_bankmachine1_cmd_buffer_sink_last;
		litedram_core_bankmachine1_cmd_buffer_source_payload_we <= litedram_core_bankmachine1_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine1_cmd_buffer_source_payload_addr <= litedram_core_bankmachine1_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine1_twtpcon_valid) begin
		litedram_core_bankmachine1_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine1_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine1_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine1_twtpcon_ready)) begin
			litedram_core_bankmachine1_twtpcon_count <= (litedram_core_bankmachine1_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine1_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine1_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine1_state <= bankmachine1_next_state;
	if (litedram_core_bankmachine2_row_close) begin
		litedram_core_bankmachine2_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine2_row_open) begin
			litedram_core_bankmachine2_row_opened <= 1'd1;
			litedram_core_bankmachine2_row <= litedram_core_bankmachine2_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~litedram_core_bankmachine2_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine2_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine2_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine2_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine2_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine2_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_we & litedram_core_bankmachine2_cmd_buffer_lookahead_syncfifo2_writable) & (~litedram_core_bankmachine2_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine2_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine2_cmd_buffer_lookahead_level <= (litedram_core_bankmachine2_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine2_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine2_cmd_buffer_lookahead_level <= (litedram_core_bankmachine2_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine2_cmd_buffer_source_valid) | litedram_core_bankmachine2_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine2_cmd_buffer_source_valid <= litedram_core_bankmachine2_cmd_buffer_sink_valid;
		litedram_core_bankmachine2_cmd_buffer_source_first <= litedram_core_bankmachine2_cmd_buffer_sink_first;
		litedram_core_bankmachine2_cmd_buffer_source_last <= litedram_core_bankmachine2_cmd_buffer_sink_last;
		litedram_core_bankmachine2_cmd_buffer_source_payload_we <= litedram_core_bankmachine2_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine2_cmd_buffer_source_payload_addr <= litedram_core_bankmachine2_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine2_twtpcon_valid) begin
		litedram_core_bankmachine2_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine2_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine2_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine2_twtpcon_ready)) begin
			litedram_core_bankmachine2_twtpcon_count <= (litedram_core_bankmachine2_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine2_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine2_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine2_state <= bankmachine2_next_state;
	if (litedram_core_bankmachine3_row_close) begin
		litedram_core_bankmachine3_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine3_row_open) begin
			litedram_core_bankmachine3_row_opened <= 1'd1;
			litedram_core_bankmachine3_row <= litedram_core_bankmachine3_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~litedram_core_bankmachine3_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine3_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine3_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine3_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine3_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine3_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_we & litedram_core_bankmachine3_cmd_buffer_lookahead_syncfifo3_writable) & (~litedram_core_bankmachine3_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine3_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine3_cmd_buffer_lookahead_level <= (litedram_core_bankmachine3_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine3_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine3_cmd_buffer_lookahead_level <= (litedram_core_bankmachine3_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine3_cmd_buffer_source_valid) | litedram_core_bankmachine3_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine3_cmd_buffer_source_valid <= litedram_core_bankmachine3_cmd_buffer_sink_valid;
		litedram_core_bankmachine3_cmd_buffer_source_first <= litedram_core_bankmachine3_cmd_buffer_sink_first;
		litedram_core_bankmachine3_cmd_buffer_source_last <= litedram_core_bankmachine3_cmd_buffer_sink_last;
		litedram_core_bankmachine3_cmd_buffer_source_payload_we <= litedram_core_bankmachine3_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine3_cmd_buffer_source_payload_addr <= litedram_core_bankmachine3_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine3_twtpcon_valid) begin
		litedram_core_bankmachine3_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine3_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine3_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine3_twtpcon_ready)) begin
			litedram_core_bankmachine3_twtpcon_count <= (litedram_core_bankmachine3_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine3_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine3_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine3_state <= bankmachine3_next_state;
	if (litedram_core_bankmachine4_row_close) begin
		litedram_core_bankmachine4_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine4_row_open) begin
			litedram_core_bankmachine4_row_opened <= 1'd1;
			litedram_core_bankmachine4_row <= litedram_core_bankmachine4_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~litedram_core_bankmachine4_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine4_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine4_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine4_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine4_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine4_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_we & litedram_core_bankmachine4_cmd_buffer_lookahead_syncfifo4_writable) & (~litedram_core_bankmachine4_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine4_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine4_cmd_buffer_lookahead_level <= (litedram_core_bankmachine4_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine4_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine4_cmd_buffer_lookahead_level <= (litedram_core_bankmachine4_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine4_cmd_buffer_source_valid) | litedram_core_bankmachine4_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine4_cmd_buffer_source_valid <= litedram_core_bankmachine4_cmd_buffer_sink_valid;
		litedram_core_bankmachine4_cmd_buffer_source_first <= litedram_core_bankmachine4_cmd_buffer_sink_first;
		litedram_core_bankmachine4_cmd_buffer_source_last <= litedram_core_bankmachine4_cmd_buffer_sink_last;
		litedram_core_bankmachine4_cmd_buffer_source_payload_we <= litedram_core_bankmachine4_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine4_cmd_buffer_source_payload_addr <= litedram_core_bankmachine4_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine4_twtpcon_valid) begin
		litedram_core_bankmachine4_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine4_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine4_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine4_twtpcon_ready)) begin
			litedram_core_bankmachine4_twtpcon_count <= (litedram_core_bankmachine4_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine4_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine4_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine4_state <= bankmachine4_next_state;
	if (litedram_core_bankmachine5_row_close) begin
		litedram_core_bankmachine5_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine5_row_open) begin
			litedram_core_bankmachine5_row_opened <= 1'd1;
			litedram_core_bankmachine5_row <= litedram_core_bankmachine5_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~litedram_core_bankmachine5_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine5_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine5_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine5_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine5_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine5_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_we & litedram_core_bankmachine5_cmd_buffer_lookahead_syncfifo5_writable) & (~litedram_core_bankmachine5_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine5_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine5_cmd_buffer_lookahead_level <= (litedram_core_bankmachine5_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine5_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine5_cmd_buffer_lookahead_level <= (litedram_core_bankmachine5_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine5_cmd_buffer_source_valid) | litedram_core_bankmachine5_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine5_cmd_buffer_source_valid <= litedram_core_bankmachine5_cmd_buffer_sink_valid;
		litedram_core_bankmachine5_cmd_buffer_source_first <= litedram_core_bankmachine5_cmd_buffer_sink_first;
		litedram_core_bankmachine5_cmd_buffer_source_last <= litedram_core_bankmachine5_cmd_buffer_sink_last;
		litedram_core_bankmachine5_cmd_buffer_source_payload_we <= litedram_core_bankmachine5_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine5_cmd_buffer_source_payload_addr <= litedram_core_bankmachine5_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine5_twtpcon_valid) begin
		litedram_core_bankmachine5_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine5_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine5_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine5_twtpcon_ready)) begin
			litedram_core_bankmachine5_twtpcon_count <= (litedram_core_bankmachine5_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine5_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine5_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine5_state <= bankmachine5_next_state;
	if (litedram_core_bankmachine6_row_close) begin
		litedram_core_bankmachine6_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine6_row_open) begin
			litedram_core_bankmachine6_row_opened <= 1'd1;
			litedram_core_bankmachine6_row <= litedram_core_bankmachine6_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~litedram_core_bankmachine6_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine6_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine6_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine6_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine6_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine6_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_we & litedram_core_bankmachine6_cmd_buffer_lookahead_syncfifo6_writable) & (~litedram_core_bankmachine6_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine6_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine6_cmd_buffer_lookahead_level <= (litedram_core_bankmachine6_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine6_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine6_cmd_buffer_lookahead_level <= (litedram_core_bankmachine6_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine6_cmd_buffer_source_valid) | litedram_core_bankmachine6_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine6_cmd_buffer_source_valid <= litedram_core_bankmachine6_cmd_buffer_sink_valid;
		litedram_core_bankmachine6_cmd_buffer_source_first <= litedram_core_bankmachine6_cmd_buffer_sink_first;
		litedram_core_bankmachine6_cmd_buffer_source_last <= litedram_core_bankmachine6_cmd_buffer_sink_last;
		litedram_core_bankmachine6_cmd_buffer_source_payload_we <= litedram_core_bankmachine6_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine6_cmd_buffer_source_payload_addr <= litedram_core_bankmachine6_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine6_twtpcon_valid) begin
		litedram_core_bankmachine6_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine6_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine6_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine6_twtpcon_ready)) begin
			litedram_core_bankmachine6_twtpcon_count <= (litedram_core_bankmachine6_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine6_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine6_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine6_state <= bankmachine6_next_state;
	if (litedram_core_bankmachine7_row_close) begin
		litedram_core_bankmachine7_row_opened <= 1'd0;
	end else begin
		if (litedram_core_bankmachine7_row_open) begin
			litedram_core_bankmachine7_row_opened <= 1'd1;
			litedram_core_bankmachine7_row <= litedram_core_bankmachine7_cmd_buffer_source_payload_addr[9:3];
		end
	end
	if (((litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~litedram_core_bankmachine7_cmd_buffer_lookahead_replace))) begin
		litedram_core_bankmachine7_cmd_buffer_lookahead_produce <= (litedram_core_bankmachine7_cmd_buffer_lookahead_produce + 1'd1);
	end
	if (litedram_core_bankmachine7_cmd_buffer_lookahead_do_read) begin
		litedram_core_bankmachine7_cmd_buffer_lookahead_consume <= (litedram_core_bankmachine7_cmd_buffer_lookahead_consume + 1'd1);
	end
	if (((litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_we & litedram_core_bankmachine7_cmd_buffer_lookahead_syncfifo7_writable) & (~litedram_core_bankmachine7_cmd_buffer_lookahead_replace))) begin
		if ((~litedram_core_bankmachine7_cmd_buffer_lookahead_do_read)) begin
			litedram_core_bankmachine7_cmd_buffer_lookahead_level <= (litedram_core_bankmachine7_cmd_buffer_lookahead_level + 1'd1);
		end
	end else begin
		if (litedram_core_bankmachine7_cmd_buffer_lookahead_do_read) begin
			litedram_core_bankmachine7_cmd_buffer_lookahead_level <= (litedram_core_bankmachine7_cmd_buffer_lookahead_level - 1'd1);
		end
	end
	if (((~litedram_core_bankmachine7_cmd_buffer_source_valid) | litedram_core_bankmachine7_cmd_buffer_source_ready)) begin
		litedram_core_bankmachine7_cmd_buffer_source_valid <= litedram_core_bankmachine7_cmd_buffer_sink_valid;
		litedram_core_bankmachine7_cmd_buffer_source_first <= litedram_core_bankmachine7_cmd_buffer_sink_first;
		litedram_core_bankmachine7_cmd_buffer_source_last <= litedram_core_bankmachine7_cmd_buffer_sink_last;
		litedram_core_bankmachine7_cmd_buffer_source_payload_we <= litedram_core_bankmachine7_cmd_buffer_sink_payload_we;
		litedram_core_bankmachine7_cmd_buffer_source_payload_addr <= litedram_core_bankmachine7_cmd_buffer_sink_payload_addr;
	end
	if (litedram_core_bankmachine7_twtpcon_valid) begin
		litedram_core_bankmachine7_twtpcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_bankmachine7_twtpcon_ready <= 1'd1;
		end else begin
			litedram_core_bankmachine7_twtpcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_bankmachine7_twtpcon_ready)) begin
			litedram_core_bankmachine7_twtpcon_count <= (litedram_core_bankmachine7_twtpcon_count - 1'd1);
			if ((litedram_core_bankmachine7_twtpcon_count == 1'd1)) begin
				litedram_core_bankmachine7_twtpcon_ready <= 1'd1;
			end
		end
	end
	bankmachine7_state <= bankmachine7_next_state;
	if ((~litedram_core_en0)) begin
		litedram_core_time0 <= 5'd31;
	end else begin
		if ((~litedram_core_max_time0)) begin
			litedram_core_time0 <= (litedram_core_time0 - 1'd1);
		end
	end
	if ((~litedram_core_en1)) begin
		litedram_core_time1 <= 4'd15;
	end else begin
		if ((~litedram_core_max_time1)) begin
			litedram_core_time1 <= (litedram_core_time1 - 1'd1);
		end
	end
	if (litedram_core_choose_cmd_ce) begin
		case (litedram_core_choose_cmd_grant)
			1'd0: begin
				if (litedram_core_choose_cmd_request[1]) begin
					litedram_core_choose_cmd_grant <= 1'd1;
				end else begin
					if (litedram_core_choose_cmd_request[2]) begin
						litedram_core_choose_cmd_grant <= 2'd2;
					end else begin
						if (litedram_core_choose_cmd_request[3]) begin
							litedram_core_choose_cmd_grant <= 2'd3;
						end else begin
							if (litedram_core_choose_cmd_request[4]) begin
								litedram_core_choose_cmd_grant <= 3'd4;
							end else begin
								if (litedram_core_choose_cmd_request[5]) begin
									litedram_core_choose_cmd_grant <= 3'd5;
								end else begin
									if (litedram_core_choose_cmd_request[6]) begin
										litedram_core_choose_cmd_grant <= 3'd6;
									end else begin
										if (litedram_core_choose_cmd_request[7]) begin
											litedram_core_choose_cmd_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (litedram_core_choose_cmd_request[2]) begin
					litedram_core_choose_cmd_grant <= 2'd2;
				end else begin
					if (litedram_core_choose_cmd_request[3]) begin
						litedram_core_choose_cmd_grant <= 2'd3;
					end else begin
						if (litedram_core_choose_cmd_request[4]) begin
							litedram_core_choose_cmd_grant <= 3'd4;
						end else begin
							if (litedram_core_choose_cmd_request[5]) begin
								litedram_core_choose_cmd_grant <= 3'd5;
							end else begin
								if (litedram_core_choose_cmd_request[6]) begin
									litedram_core_choose_cmd_grant <= 3'd6;
								end else begin
									if (litedram_core_choose_cmd_request[7]) begin
										litedram_core_choose_cmd_grant <= 3'd7;
									end else begin
										if (litedram_core_choose_cmd_request[0]) begin
											litedram_core_choose_cmd_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (litedram_core_choose_cmd_request[3]) begin
					litedram_core_choose_cmd_grant <= 2'd3;
				end else begin
					if (litedram_core_choose_cmd_request[4]) begin
						litedram_core_choose_cmd_grant <= 3'd4;
					end else begin
						if (litedram_core_choose_cmd_request[5]) begin
							litedram_core_choose_cmd_grant <= 3'd5;
						end else begin
							if (litedram_core_choose_cmd_request[6]) begin
								litedram_core_choose_cmd_grant <= 3'd6;
							end else begin
								if (litedram_core_choose_cmd_request[7]) begin
									litedram_core_choose_cmd_grant <= 3'd7;
								end else begin
									if (litedram_core_choose_cmd_request[0]) begin
										litedram_core_choose_cmd_grant <= 1'd0;
									end else begin
										if (litedram_core_choose_cmd_request[1]) begin
											litedram_core_choose_cmd_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (litedram_core_choose_cmd_request[4]) begin
					litedram_core_choose_cmd_grant <= 3'd4;
				end else begin
					if (litedram_core_choose_cmd_request[5]) begin
						litedram_core_choose_cmd_grant <= 3'd5;
					end else begin
						if (litedram_core_choose_cmd_request[6]) begin
							litedram_core_choose_cmd_grant <= 3'd6;
						end else begin
							if (litedram_core_choose_cmd_request[7]) begin
								litedram_core_choose_cmd_grant <= 3'd7;
							end else begin
								if (litedram_core_choose_cmd_request[0]) begin
									litedram_core_choose_cmd_grant <= 1'd0;
								end else begin
									if (litedram_core_choose_cmd_request[1]) begin
										litedram_core_choose_cmd_grant <= 1'd1;
									end else begin
										if (litedram_core_choose_cmd_request[2]) begin
											litedram_core_choose_cmd_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (litedram_core_choose_cmd_request[5]) begin
					litedram_core_choose_cmd_grant <= 3'd5;
				end else begin
					if (litedram_core_choose_cmd_request[6]) begin
						litedram_core_choose_cmd_grant <= 3'd6;
					end else begin
						if (litedram_core_choose_cmd_request[7]) begin
							litedram_core_choose_cmd_grant <= 3'd7;
						end else begin
							if (litedram_core_choose_cmd_request[0]) begin
								litedram_core_choose_cmd_grant <= 1'd0;
							end else begin
								if (litedram_core_choose_cmd_request[1]) begin
									litedram_core_choose_cmd_grant <= 1'd1;
								end else begin
									if (litedram_core_choose_cmd_request[2]) begin
										litedram_core_choose_cmd_grant <= 2'd2;
									end else begin
										if (litedram_core_choose_cmd_request[3]) begin
											litedram_core_choose_cmd_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (litedram_core_choose_cmd_request[6]) begin
					litedram_core_choose_cmd_grant <= 3'd6;
				end else begin
					if (litedram_core_choose_cmd_request[7]) begin
						litedram_core_choose_cmd_grant <= 3'd7;
					end else begin
						if (litedram_core_choose_cmd_request[0]) begin
							litedram_core_choose_cmd_grant <= 1'd0;
						end else begin
							if (litedram_core_choose_cmd_request[1]) begin
								litedram_core_choose_cmd_grant <= 1'd1;
							end else begin
								if (litedram_core_choose_cmd_request[2]) begin
									litedram_core_choose_cmd_grant <= 2'd2;
								end else begin
									if (litedram_core_choose_cmd_request[3]) begin
										litedram_core_choose_cmd_grant <= 2'd3;
									end else begin
										if (litedram_core_choose_cmd_request[4]) begin
											litedram_core_choose_cmd_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (litedram_core_choose_cmd_request[7]) begin
					litedram_core_choose_cmd_grant <= 3'd7;
				end else begin
					if (litedram_core_choose_cmd_request[0]) begin
						litedram_core_choose_cmd_grant <= 1'd0;
					end else begin
						if (litedram_core_choose_cmd_request[1]) begin
							litedram_core_choose_cmd_grant <= 1'd1;
						end else begin
							if (litedram_core_choose_cmd_request[2]) begin
								litedram_core_choose_cmd_grant <= 2'd2;
							end else begin
								if (litedram_core_choose_cmd_request[3]) begin
									litedram_core_choose_cmd_grant <= 2'd3;
								end else begin
									if (litedram_core_choose_cmd_request[4]) begin
										litedram_core_choose_cmd_grant <= 3'd4;
									end else begin
										if (litedram_core_choose_cmd_request[5]) begin
											litedram_core_choose_cmd_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (litedram_core_choose_cmd_request[0]) begin
					litedram_core_choose_cmd_grant <= 1'd0;
				end else begin
					if (litedram_core_choose_cmd_request[1]) begin
						litedram_core_choose_cmd_grant <= 1'd1;
					end else begin
						if (litedram_core_choose_cmd_request[2]) begin
							litedram_core_choose_cmd_grant <= 2'd2;
						end else begin
							if (litedram_core_choose_cmd_request[3]) begin
								litedram_core_choose_cmd_grant <= 2'd3;
							end else begin
								if (litedram_core_choose_cmd_request[4]) begin
									litedram_core_choose_cmd_grant <= 3'd4;
								end else begin
									if (litedram_core_choose_cmd_request[5]) begin
										litedram_core_choose_cmd_grant <= 3'd5;
									end else begin
										if (litedram_core_choose_cmd_request[6]) begin
											litedram_core_choose_cmd_grant <= 3'd6;
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
	if (litedram_core_choose_req_ce) begin
		case (litedram_core_choose_req_grant)
			1'd0: begin
				if (litedram_core_choose_req_request[1]) begin
					litedram_core_choose_req_grant <= 1'd1;
				end else begin
					if (litedram_core_choose_req_request[2]) begin
						litedram_core_choose_req_grant <= 2'd2;
					end else begin
						if (litedram_core_choose_req_request[3]) begin
							litedram_core_choose_req_grant <= 2'd3;
						end else begin
							if (litedram_core_choose_req_request[4]) begin
								litedram_core_choose_req_grant <= 3'd4;
							end else begin
								if (litedram_core_choose_req_request[5]) begin
									litedram_core_choose_req_grant <= 3'd5;
								end else begin
									if (litedram_core_choose_req_request[6]) begin
										litedram_core_choose_req_grant <= 3'd6;
									end else begin
										if (litedram_core_choose_req_request[7]) begin
											litedram_core_choose_req_grant <= 3'd7;
										end
									end
								end
							end
						end
					end
				end
			end
			1'd1: begin
				if (litedram_core_choose_req_request[2]) begin
					litedram_core_choose_req_grant <= 2'd2;
				end else begin
					if (litedram_core_choose_req_request[3]) begin
						litedram_core_choose_req_grant <= 2'd3;
					end else begin
						if (litedram_core_choose_req_request[4]) begin
							litedram_core_choose_req_grant <= 3'd4;
						end else begin
							if (litedram_core_choose_req_request[5]) begin
								litedram_core_choose_req_grant <= 3'd5;
							end else begin
								if (litedram_core_choose_req_request[6]) begin
									litedram_core_choose_req_grant <= 3'd6;
								end else begin
									if (litedram_core_choose_req_request[7]) begin
										litedram_core_choose_req_grant <= 3'd7;
									end else begin
										if (litedram_core_choose_req_request[0]) begin
											litedram_core_choose_req_grant <= 1'd0;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd2: begin
				if (litedram_core_choose_req_request[3]) begin
					litedram_core_choose_req_grant <= 2'd3;
				end else begin
					if (litedram_core_choose_req_request[4]) begin
						litedram_core_choose_req_grant <= 3'd4;
					end else begin
						if (litedram_core_choose_req_request[5]) begin
							litedram_core_choose_req_grant <= 3'd5;
						end else begin
							if (litedram_core_choose_req_request[6]) begin
								litedram_core_choose_req_grant <= 3'd6;
							end else begin
								if (litedram_core_choose_req_request[7]) begin
									litedram_core_choose_req_grant <= 3'd7;
								end else begin
									if (litedram_core_choose_req_request[0]) begin
										litedram_core_choose_req_grant <= 1'd0;
									end else begin
										if (litedram_core_choose_req_request[1]) begin
											litedram_core_choose_req_grant <= 1'd1;
										end
									end
								end
							end
						end
					end
				end
			end
			2'd3: begin
				if (litedram_core_choose_req_request[4]) begin
					litedram_core_choose_req_grant <= 3'd4;
				end else begin
					if (litedram_core_choose_req_request[5]) begin
						litedram_core_choose_req_grant <= 3'd5;
					end else begin
						if (litedram_core_choose_req_request[6]) begin
							litedram_core_choose_req_grant <= 3'd6;
						end else begin
							if (litedram_core_choose_req_request[7]) begin
								litedram_core_choose_req_grant <= 3'd7;
							end else begin
								if (litedram_core_choose_req_request[0]) begin
									litedram_core_choose_req_grant <= 1'd0;
								end else begin
									if (litedram_core_choose_req_request[1]) begin
										litedram_core_choose_req_grant <= 1'd1;
									end else begin
										if (litedram_core_choose_req_request[2]) begin
											litedram_core_choose_req_grant <= 2'd2;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd4: begin
				if (litedram_core_choose_req_request[5]) begin
					litedram_core_choose_req_grant <= 3'd5;
				end else begin
					if (litedram_core_choose_req_request[6]) begin
						litedram_core_choose_req_grant <= 3'd6;
					end else begin
						if (litedram_core_choose_req_request[7]) begin
							litedram_core_choose_req_grant <= 3'd7;
						end else begin
							if (litedram_core_choose_req_request[0]) begin
								litedram_core_choose_req_grant <= 1'd0;
							end else begin
								if (litedram_core_choose_req_request[1]) begin
									litedram_core_choose_req_grant <= 1'd1;
								end else begin
									if (litedram_core_choose_req_request[2]) begin
										litedram_core_choose_req_grant <= 2'd2;
									end else begin
										if (litedram_core_choose_req_request[3]) begin
											litedram_core_choose_req_grant <= 2'd3;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd5: begin
				if (litedram_core_choose_req_request[6]) begin
					litedram_core_choose_req_grant <= 3'd6;
				end else begin
					if (litedram_core_choose_req_request[7]) begin
						litedram_core_choose_req_grant <= 3'd7;
					end else begin
						if (litedram_core_choose_req_request[0]) begin
							litedram_core_choose_req_grant <= 1'd0;
						end else begin
							if (litedram_core_choose_req_request[1]) begin
								litedram_core_choose_req_grant <= 1'd1;
							end else begin
								if (litedram_core_choose_req_request[2]) begin
									litedram_core_choose_req_grant <= 2'd2;
								end else begin
									if (litedram_core_choose_req_request[3]) begin
										litedram_core_choose_req_grant <= 2'd3;
									end else begin
										if (litedram_core_choose_req_request[4]) begin
											litedram_core_choose_req_grant <= 3'd4;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd6: begin
				if (litedram_core_choose_req_request[7]) begin
					litedram_core_choose_req_grant <= 3'd7;
				end else begin
					if (litedram_core_choose_req_request[0]) begin
						litedram_core_choose_req_grant <= 1'd0;
					end else begin
						if (litedram_core_choose_req_request[1]) begin
							litedram_core_choose_req_grant <= 1'd1;
						end else begin
							if (litedram_core_choose_req_request[2]) begin
								litedram_core_choose_req_grant <= 2'd2;
							end else begin
								if (litedram_core_choose_req_request[3]) begin
									litedram_core_choose_req_grant <= 2'd3;
								end else begin
									if (litedram_core_choose_req_request[4]) begin
										litedram_core_choose_req_grant <= 3'd4;
									end else begin
										if (litedram_core_choose_req_request[5]) begin
											litedram_core_choose_req_grant <= 3'd5;
										end
									end
								end
							end
						end
					end
				end
			end
			3'd7: begin
				if (litedram_core_choose_req_request[0]) begin
					litedram_core_choose_req_grant <= 1'd0;
				end else begin
					if (litedram_core_choose_req_request[1]) begin
						litedram_core_choose_req_grant <= 1'd1;
					end else begin
						if (litedram_core_choose_req_request[2]) begin
							litedram_core_choose_req_grant <= 2'd2;
						end else begin
							if (litedram_core_choose_req_request[3]) begin
								litedram_core_choose_req_grant <= 2'd3;
							end else begin
								if (litedram_core_choose_req_request[4]) begin
									litedram_core_choose_req_grant <= 3'd4;
								end else begin
									if (litedram_core_choose_req_request[5]) begin
										litedram_core_choose_req_grant <= 3'd5;
									end else begin
										if (litedram_core_choose_req_request[6]) begin
											litedram_core_choose_req_grant <= 3'd6;
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
	litedram_core_dfi_p0_cs_n <= 1'd0;
	litedram_core_dfi_p0_bank <= array_muxed0;
	litedram_core_dfi_p0_address <= array_muxed1;
	litedram_core_dfi_p0_cas_n <= (~array_muxed2);
	litedram_core_dfi_p0_ras_n <= (~array_muxed3);
	litedram_core_dfi_p0_we_n <= (~array_muxed4);
	litedram_core_dfi_p0_rddata_en <= array_muxed5;
	litedram_core_dfi_p0_wrdata_en <= array_muxed6;
	litedram_core_dfi_p1_cs_n <= 1'd0;
	litedram_core_dfi_p1_bank <= array_muxed7;
	litedram_core_dfi_p1_address <= array_muxed8;
	litedram_core_dfi_p1_cas_n <= (~array_muxed9);
	litedram_core_dfi_p1_ras_n <= (~array_muxed10);
	litedram_core_dfi_p1_we_n <= (~array_muxed11);
	litedram_core_dfi_p1_rddata_en <= array_muxed12;
	litedram_core_dfi_p1_wrdata_en <= array_muxed13;
	litedram_core_dfi_p2_cs_n <= 1'd0;
	litedram_core_dfi_p2_bank <= array_muxed14;
	litedram_core_dfi_p2_address <= array_muxed15;
	litedram_core_dfi_p2_cas_n <= (~array_muxed16);
	litedram_core_dfi_p2_ras_n <= (~array_muxed17);
	litedram_core_dfi_p2_we_n <= (~array_muxed18);
	litedram_core_dfi_p2_rddata_en <= array_muxed19;
	litedram_core_dfi_p2_wrdata_en <= array_muxed20;
	litedram_core_dfi_p3_cs_n <= 1'd0;
	litedram_core_dfi_p3_bank <= array_muxed21;
	litedram_core_dfi_p3_address <= array_muxed22;
	litedram_core_dfi_p3_cas_n <= (~array_muxed23);
	litedram_core_dfi_p3_ras_n <= (~array_muxed24);
	litedram_core_dfi_p3_we_n <= (~array_muxed25);
	litedram_core_dfi_p3_rddata_en <= array_muxed26;
	litedram_core_dfi_p3_wrdata_en <= array_muxed27;
	litedram_core_dfi_p4_cs_n <= 1'd0;
	litedram_core_dfi_p4_bank <= array_muxed28;
	litedram_core_dfi_p4_address <= array_muxed29;
	litedram_core_dfi_p4_cas_n <= (~array_muxed30);
	litedram_core_dfi_p4_ras_n <= (~array_muxed31);
	litedram_core_dfi_p4_we_n <= (~array_muxed32);
	litedram_core_dfi_p4_rddata_en <= array_muxed33;
	litedram_core_dfi_p4_wrdata_en <= array_muxed34;
	litedram_core_dfi_p5_cs_n <= 1'd0;
	litedram_core_dfi_p5_bank <= array_muxed35;
	litedram_core_dfi_p5_address <= array_muxed36;
	litedram_core_dfi_p5_cas_n <= (~array_muxed37);
	litedram_core_dfi_p5_ras_n <= (~array_muxed38);
	litedram_core_dfi_p5_we_n <= (~array_muxed39);
	litedram_core_dfi_p5_rddata_en <= array_muxed40;
	litedram_core_dfi_p5_wrdata_en <= array_muxed41;
	litedram_core_dfi_p6_cs_n <= 1'd0;
	litedram_core_dfi_p6_bank <= array_muxed42;
	litedram_core_dfi_p6_address <= array_muxed43;
	litedram_core_dfi_p6_cas_n <= (~array_muxed44);
	litedram_core_dfi_p6_ras_n <= (~array_muxed45);
	litedram_core_dfi_p6_we_n <= (~array_muxed46);
	litedram_core_dfi_p6_rddata_en <= array_muxed47;
	litedram_core_dfi_p6_wrdata_en <= array_muxed48;
	litedram_core_dfi_p7_cs_n <= 1'd0;
	litedram_core_dfi_p7_bank <= array_muxed49;
	litedram_core_dfi_p7_address <= array_muxed50;
	litedram_core_dfi_p7_cas_n <= (~array_muxed51);
	litedram_core_dfi_p7_ras_n <= (~array_muxed52);
	litedram_core_dfi_p7_we_n <= (~array_muxed53);
	litedram_core_dfi_p7_rddata_en <= array_muxed54;
	litedram_core_dfi_p7_wrdata_en <= array_muxed55;
	if (litedram_core_trrdcon_valid) begin
		litedram_core_trrdcon_count <= 1'd1;
		if (1'd0) begin
			litedram_core_trrdcon_ready <= 1'd1;
		end else begin
			litedram_core_trrdcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_trrdcon_ready)) begin
			litedram_core_trrdcon_count <= (litedram_core_trrdcon_count - 1'd1);
			if ((litedram_core_trrdcon_count == 1'd1)) begin
				litedram_core_trrdcon_ready <= 1'd1;
			end
		end
	end
	litedram_core_tfawcon_window <= {litedram_core_tfawcon_window, litedram_core_tfawcon_valid};
	if ((litedram_core_tfawcon_count < 3'd4)) begin
		if ((litedram_core_tfawcon_count == 2'd3)) begin
			litedram_core_tfawcon_ready <= (~litedram_core_tfawcon_valid);
		end else begin
			litedram_core_tfawcon_ready <= 1'd1;
		end
	end
	if (litedram_core_tccdcon_valid) begin
		litedram_core_tccdcon_count <= 1'd0;
		if (1'd1) begin
			litedram_core_tccdcon_ready <= 1'd1;
		end else begin
			litedram_core_tccdcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_tccdcon_ready)) begin
			litedram_core_tccdcon_count <= (litedram_core_tccdcon_count - 1'd1);
			if ((litedram_core_tccdcon_count == 1'd1)) begin
				litedram_core_tccdcon_ready <= 1'd1;
			end
		end
	end
	if (litedram_core_twtrcon_valid) begin
		litedram_core_twtrcon_count <= 3'd5;
		if (1'd0) begin
			litedram_core_twtrcon_ready <= 1'd1;
		end else begin
			litedram_core_twtrcon_ready <= 1'd0;
		end
	end else begin
		if ((~litedram_core_twtrcon_ready)) begin
			litedram_core_twtrcon_count <= (litedram_core_twtrcon_count - 1'd1);
			if ((litedram_core_twtrcon_count == 1'd1)) begin
				litedram_core_twtrcon_ready <= 1'd1;
			end
		end
	end
	multiplexer_state <= multiplexer_next_state;
	if (sys_rst) begin
		litedram_core_phaseinjector0_status <= 32'd0;
		litedram_core_phaseinjector1_status <= 32'd0;
		litedram_core_phaseinjector2_status <= 32'd0;
		litedram_core_phaseinjector3_status <= 32'd0;
		litedram_core_phaseinjector4_status <= 32'd0;
		litedram_core_phaseinjector5_status <= 32'd0;
		litedram_core_phaseinjector6_status <= 32'd0;
		litedram_core_phaseinjector7_status <= 32'd0;
		litedram_core_dfi_p0_address <= 7'd0;
		litedram_core_dfi_p0_bank <= 3'd0;
		litedram_core_dfi_p0_cas_n <= 1'd1;
		litedram_core_dfi_p0_cs_n <= 1'd1;
		litedram_core_dfi_p0_ras_n <= 1'd1;
		litedram_core_dfi_p0_we_n <= 1'd1;
		litedram_core_dfi_p0_wrdata_en <= 1'd0;
		litedram_core_dfi_p0_rddata_en <= 1'd0;
		litedram_core_dfi_p1_address <= 7'd0;
		litedram_core_dfi_p1_bank <= 3'd0;
		litedram_core_dfi_p1_cas_n <= 1'd1;
		litedram_core_dfi_p1_cs_n <= 1'd1;
		litedram_core_dfi_p1_ras_n <= 1'd1;
		litedram_core_dfi_p1_we_n <= 1'd1;
		litedram_core_dfi_p1_wrdata_en <= 1'd0;
		litedram_core_dfi_p1_rddata_en <= 1'd0;
		litedram_core_dfi_p2_address <= 7'd0;
		litedram_core_dfi_p2_bank <= 3'd0;
		litedram_core_dfi_p2_cas_n <= 1'd1;
		litedram_core_dfi_p2_cs_n <= 1'd1;
		litedram_core_dfi_p2_ras_n <= 1'd1;
		litedram_core_dfi_p2_we_n <= 1'd1;
		litedram_core_dfi_p2_wrdata_en <= 1'd0;
		litedram_core_dfi_p2_rddata_en <= 1'd0;
		litedram_core_dfi_p3_address <= 7'd0;
		litedram_core_dfi_p3_bank <= 3'd0;
		litedram_core_dfi_p3_cas_n <= 1'd1;
		litedram_core_dfi_p3_cs_n <= 1'd1;
		litedram_core_dfi_p3_ras_n <= 1'd1;
		litedram_core_dfi_p3_we_n <= 1'd1;
		litedram_core_dfi_p3_wrdata_en <= 1'd0;
		litedram_core_dfi_p3_rddata_en <= 1'd0;
		litedram_core_dfi_p4_address <= 7'd0;
		litedram_core_dfi_p4_bank <= 3'd0;
		litedram_core_dfi_p4_cas_n <= 1'd1;
		litedram_core_dfi_p4_cs_n <= 1'd1;
		litedram_core_dfi_p4_ras_n <= 1'd1;
		litedram_core_dfi_p4_we_n <= 1'd1;
		litedram_core_dfi_p4_wrdata_en <= 1'd0;
		litedram_core_dfi_p4_rddata_en <= 1'd0;
		litedram_core_dfi_p5_address <= 7'd0;
		litedram_core_dfi_p5_bank <= 3'd0;
		litedram_core_dfi_p5_cas_n <= 1'd1;
		litedram_core_dfi_p5_cs_n <= 1'd1;
		litedram_core_dfi_p5_ras_n <= 1'd1;
		litedram_core_dfi_p5_we_n <= 1'd1;
		litedram_core_dfi_p5_wrdata_en <= 1'd0;
		litedram_core_dfi_p5_rddata_en <= 1'd0;
		litedram_core_dfi_p6_address <= 7'd0;
		litedram_core_dfi_p6_bank <= 3'd0;
		litedram_core_dfi_p6_cas_n <= 1'd1;
		litedram_core_dfi_p6_cs_n <= 1'd1;
		litedram_core_dfi_p6_ras_n <= 1'd1;
		litedram_core_dfi_p6_we_n <= 1'd1;
		litedram_core_dfi_p6_wrdata_en <= 1'd0;
		litedram_core_dfi_p6_rddata_en <= 1'd0;
		litedram_core_dfi_p7_address <= 7'd0;
		litedram_core_dfi_p7_bank <= 3'd0;
		litedram_core_dfi_p7_cas_n <= 1'd1;
		litedram_core_dfi_p7_cs_n <= 1'd1;
		litedram_core_dfi_p7_ras_n <= 1'd1;
		litedram_core_dfi_p7_we_n <= 1'd1;
		litedram_core_dfi_p7_wrdata_en <= 1'd0;
		litedram_core_dfi_p7_rddata_en <= 1'd0;
		litedram_core_cmd_payload_a <= 7'd0;
		litedram_core_cmd_payload_ba <= 3'd0;
		litedram_core_cmd_payload_cas <= 1'd0;
		litedram_core_cmd_payload_ras <= 1'd0;
		litedram_core_cmd_payload_we <= 1'd0;
		litedram_core_timer_count1 <= 9'd299;
		litedram_core_postponer_req_o <= 1'd0;
		litedram_core_postponer_count <= 1'd0;
		litedram_core_sequencer_done1 <= 1'd0;
		litedram_core_sequencer_counter <= 3'd0;
		litedram_core_sequencer_count <= 1'd0;
		litedram_core_zqcs_timer_count1 <= 28'd265999999;
		litedram_core_zqcs_executer_done <= 1'd0;
		litedram_core_zqcs_executer_counter <= 4'd0;
		litedram_core_bankmachine0_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine0_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine0_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine0_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine0_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine0_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine0_row <= 7'd0;
		litedram_core_bankmachine0_row_opened <= 1'd0;
		litedram_core_bankmachine0_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine0_twtpcon_count <= 3'd0;
		litedram_core_bankmachine1_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine1_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine1_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine1_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine1_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine1_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine1_row <= 7'd0;
		litedram_core_bankmachine1_row_opened <= 1'd0;
		litedram_core_bankmachine1_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine1_twtpcon_count <= 3'd0;
		litedram_core_bankmachine2_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine2_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine2_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine2_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine2_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine2_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine2_row <= 7'd0;
		litedram_core_bankmachine2_row_opened <= 1'd0;
		litedram_core_bankmachine2_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine2_twtpcon_count <= 3'd0;
		litedram_core_bankmachine3_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine3_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine3_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine3_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine3_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine3_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine3_row <= 7'd0;
		litedram_core_bankmachine3_row_opened <= 1'd0;
		litedram_core_bankmachine3_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine3_twtpcon_count <= 3'd0;
		litedram_core_bankmachine4_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine4_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine4_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine4_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine4_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine4_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine4_row <= 7'd0;
		litedram_core_bankmachine4_row_opened <= 1'd0;
		litedram_core_bankmachine4_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine4_twtpcon_count <= 3'd0;
		litedram_core_bankmachine5_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine5_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine5_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine5_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine5_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine5_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine5_row <= 7'd0;
		litedram_core_bankmachine5_row_opened <= 1'd0;
		litedram_core_bankmachine5_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine5_twtpcon_count <= 3'd0;
		litedram_core_bankmachine6_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine6_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine6_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine6_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine6_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine6_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine6_row <= 7'd0;
		litedram_core_bankmachine6_row_opened <= 1'd0;
		litedram_core_bankmachine6_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine6_twtpcon_count <= 3'd0;
		litedram_core_bankmachine7_cmd_buffer_lookahead_level <= 4'd0;
		litedram_core_bankmachine7_cmd_buffer_lookahead_produce <= 3'd0;
		litedram_core_bankmachine7_cmd_buffer_lookahead_consume <= 3'd0;
		litedram_core_bankmachine7_cmd_buffer_source_valid <= 1'd0;
		litedram_core_bankmachine7_cmd_buffer_source_payload_we <= 1'd0;
		litedram_core_bankmachine7_cmd_buffer_source_payload_addr <= 10'd0;
		litedram_core_bankmachine7_row <= 7'd0;
		litedram_core_bankmachine7_row_opened <= 1'd0;
		litedram_core_bankmachine7_twtpcon_ready <= 1'd0;
		litedram_core_bankmachine7_twtpcon_count <= 3'd0;
		litedram_core_choose_cmd_grant <= 3'd0;
		litedram_core_choose_req_grant <= 3'd0;
		litedram_core_trrdcon_ready <= 1'd0;
		litedram_core_trrdcon_count <= 1'd0;
		litedram_core_tfawcon_ready <= 1'd1;
		litedram_core_tfawcon_window <= 2'd0;
		litedram_core_tccdcon_ready <= 1'd0;
		litedram_core_tccdcon_count <= 1'd0;
		litedram_core_twtrcon_ready <= 1'd0;
		litedram_core_twtrcon_count <= 3'd0;
		litedram_core_time0 <= 5'd0;
		litedram_core_time1 <= 4'd0;
		refresher_state <= 2'd0;
		bankmachine0_state <= 3'd0;
		bankmachine1_state <= 3'd0;
		bankmachine2_state <= 3'd0;
		bankmachine3_state <= 3'd0;
		bankmachine4_state <= 3'd0;
		bankmachine5_state <= 3'd0;
		bankmachine6_state <= 3'd0;
		bankmachine7_state <= 3'd0;
		multiplexer_state <= 4'd0;
	end
end

reg [12:0] storage[0:7];
reg [12:0] memdat;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_we)
		storage[litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_dat_w;
	memdat <= storage[litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine0_cmd_buffer_lookahead_wrport_dat_r = memdat;
assign litedram_core_bankmachine0_cmd_buffer_lookahead_rdport_dat_r = storage[litedram_core_bankmachine0_cmd_buffer_lookahead_rdport_adr];

reg [12:0] storage_1[0:7];
reg [12:0] memdat_1;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_we)
		storage_1[litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_dat_w;
	memdat_1 <= storage_1[litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine1_cmd_buffer_lookahead_wrport_dat_r = memdat_1;
assign litedram_core_bankmachine1_cmd_buffer_lookahead_rdport_dat_r = storage_1[litedram_core_bankmachine1_cmd_buffer_lookahead_rdport_adr];

reg [12:0] storage_2[0:7];
reg [12:0] memdat_2;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_we)
		storage_2[litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_dat_w;
	memdat_2 <= storage_2[litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine2_cmd_buffer_lookahead_wrport_dat_r = memdat_2;
assign litedram_core_bankmachine2_cmd_buffer_lookahead_rdport_dat_r = storage_2[litedram_core_bankmachine2_cmd_buffer_lookahead_rdport_adr];

reg [12:0] storage_3[0:7];
reg [12:0] memdat_3;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_we)
		storage_3[litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_dat_w;
	memdat_3 <= storage_3[litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine3_cmd_buffer_lookahead_wrport_dat_r = memdat_3;
assign litedram_core_bankmachine3_cmd_buffer_lookahead_rdport_dat_r = storage_3[litedram_core_bankmachine3_cmd_buffer_lookahead_rdport_adr];

reg [12:0] storage_4[0:7];
reg [12:0] memdat_4;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_we)
		storage_4[litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_dat_w;
	memdat_4 <= storage_4[litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine4_cmd_buffer_lookahead_wrport_dat_r = memdat_4;
assign litedram_core_bankmachine4_cmd_buffer_lookahead_rdport_dat_r = storage_4[litedram_core_bankmachine4_cmd_buffer_lookahead_rdport_adr];

reg [12:0] storage_5[0:7];
reg [12:0] memdat_5;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_we)
		storage_5[litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_dat_w;
	memdat_5 <= storage_5[litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine5_cmd_buffer_lookahead_wrport_dat_r = memdat_5;
assign litedram_core_bankmachine5_cmd_buffer_lookahead_rdport_dat_r = storage_5[litedram_core_bankmachine5_cmd_buffer_lookahead_rdport_adr];

reg [12:0] storage_6[0:7];
reg [12:0] memdat_6;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_we)
		storage_6[litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_dat_w;
	memdat_6 <= storage_6[litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine6_cmd_buffer_lookahead_wrport_dat_r = memdat_6;
assign litedram_core_bankmachine6_cmd_buffer_lookahead_rdport_dat_r = storage_6[litedram_core_bankmachine6_cmd_buffer_lookahead_rdport_adr];

reg [12:0] storage_7[0:7];
reg [12:0] memdat_7;
always @(posedge sys_clk) begin
	if (litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_we)
		storage_7[litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_adr] <= litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_dat_w;
	memdat_7 <= storage_7[litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_adr];
end

always @(posedge sys_clk) begin
end

assign litedram_core_bankmachine7_cmd_buffer_lookahead_wrport_dat_r = memdat_7;
assign litedram_core_bankmachine7_cmd_buffer_lookahead_rdport_dat_r = storage_7[litedram_core_bankmachine7_cmd_buffer_lookahead_rdport_adr];

endmodule
