# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Tue May 17 05:14:41 2022
# Designs open: 1
#   V1: /home/jwang710/LiteDram/litedram/sim_axi.vcd
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: 
#   Group count = 1
#   Group axi_adapter signal count = 441
# End_DVE_Session_Save_Info

# DVE version: R-2020.12-SP1_Full64
# DVE build date: Mar  2 2021 21:35:25


#<Session mode="Full" path="/home/jwang710/LiteDram/litedram/litedram/core/DVEfiles/session.tcl" type="Debug">

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
gui_show_window -window ${TopLevel.1} -show_state maximized -rect {{846 179} {2765 1155}}

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
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 273]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 273
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 272} {height 720} {dock_state left} {dock_on_new_line true} {child_hier_colhier 152} {child_hier_coltype 111} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 349]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 349
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 476
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 348} {height 720} {dock_state left} {dock_on_new_line true} {child_data_colvariable 183} {child_data_colvalue 100} {child_data_coltype 41} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 176]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 867
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 176
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1919} {height 175} {dock_state bottom} {dock_on_new_line true}}
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

if { ![gui_is_db_opened -db {/home/jwang710/LiteDram/litedram/sim_axi.vcd.vpd}] } {
	gui_open_db -design V1 -file /home/jwang710/LiteDram/litedram/sim_axi.vcd.vpd -nosource
}
gui_set_precision 1s
gui_set_time_units 1s
#</Database>

# DVE Global setting session: 


# Global: Bus

# Global: Expressions

# Global: Signal Time Shift

# Global: Signal Compare

# Global: Signal Groups
gui_load_child_values {axi_adapter}


set _session_group_1 axi_adapter
gui_sg_create "$_session_group_1"
set axi_adapter "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { axi_adapter.write_resp_buffer_consume axi_adapter.write_resp_buffer_wrport_adr axi_adapter.write_resp_buffer_wrport_dat_r axi_adapter.write_resp_buffer_wrport_we axi_adapter.write_resp_buffer_wrport_dat_w axi_adapter.write_resp_buffer_do_read axi_adapter.write_resp_buffer_rdport_adr axi_adapter.write_resp_buffer_rdport_dat_r axi_adapter.write_resp_buffer_fifo_in_payload_id axi_adapter.write_resp_buffer_fifo_in_payload_resp axi_adapter.write_resp_buffer_fifo_in_first axi_adapter.write_resp_buffer_fifo_in_last axi_adapter.write_resp_buffer_fifo_out_payload_id axi_adapter.write_resp_buffer_fifo_out_payload_resp axi_adapter.write_resp_buffer_fifo_out_first axi_adapter.write_resp_buffer_fifo_out_last axi_adapter.write_w_buffer_queue axi_adapter.write_w_buffer_dequeue axi_adapter.write_w_buffer_level2 axi_adapter.write_axi_w_connect axi_adapter.write_rmw_request axi_adapter.write_rmw_rgrant axi_adapter.write_rmw_wgrant axi_adapter.write_rmw_data axi_adapter.write_rmw_mask axi_adapter.write_rmw_cmd_done axi_adapter.write_rmw_data_done axi_adapter.read_cmd_request axi_adapter.read_cmd_grant axi_adapter.read_can_read axi_adapter.read_ar_buffer_sink_valid axi_adapter.read_ar_buffer_sink_ready axi_adapter.read_ar_buffer_sink_first axi_adapter.read_ar_buffer_sink_last axi_adapter.read_ar_buffer_sink_payload_addr axi_adapter.read_ar_buffer_sink_payload_burst axi_adapter.read_ar_buffer_sink_payload_len axi_adapter.read_ar_buffer_sink_payload_size axi_adapter.read_ar_buffer_sink_payload_lock axi_adapter.read_ar_buffer_sink_payload_prot axi_adapter.read_ar_buffer_sink_payload_cache axi_adapter.read_ar_buffer_sink_payload_qos axi_adapter.read_ar_buffer_sink_payload_id axi_adapter.read_ar_buffer_source_valid axi_adapter.read_ar_buffer_source_ready axi_adapter.read_ar_buffer_source_first axi_adapter.read_ar_buffer_source_last axi_adapter.read_ar_buffer_source_payload_addr axi_adapter.read_ar_buffer_source_payload_burst axi_adapter.read_ar_buffer_source_payload_len axi_adapter.read_ar_buffer_source_payload_size axi_adapter.read_ar_buffer_source_payload_lock axi_adapter.read_ar_buffer_source_payload_prot axi_adapter.read_ar_buffer_source_payload_cache axi_adapter.read_ar_buffer_source_payload_qos axi_adapter.read_ar_buffer_source_payload_id axi_adapter.read_ar_valid axi_adapter.read_ar_ready axi_adapter.read_ar_first axi_adapter.read_ar_last axi_adapter.read_ar_payload_addr axi_adapter.read_ar_payload_id axi_adapter.read_beat_count axi_adapter.read_beat_size axi_adapter.read_beat_offset axi_adapter.read_beat_wrap axi_adapter.read_r_buffer_sink_valid axi_adapter.read_r_buffer_sink_ready axi_adapter.read_r_buffer_sink_first axi_adapter.read_r_buffer_sink_last axi_adapter.read_r_buffer_sink_payload_resp axi_adapter.read_r_buffer_sink_payload_data axi_adapter.read_r_buffer_sink_payload_id axi_adapter.read_r_buffer_source_valid axi_adapter.read_r_buffer_source_ready axi_adapter.read_r_buffer_source_first axi_adapter.read_r_buffer_source_last axi_adapter.read_r_buffer_source_payload_resp axi_adapter.read_r_buffer_source_payload_data axi_adapter.read_r_buffer_source_payload_id axi_adapter.read_r_buffer_re axi_adapter.read_r_buffer_readable axi_adapter.read_r_buffer_syncfifo_we axi_adapter.read_r_buffer_syncfifo_writable axi_adapter.read_r_buffer_syncfifo_re axi_adapter.read_r_buffer_syncfifo_readable axi_adapter.read_r_buffer_syncfifo_din axi_adapter.read_r_buffer_syncfifo_dout axi_adapter.read_r_buffer_level0 axi_adapter.read_r_buffer_replace axi_adapter.read_r_buffer_produce axi_adapter.read_r_buffer_consume axi_adapter.read_r_buffer_wrport_adr axi_adapter.read_r_buffer_wrport_dat_r axi_adapter.read_r_buffer_wrport_we axi_adapter.read_r_buffer_wrport_dat_w axi_adapter.read_r_buffer_do_read axi_adapter.read_r_buffer_rdport_adr axi_adapter.read_r_buffer_rdport_dat_r axi_adapter.read_r_buffer_rdport_re axi_adapter.read_r_buffer_level1 axi_adapter.read_r_buffer_fifo_in_payload_resp axi_adapter.read_r_buffer_fifo_in_payload_data axi_adapter.read_r_buffer_fifo_in_payload_id }
gui_sg_addsignal -group "$_session_group_1" { axi_adapter.read_r_buffer_fifo_in_first axi_adapter.read_r_buffer_fifo_in_last axi_adapter.read_r_buffer_fifo_out_payload_resp axi_adapter.read_r_buffer_fifo_out_payload_data axi_adapter.read_r_buffer_fifo_out_payload_id axi_adapter.read_r_buffer_fifo_out_first axi_adapter.read_r_buffer_fifo_out_last axi_adapter.read_r_buffer_queue axi_adapter.read_r_buffer_dequeue axi_adapter.read_r_buffer_level2 axi_adapter.read_id_buffer_sink_valid axi_adapter.read_id_buffer_sink_ready axi_adapter.read_id_buffer_sink_first axi_adapter.read_id_buffer_sink_last axi_adapter.read_id_buffer_sink_payload_id axi_adapter.read_id_buffer_source_valid axi_adapter.read_id_buffer_source_ready axi_adapter.read_id_buffer_source_first axi_adapter.read_id_buffer_source_last axi_adapter.read_id_buffer_source_payload_id axi_adapter.read_id_buffer_syncfifo_we axi_adapter.read_id_buffer_syncfifo_writable axi_adapter.read_id_buffer_syncfifo_re axi_adapter.read_id_buffer_syncfifo_readable axi_adapter.read_id_buffer_syncfifo_din axi_adapter.read_id_buffer_syncfifo_dout axi_adapter.read_id_buffer_level axi_adapter.read_id_buffer_replace axi_adapter.read_id_buffer_produce axi_adapter.read_id_buffer_consume axi_adapter.read_id_buffer_wrport_adr axi_adapter.read_id_buffer_wrport_dat_r axi_adapter.read_id_buffer_wrport_we axi_adapter.read_id_buffer_wrport_dat_w axi_adapter.read_id_buffer_do_read axi_adapter.read_id_buffer_rdport_adr axi_adapter.read_id_buffer_rdport_dat_r axi_adapter.read_id_buffer_fifo_in_payload_id axi_adapter.read_id_buffer_fifo_in_first axi_adapter.read_id_buffer_fifo_in_last axi_adapter.read_id_buffer_fifo_out_payload_id axi_adapter.read_id_buffer_fifo_out_first axi_adapter.read_id_buffer_fifo_out_last axi_adapter.read_rmw_request axi_adapter.read_rmw_rgrant axi_adapter.request axi_adapter.grant axi_adapter.ce axi_adapter.state axi_adapter.next_state axi_adapter.write_rmw_cmd_done_next_value0 axi_adapter.write_rmw_cmd_done_next_value_ce0 axi_adapter.write_rmw_data_done_next_value1 axi_adapter.write_rmw_data_done_next_value_ce1 axi_adapter.write_rmw_data_next_value2 axi_adapter.write_rmw_data_next_value_ce2 axi_adapter.storage_data_0 axi_adapter.storage_data_1 axi_adapter.storage_data_2 axi_adapter.storage_data_3 axi_adapter.storage_data_4 axi_adapter.storage_data_5 axi_adapter.storage_data_6 axi_adapter.storage_data_7 axi_adapter.storage_data_8 axi_adapter.storage_data_9 axi_adapter.storage_data_10 axi_adapter.storage_data_11 axi_adapter.storage_data_12 axi_adapter.storage_data_13 axi_adapter.storage_data_14 axi_adapter.storage_data_15 axi_adapter.storage_data_0_1 axi_adapter.storage_data_1_1 axi_adapter.storage_data_2_1 axi_adapter.storage_data_3_1 axi_adapter.storage_data_4_1 axi_adapter.storage_data_5_1 axi_adapter.storage_data_6_1 axi_adapter.storage_data_7_1 axi_adapter.storage_data_8_1 axi_adapter.storage_data_9_1 axi_adapter.storage_data_10_1 axi_adapter.storage_data_11_1 axi_adapter.storage_data_12_1 axi_adapter.storage_data_13_1 axi_adapter.storage_data_14_1 axi_adapter.storage_data_15_1 axi_adapter.storage_data_0_2 axi_adapter.storage_data_1_2 axi_adapter.storage_data_2_2 axi_adapter.storage_data_3_2 axi_adapter.storage_data_4_2 axi_adapter.storage_data_5_2 axi_adapter.storage_data_6_2 axi_adapter.storage_data_7_2 axi_adapter.storage_data_8_2 axi_adapter.storage_data_9_2 axi_adapter.storage_data_10_2 axi_adapter.storage_data_11_2 axi_adapter.storage_data_12_2 axi_adapter.storage_data_13_2 axi_adapter.storage_data_14_2 axi_adapter.storage_data_15_2 axi_adapter.storage_data_0_3 axi_adapter.storage_data_1_3 axi_adapter.storage_data_2_3 axi_adapter.storage_data_3_3 axi_adapter.storage_data_4_3 axi_adapter.storage_data_5_3 axi_adapter.storage_data_6_3 axi_adapter.storage_data_7_3 axi_adapter.storage_data_8_3 axi_adapter.storage_data_9_3 axi_adapter.storage_data_10_3 axi_adapter.storage_data_11_3 axi_adapter.storage_data_12_3 axi_adapter.storage_data_13_3 axi_adapter.storage_data_14_3 axi_adapter.storage_data_15_3 axi_adapter.storage_data_0_4 axi_adapter.storage_data_1_4 }
gui_sg_addsignal -group "$_session_group_1" { axi_adapter.storage_data_2_4 axi_adapter.storage_data_3_4 axi_adapter.storage_data_4_4 axi_adapter.storage_data_5_4 axi_adapter.storage_data_6_4 axi_adapter.storage_data_7_4 axi_adapter.storage_data_8_4 axi_adapter.storage_data_9_4 axi_adapter.storage_data_10_4 axi_adapter.storage_data_11_4 axi_adapter.storage_data_12_4 axi_adapter.storage_data_13_4 axi_adapter.storage_data_14_4 axi_adapter.storage_data_15_4 axi_adapter.sys_clk axi_adapter.axi_aw_valid axi_adapter.axi_aw_ready axi_adapter.axi_aw_first axi_adapter.axi_aw_last axi_adapter.axi_aw_payload_addr axi_adapter.axi_aw_payload_burst axi_adapter.axi_aw_payload_len axi_adapter.axi_aw_payload_size axi_adapter.axi_aw_payload_lock axi_adapter.axi_aw_payload_prot axi_adapter.axi_aw_payload_cache axi_adapter.axi_aw_payload_qos axi_adapter.axi_aw_payload_id axi_adapter.axi_w_valid axi_adapter.axi_w_ready axi_adapter.axi_w_first axi_adapter.axi_w_last axi_adapter.axi_w_payload_data axi_adapter.axi_w_payload_strb axi_adapter.axi_w_payload_id axi_adapter.axi_b_valid axi_adapter.axi_b_ready axi_adapter.axi_b_first axi_adapter.axi_b_last axi_adapter.axi_b_payload_resp axi_adapter.axi_b_payload_id axi_adapter.axi_ar_valid axi_adapter.axi_ar_ready axi_adapter.axi_ar_first axi_adapter.axi_ar_last axi_adapter.axi_ar_payload_addr axi_adapter.axi_ar_payload_burst axi_adapter.axi_ar_payload_len axi_adapter.axi_ar_payload_size axi_adapter.axi_ar_payload_lock axi_adapter.axi_ar_payload_prot axi_adapter.axi_ar_payload_cache axi_adapter.axi_ar_payload_qos axi_adapter.axi_ar_payload_id axi_adapter.axi_r_valid axi_adapter.axi_r_ready axi_adapter.axi_r_first axi_adapter.axi_r_last axi_adapter.axi_r_payload_resp axi_adapter.axi_r_payload_data axi_adapter.axi_r_payload_id axi_adapter.cmd_valid axi_adapter.cmd_ready axi_adapter.cmd_last axi_adapter.cmd_payload_we axi_adapter.cmd_payload_addr axi_adapter.wdata_valid axi_adapter.wdata_ready axi_adapter.wdata_first axi_adapter.wdata_last axi_adapter.wdata_payload_data axi_adapter.wdata_payload_we axi_adapter.rdata_valid axi_adapter.rdata_ready axi_adapter.rdata_first axi_adapter.rdata_last axi_adapter.rdata_payload_data axi_adapter.write_cmd_request axi_adapter.write_cmd_grant axi_adapter.write_can_write axi_adapter.write_aw_buffer_sink_valid axi_adapter.write_aw_buffer_sink_ready axi_adapter.write_aw_buffer_sink_first axi_adapter.write_aw_buffer_sink_last axi_adapter.write_aw_buffer_sink_payload_addr axi_adapter.write_aw_buffer_sink_payload_burst axi_adapter.write_aw_buffer_sink_payload_len axi_adapter.write_aw_buffer_sink_payload_size axi_adapter.write_aw_buffer_sink_payload_lock axi_adapter.write_aw_buffer_sink_payload_prot axi_adapter.write_aw_buffer_sink_payload_cache axi_adapter.write_aw_buffer_sink_payload_qos axi_adapter.write_aw_buffer_sink_payload_id axi_adapter.write_aw_buffer_source_valid axi_adapter.write_aw_buffer_source_ready axi_adapter.write_aw_buffer_source_first axi_adapter.write_aw_buffer_source_last axi_adapter.write_aw_buffer_source_payload_addr axi_adapter.write_aw_buffer_source_payload_burst axi_adapter.write_aw_buffer_source_payload_len axi_adapter.write_aw_buffer_source_payload_size axi_adapter.write_aw_buffer_source_payload_lock axi_adapter.write_aw_buffer_source_payload_prot axi_adapter.write_aw_buffer_source_payload_cache axi_adapter.write_aw_buffer_source_payload_qos axi_adapter.write_aw_buffer_source_payload_id axi_adapter.write_aw_valid axi_adapter.write_aw_ready axi_adapter.write_aw_first axi_adapter.write_aw_last axi_adapter.write_aw_payload_addr axi_adapter.write_aw_payload_id axi_adapter.write_beat_count axi_adapter.write_beat_size axi_adapter.write_beat_offset axi_adapter.write_beat_wrap axi_adapter.write_w_buffer_sink_valid axi_adapter.write_w_buffer_sink_ready axi_adapter.write_w_buffer_sink_first axi_adapter.write_w_buffer_sink_last axi_adapter.write_w_buffer_sink_payload_data axi_adapter.write_w_buffer_sink_payload_strb axi_adapter.write_w_buffer_sink_payload_id axi_adapter.write_w_buffer_source_valid axi_adapter.write_w_buffer_source_ready }
gui_sg_addsignal -group "$_session_group_1" { axi_adapter.write_w_buffer_source_first axi_adapter.write_w_buffer_source_last axi_adapter.write_w_buffer_source_payload_data axi_adapter.write_w_buffer_source_payload_strb axi_adapter.write_w_buffer_source_payload_id axi_adapter.write_w_buffer_re axi_adapter.write_w_buffer_readable axi_adapter.write_w_buffer_syncfifo_we axi_adapter.write_w_buffer_syncfifo_writable axi_adapter.write_w_buffer_syncfifo_re axi_adapter.write_w_buffer_syncfifo_readable axi_adapter.write_w_buffer_syncfifo_din axi_adapter.write_w_buffer_syncfifo_dout axi_adapter.write_w_buffer_level0 axi_adapter.write_w_buffer_replace axi_adapter.write_w_buffer_produce axi_adapter.write_w_buffer_consume axi_adapter.write_w_buffer_wrport_adr axi_adapter.write_w_buffer_wrport_dat_r axi_adapter.write_w_buffer_wrport_we axi_adapter.write_w_buffer_wrport_dat_w axi_adapter.write_w_buffer_do_read axi_adapter.write_w_buffer_rdport_adr axi_adapter.write_w_buffer_rdport_dat_r axi_adapter.write_w_buffer_rdport_re axi_adapter.write_w_buffer_level1 axi_adapter.write_w_buffer_fifo_in_payload_data axi_adapter.write_w_buffer_fifo_in_payload_strb axi_adapter.write_w_buffer_fifo_in_payload_id axi_adapter.write_w_buffer_fifo_in_first axi_adapter.write_w_buffer_fifo_in_last axi_adapter.write_w_buffer_fifo_out_payload_data axi_adapter.write_w_buffer_fifo_out_payload_strb axi_adapter.write_w_buffer_fifo_out_payload_id axi_adapter.write_w_buffer_fifo_out_first axi_adapter.write_w_buffer_fifo_out_last axi_adapter.write_id_buffer_sink_valid axi_adapter.write_id_buffer_sink_ready axi_adapter.write_id_buffer_sink_first axi_adapter.write_id_buffer_sink_last axi_adapter.write_id_buffer_sink_payload_id axi_adapter.write_id_buffer_source_valid axi_adapter.write_id_buffer_source_ready axi_adapter.write_id_buffer_source_first axi_adapter.write_id_buffer_source_last axi_adapter.write_id_buffer_source_payload_id axi_adapter.write_id_buffer_syncfifo_we axi_adapter.write_id_buffer_syncfifo_writable axi_adapter.write_id_buffer_syncfifo_re axi_adapter.write_id_buffer_syncfifo_readable axi_adapter.write_id_buffer_syncfifo_din axi_adapter.write_id_buffer_syncfifo_dout axi_adapter.write_id_buffer_level axi_adapter.write_id_buffer_replace axi_adapter.write_id_buffer_produce axi_adapter.write_id_buffer_consume axi_adapter.write_id_buffer_wrport_adr axi_adapter.write_id_buffer_wrport_dat_r axi_adapter.write_id_buffer_wrport_we axi_adapter.write_id_buffer_wrport_dat_w axi_adapter.write_id_buffer_do_read axi_adapter.write_id_buffer_rdport_adr axi_adapter.write_id_buffer_rdport_dat_r axi_adapter.write_id_buffer_fifo_in_payload_id axi_adapter.write_id_buffer_fifo_in_first axi_adapter.write_id_buffer_fifo_in_last axi_adapter.write_id_buffer_fifo_out_payload_id axi_adapter.write_id_buffer_fifo_out_first axi_adapter.write_id_buffer_fifo_out_last axi_adapter.write_resp_buffer_sink_valid axi_adapter.write_resp_buffer_sink_ready axi_adapter.write_resp_buffer_sink_first axi_adapter.write_resp_buffer_sink_last axi_adapter.write_resp_buffer_sink_payload_id axi_adapter.write_resp_buffer_sink_payload_resp axi_adapter.write_resp_buffer_source_valid axi_adapter.write_resp_buffer_source_ready axi_adapter.write_resp_buffer_source_first axi_adapter.write_resp_buffer_source_last axi_adapter.write_resp_buffer_source_payload_id axi_adapter.write_resp_buffer_source_payload_resp axi_adapter.write_resp_buffer_syncfifo_we axi_adapter.write_resp_buffer_syncfifo_writable axi_adapter.write_resp_buffer_syncfifo_re axi_adapter.write_resp_buffer_syncfifo_readable axi_adapter.write_resp_buffer_syncfifo_din axi_adapter.write_resp_buffer_syncfifo_dout axi_adapter.write_resp_buffer_level axi_adapter.write_resp_buffer_replace axi_adapter.write_resp_buffer_produce }
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_rmw_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_rmw_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_rmw_mask}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_rmw_mask}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.read_ar_buffer_sink_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.read_ar_buffer_sink_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.read_ar_buffer_source_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.read_ar_buffer_source_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.read_ar_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.read_ar_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.read_r_buffer_sink_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.read_r_buffer_sink_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.read_r_buffer_source_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.read_r_buffer_source_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.read_r_buffer_fifo_in_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.read_r_buffer_fifo_in_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.read_r_buffer_fifo_out_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.read_r_buffer_fifo_out_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_rmw_data_next_value2}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_rmw_data_next_value2}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.axi_aw_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.axi_aw_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.axi_w_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.axi_w_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.axi_ar_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.axi_ar_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.axi_r_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.axi_r_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.cmd_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.cmd_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.wdata_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.wdata_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.rdata_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.rdata_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_aw_buffer_sink_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_aw_buffer_sink_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_aw_buffer_source_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_aw_buffer_source_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_aw_payload_addr}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_aw_payload_addr}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_w_buffer_sink_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_w_buffer_sink_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_w_buffer_source_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_w_buffer_source_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_w_buffer_fifo_in_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_w_buffer_fifo_in_payload_data}
gui_set_radix -radix {decimal} -signals {V1:axi_adapter.write_w_buffer_fifo_out_payload_data}
gui_set_radix -radix {twosComplement} -signals {V1:axi_adapter.write_w_buffer_fifo_out_payload_data}

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 12685



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
catch {gui_list_select -id ${Hier.1} {axi_adapter}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {axi_adapter}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_view_scroll -id ${Source.1} -vertical -set 0
gui_src_set_reusable -id ${Source.1}
# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${HSPane.1}
}
#</Session>

