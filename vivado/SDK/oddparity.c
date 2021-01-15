#include "xparameters.h"
#include "xil_io.h"
#include "xbasic_types.h"
void cal(int odd_out);
int main()
{
	u32 odd_out;

	xil_printf("Start of IP odd_parity test \n\n\r");

	// 짝수
	Xil_Out32(XPAR_MYIPODDPARITY_0_S00_AXI_BASEADDR, 0x000000f0);
	odd_out = Xil_In32(XPAR_MYIPODDPARITY_0_S00_AXI_BASEADDR+4);
	cal(0x000000f0);
	cal(odd_out);

	// 홀수
	Xil_Out32(XPAR_MYIPODDPARITY_0_S00_AXI_BASEADDR, 0x00000085);
	odd_out = Xil_In32(XPAR_MYIPODDPARITY_0_S00_AXI_BASEADDR+4);
    cal(0x00000085);
	cal(odd_out);

}

void cal(int odd_out)
{
	int arr[10];
	int c=0,mok,nmg,i,result;

	result = odd_out;
	while (1)
	{
		mok = odd_out / 2;
		nmg = odd_out - (mok * 2);
		arr[c++] = nmg;
		if (mok <= 0) break;
		odd_out = mok;
	}
	for (i = c - 1; i >= 0; i--)
	xil_printf("%d ", arr[i]);
	xil_printf("(%d)\n\r",result);
}
