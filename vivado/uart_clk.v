`timescale 1ns / 1ns

module uart_clk (clk,rst_n,bit,clk2);
    input clk;
    input rst_n;
    output reg bit;
    output reg clk2;

integer i=0;
wire [9:0] totalbit;
reg startbit;
reg [7:0] databit;
reg endbit;
reg [12:0] count;
reg nomal;

assign totalbit = {endbit, databit, startbit};
always @ (posedge clk, negedge rst_n) begin
    if(!rst_n) begin 
        clk2 <= 1'b0;
        count <= 0;
    end else if(count==13'b1010001011000) begin 
                clk2 <= ~clk2;
                count <= 0;
    end else  
	count <= count + 1;	
end

always @ (negedge clk2, negedge rst_n) begin
    if(!rst_n) begin 
        bit<=0;
        startbit <=1'b0;
        databit <= 8'b01000001;
        endbit <=1'b1;
        nomal<=1'b1;
    end else begin
	 if(i<10) begin
        bit <= totalbit[i];
		i<=i+1;
     end
	 else if(i>9) begin
	    bit <= nomal; 
		i<=i+1;
		if(i==29) begin i<=0; end
	 end
         
    end
end
endmodule
