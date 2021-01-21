`timescale 1ns / 1ns 

module clk_segment (
    input clk,
    input rst_n,
    output reg [6:0] led
    );
    
   integer i;
    reg [25:0] count;       // 0.5초에 해당하는 클럭의 수를 담기 위한 크기 설정
    reg [6:0] segled [9:0];
    
    always @ (posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            i=0;
            segled[0] = 7'b1000000;       // 애노드 타입 7segment라 반대의 입력
            segled[1] = 7'b1111001;
            segled[2] = 7'b0100100;
            segled[3] = 7'b0110000;
            segled[4] = 7'b0011001;
            segled[5] = 7'b0010010;
            segled[6] = 7'b0000010;
            segled[7] = 7'b1011000;
            segled[8] = 7'b0000000;
            segled[9] = 7'b0010000;
            count <=0;
        end else begin 
                if(count==26'b10111110101111000010000000) begin  // 100M 클럭의 절반으로 0.5초마다 segment LED 변화
                    led <= segled[i];
                    count <=0;
                    i=i+1;
                    if(i==10) begin 
                        i=0;
                    end
                end else 
                count <= count + 1;
            end
    end
    
endmodule
   
