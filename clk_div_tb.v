`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.05.2024 16:35:29
// Design Name: 
// Module Name: clk_div_tb
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


module clk_div_tb;

    // Inputs
    reg clk;
    reg rst;
    
    // Outputs
    wire clk2;
    wire clk4;
    wire clk6;
    
    // Instantiate the Unit Under Test (UUT)
    clock_divider uut (
        .clk(clk), 
        .rst(rst), 
        .clk2(clk2), 
        .clk4(clk4), 
        .clk6(clk6)
    );
    
    // Clock generation
    always #5 clk = ~clk; // 100 MHz clock (10 ns period)
    
    initial begin
        // Initialize Inputs
        clk = 0;
        rst = 1;
        
        // Wait for global reset to finish
        #20;
        rst = 0;
        
        // Add stimulus here
        #200;
        
        // Finish simulation
        $stop;
    end
    
    initial begin
        // Monitor signals
        $monitor("Time = %0d, clk = %b, rst = %b, clk2 = %b, clk4 = %b, clk6 = %b", 
                  $time, clk, rst, clk2, clk4, clk6);
    end
    
endmodule



