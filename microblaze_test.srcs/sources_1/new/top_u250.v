`timescale 1ns / 1ps

module top_u250 (
  input  SYSCLK0_300_N,
  input  SYSCLK0_300_P,
  input  USB_UART_RX,
  output USB_UART_TX
);
  wire clk;
  reg  rst_n = 1'b0;
  reg [63:0] clk_cnt;

  always @(posedge clk) begin
    clk_cnt <= clk_cnt + 1;
    if (clk_cnt == 64'h10) begin
      rst_n <= 1'b1;
    end else if (clk_cnt == 64'hFFFFFFFFFFFFFFFF) begin
      clk_cnt <= 64'h11;
    end
  end

  system_wrapper system_i (
    .clk_out(clk),
    .default_300mhz_clk0_clk_n(SYSCLK0_300_N),
    .default_300mhz_clk0_clk_p(SYSCLK0_300_P),
    .resetn(rst_n),
    .rs232_uart_rxd(USB_UART_RX),
    .rs232_uart_txd(USB_UART_TX)
  );
endmodule
