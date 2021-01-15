module oddparity (x,y);
	input [7:0] x;
	output reg [8:0] y;
	reg tmp;
	integer i;

always @(x)

begin 
    tmp = 1'b1;

    for (i=0; i<=7; i=i+1)
	tmp = tmp ^ x[i];

	y = {x, tmp};
end 
endmodule
