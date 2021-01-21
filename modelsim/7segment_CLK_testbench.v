`timescale 1ns / 1ns 

module clk_test();
reg clk, rst_n;    // 클럭과 리셋 
wire [6:0] led;    // 7segment의 7bit led 생성

clk_segment chip_clk_segment(clk,rst_n,led);

initial
begin  
     clk =0; 
     rst_n =0; #100;   
     rst_n =1; #100;
end 

always           
begin  
     #50 clk = 1;   //50ns 주기 만큼 클럭 생성
     #50 clk = 0; 
end
 
endmodule 
