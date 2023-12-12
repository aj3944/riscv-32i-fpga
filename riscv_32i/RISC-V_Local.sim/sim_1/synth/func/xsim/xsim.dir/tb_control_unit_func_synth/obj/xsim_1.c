/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2020 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/

#if defined(_WIN32)
 #include "stdio.h"
 #define IKI_DLLESPEC __declspec(dllimport)
#else
 #define IKI_DLLESPEC
#endif
#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
IKI_DLLESPEC extern void execute_892(char*, char *);
IKI_DLLESPEC extern void execute_893(char*, char *);
IKI_DLLESPEC extern void execute_894(char*, char *);
IKI_DLLESPEC extern void execute_1579(char*, char *);
IKI_DLLESPEC extern void execute_1580(char*, char *);
IKI_DLLESPEC extern void execute_1581(char*, char *);
IKI_DLLESPEC extern void execute_1582(char*, char *);
IKI_DLLESPEC extern void execute_1583(char*, char *);
IKI_DLLESPEC extern void execute_1584(char*, char *);
IKI_DLLESPEC extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_5(char*, char *);
IKI_DLLESPEC extern void execute_6(char*, char *);
IKI_DLLESPEC extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
IKI_DLLESPEC extern void execute_41(char*, char *);
IKI_DLLESPEC extern void execute_910(char*, char *);
IKI_DLLESPEC extern void execute_911(char*, char *);
IKI_DLLESPEC extern void execute_912(char*, char *);
IKI_DLLESPEC extern void execute_913(char*, char *);
IKI_DLLESPEC extern void execute_914(char*, char *);
IKI_DLLESPEC extern void execute_915(char*, char *);
IKI_DLLESPEC extern void execute_916(char*, char *);
IKI_DLLESPEC extern void execute_917(char*, char *);
IKI_DLLESPEC extern void execute_909(char*, char *);
IKI_DLLESPEC extern void execute_45(char*, char *);
IKI_DLLESPEC extern void execute_46(char*, char *);
IKI_DLLESPEC extern void execute_70(char*, char *);
IKI_DLLESPEC extern void execute_71(char*, char *);
IKI_DLLESPEC extern void execute_101(char*, char *);
IKI_DLLESPEC extern void execute_941(char*, char *);
IKI_DLLESPEC extern void execute_942(char*, char *);
IKI_DLLESPEC extern void execute_943(char*, char *);
IKI_DLLESPEC extern void execute_944(char*, char *);
IKI_DLLESPEC extern void execute_940(char*, char *);
IKI_DLLESPEC extern void execute_254(char*, char *);
IKI_DLLESPEC extern void execute_255(char*, char *);
IKI_DLLESPEC extern void execute_256(char*, char *);
IKI_DLLESPEC extern void execute_1027(char*, char *);
IKI_DLLESPEC extern void execute_1028(char*, char *);
IKI_DLLESPEC extern void execute_1029(char*, char *);
IKI_DLLESPEC extern void execute_258(char*, char *);
IKI_DLLESPEC extern void execute_259(char*, char *);
IKI_DLLESPEC extern void execute_260(char*, char *);
IKI_DLLESPEC extern void execute_1030(char*, char *);
IKI_DLLESPEC extern void execute_1031(char*, char *);
IKI_DLLESPEC extern void execute_1032(char*, char *);
IKI_DLLESPEC extern void execute_378(char*, char *);
IKI_DLLESPEC extern void execute_1120(char*, char *);
IKI_DLLESPEC extern void execute_442(char*, char *);
IKI_DLLESPEC extern void execute_1152(char*, char *);
IKI_DLLESPEC extern void execute_1153(char*, char *);
IKI_DLLESPEC extern void execute_1154(char*, char *);
IKI_DLLESPEC extern void execute_1172(char*, char *);
IKI_DLLESPEC extern void execute_896(char*, char *);
IKI_DLLESPEC extern void execute_897(char*, char *);
IKI_DLLESPEC extern void execute_898(char*, char *);
IKI_DLLESPEC extern void execute_899(char*, char *);
IKI_DLLESPEC extern void execute_1585(char*, char *);
IKI_DLLESPEC extern void execute_1586(char*, char *);
IKI_DLLESPEC extern void execute_1587(char*, char *);
IKI_DLLESPEC extern void execute_1588(char*, char *);
IKI_DLLESPEC extern void execute_1589(char*, char *);
IKI_DLLESPEC extern void execute_1590(char*, char *);
IKI_DLLESPEC extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
IKI_DLLESPEC extern void transaction_623(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_627(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_631(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_635(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_639(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_643(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_647(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_651(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_655(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_659(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_663(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_667(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_671(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_675(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_679(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_687(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_691(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_707(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_711(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_715(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_719(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_723(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_727(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_731(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_735(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_739(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_743(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1157(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1161(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1165(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1169(char*, char*, unsigned, unsigned, unsigned);
IKI_DLLESPEC extern void transaction_1173(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[99] = {(funcp)execute_892, (funcp)execute_893, (funcp)execute_894, (funcp)execute_1579, (funcp)execute_1580, (funcp)execute_1581, (funcp)execute_1582, (funcp)execute_1583, (funcp)execute_1584, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_5, (funcp)execute_6, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_41, (funcp)execute_910, (funcp)execute_911, (funcp)execute_912, (funcp)execute_913, (funcp)execute_914, (funcp)execute_915, (funcp)execute_916, (funcp)execute_917, (funcp)execute_909, (funcp)execute_45, (funcp)execute_46, (funcp)execute_70, (funcp)execute_71, (funcp)execute_101, (funcp)execute_941, (funcp)execute_942, (funcp)execute_943, (funcp)execute_944, (funcp)execute_940, (funcp)execute_254, (funcp)execute_255, (funcp)execute_256, (funcp)execute_1027, (funcp)execute_1028, (funcp)execute_1029, (funcp)execute_258, (funcp)execute_259, (funcp)execute_260, (funcp)execute_1030, (funcp)execute_1031, (funcp)execute_1032, (funcp)execute_378, (funcp)execute_1120, (funcp)execute_442, (funcp)execute_1152, (funcp)execute_1153, (funcp)execute_1154, (funcp)execute_1172, (funcp)execute_896, (funcp)execute_897, (funcp)execute_898, (funcp)execute_899, (funcp)execute_1585, (funcp)execute_1586, (funcp)execute_1587, (funcp)execute_1588, (funcp)execute_1589, (funcp)execute_1590, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_623, (funcp)transaction_627, (funcp)transaction_631, (funcp)transaction_635, (funcp)transaction_639, (funcp)transaction_643, (funcp)transaction_647, (funcp)transaction_651, (funcp)transaction_655, (funcp)transaction_659, (funcp)transaction_663, (funcp)transaction_667, (funcp)transaction_671, (funcp)transaction_675, (funcp)transaction_679, (funcp)transaction_683, (funcp)transaction_687, (funcp)transaction_691, (funcp)transaction_695, (funcp)transaction_699, (funcp)transaction_703, (funcp)transaction_707, (funcp)transaction_711, (funcp)transaction_715, (funcp)transaction_719, (funcp)transaction_723, (funcp)transaction_727, (funcp)transaction_731, (funcp)transaction_735, (funcp)transaction_739, (funcp)transaction_743, (funcp)transaction_1157, (funcp)transaction_1161, (funcp)transaction_1165, (funcp)transaction_1169, (funcp)transaction_1173};
const int NumRelocateId= 99;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/tb_control_unit_func_synth/xsim.reloc",  (void **)funcTab, 99);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/tb_control_unit_func_synth/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/tb_control_unit_func_synth/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/tb_control_unit_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/tb_control_unit_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/tb_control_unit_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, (void*)0, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
