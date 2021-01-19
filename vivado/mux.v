//sel에 따른 z의 값이 달라짐
//en_n 는 0일 때 값 표현, 1일때 0000
module mux (sel, en_n, a, b, c, d, z);
	input [1:0] sel;
	input en_n;
	input [3:0] a;
	input [3:0] b;
	input [3:0] c;
	input [3:0] d;
	output [3:0] z;

	reg [3:0] z;
	reg [3:0] tmp;

always @(sel, a, b, c, d)

   begin
	case (sel)
	 2'b00 : tmp = a;
	 2'b01 : tmp = b;
 	 2'b10 : tmp = c;
	 default : tmp = d;
	endcase
   end

always @(en_n, tmp)

begin
    if (!en_n) z = tmp; // 0이면 출력 값 tmp 의 값
    else z = 4'b0000; // 1이면 출력 값 0000
end

endmodule
