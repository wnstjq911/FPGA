//0.5초 간격으로 LED 깜박이기 

`timescale 1ns/ 1ns

module CLK_LED (
    input CLK,
    input rst_n,
    output reg led
);

reg [18:0] count;

    always @ (posedge CLK, negedge rst_n) begin
    if(!rst_n) begin //rst_n 0
        led <=0;
	count <= 0;
    end else begin 
            if(count==19'b1111010000100100000) begin // clk가 1.000.000 일때의 최대 값 
               led <= ~led;
   	       count <= 0;
            end
	    else         
	    count <= count +1;
	end
    end
    endmodule 
