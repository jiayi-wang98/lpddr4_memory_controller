sim core: clean
	vcs -full64  -sverilog -f ./core/core_tb.f  -dpi -ntb_opts uvm -debug_pp -timescale=1ns/10ps
	$ ./simv +UVM_TR_RECORD +UVM_VERBOSITY=HIGH +UVM_TESTNAME=core_basic_test

sim DFIAdapter: clean
	vcs -full64  -sverilog -f ./DFIAdapter/DFIAdapter_tb.f  -dpi -ntb_opts uvm -debug_pp -timescale=1ns/10ps
	$ ./simv +UVM_TR_RECORD +UVM_VERBOSITY=HIGH +UVM_TESTNAME=DFIAdapter_basic_test

sim bank_machine: clean
	vcs -full64  -sverilog -f ./bank_machine/bank_machine_tb.f  -dpi -ntb_opts uvm -debug_pp -timescale=1ns/10ps
	$ ./simv +UVM_TR_RECORD +UVM_VERBOSITY=HIGH +UVM_TESTNAME=bank_machine_basic_test 

sim multiplexer: clean
	vcs -full64  -sverilog -f ./multiplexer/multiplexer_tb.f  -dpi -ntb_opts uvm -debug_pp -timescale=1ns/10ps
	$ ./simv +UVM_TR_RECORD +UVM_VERBOSITY=HIGH +UVM_TESTNAME=multiplexer_basic_test 

sim refresher: 
	rm -rf csrc simv*
	$ vcs -full64  -sverilog -f ./refresher/refresher_tb.f  -debug_pp -timescale=1ns/10ps
	$ ./simv
clean:
	rm -rf DVEfiles csrc simv simv.daidir ucli.key .vlogansetup.args .vlogansetup.env .vcs_lib_lock simv.vdb AN.DB vc_hdrs.h *.diag *.vpd *tar.gz external.o

view_waves:
	dve -full64 &