#include "xgpio.h"

XGpio_Config XGpio_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40000000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x10 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40010000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x2 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x400b0000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x0, /* xlnx,is-dual */
		0x2005, /* interrupts */
		0x41200001, /* interrupt-parent */
		0x1 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x400c0000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x2 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40020000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x10 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40040000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x10 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40050000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0x2002, /* interrupts */
		0x41200001, /* interrupt-parent */
		0x1 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40060000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0x2003, /* interrupts */
		0x41200001, /* interrupt-parent */
		0x1 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40070000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0x2004, /* interrupts */
		0x41200001, /* interrupt-parent */
		0x1 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40080000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x1 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40090000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x1, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x2 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x400a0000, /* reg */
		0x0, /* xlnx,interrupt-present */
		0x0, /* xlnx,is-dual */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x4 /* xlnx,gpio-width */
	},
	{
		"xlnx,axi-gpio-2.0", /* compatible */
		0x40030000, /* reg */
		0x1, /* xlnx,interrupt-present */
		0x0, /* xlnx,is-dual */
		0x2001, /* interrupts */
		0x41200001, /* interrupt-parent */
		0x1 /* xlnx,gpio-width */
	},
	 {
		 NULL
	}
};