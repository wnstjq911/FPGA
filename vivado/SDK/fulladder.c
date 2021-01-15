#include "xparameters.h"
#include "xil_io.h"
#include "xbasic_types.h"

int main()
{
	u32 adder_out;
	u32 adder_out2;

	xil_printf("Full adder\n\r");

	Xil_Out32(XPAR_MYIP_FULLADDER_0_S00_AXI_BASEADDR, 0x00000003);
	xil_printf("a=1, b=1, Ci=0");
	adder_out = Xil_In32(XPAR_MYIP_FULLADDER_0_S00_AXI_BASEADDR + 4);
	adder_out2 = Xil_In32(XPAR_MYIP_FULLADDER_0_S00_AXI_BASEADDR + 8);
	xil_printf("  Sum = %d, Co = %d\n\n\r", adder_out, adder_out2);



	return 0;
}
