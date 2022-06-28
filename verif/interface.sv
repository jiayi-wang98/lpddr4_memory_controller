`timescale 1ns/10ps
interface axi_interface(input clk,rst);
    axi_aw_interface if_axi_aw_interface(clk,rst);
    axi_w_interface if_axi_w_interface(clk,rst);
    axi_b_interface if_axi_b_interface(clk,rst);
    axi_ar_interface if_axi_ar_interface(clk,rst);
    axi_r_interface if_axi_r_interface(clk,rst);
endinterface

interface axi_aw_interface(input clk,rst);
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
    clocking axi_master @(posedge clk);
        default input #500ps output #500ps;
        input axi_aw_ready;
        output axi_aw_valid,axi_aw_first,axi_aw_last,axi_aw_payload_addr,axi_aw_payload_burst,axi_aw_payload_len,axi_aw_payload_size,axi_aw_payload_id;
        output axi_aw_payload_lock,axi_aw_payload_prot,axi_aw_payload_cache,axi_aw_payload_qos;
    endclocking
endinterface

interface axi_w_interface(input clk,rst);
    //axi w channel
	logic axi_w_valid;
	logic axi_w_ready;
	logic axi_w_first;
	logic axi_w_last;
	logic [255:0] axi_w_payload_data;
	logic [31:0] axi_w_payload_strb;
	logic axi_w_payload_id;
    clocking axi_master @(posedge clk);
        default input #500ps output #500ps;
        input axi_w_ready;
        output axi_w_valid,axi_w_first,axi_w_last,axi_w_payload_data,axi_w_payload_strb,axi_w_payload_id;
    endclocking
endinterface

interface axi_b_interface(input clk,rst);
    //axi b channel
	logic axi_b_valid;
	logic axi_b_ready;
	logic axi_b_first;
	logic axi_b_last;
	logic [1:0] axi_b_payload_resp;
	logic axi_b_payload_id;
    clocking axi_master @(posedge clk);
        default input #500ps output #500ps;
        output axi_b_ready;
        input axi_b_valid,axi_b_first,axi_b_last,axi_b_payload_resp,axi_b_payload_id;
    endclocking
endinterface
	
interface axi_ar_interface(input clk,rst);
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
    clocking axi_master @(posedge clk);
        default input #0.1 output #0.1;
        input axi_ar_ready;
        output axi_ar_valid,axi_ar_first,axi_ar_last,axi_ar_payload_addr,axi_ar_payload_burst,axi_ar_payload_len,axi_ar_payload_size,axi_ar_payload_id;
        output axi_ar_payload_lock,axi_ar_payload_prot,axi_ar_payload_cache,axi_ar_payload_qos;
    endclocking

endinterface
	
interface axi_r_interface(input clk,rst);
    //axi r channel
	logic axi_r_valid;
	logic axi_r_ready;
	logic axi_r_first;
	logic axi_r_last;
	logic [1:0] axi_r_payload_resp;
	logic [255:0] axi_r_payload_data;
	logic axi_r_payload_id;
    clocking axi_master @(posedge clk);
        default input #500ps output #500ps;
        output axi_r_ready;
        input axi_r_valid,axi_r_first,axi_r_last,axi_r_payload_data,axi_r_payload_resp,axi_r_payload_id;
    endclocking
endinterface
	


interface ahb_interface(input clk,rst);
    logic [31:0]         haddr;
    logic                hwrite;
    logic                hsel;
    logic                hreadyin;
    logic [31:0]         hwdata;
    logic [1:0]          htrans;
    logic [2:0]          hsize;
    logic [2:0]          hburst;
    logic                hready;
    logic [31:0]         hrdata;
    logic [1:0]          hresp;
    logic                hgrant;
    clocking axi_master @(posedge clk);
        default input #500ps output #500ps;
        input hready,hrdata,hresp,hgrant;
        output haddr,hwrite,hsel,hreadyin,hwdata,htrans,hsize,hburst;
    endclocking
endinterface

interface native_interface(input clk,rst);
    logic native_cmd_valid;
	logic native_cmd_ready;
	logic native_cmd_first;
	logic native_cmd_last;
	logic native_cmd_payload_we;
	logic native_cmd_payload_mw;
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

interface litedram_interface(input clk,rst);
    logic interface_bank0_valid;
	logic interface_bank0_ready;
	logic interface_bank0_we;
	logic interface_bank0_mw;
	logic [22:0] interface_bank0_addr;
	logic interface_bank0_lock;
	logic interface_bank0_wdata_ready;
	logic interface_bank0_rdata_valid;
endinterface

interface wishbone_interface(input clk,rst);
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

interface cmd_rw_interface(input clk,rst);
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
	logic cmd_payload_is_mw;
	logic refresh_req;
	logic refresh_gnt;
	clocking drv_ck @(posedge clk);
        default input #0.1 output #0.1;
        output cmd_valid,cmd_payload_a,cmd_payload_ba,cmd_payload_cas,cmd_payload_ras,cmd_payload_we,cmd_payload_is_cmd,cmd_payload_is_read,cmd_payload_is_write,cmd_payload_is_mw,refresh_gnt;
        input cmd_ready,refresh_req;
    endclocking
	clocking mon_ck @(posedge clk);
        default input #0.1 output #0.1;
        input refresh_gnt,refresh_req,cmd_valid,cmd_payload_a,cmd_payload_ba,cmd_payload_cas,cmd_payload_ras,cmd_payload_we,cmd_payload_is_cmd,cmd_payload_is_read,cmd_payload_is_write,cmd_payload_is_mw,cmd_ready;
    endclocking
endinterface

interface dfi_interface(input clk,rst);
    dfi_phase_interface dfi_phase0_interface_if(clk,rst);
	dfi_phase_interface dfi_phase1_interface_if(clk,rst);
	dfi_phase_interface dfi_phase2_interface_if(clk,rst);
	dfi_phase_interface dfi_phase3_interface_if(clk,rst);
endinterface

interface dfi_phase_interface(input clk,rst);
    logic [16:0] address;
	logic [2:0] bank;
	logic cas_n;
	logic cs_n;
	logic ras_n;
	logic we_n;
	logic mw;
	logic cke;
	logic odt;
	logic reset_n;
	logic act_n;
	logic [63:0] wrdata;
	logic wrdata_en;
	logic [7:0] wrdata_mask;
	logic rddata_en;
	logic [63:0] rddata;
	logic rddata_valid;
	clocking mon_ck @(posedge clk);
    	default input #0.1 output #0.1;
    	input address,bank,cas_n,cs_n,ras_n,we_n,mw,cke,odt,reset_n,act_n,wrdata,wrdata_en,wrdata_mask,rddata_en,rddata,rddata_valid;
  	endclocking
endinterface

interface dfi_lpddr4_interface(input clk,rst);
    dfi_phase_lpddr4_interface dfi_phase0_lpddr4_interface_if(clk,rst);
	dfi_phase_lpddr4_interface dfi_phase1_lpddr4_interface_if(clk,rst);
	dfi_phase_lpddr4_interface dfi_phase2_lpddr4_interface_if(clk,rst);
	dfi_phase_lpddr4_interface dfi_phase3_lpddr4_interface_if(clk,rst);
endinterface

interface dfi_phase_lpddr4_interface(input clk,rst);
    logic [5:0] dfi_pN_ca;
	logic dfi_pN_cs;
	logic dfi_pN_cke;
	logic dfi_pN_odt;
	logic dfi_pN_reset_n;
	logic dfi_pN_act_n;
	logic [63:0] dfi_pN_wrdata;
	logic dfi_pN_wrdata_en;
	logic [7:0] dfi_pN_wrdata_mask;
	logic dfi_pN_rddata_en;
	logic [63:0] dfi_pN_rddata;
	logic dfi_pN_rddata_valid;
endinterface