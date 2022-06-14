`timescale 1ns/10ps

module wb2native_tb();
    //wishbone bus
	logic [31:0] wishbone_port_adr;
	logic [255:0] wishbone_port_dat_w;
	logic [255:0] wishbone_port_dat_r;
	logic [31:0] wishbone_port_sel;
	logic wishbone_port_cyc;
	logic wishbone_port_stb;
	logic wishbone_port_ack;
	logic wishbone_port_we;
	logic [2:0] wishbone_port_cti;
	logic [1:0] wishbone_port_bte;
	logic wishbone_port_err;
    //system clock/reset
	logic sys_clk;
	logic sys_rst;

    logic native_cmd_valid_1;
	logic native_cmd_ready_1;
	logic native_cmd_first_1;
	logic native_cmd_last_1;
	logic native_cmd_payload_we_1;
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

    always #2 sys_clk=~sys_clk;

    initial begin
        //wb
		wishbone_port_adr<='d0;
		wishbone_port_dat_w<='d0;
		wishbone_port_sel<='d0;
		wishbone_port_cyc<='d0;
		wishbone_port_stb<='d0;
		wishbone_port_we<='d0;
		wishbone_port_cti<='d0;
		wishbone_port_bte<='d0;
		wishbone_port_err<='d0;
        native_cmd_ready_1<='d0;
        wdata_ready_1<='d0;
	    wdata_last_1<='d0;
	    rdata_valid_1<='d0;
	    rdata_last_1<='d0;
	    rdata_payload_data_1<='d0;
		sys_clk<=1'b0;
		sys_rst<=1'b1;


		#10
		sys_rst<=1'b0;
		#10
        native_cmd_ready_1<=1'b1;
        wdata_ready_1<=1'b1;
		wishbone_port_adr<=32'h40000000;
		wishbone_port_dat_w<=256'h1;
		wishbone_port_sel<=32'hffffffff;
		wishbone_port_we<=1'b1;
		wishbone_port_stb<=1'b1;
		wishbone_port_cyc<=1'b1;
		#4
		wishbone_port_adr<='d0;
		wishbone_port_dat_w<='d0;
		wishbone_port_sel<='d0;
		wishbone_port_cyc<='d0;
		wishbone_port_stb<='d0;
		wishbone_port_we<='d0;
		wishbone_port_cti<='d0;
		wishbone_port_bte<='d0;
		wishbone_port_err<='d0;
		#1000;
        $finish();
    end

endmodule