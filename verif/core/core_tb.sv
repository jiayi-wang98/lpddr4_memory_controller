`timescale 1ns/10ps

module core_tb();
    `include "uvm_macros.svh"
    import uvm_pkg::*;

    logic clk,rst;
    native_interface native_if_0(clk,rst);
    native_interface native_if_1(clk,rst);
	dfi_lpddr4_interface dfi_lpddr4_if(clk,rst);

	logic [7:0] mul_tRRD_cfg=8'd7;
	logic [7:0] mul_tFAW_cfg=8'd16;
	logic [7:0] mul_tCCD_cfg=8'd2;
	logic [7:0] mul_WTR_LATENCY_cfg=8'd13;
	logic [7:0] mul_RTW_LATENCY_cfg=8'd10;
	logic [7:0] mul_READ_TIME_cfg=8'd64;
	logic [7:0] mul_WRITE_TIME_cfg=8'd32;
	logic [1:0] mul_rd_phase_cfg=2'd0;
	logic [1:0] mul_wr_phase_cfg=2'd2;
	logic [1:0] mul_rdcmd_phase_cfg=2'd0;
	logic [1:0] mul_wrcmd_phase_cfg=2'd0;

    logic [7:0] ref_tRP_cfg=8'd12;
	logic [7:0] ref_tRFC_cfg=8'd97;
	logic [11:0] ref_tREFI_cfg=12'd1830;
	logic [3:0] ref_POSTPONE_cfg=4'd8;

    logic [7:0] bm_tRTP_cfg=4;
    logic [7:0] bm_tWTP_cfg=17;
	logic [7:0] bm_tRC_cfg=35;
	logic [7:0] bm_tRAS_cfg=24;
	logic [7:0] bm_tRP_cfg=12;
	logic [7:0] bm_tRCD_cfg=11;
	logic [7:0] bm_tCCDMW_cfg=8;

	logic [7:0] crb_READ_LATENCY_cfg=12;
	logic [7:0] crb_WRITE_LATENCY_cfg=10;

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
    .crb_WRITE_LATENCY_cfg    (crb_WRITE_LATENCY_cfg)
);

    initial begin
        clk=0;
        forever begin
            #1 clk=~clk;
        end
    end

    initial begin 
        rst <= 1;
        repeat(5) @(posedge clk);
        rst <= 0;
    end

    initial begin 
        $vcdpluson(0,core_tb);
        uvm_config_db #(virtual native_interface)::set(uvm_root::get(), "uvm_test_top", "nat_vif_0", native_if_0);
		uvm_config_db #(virtual native_interface)::set(uvm_root::get(), "uvm_test_top", "nat_vif_1", native_if_1);
        uvm_config_db #(virtual dfi_lpddr4_interface)::set(uvm_root::get(), "uvm_test_top", "dfi_lpddr4_vif", dfi_lpddr4_if);
`ifdef TIMING_CHECK
        uvm_config_db #(virtual dfi_interface)::set(uvm_root::get(), "uvm_test_top", "dfi_vif", u_mc_core.dfi_if);
`endif
        run_test("core_basic_test");
        $finish;
    end
endmodule