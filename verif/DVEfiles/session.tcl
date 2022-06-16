# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Thu Jun 16 20:16:12 2022
# Designs open: 1
#   V1: /home/jwang710/mc/verif/vcdplus.vpd
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: tb_top
#   Group count = 2
#   Group Group1 signal count = 477
#   Group Group2 signal count = 132
# End_DVE_Session_Save_Info

# DVE version: R-2020.12-SP1_Full64
# DVE build date: Mar  2 2021 21:35:25


#<Session mode="Full" path="/home/jwang710/mc/verif/DVEfiles/session.tcl" type="Debug">

gui_set_loading_session_type Post
gui_continuetime_set

# Close design
if { [gui_sim_state -check active] } {
    gui_sim_terminate
}
gui_close_db -all
gui_expr_clear_all

# Close all windows
gui_close_window -type Console
gui_close_window -type Wave
gui_close_window -type Source
gui_close_window -type Schematic
gui_close_window -type Data
gui_close_window -type DriverLoad
gui_close_window -type List
gui_close_window -type Memory
gui_close_window -type HSPane
gui_close_window -type DLPane
gui_close_window -type Assertion
gui_close_window -type CovHier
gui_close_window -type CoverageTable
gui_close_window -type CoverageMap
gui_close_window -type CovDetail
gui_close_window -type Local
gui_close_window -type Stack
gui_close_window -type Watch
gui_close_window -type Group
gui_close_window -type Transaction



# Application preferences
gui_set_pref_value -key app_default_font -value {Helvetica,10,-1,5,50,0,0,0,0,0}
gui_src_preferences -tabstop 8 -maxbits 24 -windownumber 1
#<WindowLayout>

# DVE top-level session


# Create and position top-level window: TopLevel.1

if {![gui_exist_window -window TopLevel.1]} {
    set TopLevel.1 [ gui_create_window -type TopLevel \
       -icon $::env(DVE)/auxx/gui/images/toolbars/dvewin.xpm] 
} else { 
    set TopLevel.1 TopLevel.1
}
gui_show_window -window ${TopLevel.1} -show_state maximized -rect {{1 38} {1920 1014}}

# ToolBar settings
gui_set_toolbar_attributes -toolbar {TimeOperations} -dock_state top
gui_set_toolbar_attributes -toolbar {TimeOperations} -offset 0
gui_show_toolbar -toolbar {TimeOperations}
gui_hide_toolbar -toolbar {&File}
gui_set_toolbar_attributes -toolbar {&Edit} -dock_state top
gui_set_toolbar_attributes -toolbar {&Edit} -offset 0
gui_show_toolbar -toolbar {&Edit}
gui_hide_toolbar -toolbar {CopyPaste}
gui_set_toolbar_attributes -toolbar {&Trace} -dock_state top
gui_set_toolbar_attributes -toolbar {&Trace} -offset 0
gui_show_toolbar -toolbar {&Trace}
gui_hide_toolbar -toolbar {TraceInstance}
gui_hide_toolbar -toolbar {BackTrace}
gui_set_toolbar_attributes -toolbar {&Scope} -dock_state top
gui_set_toolbar_attributes -toolbar {&Scope} -offset 0
gui_show_toolbar -toolbar {&Scope}
gui_set_toolbar_attributes -toolbar {&Window} -dock_state top
gui_set_toolbar_attributes -toolbar {&Window} -offset 0
gui_show_toolbar -toolbar {&Window}
gui_set_toolbar_attributes -toolbar {Signal} -dock_state top
gui_set_toolbar_attributes -toolbar {Signal} -offset 0
gui_show_toolbar -toolbar {Signal}
gui_set_toolbar_attributes -toolbar {Zoom} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom} -offset 0
gui_show_toolbar -toolbar {Zoom}
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -dock_state top
gui_set_toolbar_attributes -toolbar {Zoom And Pan History} -offset 0
gui_show_toolbar -toolbar {Zoom And Pan History}
gui_set_toolbar_attributes -toolbar {Grid} -dock_state top
gui_set_toolbar_attributes -toolbar {Grid} -offset 0
gui_show_toolbar -toolbar {Grid}
gui_hide_toolbar -toolbar {Simulator}
gui_hide_toolbar -toolbar {Interactive Rewind}
gui_hide_toolbar -toolbar {Testbench}

# End ToolBar settings

# Docked window settings
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 263]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 263
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 262} {height 730} {dock_state left} {dock_on_new_line true} {child_hier_colhier 152} {child_hier_coltype 111} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 374]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 374
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 729
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 373} {height 730} {dock_state left} {dock_on_new_line true} {child_data_colvariable 242} {child_data_colvalue 65} {child_data_coltype 61} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 166]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1860
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 166
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1919} {height 165} {dock_state bottom} {dock_on_new_line true}}
#### Start - Readjusting docked view's offset / size
set dockAreaList { top left right bottom }
foreach dockArea $dockAreaList {
  set viewList [gui_ekki_get_window_ids -active_parent -dock_area $dockArea]
  foreach view $viewList {
      if {[lsearch -exact [gui_get_window_pref_keys -window $view] dock_width] != -1} {
        set dockWidth [gui_get_window_pref_value -window $view -key dock_width]
        set dockHeight [gui_get_window_pref_value -window $view -key dock_height]
        set offset [gui_get_window_pref_value -window $view -key dock_offset]
        if { [string equal "top" $dockArea] || [string equal "bottom" $dockArea]} {
          gui_set_window_attributes -window $view -dock_offset $offset -width $dockWidth
        } else {
          gui_set_window_attributes -window $view -dock_offset $offset -height $dockHeight
        }
      }
  }
}
#### End - Readjusting docked view's offset / size
gui_sync_global -id ${TopLevel.1} -option true

# MDI window settings
set Source.1 [gui_create_window -type {Source}  -parent ${TopLevel.1}]
gui_show_window -window ${Source.1} -show_state maximized
gui_update_layout -id ${Source.1} {{show_state maximized} {dock_state undocked} {dock_on_new_line false}}

# End MDI window settings

gui_set_env TOPLEVELS::TARGET_FRAME(Source) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Schematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(PathSchematic) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(Wave) none
gui_set_env TOPLEVELS::TARGET_FRAME(List) none
gui_set_env TOPLEVELS::TARGET_FRAME(Memory) ${TopLevel.1}
gui_set_env TOPLEVELS::TARGET_FRAME(DriverLoad) none
gui_update_statusbar_target_frame ${TopLevel.1}

#</WindowLayout>

#<Database>

# DVE Open design session: 

if { ![gui_is_db_opened -db {/home/jwang710/mc/verif/vcdplus.vpd}] } {
	gui_open_db -design V1 -file /home/jwang710/mc/verif/vcdplus.vpd -nosource
}
gui_set_precision 10ps
gui_set_time_units 10ps
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {tb_top.u_mc_core.u_mc_ahb_csr}
gui_load_child_values {tb_top.u_mc_core.u_wb2native}
gui_load_child_values {tb_top.u_mc_core.u_multiplexer_b8}
gui_load_child_values {tb_top.u_mc_core.u_crossbar_2ports}


set _session_group_2 Group1
gui_sg_create "$_session_group_2"
set Group1 "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { tb_top.dfi_p0_address tb_top.dfi_p0_bank tb_top.dfi_p0_cas_n tb_top.dfi_p0_cs_n tb_top.dfi_p0_ras_n tb_top.dfi_p0_we_n tb_top.dfi_p0_cke tb_top.dfi_p0_odt tb_top.dfi_p0_reset_n tb_top.dfi_p0_wrdata tb_top.dfi_p0_wrdata_en tb_top.dfi_p0_wrdata_mask tb_top.dfi_p0_rddata_en tb_top.dfi_p0_rddata tb_top.dfi_p0_rddata_valid tb_top.dfi_p1_address tb_top.dfi_p1_bank tb_top.dfi_p1_cas_n tb_top.dfi_p1_cs_n tb_top.dfi_p1_ras_n tb_top.dfi_p1_we_n tb_top.dfi_p1_cke tb_top.dfi_p1_odt tb_top.dfi_p1_reset_n tb_top.dfi_p1_wrdata tb_top.dfi_p1_wrdata_en tb_top.dfi_p1_wrdata_mask tb_top.dfi_p1_rddata_en tb_top.dfi_p1_rddata tb_top.dfi_p1_rddata_valid tb_top.dfi_p2_address tb_top.dfi_p2_bank tb_top.dfi_p2_cas_n tb_top.dfi_p2_cs_n tb_top.dfi_p2_ras_n tb_top.dfi_p2_we_n tb_top.dfi_p2_cke tb_top.dfi_p2_odt tb_top.dfi_p2_reset_n tb_top.dfi_p2_wrdata tb_top.dfi_p2_wrdata_en tb_top.dfi_p2_wrdata_mask tb_top.dfi_p2_rddata_en tb_top.dfi_p2_rddata tb_top.dfi_p2_rddata_valid tb_top.dfi_p3_address tb_top.dfi_p3_bank tb_top.dfi_p3_cas_n tb_top.dfi_p3_cs_n tb_top.dfi_p3_ras_n tb_top.dfi_p3_we_n tb_top.dfi_p3_cke tb_top.dfi_p3_odt tb_top.dfi_p3_reset_n tb_top.dfi_p3_wrdata tb_top.dfi_p3_wrdata_en tb_top.dfi_p3_wrdata_mask tb_top.dfi_p3_rddata_en tb_top.dfi_p3_rddata tb_top.dfi_p3_rddata_valid tb_top.axi_aw_valid tb_top.axi_aw_ready tb_top.axi_aw_first tb_top.axi_aw_last tb_top.axi_aw_payload_addr tb_top.axi_aw_payload_burst tb_top.axi_aw_payload_len tb_top.axi_aw_payload_size tb_top.axi_aw_payload_lock tb_top.axi_aw_payload_prot tb_top.axi_aw_payload_cache tb_top.axi_aw_payload_qos tb_top.axi_aw_payload_id tb_top.axi_w_valid tb_top.axi_w_ready tb_top.axi_w_first tb_top.axi_w_last tb_top.axi_w_payload_data tb_top.axi_w_payload_strb tb_top.axi_w_payload_id tb_top.axi_b_valid tb_top.axi_b_ready tb_top.axi_b_payload_resp tb_top.axi_b_payload_id tb_top.axi_ar_valid tb_top.axi_ar_ready tb_top.axi_ar_first tb_top.axi_ar_last tb_top.axi_ar_payload_addr tb_top.axi_ar_payload_burst tb_top.axi_ar_payload_len tb_top.axi_ar_payload_size tb_top.axi_ar_payload_lock tb_top.axi_ar_payload_prot tb_top.axi_ar_payload_cache tb_top.axi_ar_payload_qos tb_top.axi_ar_payload_id tb_top.axi_r_valid tb_top.axi_r_ready tb_top.axi_r_last tb_top.axi_r_payload_resp tb_top.axi_r_payload_data tb_top.axi_r_payload_id tb_top.wishbone_port_adr tb_top.wishbone_port_dat_w tb_top.wishbone_port_dat_r tb_top.wishbone_port_sel tb_top.wishbone_port_cyc tb_top.wishbone_port_stb tb_top.wishbone_port_ack tb_top.wishbone_port_we tb_top.wishbone_port_cti tb_top.wishbone_port_bte tb_top.wishbone_port_err tb_top.i_ahb_extclk tb_top.i_ahb_extrst tb_top.i_haddr tb_top.i_hwrite tb_top.i_hsel tb_top.i_hreadyin tb_top.i_hwdata tb_top.i_htrans tb_top.i_hsize tb_top.i_hburst tb_top.o_hready tb_top.o_hrdata tb_top.o_hresp tb_top.o_hgrant tb_top.sys_clk tb_top.sys_rst {tb_top.$unit} tb_top.u_mc_core.u_mc_ahb_csr.o_mul_rdphase_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_wrphase_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_rdcmd_phase_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_wrcmd_phase_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tRRD_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tFAW_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tCCD_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_WTR_LATENCY_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_RTW_LATENCY_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_READ_TIME_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_mul_WRITE_TIME_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tREFI_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_ref_POSTPONE_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tRP_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tRFC_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_bm_PRECHARGE_TIME_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRAS_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRC_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRP_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRCD_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_crb_READ_LATENCY_cfg tb_top.u_mc_core.u_mc_ahb_csr.o_crb_WRITE_LATENCY_cfg tb_top.u_mc_core.u_multiplexer_b8.interface_wdata tb_top.u_mc_core.u_multiplexer_b8.interface_wdata_we }
gui_sg_addsignal -group "$_session_group_2" { tb_top.u_mc_core.u_multiplexer_b8.interface_rdata tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_address tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_bank tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_cas_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_cs_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_ras_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_we_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_cke tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_odt tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_reset_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_act_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_wrdata tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_wrdata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_wrdata_mask tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_rddata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_rddata tb_top.u_mc_core.u_multiplexer_b8.dfi_p0_rddata_valid tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_address tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_bank tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_cas_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_cs_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_ras_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_we_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_cke tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_odt tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_reset_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_act_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_wrdata tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_wrdata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_wrdata_mask tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_rddata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_rddata tb_top.u_mc_core.u_multiplexer_b8.dfi_p1_rddata_valid tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_address tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_bank tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_cas_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_cs_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_ras_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_we_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_cke tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_odt tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_reset_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_act_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_wrdata tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_wrdata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_wrdata_mask tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_rddata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_rddata tb_top.u_mc_core.u_multiplexer_b8.dfi_p2_rddata_valid tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_address tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_bank tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_cas_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_cs_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_ras_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_we_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_cke tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_odt tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_reset_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_act_n tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_wrdata tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_wrdata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_wrdata_mask tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_rddata_en tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_rddata tb_top.u_mc_core.u_multiplexer_b8.dfi_p3_rddata_valid tb_top.u_mc_core.u_multiplexer_b8.cmd_valid tb_top.u_mc_core.u_multiplexer_b8.cmd_ready tb_top.u_mc_core.u_multiplexer_b8.cmd_first tb_top.u_mc_core.u_multiplexer_b8.cmd_last tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write tb_top.u_mc_core.u_multiplexer_b8.refresh_req tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_1 }
gui_sg_addsignal -group "$_session_group_2" { tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_1 tb_top.u_mc_core.u_multiplexer_b8.refresh_req_1 tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt_1 tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_2 tb_top.u_mc_core.u_multiplexer_b8.refresh_req_2 tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt_2 tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_3 tb_top.u_mc_core.u_multiplexer_b8.refresh_req_3 tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt_3 tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_4 tb_top.u_mc_core.u_multiplexer_b8.refresh_req_4 tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt_4 tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_5 tb_top.u_mc_core.u_multiplexer_b8.refresh_req_5 tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt_5 tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_6 tb_top.u_mc_core.u_multiplexer_b8.refresh_req_6 tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt_6 tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_7 }
gui_sg_addsignal -group "$_session_group_2" { tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_7 tb_top.u_mc_core.u_multiplexer_b8.refresh_req_7 tb_top.u_mc_core.u_multiplexer_b8.refresh_gnt_7 tb_top.u_mc_core.u_multiplexer_b8.cmd_valid_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_ready_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_first_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_last_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_a_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ba_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_cas_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_ras_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_we_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_cmd_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_read_8 tb_top.u_mc_core.u_multiplexer_b8.cmd_payload_is_write_8 tb_top.u_mc_core.u_multiplexer_b8.mul_tRRD_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_tFAW_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_tCCD_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_WTR_LATENCY_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_RTW_LATENCY_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_READ_TIME_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_WRITE_TIME_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_rd_phase_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_wr_phase_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_rdcmd_phase_cfg tb_top.u_mc_core.u_multiplexer_b8.mul_wrcmd_phase_cfg tb_top.u_mc_core.u_multiplexer_b8.sys_clk tb_top.u_mc_core.u_multiplexer_b8.sys_rst tb_top.u_mc_core.u_multiplexer_b8.ras_allowed tb_top.u_mc_core.u_multiplexer_b8.cas_allowed tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_want_reads tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_want_writes tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_want_cmds tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_want_activates tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_valid tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_ready tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_a tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_ba tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_cas tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_ras tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_we tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_is_cmd tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_is_read tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_cmd_payload_is_write tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_valids tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_request tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_grant tb_top.u_mc_core.u_multiplexer_b8.choose_cmd_ce tb_top.u_mc_core.u_multiplexer_b8.choose_req_want_reads tb_top.u_mc_core.u_multiplexer_b8.choose_req_want_writes tb_top.u_mc_core.u_multiplexer_b8.choose_req_want_cmds tb_top.u_mc_core.u_multiplexer_b8.choose_req_want_activates tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_valid tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_ready tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_a tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_ba tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_cas tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_ras tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_we tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_is_cmd tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_is_read tb_top.u_mc_core.u_multiplexer_b8.choose_req_cmd_payload_is_write tb_top.u_mc_core.u_multiplexer_b8.choose_req_valids tb_top.u_mc_core.u_multiplexer_b8.choose_req_request tb_top.u_mc_core.u_multiplexer_b8.choose_req_grant }
gui_sg_addsignal -group "$_session_group_2" { tb_top.u_mc_core.u_multiplexer_b8.choose_req_ce tb_top.u_mc_core.u_multiplexer_b8.nop_a tb_top.u_mc_core.u_multiplexer_b8.nop_ba tb_top.u_mc_core.u_multiplexer_b8.steerer_sel0 tb_top.u_mc_core.u_multiplexer_b8.steerer_sel1 tb_top.u_mc_core.u_multiplexer_b8.steerer_sel2 tb_top.u_mc_core.u_multiplexer_b8.steerer_sel3 tb_top.u_mc_core.u_multiplexer_b8.steerer0 tb_top.u_mc_core.u_multiplexer_b8.steerer1 tb_top.u_mc_core.u_multiplexer_b8.steerer2 tb_top.u_mc_core.u_multiplexer_b8.steerer3 tb_top.u_mc_core.u_multiplexer_b8.steerer4 tb_top.u_mc_core.u_multiplexer_b8.steerer5 tb_top.u_mc_core.u_multiplexer_b8.steerer6 tb_top.u_mc_core.u_multiplexer_b8.steerer7 tb_top.u_mc_core.u_multiplexer_b8.trrdcon_valid tb_top.u_mc_core.u_multiplexer_b8.trrdcon_ready tb_top.u_mc_core.u_multiplexer_b8.trrdcon_count tb_top.u_mc_core.u_multiplexer_b8.tfawcon_valid tb_top.u_mc_core.u_multiplexer_b8.tfawcon_ready tb_top.u_mc_core.u_multiplexer_b8.tfawcon_count tb_top.u_mc_core.u_multiplexer_b8.tfawcon_window_c tb_top.u_mc_core.u_multiplexer_b8.tfawcon_window tb_top.u_mc_core.u_multiplexer_b8.tccdcon_valid tb_top.u_mc_core.u_multiplexer_b8.tccdcon_ready tb_top.u_mc_core.u_multiplexer_b8.tccdcon_count tb_top.u_mc_core.u_multiplexer_b8.twtrcon_valid tb_top.u_mc_core.u_multiplexer_b8.twtrcon_ready tb_top.u_mc_core.u_multiplexer_b8.twtrcon_count tb_top.u_mc_core.u_multiplexer_b8.trtwcon_valid tb_top.u_mc_core.u_multiplexer_b8.trtwcon_ready tb_top.u_mc_core.u_multiplexer_b8.trtwcon_count tb_top.u_mc_core.u_multiplexer_b8.read_available tb_top.u_mc_core.u_multiplexer_b8.write_available tb_top.u_mc_core.u_multiplexer_b8.en0 tb_top.u_mc_core.u_multiplexer_b8.max_time0 tb_top.u_mc_core.u_multiplexer_b8.time0 tb_top.u_mc_core.u_multiplexer_b8.en1 tb_top.u_mc_core.u_multiplexer_b8.max_time1 tb_top.u_mc_core.u_multiplexer_b8.time1 tb_top.u_mc_core.u_multiplexer_b8.go_to_refresh tb_top.u_mc_core.u_multiplexer_b8.state tb_top.u_mc_core.u_multiplexer_b8.next_state tb_top.u_mc_core.u_wb2native.wishbone_port_adr tb_top.u_mc_core.u_wb2native.wishbone_port_dat_w tb_top.u_mc_core.u_wb2native.wishbone_port_dat_r tb_top.u_mc_core.u_wb2native.wishbone_port_sel tb_top.u_mc_core.u_wb2native.wishbone_port_cyc tb_top.u_mc_core.u_wb2native.wishbone_port_stb tb_top.u_mc_core.u_wb2native.wishbone_port_ack tb_top.u_mc_core.u_wb2native.wishbone_port_we tb_top.u_mc_core.u_wb2native.wishbone_port_cti tb_top.u_mc_core.u_wb2native.wishbone_port_bte tb_top.u_mc_core.u_wb2native.wishbone_port_err tb_top.u_mc_core.u_wb2native.cmd_valid tb_top.u_mc_core.u_wb2native.cmd_ready tb_top.u_mc_core.u_wb2native.cmd_first tb_top.u_mc_core.u_wb2native.cmd_last tb_top.u_mc_core.u_wb2native.cmd_payload_we tb_top.u_mc_core.u_wb2native.cmd_payload_addr tb_top.u_mc_core.u_wb2native.wdata_valid tb_top.u_mc_core.u_wb2native.wdata_ready tb_top.u_mc_core.u_wb2native.wdata_first tb_top.u_mc_core.u_wb2native.wdata_last tb_top.u_mc_core.u_wb2native.wdata_payload_data tb_top.u_mc_core.u_wb2native.wdata_payload_we tb_top.u_mc_core.u_wb2native.rdata_valid tb_top.u_mc_core.u_wb2native.rdata_ready tb_top.u_mc_core.u_wb2native.rdata_first tb_top.u_mc_core.u_wb2native.rdata_last tb_top.u_mc_core.u_wb2native.rdata_payload_data tb_top.u_mc_core.u_wb2native.sys_clk tb_top.u_mc_core.u_wb2native.sys_rst tb_top.u_mc_core.u_wb2native.flush tb_top.u_mc_core.u_wb2native.aborted tb_top.u_mc_core.u_wb2native.is_ongoing tb_top.u_mc_core.u_wb2native.state tb_top.u_mc_core.u_wb2native.next_state tb_top.u_mc_core.u_wb2native.aborted_next_value tb_top.u_mc_core.u_wb2native.aborted_next_value_ce tb_top.u_mc_core.u_wb2native.dummy_s tb_top.u_mc_core.u_wb2native.dummy_d tb_top.u_mc_core.u_wb2native.dummy_d_1 }
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_rdphase_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_rdphase_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_wrphase_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_wrphase_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_rdcmd_phase_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_rdcmd_phase_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_wrcmd_phase_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_wrcmd_phase_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tRRD_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tRRD_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tFAW_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tFAW_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tCCD_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_tCCD_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_WTR_LATENCY_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_WTR_LATENCY_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_RTW_LATENCY_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_RTW_LATENCY_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_READ_TIME_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_READ_TIME_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_WRITE_TIME_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_mul_WRITE_TIME_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tREFI_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tREFI_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_POSTPONE_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_POSTPONE_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tRP_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tRP_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tRFC_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_ref_tRFC_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_PRECHARGE_TIME_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_PRECHARGE_TIME_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRAS_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRAS_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRC_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRC_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRP_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRP_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRCD_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_bm_tRCD_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_crb_READ_LATENCY_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_crb_READ_LATENCY_cfg}
gui_set_radix -radix {decimal} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_crb_WRITE_LATENCY_cfg}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_mc_ahb_csr.o_crb_WRITE_LATENCY_cfg}
gui_set_radix -radix {hex} -signals {V1:tb_top.u_mc_core.u_wb2native.cmd_payload_addr}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_wb2native.cmd_payload_addr}

set _session_group_3 Group2
gui_sg_create "$_session_group_3"
set Group2 "$_session_group_3"

gui_sg_addsignal -group "$_session_group_3" { tb_top.u_mc_core.u_wb2native.wishbone_port_adr tb_top.u_mc_core.u_wb2native.wishbone_port_dat_w tb_top.u_mc_core.u_wb2native.wishbone_port_dat_r tb_top.u_mc_core.u_wb2native.wishbone_port_sel tb_top.u_mc_core.u_wb2native.wishbone_port_cyc tb_top.u_mc_core.u_wb2native.wishbone_port_stb tb_top.u_mc_core.u_wb2native.wishbone_port_ack tb_top.u_mc_core.u_wb2native.wishbone_port_we tb_top.u_mc_core.u_wb2native.wishbone_port_cti tb_top.u_mc_core.u_wb2native.wishbone_port_bte tb_top.u_mc_core.u_wb2native.wishbone_port_err tb_top.u_mc_core.u_wb2native.cmd_valid tb_top.u_mc_core.u_wb2native.cmd_ready tb_top.u_mc_core.u_wb2native.cmd_last tb_top.u_mc_core.u_wb2native.cmd_payload_we tb_top.u_mc_core.u_wb2native.cmd_payload_addr tb_top.u_mc_core.u_wb2native.wdata_valid tb_top.u_mc_core.u_wb2native.wdata_ready tb_top.u_mc_core.u_wb2native.wdata_payload_data tb_top.u_mc_core.u_wb2native.wdata_payload_we tb_top.u_mc_core.u_wb2native.rdata_valid tb_top.u_mc_core.u_wb2native.rdata_ready tb_top.u_mc_core.u_wb2native.rdata_payload_data tb_top.u_mc_core.u_wb2native.sys_clk tb_top.u_mc_core.u_wb2native.sys_rst tb_top.u_mc_core.u_wb2native.flush tb_top.u_mc_core.u_wb2native.aborted tb_top.u_mc_core.u_wb2native.is_ongoing tb_top.u_mc_core.u_wb2native.state tb_top.u_mc_core.u_wb2native.next_state tb_top.u_mc_core.u_wb2native.aborted_next_value tb_top.u_mc_core.u_wb2native.aborted_next_value_ce tb_top.u_mc_core.u_wb2native.dummy_s tb_top.u_mc_core.u_wb2native.dummy_d tb_top.u_mc_core.u_wb2native.dummy_d_1 tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_valid }
gui_sg_addsignal -group "$_session_group_3" { tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_wdata tb_top.u_mc_core.u_crossbar_2ports.interface_wdata_we tb_top.u_mc_core.u_crossbar_2ports.interface_rdata tb_top.u_mc_core.u_crossbar_2ports.crb_READ_LATENCY_cfg tb_top.u_mc_core.u_crossbar_2ports.crb_WRITE_LATENCY_cfg tb_top.u_mc_core.u_crossbar_2ports.cmd_valid tb_top.u_mc_core.u_crossbar_2ports.cmd_ready tb_top.u_mc_core.u_crossbar_2ports.cmd_first tb_top.u_mc_core.u_crossbar_2ports.cmd_last tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_we tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_addr tb_top.u_mc_core.u_crossbar_2ports.wdata_valid tb_top.u_mc_core.u_crossbar_2ports.wdata_ready tb_top.u_mc_core.u_crossbar_2ports.wdata_first tb_top.u_mc_core.u_crossbar_2ports.wdata_last tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_data tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_we tb_top.u_mc_core.u_crossbar_2ports.rdata_valid tb_top.u_mc_core.u_crossbar_2ports.rdata_ready tb_top.u_mc_core.u_crossbar_2ports.rdata_first tb_top.u_mc_core.u_crossbar_2ports.rdata_last tb_top.u_mc_core.u_crossbar_2ports.rdata_payload_data tb_top.u_mc_core.u_crossbar_2ports.cmd_valid_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_ready_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_first_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_last_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_we_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_addr_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_valid_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_ready_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_first_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_last_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_data_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_we_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_valid_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_ready_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_first_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_last_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_payload_data_1 tb_top.u_mc_core.u_crossbar_2ports.sys_clk tb_top.u_mc_core.u_crossbar_2ports.sys_rst }
gui_set_radix -radix {hex} -signals {V1:tb_top.u_mc_core.u_wb2native.cmd_payload_addr}
gui_set_radix -radix {unsigned} -signals {V1:tb_top.u_mc_core.u_wb2native.cmd_payload_addr}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 3045



# Save global setting...

# Wave/List view global setting
gui_cov_show_value -switch false

# Close all empty TopLevel windows
foreach __top [gui_ekki_get_window_ids -type TopLevel] {
    if { [llength [gui_ekki_get_window_ids -parent $__top]] == 0} {
        gui_close_window -window $__top
    }
}
gui_set_loading_session_type noSession
# DVE View/pane content session: 


# Hier 'Hier.1'
gui_show_window -window ${Hier.1}
gui_list_set_filter -id ${Hier.1} -list { {Package 1} {All 0} {Process 1} {VirtPowSwitch 0} {UnnamedProcess 1} {UDP 0} {Function 1} {Block 1} {SrsnAndSpaCell 0} {OVA Unit 1} {LeafScCell 1} {LeafVlgCell 1} {Interface 1} {LeafVhdCell 1} {$unit 1} {NamedBlock 1} {Task 1} {VlgPackage 1} {ClassDef 1} {VirtIsoCell 0} }
gui_list_set_filter -id ${Hier.1} -text {*}
gui_hier_list_init -id ${Hier.1}
gui_change_design -id ${Hier.1} -design V1
catch {gui_list_expand -id ${Hier.1} tb_top}
catch {gui_list_expand -id ${Hier.1} tb_top.u_mc_core}
catch {gui_list_select -id ${Hier.1} {tb_top.u_mc_core.u_crossbar_2ports}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {tb_top.u_mc_core.u_crossbar_2ports}
gui_show_window -window ${Data.1}
catch { gui_list_select -id ${Data.1} {tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank0_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank1_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank2_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank3_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank4_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank5_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank6_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_valid tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_we tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_addr tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_lock tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_wdata_ready tb_top.u_mc_core.u_crossbar_2ports.interface_bank7_rdata_valid tb_top.u_mc_core.u_crossbar_2ports.interface_wdata tb_top.u_mc_core.u_crossbar_2ports.interface_wdata_we tb_top.u_mc_core.u_crossbar_2ports.interface_rdata tb_top.u_mc_core.u_crossbar_2ports.crb_READ_LATENCY_cfg tb_top.u_mc_core.u_crossbar_2ports.crb_WRITE_LATENCY_cfg tb_top.u_mc_core.u_crossbar_2ports.cmd_valid tb_top.u_mc_core.u_crossbar_2ports.cmd_ready tb_top.u_mc_core.u_crossbar_2ports.cmd_first tb_top.u_mc_core.u_crossbar_2ports.cmd_last tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_we tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_addr tb_top.u_mc_core.u_crossbar_2ports.wdata_valid tb_top.u_mc_core.u_crossbar_2ports.wdata_ready tb_top.u_mc_core.u_crossbar_2ports.wdata_first tb_top.u_mc_core.u_crossbar_2ports.wdata_last tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_data tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_we tb_top.u_mc_core.u_crossbar_2ports.rdata_valid tb_top.u_mc_core.u_crossbar_2ports.rdata_ready tb_top.u_mc_core.u_crossbar_2ports.rdata_first tb_top.u_mc_core.u_crossbar_2ports.rdata_last tb_top.u_mc_core.u_crossbar_2ports.rdata_payload_data tb_top.u_mc_core.u_crossbar_2ports.cmd_valid_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_ready_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_first_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_last_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_we_1 tb_top.u_mc_core.u_crossbar_2ports.cmd_payload_addr_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_valid_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_ready_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_first_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_last_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_data_1 tb_top.u_mc_core.u_crossbar_2ports.wdata_payload_we_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_valid_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_ready_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_first_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_last_1 tb_top.u_mc_core.u_crossbar_2ports.rdata_payload_data_1 tb_top.u_mc_core.u_crossbar_2ports.sys_clk tb_top.u_mc_core.u_crossbar_2ports.sys_rst }}
gui_view_scroll -id ${Data.1} -vertical -set 1546
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active tb_top /home/jwang710/mc/verif/./tb_top.sv
gui_view_scroll -id ${Source.1} -vertical -set 0
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${DLPane.1}
}
#</Session>

