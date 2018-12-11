/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/brand/Documents/folder/lab4/async_register_tb.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_1817845412_2372691052_p_0(char *t0)
{
    char t2[16];
    int64 t1;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(71, ng0);

LAB3:    t1 = (10 * 1000LL);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 5464U);
    t5 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t2, t4, t3, (unsigned char)3);
    t6 = (t2 + 12U);
    t7 = *((unsigned int *)t6);
    t8 = (1U * t7);
    t9 = (5U != t8);
    if (t9 == 1)
        goto LAB5;

LAB6:    t10 = (t0 + 3416);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 5U);
    xsi_driver_first_trans_delta(t10, 0U, 5U, t1);
    t15 = (t0 + 3416);
    xsi_driver_intertial_reject(t15, t1, t1);

LAB2:    t16 = (t0 + 3320);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t8, 0);
    goto LAB6;

}

static void work_a_1817845412_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (20 * 1000LL);
    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3480);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 3480);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 3336);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1817845412_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1817845412_2372691052_p_0,(void *)work_a_1817845412_2372691052_p_1};
	xsi_register_didat("work_a_1817845412_2372691052", "isim/async_register_tb_isim_beh.exe.sim/work/a_1817845412_2372691052.didat");
	xsi_register_executes(pe);
}
