# Begin_DVE_Session_Save_Info
# DVE full session
# Saved on Wed Jun 29 21:28:39 2022
# Designs open: 1
#   V1: /home/jwang710/mc/verif/vcdplus.vpd
# Toplevel windows open: 1
# 	TopLevel.1
#   Source.1: multiplexer_tb
#   Group count = 8
#   Group cmd_rw_if_0 signal count = 17
#   Group cmd_rw_if_1 signal count = 17
#   Group cmd_rw_if_2 signal count = 17
#   Group cmd_rw_if_3 signal count = 17
#   Group cmd_rw_if_4 signal count = 17
#   Group cmd_rw_if_5 signal count = 17
#   Group cmd_rw_if_6 signal count = 17
#   Group cmd_rw_if_7 signal count = 17
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
set HSPane.1 [gui_create_window -type HSPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 241]
catch { set Hier.1 [gui_share_window -id ${HSPane.1} -type Hier] }
catch { set Stack.1 [gui_share_window -id ${HSPane.1} -type Stack -silent] }
gui_set_window_pref_key -window ${HSPane.1} -key dock_width -value_type integer -value 241
gui_set_window_pref_key -window ${HSPane.1} -key dock_height -value_type integer -value -1
gui_set_window_pref_key -window ${HSPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${HSPane.1} {{left 0} {top 0} {width 240} {height 655} {dock_state left} {dock_on_new_line true} {child_hier_colhier 152} {child_hier_coltype 111} {child_hier_colpd 0} {child_hier_col1 0} {child_hier_col2 1} {child_hier_col3 -1}}
set DLPane.1 [gui_create_window -type DLPane -parent ${TopLevel.1} -dock_state left -dock_on_new_line true -dock_extent 352]
catch { set Data.1 [gui_share_window -id ${DLPane.1} -type Data] }
catch { set Local.1 [gui_share_window -id ${DLPane.1} -type Local -silent] }
gui_set_window_pref_key -window ${DLPane.1} -key dock_width -value_type integer -value 352
gui_set_window_pref_key -window ${DLPane.1} -key dock_height -value_type integer -value 654
gui_set_window_pref_key -window ${DLPane.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${DLPane.1} {{left 0} {top 0} {width 351} {height 655} {dock_state left} {dock_on_new_line true} {child_data_colvariable 283} {child_data_colvalue 65} {child_data_coltype 61} {child_data_col1 0} {child_data_col2 1} {child_data_col3 2}}
set Transaction.1 [gui_create_window -type Transaction -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 135]
gui_set_window_pref_key -window ${Transaction.1} -key dock_width -value_type integer -value -1
gui_set_window_pref_key -window ${Transaction.1} -key dock_height -value_type integer -value 135
gui_set_window_pref_key -window ${Transaction.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Transaction.1} {{left 0} {top 0} {width 1919} {height 134} {dock_state bottom} {dock_on_new_line true} {child_transaction_col_expand 16} {child_transaction_col_time 84} {child_transaction_col_message 66} {child_transaction_col_caller 71} {child_transaction_col_name 45} {child_transaction_col_scope 97} {child_transaction_col_severity 59} {child_transaction_col_type 40} {child_transaction_col_relation 60} {child_transaction_col_target 50}}
set Console.1 [gui_create_window -type Console -parent ${TopLevel.1} -dock_state bottom -dock_on_new_line true -dock_extent 100]
gui_set_window_pref_key -window ${Console.1} -key dock_width -value_type integer -value 1860
gui_set_window_pref_key -window ${Console.1} -key dock_height -value_type integer -value 100
gui_set_window_pref_key -window ${Console.1} -key dock_offset -value_type integer -value 0
gui_update_layout -id ${Console.1} {{left 0} {top 0} {width 1919} {height 105} {dock_state bottom} {dock_on_new_line true}}
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
	gui_load_log_msgs -design V1
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
gui_load_child_values {multiplexer_tb.cmd_rw_if_0}
gui_load_child_values {multiplexer_tb.cmd_rw_if_1}
gui_load_child_values {multiplexer_tb.cmd_rw_if_2}
gui_load_child_values {multiplexer_tb.cmd_rw_if_3}
gui_load_child_values {multiplexer_tb.cmd_rw_if_4}
gui_load_child_values {multiplexer_tb.cmd_rw_if_5}
gui_load_child_values {multiplexer_tb.cmd_rw_if_6}
gui_load_child_values {multiplexer_tb.cmd_rw_if_7}


set _session_group_1 cmd_rw_if_0
gui_sg_create "$_session_group_1"
set cmd_rw_if_0 "$_session_group_1"

gui_sg_addsignal -group "$_session_group_1" { multiplexer_tb.cmd_rw_if_0.clk multiplexer_tb.cmd_rw_if_0.rst multiplexer_tb.cmd_rw_if_0.cmd_valid multiplexer_tb.cmd_rw_if_0.cmd_ready multiplexer_tb.cmd_rw_if_0.cmd_first multiplexer_tb.cmd_rw_if_0.cmd_last multiplexer_tb.cmd_rw_if_0.cmd_payload_a multiplexer_tb.cmd_rw_if_0.cmd_payload_ba multiplexer_tb.cmd_rw_if_0.cmd_payload_cas multiplexer_tb.cmd_rw_if_0.cmd_payload_ras multiplexer_tb.cmd_rw_if_0.cmd_payload_we multiplexer_tb.cmd_rw_if_0.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_0.cmd_payload_is_read multiplexer_tb.cmd_rw_if_0.cmd_payload_is_write multiplexer_tb.cmd_rw_if_0.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_0.refresh_req multiplexer_tb.cmd_rw_if_0.refresh_gnt }

set _session_group_2 cmd_rw_if_1
gui_sg_create "$_session_group_2"
set cmd_rw_if_1 "$_session_group_2"

gui_sg_addsignal -group "$_session_group_2" { multiplexer_tb.cmd_rw_if_1.clk multiplexer_tb.cmd_rw_if_1.rst multiplexer_tb.cmd_rw_if_1.cmd_valid multiplexer_tb.cmd_rw_if_1.cmd_ready multiplexer_tb.cmd_rw_if_1.cmd_first multiplexer_tb.cmd_rw_if_1.cmd_last multiplexer_tb.cmd_rw_if_1.cmd_payload_a multiplexer_tb.cmd_rw_if_1.cmd_payload_ba multiplexer_tb.cmd_rw_if_1.cmd_payload_cas multiplexer_tb.cmd_rw_if_1.cmd_payload_ras multiplexer_tb.cmd_rw_if_1.cmd_payload_we multiplexer_tb.cmd_rw_if_1.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_1.cmd_payload_is_read multiplexer_tb.cmd_rw_if_1.cmd_payload_is_write multiplexer_tb.cmd_rw_if_1.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_1.refresh_req multiplexer_tb.cmd_rw_if_1.refresh_gnt }

set _session_group_3 cmd_rw_if_2
gui_sg_create "$_session_group_3"
set cmd_rw_if_2 "$_session_group_3"

gui_sg_addsignal -group "$_session_group_3" { multiplexer_tb.cmd_rw_if_2.clk multiplexer_tb.cmd_rw_if_2.rst multiplexer_tb.cmd_rw_if_2.cmd_valid multiplexer_tb.cmd_rw_if_2.cmd_ready multiplexer_tb.cmd_rw_if_2.cmd_first multiplexer_tb.cmd_rw_if_2.cmd_last multiplexer_tb.cmd_rw_if_2.cmd_payload_a multiplexer_tb.cmd_rw_if_2.cmd_payload_ba multiplexer_tb.cmd_rw_if_2.cmd_payload_cas multiplexer_tb.cmd_rw_if_2.cmd_payload_ras multiplexer_tb.cmd_rw_if_2.cmd_payload_we multiplexer_tb.cmd_rw_if_2.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_2.cmd_payload_is_read multiplexer_tb.cmd_rw_if_2.cmd_payload_is_write multiplexer_tb.cmd_rw_if_2.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_2.refresh_req multiplexer_tb.cmd_rw_if_2.refresh_gnt }

set _session_group_4 cmd_rw_if_3
gui_sg_create "$_session_group_4"
set cmd_rw_if_3 "$_session_group_4"

gui_sg_addsignal -group "$_session_group_4" { multiplexer_tb.cmd_rw_if_3.clk multiplexer_tb.cmd_rw_if_3.rst multiplexer_tb.cmd_rw_if_3.cmd_valid multiplexer_tb.cmd_rw_if_3.cmd_ready multiplexer_tb.cmd_rw_if_3.cmd_first multiplexer_tb.cmd_rw_if_3.cmd_last multiplexer_tb.cmd_rw_if_3.cmd_payload_a multiplexer_tb.cmd_rw_if_3.cmd_payload_ba multiplexer_tb.cmd_rw_if_3.cmd_payload_cas multiplexer_tb.cmd_rw_if_3.cmd_payload_ras multiplexer_tb.cmd_rw_if_3.cmd_payload_we multiplexer_tb.cmd_rw_if_3.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_3.cmd_payload_is_read multiplexer_tb.cmd_rw_if_3.cmd_payload_is_write multiplexer_tb.cmd_rw_if_3.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_3.refresh_req multiplexer_tb.cmd_rw_if_3.refresh_gnt }

set _session_group_5 cmd_rw_if_4
gui_sg_create "$_session_group_5"
set cmd_rw_if_4 "$_session_group_5"

gui_sg_addsignal -group "$_session_group_5" { multiplexer_tb.cmd_rw_if_4.clk multiplexer_tb.cmd_rw_if_4.rst multiplexer_tb.cmd_rw_if_4.cmd_valid multiplexer_tb.cmd_rw_if_4.cmd_ready multiplexer_tb.cmd_rw_if_4.cmd_first multiplexer_tb.cmd_rw_if_4.cmd_last multiplexer_tb.cmd_rw_if_4.cmd_payload_a multiplexer_tb.cmd_rw_if_4.cmd_payload_ba multiplexer_tb.cmd_rw_if_4.cmd_payload_cas multiplexer_tb.cmd_rw_if_4.cmd_payload_ras multiplexer_tb.cmd_rw_if_4.cmd_payload_we multiplexer_tb.cmd_rw_if_4.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_4.cmd_payload_is_read multiplexer_tb.cmd_rw_if_4.cmd_payload_is_write multiplexer_tb.cmd_rw_if_4.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_4.refresh_req multiplexer_tb.cmd_rw_if_4.refresh_gnt }

set _session_group_6 cmd_rw_if_5
gui_sg_create "$_session_group_6"
set cmd_rw_if_5 "$_session_group_6"

gui_sg_addsignal -group "$_session_group_6" { multiplexer_tb.cmd_rw_if_5.clk multiplexer_tb.cmd_rw_if_5.rst multiplexer_tb.cmd_rw_if_5.cmd_valid multiplexer_tb.cmd_rw_if_5.cmd_ready multiplexer_tb.cmd_rw_if_5.cmd_first multiplexer_tb.cmd_rw_if_5.cmd_last multiplexer_tb.cmd_rw_if_5.cmd_payload_a multiplexer_tb.cmd_rw_if_5.cmd_payload_ba multiplexer_tb.cmd_rw_if_5.cmd_payload_cas multiplexer_tb.cmd_rw_if_5.cmd_payload_ras multiplexer_tb.cmd_rw_if_5.cmd_payload_we multiplexer_tb.cmd_rw_if_5.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_5.cmd_payload_is_read multiplexer_tb.cmd_rw_if_5.cmd_payload_is_write multiplexer_tb.cmd_rw_if_5.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_5.refresh_req multiplexer_tb.cmd_rw_if_5.refresh_gnt }

set _session_group_7 cmd_rw_if_6
gui_sg_create "$_session_group_7"
set cmd_rw_if_6 "$_session_group_7"

gui_sg_addsignal -group "$_session_group_7" { multiplexer_tb.cmd_rw_if_6.clk multiplexer_tb.cmd_rw_if_6.rst multiplexer_tb.cmd_rw_if_6.cmd_valid multiplexer_tb.cmd_rw_if_6.cmd_ready multiplexer_tb.cmd_rw_if_6.cmd_first multiplexer_tb.cmd_rw_if_6.cmd_last multiplexer_tb.cmd_rw_if_6.cmd_payload_a multiplexer_tb.cmd_rw_if_6.cmd_payload_ba multiplexer_tb.cmd_rw_if_6.cmd_payload_cas multiplexer_tb.cmd_rw_if_6.cmd_payload_ras multiplexer_tb.cmd_rw_if_6.cmd_payload_we multiplexer_tb.cmd_rw_if_6.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_6.cmd_payload_is_read multiplexer_tb.cmd_rw_if_6.cmd_payload_is_write multiplexer_tb.cmd_rw_if_6.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_6.refresh_req multiplexer_tb.cmd_rw_if_6.refresh_gnt }

set _session_group_8 cmd_rw_if_7
gui_sg_create "$_session_group_8"
set cmd_rw_if_7 "$_session_group_8"

gui_sg_addsignal -group "$_session_group_8" { multiplexer_tb.cmd_rw_if_7.clk multiplexer_tb.cmd_rw_if_7.rst multiplexer_tb.cmd_rw_if_7.cmd_valid multiplexer_tb.cmd_rw_if_7.cmd_ready multiplexer_tb.cmd_rw_if_7.cmd_first multiplexer_tb.cmd_rw_if_7.cmd_last multiplexer_tb.cmd_rw_if_7.cmd_payload_a multiplexer_tb.cmd_rw_if_7.cmd_payload_ba multiplexer_tb.cmd_rw_if_7.cmd_payload_cas multiplexer_tb.cmd_rw_if_7.cmd_payload_ras multiplexer_tb.cmd_rw_if_7.cmd_payload_we multiplexer_tb.cmd_rw_if_7.cmd_payload_is_cmd multiplexer_tb.cmd_rw_if_7.cmd_payload_is_read multiplexer_tb.cmd_rw_if_7.cmd_payload_is_write multiplexer_tb.cmd_rw_if_7.cmd_payload_is_mw multiplexer_tb.cmd_rw_if_7.refresh_req multiplexer_tb.cmd_rw_if_7.refresh_gnt }

# Global: Highlighting

# Global: Stack
gui_change_stack_mode -mode list

# Post database loading setting...

# Restore C1 time
gui_set_time -C1_only 0



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
catch {gui_list_expand -id ${Hier.1} multiplexer_tb}
catch {gui_list_select -id ${Hier.1} {multiplexer_tb.cmd_rw_if_0}}
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Data 'Data.1'
gui_list_set_filter -id ${Data.1} -list { {Buffer 1} {Input 1} {Others 1} {Linkage 1} {Output 1} {LowPower 1} {Parameter 1} {All 1} {Aggregate 1} {LibBaseMember 1} {Event 1} {Assertion 1} {Constant 1} {Interface 1} {BaseMembers 1} {Signal 1} {$unit 1} {Inout 1} {Variable 1} }
gui_list_set_filter -id ${Data.1} -text {*}
gui_list_show_data -id ${Data.1} {multiplexer_tb.cmd_rw_if_7}
gui_view_scroll -id ${Data.1} -vertical -set 0
gui_view_scroll -id ${Data.1} -horizontal -set 0
gui_view_scroll -id ${Hier.1} -vertical -set 0
gui_view_scroll -id ${Hier.1} -horizontal -set 0

# Source 'Source.1'
gui_src_value_annotate -id ${Source.1} -switch false
gui_set_env TOGGLE::VALUEANNOTATE 0
gui_open_source -id ${Source.1}  -replace -active multiplexer_tb /home/jwang710/mc/verif/./multiplexer/multiplexer_tb.sv
gui_view_scroll -id ${Source.1} -vertical -set 32
gui_src_set_reusable -id ${Source.1}

# Transaction 'Transaction.1'

#   *** Transaction stream list
catch { gui_list_collapse -id ${Transaction.1} All }
catch { gui_list_collapse -id ${Transaction.1} {User - msglog} }
catch { gui_list_collapse -id ${Transaction.1} {User - tblog} }
catch { gui_list_collapse -id ${Transaction.1} {VMM/UVM/OVM - msglog} }
catch { gui_list_collapse -id ${Transaction.1} {VMM/UVM/OVM - tblog} }
catch { gui_list_select -id ${Transaction.1} All }
catch { gui_list_select -id ${Transaction.1} { All } }

#   *** Transaction table

gui_transaction_set_row_height -id Transaction.1 1

# Restore toplevel window zorder
# The toplevel window could be closed if it has no view/pane
if {[gui_exist_window -window ${TopLevel.1}]} {
	gui_set_active_window -window ${TopLevel.1}
	gui_set_active_window -window ${Source.1}
	gui_set_active_window -window ${HSPane.1}
}
#</Session>

