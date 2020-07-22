/* Kris Keillor 
 * 8 bit computer 
 * Original source: Quick Start Guide to Verilog
 *                  Brock J. LaMeres */
 
module MEMORY (
    // INPUTS
    input [7:0] ADDRESS,
    input [7:0] DIN,
    input wire [7:0] PORT_IN_00,
    input wire [7:0] PORT_IN_01,
    input wire [7:0] PORT_IN_02,
    input wire [7:0] PORT_IN_03,
    input wire [7:0] PORT_IN_04,
    input wire [7:0] PORT_IN_05,
    input wire [7:0] PORT_IN_06,
    input wire [7:0] PORT_IN_07,
    input wire [7:0] PORT_IN_08,
    input wire [7:0] PORT_IN_09,
    input wire [7:0] PORT_IN_10,
    input wire [7:0] PORT_IN_11,
    input wire [7:0] PORT_IN_12,
    input wire [7:0] PORT_IN_13,
    input wire [7:0] PORT_IN_14,
    input wire [7:0] PORT_IN_15,
    input EN_WRITE,
    input CLK,
    input RST_L,
    // OUTPUTS 
    output reg [7:0] DOUT,
    output reg [7:0] PORT_OUT_00,
    output reg [7:0] PORT_OUT_01,
    output reg [7:0] PORT_OUT_02,
    output reg [7:0] PORT_OUT_03,
    output reg [7:0] PORT_OUT_04,
    output reg [7:0] PORT_OUT_05,
    output reg [7:0] PORT_OUT_06,
    output reg [7:0] PORT_OUT_07,
    output reg [7:0] PORT_OUT_08,
    output reg [7:0] PORT_OUT_09,
    output reg [7:0] PORT_OUT_10,
    output reg [7:0] PORT_OUT_11,
    output reg [7:0] PORT_OUT_12,
    output reg [7:0] PORT_OUT_13,
    output reg [7:0] PORT_OUT_14,
    output reg [7:0] PORT_OUT_15);
endmodule