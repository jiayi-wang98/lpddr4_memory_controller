interface axi_interface(input sys_clk,sys_rst)
    //axi aw channel
	logic axi_aw_valid;
	logic axi_aw_ready;
	logic axi_aw_first;
	logic axi_aw_last;
	logic [31:0] axi_aw_payload_addr;
	logic [1:0] axi_aw_payload_burst;
	logic [7:0] axi_aw_payload_len;
	logic [3:0] axi_aw_payload_size;
	logic [1:0] axi_aw_payload_lock;
	logic [2:0] axi_aw_payload_prot;
	logic [3:0] axi_aw_payload_cache;
	logic [3:0] axi_aw_payload_qos;
	logic axi_aw_payload_id;

	//axi w channel
	logic axi_w_valid;
	logic axi_w_ready;
	logic axi_w_first;
	logic axi_w_last;
	logic [255:0] axi_w_payload_data;
	logic [31:0] axi_w_payload_strb;
	logic axi_w_payload_id;

	//axi b channel
	logic axi_b_valid;
	logic axi_b_ready;
	logic axi_b_first;
	logic axi_b_last;
	logic [1:0] axi_b_payload_resp;
	logic axi_b_payload_id;

	//axi ar channel
	logic axi_ar_valid;
	logic axi_ar_ready;
	logic axi_ar_first;
	logic axi_ar_last;
	logic [31:0] axi_ar_payload_addr;
	logic [1:0] axi_ar_payload_burst;
	logic [7:0] axi_ar_payload_len;
	logic [3:0] axi_ar_payload_size;
	logic [1:0] axi_ar_payload_lock;
	logic [2:0] axi_ar_payload_prot;
	logic [3:0] axi_ar_payload_cache;
	logic [3:0] axi_ar_payload_qos;
	logic axi_ar_payload_id;

	//axi r channel
	logic axi_r_valid;
	logic axi_r_ready;
	logic axi_r_first;
	logic axi_r_last;
	logic [1:0] axi_r_payload_resp;
	logic [255:0] axi_r_payload_data;
	logic axi_r_payload_id;

endinterface

interface ahb_interface(input sys_clk,sys_rst)
    logic                i_sysclk;
    logic                i_sysrst;

    logic                i_ahb_extclk;
    logic                i_ahb_extrst;
    logic [31:0]         i_haddr;
    logic                i_hwrite;
    logic                i_hsel;
    logic                i_hreadyin;
    logic [31:0]         i_hwdata;
    logic [1:0]          i_htrans;
    logic [2:0]          i_hsize;
    logic [2:0]          i_hburst;
    logic                o_hready;
    logic [31:0]         o_hrdata;
    logic [1:0]          o_hresp;
    logic                o_hgrant;
endinterface

interface native_interface(input sys_clk,sys_rst)
    logic native_cmd_valid;
	logic native_cmd_ready;
	logic native_cmd_first;
	logic native_cmd_last;
	logic native_cmd_payload_we;
	logic [31:0] native_cmd_payload_addr;
	logic wdata_valid;
	logic wdata_ready;
	logic wdata_first;
	logic wdata_last;
	logic [255:0] wdata_payload_data;
	logic [31:0] wdata_payload_we;
	logic rdata_valid;
	logic rdata_ready;
	logic rdata_first;
	logic rdata_last;
	logic [255:0] rdata_payload_data;
endinterface

interface litedram_interface(input sys_clk,sys_rst)
    logic interface_bank0_valid;
	logic interface_bank0_ready;
	logic interface_bank0_we;
	logic [22:0] interface_bank0_addr;
	logic interface_bank0_lock;
	logic interface_bank0_wdata_ready;
	logic interface_bank0_rdata_valid;
endinterface

interface wishbone_interface(input sys_clk,sys_rst)
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
endinterface

interface cmd_rw_interface(input sys_clk,sys_rst)
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
endinterface

interface dfi_phase_interface(input sys_clk,sys_rst)
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
endinterface

interface dfi_phase_lpddr4_interface(input sys_clk,sys_rst)
    logic [5:0] dfi_p0_ca;
	logic dfi_p0_cs;
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
endinterface