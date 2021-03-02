#define SIZE 50

//
void image_add(int arr[SIZE*SIZE], int result[SIZE*SIZE])
{
#pragma HLS INTERFACE s_axilite port=return bundle=CRTL_BUS
#pragma HLS INTERFACE bram port=arr
#pragma HLS INTERFACE bram port=result

   int i;

   for(i=0; i<SIZE*SIZE; i++)
   {
      if((arr[i] + 50) >= 255)
         result[i] = 255;
      else
         result[i] = arr[i] + 50;
   }

}
