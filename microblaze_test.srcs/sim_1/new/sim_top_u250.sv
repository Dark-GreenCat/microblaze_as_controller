`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2025 06:08:05 PM
// Design Name: 
// Module Name: sim_top_u250
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


module sim_top_u250(

    );
    wire USB_UART_RX;
    wire USB_UART_TX;
    reg clk = 0;
    wire SYSCLK0_300_N;
    wire SYSCLK0_300_P;
    
    always #5 clk = ~clk;
    assign SYSCLK0_300_P = clk;
    assign SYSCLK0_300_N = ~clk;
    
    top_u250 top_i (
  .SYSCLK0_300_N(SYSCLK0_300_N),
  .SYSCLK0_300_P(SYSCLK0_300_P),
  .USB_UART_RX(USB_UART_RX),
  .USB_UART_TX(USB_UART_TX)
);
endmodule
