//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.1 (lin64) Build 5076996 Wed May 22 18:36:09 MDT 2024
//Date        : Fri Apr 18 17:19:15 2025
//Host        : edabk running 64-bit CentOS Linux release 7.9.2009 (Core)
//Command     : generate_target system_wrapper.bd
//Design      : system_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module system_wrapper
   (clk_out,
    default_300mhz_clk0_clk_n,
    default_300mhz_clk0_clk_p,
    resetn,
    rs232_uart_rxd,
    rs232_uart_txd);
  output clk_out;
  input default_300mhz_clk0_clk_n;
  input default_300mhz_clk0_clk_p;
  input resetn;
  input rs232_uart_rxd;
  output rs232_uart_txd;

  wire clk_out;
  wire default_300mhz_clk0_clk_n;
  wire default_300mhz_clk0_clk_p;
  wire resetn;
  wire rs232_uart_rxd;
  wire rs232_uart_txd;

  system system_i
       (.clk_out(clk_out),
        .default_300mhz_clk0_clk_n(default_300mhz_clk0_clk_n),
        .default_300mhz_clk0_clk_p(default_300mhz_clk0_clk_p),
        .resetn(resetn),
        .rs232_uart_rxd(rs232_uart_rxd),
        .rs232_uart_txd(rs232_uart_txd));
endmodule
