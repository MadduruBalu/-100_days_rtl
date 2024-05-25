`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 16:21:35
// Design Name: 
// Module Name: clock_divider
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module clock_divider( clk,rst,clk2,clk4,clk6);
   input clk,rst;
   output reg clk2,clk4,clk6;
   reg [3:0]count;
   always@(posedge clk)
   begin 
     if(rst)
        count <=4'b0000;
        else 
        count =count+1;
        clk2 =count[1];
        clk4 =count[2];
        clk6 =count[3];
          
   end 
   
endmodule
