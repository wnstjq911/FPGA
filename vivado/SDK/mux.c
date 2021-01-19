#include "xparameters.h"
#include "xil_io.h"
#include "xbasic_types.h"

int main()
{
	u32 mux_out;

	xil_printf("mux \n\r");

	Xil_Out32(XPAR_MYIPMUX_0_S00_AXI_BASEADDR, 0x00024321);
	xil_printf("sel = 02");
	mux_out = Xil_In32(XPAR_MYIPMUX_0_S00_AXI_BASEADDR + 4);
	xil_printf("z = %d \n\n\r", mux_out);

	return 0;
}
