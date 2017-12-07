/*
   This file was generated automatically by the Mojo IDE version B1.3.6.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module mojo_top_0 (
    input clk,
    input rst_n,
    output reg [7:0] led,
    input cclk,
    output reg spi_miso,
    input spi_ss,
    input spi_mosi,
    input spi_sck,
    output reg [3:0] spi_channel,
    input avr_tx,
    output reg avr_rx,
    input avr_rx_busy,
    input button,
    input button2,
    input button3,
    output reg high1,
    output reg high2,
    output reg high3,
    output reg low1,
    output reg low2,
    output reg low3
  );
  
  
  
  reg rst;
  
  wire [1-1:0] M_reset_cond_out;
  reg [1-1:0] M_reset_cond_in;
  reset_conditioner_1 reset_cond (
    .clk(clk),
    .in(M_reset_cond_in),
    .out(M_reset_cond_out)
  );
  wire [1-1:0] M_reset_cond2_out;
  reg [1-1:0] M_reset_cond2_in;
  reset_conditioner_1 reset_cond2 (
    .clk(clk),
    .in(M_reset_cond2_in),
    .out(M_reset_cond2_out)
  );
  wire [1-1:0] M_reset_cond3_out;
  reg [1-1:0] M_reset_cond3_in;
  reset_conditioner_1 reset_cond3 (
    .clk(clk),
    .in(M_reset_cond3_in),
    .out(M_reset_cond3_out)
  );
  wire [1-1:0] M_myState_row1;
  wire [1-1:0] M_myState_row2;
  wire [1-1:0] M_myState_row3;
  wire [1-1:0] M_myState_gnd1;
  wire [1-1:0] M_myState_gnd2;
  wire [1-1:0] M_myState_gnd3;
  wire [1-1:0] M_myState_totalScore;
  reg [1-1:0] M_myState_leftBtn;
  reg [1-1:0] M_myState_centBtn;
  reg [1-1:0] M_myState_rightBtn;
  state_4 myState (
    .clk(clk),
    .rst(rst),
    .leftBtn(M_myState_leftBtn),
    .centBtn(M_myState_centBtn),
    .rightBtn(M_myState_rightBtn),
    .row1(M_myState_row1),
    .row2(M_myState_row2),
    .row3(M_myState_row3),
    .gnd1(M_myState_gnd1),
    .gnd2(M_myState_gnd2),
    .gnd3(M_myState_gnd3),
    .totalScore(M_myState_totalScore)
  );
  
  always @* begin
    M_reset_cond_in = ~rst_n;
    rst = M_reset_cond_out;
    M_reset_cond2_in = ~rst_n;
    rst = M_reset_cond2_out;
    M_reset_cond3_in = ~rst_n;
    rst = M_reset_cond3_out;
    spi_miso = 1'bz;
    spi_channel = 4'bzzzz;
    avr_rx = 1'bz;
    M_myState_leftBtn = !button;
    M_myState_centBtn = !button2;
    M_myState_rightBtn = !button3;
    high1 = M_myState_row1;
    high2 = M_myState_row2;
    high3 = M_myState_row3;
    low1 = M_myState_gnd1;
    low2 = M_myState_gnd2;
    low3 = M_myState_gnd3;
    led = M_myState_totalScore;
  end
endmodule
