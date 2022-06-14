module tb_top;

    //dfi p0
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

	//dfi p1
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

	//dfi p2
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

	//dfi p3
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
	logic [3:0]axi_aw_payload_id;

	//axi w channel
	logic axi_w_valid;
	logic axi_w_ready;
	logic axi_w_first;
	logic axi_w_last;
	logic [255:0] axi_w_payload_data;
	logic [31:0] axi_w_payload_strb;
	logic [3:0]axi_w_payload_id;

	//axi b channel
	logic axi_b_valid;
	logic axi_b_ready;
	logic axi_b_first;
	logic axi_b_last;
	logic [1:0] axi_b_payload_resp;
	logic [3:0]axi_b_payload_id;

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
	logic [3:0]axi_ar_payload_id;

	//axi r channel
	logic axi_r_valid;
	logic axi_r_ready;
	logic axi_r_first;
	logic axi_r_last;
	logic [1:0] axi_r_payload_resp;
	logic [255:0] axi_r_payload_data;
	logic [3:0]axi_r_payload_id;

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

	//ahb bus

   	logic                 i_ahb_extclk;
   	logic                 i_ahb_extrst;
   	logic  [31:0]         i_haddr;
   	logic                 i_hwrite;
   	logic                 i_hsel;
   	logic                 i_hreadyin;
   	logic  [31:0]         i_hwdata;
   	logic  [1:0]          i_htrans;
   	logic  [2:0]          i_hsize;
   	logic  [2:0]          i_hburst;
   	logic                 o_hready;
   	logic  [31:0]         o_hrdata;
   	logic  [1:0]          o_hresp;
   	logic                 o_hgrant;

	//system clock/reset
	logic sys_clk;
	logic sys_rst;

    mc_core u_mc_core (
    //dfi p0
	.dfi_p0_address          (dfi_p0_address),
    .dfi_p0_bank             (dfi_p0_bank),
    .dfi_p0_cas_n            (dfi_p0_cas_n),
    .dfi_p0_cs_n             (dfi_p0_cs_n),
    .dfi_p0_ras_n            (dfi_p0_ras_n),
    .dfi_p0_we_n             (dfi_p0_we_n),
    .dfi_p0_cke              (dfi_p0_cke),
    .dfi_p0_odt              (dfi_p0_odt),
    .dfi_p0_reset_n          (dfi_p0_reset_n),
    .dfi_p0_act_n            (dfi_p0_act_n),
    .dfi_p0_wrdata           (dfi_p0_wrdata),
    .dfi_p0_wrdata_en        (dfi_p0_wrdata_en),
    .dfi_p0_wrdata_mask      (dfi_p0_wrdata_mask),
    .dfi_p0_rddata_en        (dfi_p0_rddata_en),
    .dfi_p0_rddata           (dfi_p0_rddata),
    .dfi_p0_rddata_valid     (dfi_p0_rddata_valid),
    //dfi p1
	.dfi_p1_address          (dfi_p1_address),
    .dfi_p1_bank             (dfi_p1_bank),
    .dfi_p1_cas_n            (dfi_p1_cas_n),
    .dfi_p1_cs_n             (dfi_p1_cs_n),
    .dfi_p1_ras_n            (dfi_p1_ras_n),
    .dfi_p1_we_n             (dfi_p1_we_n),
    .dfi_p1_cke              (dfi_p1_cke),
    .dfi_p1_odt              (dfi_p1_odt),
    .dfi_p1_reset_n          (dfi_p1_reset_n),
    .dfi_p1_act_n            (dfi_p1_act_n),
    .dfi_p1_wrdata           (dfi_p1_wrdata),
    .dfi_p1_wrdata_en        (dfi_p1_wrdata_en),
    .dfi_p1_wrdata_mask      (dfi_p1_wrdata_mask),
    .dfi_p1_rddata_en        (dfi_p1_rddata_en),
    .dfi_p1_rddata           (dfi_p1_rddata),
    .dfi_p1_rddata_valid     (dfi_p1_rddata_valid),
    //dfi p2
	.dfi_p2_address          (dfi_p2_address),
    .dfi_p2_bank             (dfi_p2_bank),
    .dfi_p2_cas_n            (dfi_p2_cas_n),
    .dfi_p2_cs_n             (dfi_p2_cs_n),
    .dfi_p2_ras_n            (dfi_p2_ras_n),
    .dfi_p2_we_n             (dfi_p2_we_n),
    .dfi_p2_cke              (dfi_p2_cke),
    .dfi_p2_odt              (dfi_p2_odt),
    .dfi_p2_reset_n          (dfi_p2_reset_n),
    .dfi_p2_act_n            (dfi_p2_act_n),
    .dfi_p2_wrdata           (dfi_p2_wrdata),
    .dfi_p2_wrdata_en        (dfi_p2_wrdata_en),
    .dfi_p2_wrdata_mask      (dfi_p2_wrdata_mask),
    .dfi_p2_rddata_en        (dfi_p2_rddata_en),
    .dfi_p2_rddata           (dfi_p2_rddata),
    .dfi_p2_rddata_valid     (dfi_p2_rddata_valid),
    //dfi p3
	.dfi_p3_address          (dfi_p3_address),
    .dfi_p3_bank             (dfi_p3_bank),
    .dfi_p3_cas_n            (dfi_p3_cas_n),
    .dfi_p3_cs_n             (dfi_p3_cs_n),
    .dfi_p3_ras_n            (dfi_p3_ras_n),
    .dfi_p3_we_n             (dfi_p3_we_n),
    .dfi_p3_cke              (dfi_p3_cke),
    .dfi_p3_odt              (dfi_p3_odt),
    .dfi_p3_reset_n          (dfi_p3_reset_n),
    .dfi_p3_act_n            (dfi_p3_act_n),
    .dfi_p3_wrdata           (dfi_p3_wrdata),
    .dfi_p3_wrdata_en        (dfi_p3_wrdata_en),
    .dfi_p3_wrdata_mask      (dfi_p3_wrdata_mask),
    .dfi_p3_rddata_en        (dfi_p3_rddata_en),
    .dfi_p3_rddata           (dfi_p3_rddata),
    .dfi_p3_rddata_valid     (dfi_p3_rddata_valid),
    //axi aw channel
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
    //axi w channel
	.axi_w_valid             (axi_w_valid),
    .axi_w_ready             (axi_w_ready),
    .axi_w_first             (axi_w_first),
    .axi_w_last              (axi_w_last),
    .axi_w_payload_data      (axi_w_payload_data),
    .axi_w_payload_strb      (axi_w_payload_strb),
    .axi_w_payload_id        (axi_w_payload_id),
    //axi b channel
	.axi_b_valid             (axi_b_valid),
    .axi_b_ready             (axi_b_ready),
    .axi_b_first             (axi_b_first),
    .axi_b_last              (axi_b_last),
    .axi_b_payload_resp      (axi_b_payload_resp),
    .axi_b_payload_id        (axi_b_payload_id),
    //axi ar channel
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
    //axi r channel
	.axi_r_valid             (axi_r_valid),
    .axi_r_ready             (axi_r_ready),
    .axi_r_first             (axi_r_first),
    .axi_r_last              (axi_r_last),
    .axi_r_payload_resp      (axi_r_payload_resp),
    .axi_r_payload_data      (axi_r_payload_data),
    .axi_r_payload_id        (axi_r_payload_id),
    //wishbone bus
	.wishbone_port_adr       (wishbone_port_adr),
    .wishbone_port_dat_w     (wishbone_port_dat_w),
    .wishbone_port_dat_r     (wishbone_port_dat_r),
    .wishbone_port_sel       (wishbone_port_sel),
    .wishbone_port_cyc       (wishbone_port_cyc),
    .wishbone_port_stb       (wishbone_port_stb),
    .wishbone_port_ack       (wishbone_port_ack),
    .wishbone_port_we        (wishbone_port_we),
    .wishbone_port_cti       (wishbone_port_cti),
    .wishbone_port_bte       (wishbone_port_bte),
    .wishbone_port_err       (wishbone_port_err),
    //ahb bus
    .i_ahb_extclk            (i_ahb_extclk),
    .i_ahb_extrst            (i_ahb_extrst),
    .i_haddr                 (i_haddr),
    .i_hwrite                (i_hwrite),
    .i_hsel                  (i_hsel),
    .i_hreadyin              (i_hreadyin),
    .i_hwdata                (i_hwdata),
    .i_htrans                (i_htrans),
    .i_hsize                 (i_hsize),
    .i_hburst                (i_hburst),
    .o_hready                (o_hready),
    .o_hrdata                (o_hrdata),
    .o_hresp                 (o_hresp),
    .o_hgrant                (o_hgrant),
    //system clock/reset
	.sys_clk                 (sys_clk),
    .sys_rst                 (sys_rst)
);


    always #1 sys_clk=~sys_clk;

    initial begin
        $vcdpluson(0,tb_top);
        //axi aw channel
	    axi_aw_valid<='d0;
	    axi_aw_first<='d0;
	    axi_aw_last<='d0;
	    axi_aw_payload_addr<='d0;
	    axi_aw_payload_burst<='d0;
	    axi_aw_payload_len<='d0;
	    axi_aw_payload_size<='d0;
	    axi_aw_payload_lock<='d0;
	    axi_aw_payload_prot<='d0;
	    axi_aw_payload_cache<='d0;
	    axi_aw_payload_qos<='d0;
	    axi_aw_payload_id<='d0;

	    //axi w channel
	    axi_w_valid<='d0;
	    axi_w_first<='d0;
	    axi_w_last<='d0;
	    axi_w_payload_data<='d0;
	    axi_w_payload_strb<='d0;
	    axi_w_payload_id<='d0;

	    //axi b channel
	    axi_b_ready<='d0;

	    //axi ar channel
	    axi_ar_valid<='d0;
	    axi_ar_first<='d0;
	    axi_ar_last<='d0;
	    axi_ar_payload_addr<='d0;
	    axi_ar_payload_burst<='d0;
	    axi_ar_payload_len<='d0;
	    axi_ar_payload_size<='d0;
	    axi_ar_payload_lock<='d0;
	    axi_ar_payload_prot<='d0;
	    axi_ar_payload_cache<='d0;
	    axi_ar_payload_qos<='d0;
	    axi_ar_payload_id<='d0;

	    //axi r channel
	    axi_r_ready<='d0;

         //ahb
        i_ahb_extclk<='d0;
   	    i_ahb_extrst<=1'b1;
   	    i_haddr<='d0;
   	    i_hwrite<='d0;
   	    i_hsel<='d0;
   	    i_hreadyin<='d0;
   	    i_hwdata<='d0;
   	    i_htrans<='d0;
   	    i_hsize<='d0;
   	    i_hburst<='d0;

		//dfi
		dfi_p0_rddata<='d0;
        dfi_p1_rddata<='d0;
        dfi_p2_rddata<='d0;
        dfi_p3_rddata<='d0;
        dfi_p0_rddata_valid<='d0;
        dfi_p1_rddata_valid<='d0;
        dfi_p2_rddata_valid<='d0;
        dfi_p3_rddata_valid<='d0;

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


		sys_clk<=1'b0;
		sys_rst<=1'b1;


		#10
		i_ahb_extrst<=1'b0;
		sys_rst<=1'b0;
		#20
		wishbone_port_adr<=32'h40000000;
		wishbone_port_dat_w<=256'h1;
		wishbone_port_sel<=32'hffffffff;
		wishbone_port_we<=1'b1;
		wishbone_port_stb<=1'b1;
		wishbone_port_cyc<=1'b1;
		#4
        wishbone_port_adr<='d0;
		wishbone_port_sel<='d0;
		wishbone_port_cyc<='d0;
		wishbone_port_stb<='d0;
		wishbone_port_we<='d0;
		wishbone_port_cti<='d0;
		wishbone_port_bte<='d0;
		wishbone_port_err<='d0;
		wishbone_port_dat_w<='d0;
		#1000;
        $finish();
    end
    
endmodule