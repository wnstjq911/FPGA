`timescale 1ns/ 1ns

module clk_led_test();

reg clk,rst_n;
wire led;

CLK_LED chip_CLK_LED(clk,rst_n,led);

initial
begin
    clk  =0;
    rst_n = 0; #100;
    rst_n = 1; #100;
	
end

always
begin
     #50 clk = 1; 
     #50 clk = 0; 
end

endmodule 
