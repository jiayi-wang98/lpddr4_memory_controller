/* Machine-generated using Migen */
module wb2native(
	input [31:0] wishbone_port_adr,
	input [255:0] wishbone_port_dat_w,
	output reg [255:0] wishbone_port_dat_r,
	input [31:0] wishbone_port_sel,
	input wishbone_port_cyc,
	input wishbone_port_stb,
	output reg wishbone_port_ack,
	input wishbone_port_we,
	input [2:0] wishbone_port_cti,
	input [1:0] wishbone_port_bte,
	input wishbone_port_err,
	output reg cmd_valid,
	input cmd_ready,
	input cmd_first,
	output cmd_last,
	output cmd_payload_we,
	output [31:0] cmd_payload_addr,
	output reg wdata_valid,
	input wdata_ready,
	input wdata_first,
	input wdata_last,
	output [255:0] wdata_payload_data,
	output [31:0] wdata_payload_we,
	input rdata_valid,
	output rdata_ready,
	input rdata_first,
	input rdata_last,
	input [255:0] rdata_payload_data,
	input sys_clk,
	input sys_rst
);

wire flush;
reg aborted = 1'd0;
reg is_ongoing;
reg [1:0] state = 2'd0;
reg [1:0] next_state;
reg aborted_next_value;
reg aborted_next_value_ce;

// synthesis translate_off
reg dummy_s;
initial dummy_s <= 1'd0;
// synthesis translate_on

assign cmd_payload_addr = (wishbone_port_adr - 26'd33554432);
assign cmd_payload_we = wishbone_port_we;
assign cmd_last = (~wishbone_port_we);
assign flush = (~wishbone_port_cyc);

// synthesis translate_off
reg dummy_d;
// synthesis translate_on
always @(*) begin
	wdata_valid <= 1'd0;
	wdata_valid <= (wishbone_port_stb & wishbone_port_we);
	if (1'd1) begin
		if ((~is_ongoing)) begin
			wdata_valid <= 1'd0;
		end
	end
// synthesis translate_off
	dummy_d <= dummy_s;
// synthesis translate_on
end
assign wdata_payload_data = wishbone_port_dat_w;
assign wdata_payload_we = wishbone_port_sel;
assign rdata_ready = 1'd1;

// synthesis translate_off
reg dummy_d_1;
// synthesis translate_on
always @(*) begin
	wishbone_port_dat_r <= 256'd0;
	wishbone_port_ack <= 1'd0;
	cmd_valid <= 1'd0;
	is_ongoing <= 1'd0;
	next_state <= 2'd0;
	aborted_next_value <= 1'd0;
	aborted_next_value_ce <= 1'd0;
	next_state <= state;
	case (state)
		1'd1: begin
			is_ongoing <= 1'd1;
			aborted_next_value <= ((~wishbone_port_cyc) | aborted);
			aborted_next_value_ce <= 1'd1;
			if ((wdata_valid & wdata_ready)) begin
				wishbone_port_ack <= (wishbone_port_cyc & (~aborted));
				next_state <= 1'd0;
			end
		end
		2'd2: begin
			aborted_next_value <= ((~wishbone_port_cyc) | aborted);
			aborted_next_value_ce <= 1'd1;
			if (rdata_valid) begin
				wishbone_port_ack <= (wishbone_port_cyc & (~aborted));
				wishbone_port_dat_r <= rdata_payload_data;
				next_state <= 1'd0;
			end
		end
		default: begin
			cmd_valid <= (wishbone_port_cyc & wishbone_port_stb);
			if (((cmd_valid & cmd_ready) & wishbone_port_we)) begin
				next_state <= 1'd1;
			end
			if (((cmd_valid & cmd_ready) & (~wishbone_port_we))) begin
				next_state <= 2'd2;
			end
			aborted_next_value <= 1'd0;
			aborted_next_value_ce <= 1'd1;
		end
	endcase
// synthesis translate_off
	dummy_d_1 <= dummy_s;
// synthesis translate_on
end

always @(posedge sys_clk) begin
	state <= next_state;
	if (aborted_next_value_ce) begin
		aborted <= aborted_next_value;
	end
	if (sys_rst) begin
		aborted <= 1'd0;
		state <= 2'd0;
	end
end

endmodule
