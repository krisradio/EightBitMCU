/* Kris Keillor 
 * 8 bit computer 
 * Original source: Quick Start Guide to Verilog
 *                  Brock J. LaMeres */

module COMPUTER(
    // INPUTS
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
    input CLK,
    input RST,
    // OUTPUTS 
    output wire [7:0] PORT_OUT_00,
    output wire [7:0] PORT_OUT_01,
    output wire [7:0] PORT_OUT_02,
    output wire [7:0] PORT_OUT_03,
    output wire [7:0] PORT_OUT_04,
    output wire [7:0] PORT_OUT_05,
    output wire [7:0] PORT_OUT_06,
    output wire [7:0] PORT_OUT_07,
    output wire [7:0] PORT_OUT_08,
    output wire [7:0] PORT_OUT_09,
    output wire [7:0] PORT_OUT_10,
    output wire [7:0] PORT_OUT_11,
    output wire [7:0] PORT_OUT_12,
    output wire [7:0] PORT_OUT_13,
    output wire [7:0] PORT_OUT_14,
    output wire [7:0] PORT_OUT_15);

wire rst_l;
assign rst_l = ~RST;

wire [7:0] cpu_dout;
wire [7:0] cpu_addr_out;
wire cpu_en_write;

wire [7:0] mem_dout;
wire [7:0] mem_port_out [15:0];

assign PORT_OUT_00 = mem_port_out[0];
assign PORT_OUT_01 = mem_port_out[1];
assign PORT_OUT_02 = mem_port_out[2];
assign PORT_OUT_03 = mem_port_out[3];
assign PORT_OUT_04 = mem_port_out[4];
assign PORT_OUT_05 = mem_port_out[5];
assign PORT_OUT_06 = mem_port_out[6];
assign PORT_OUT_07 = mem_port_out[7];
assign PORT_OUT_08 = mem_port_out[8];
assign PORT_OUT_09 = mem_port_out[9];
assign PORT_OUT_10 = mem_port_out[10];
assign PORT_OUT_11 = mem_port_out[11];
assign PORT_OUT_12 = mem_port_out[12];
assign PORT_OUT_13 = mem_port_out[13];
assign PORT_OUT_14 = mem_port_out[14];
assign PORT_OUT_15 = mem_port_out[15];

CPU cpu(
    // Inputs 
    .CLK(CLK),
    .RST_L(rst_l),
    .DIN(mem_dout),
    // Outputs
    .DOUT(cput_dout),
    .ADDRESS(cpu_addr_out),
    .EN_WRITE(cpu_en_write));

MEMORY mem(
    // Inputs 
    .CLK(CLK),
    .RST_L(rst_l),
    .ADDRESS(cpu_addr_out),
    .DIN(cpu_dout),
    .PORT_IN_00(PORT_IN_00),
    .PORT_IN_01(PORT_IN_01),
    .PORT_IN_02(PORT_IN_02),
    .PORT_IN_03(PORT_IN_03),
    .PORT_IN_04(PORT_IN_04),
    .PORT_IN_05(PORT_IN_05),
    .PORT_IN_06(PORT_IN_06),
    .PORT_IN_07(PORT_IN_07),
    .PORT_IN_08(PORT_IN_08),
    .PORT_IN_09(PORT_IN_09),
    .PORT_IN_10(PORT_IN_10),
    .PORT_IN_11(PORT_IN_11),
    .PORT_IN_12(PORT_IN_12),
    .PORT_IN_13(PORT_IN_13),
    .PORT_IN_14(PORT_IN_14),
    .PORT_IN_15(PORT_IN_15),
    .EN_WRITE(cpu_en_write),
    // Outputs 
    .DOUT(mem_dout),
    .PORT_OUT_00(PORT_OUT_00),
    .PORT_OUT_01(PORT_OUT_01),
    .PORT_OUT_02(PORT_OUT_02),
    .PORT_OUT_03(PORT_OUT_03),
    .PORT_OUT_04(PORT_OUT_04),
    .PORT_OUT_05(PORT_OUT_05),
    .PORT_OUT_06(PORT_OUT_06),
    .PORT_OUT_07(PORT_OUT_07),
    .PORT_OUT_08(PORT_OUT_08),
    .PORT_OUT_09(PORT_OUT_09),
    .PORT_OUT_10(PORT_OUT_10),
    .PORT_OUT_11(PORT_OUT_11),
    .PORT_OUT_12(PORT_OUT_12),
    .PORT_OUT_13(PORT_OUT_13),
    .PORT_OUT_14(PORT_OUT_14),
    .PORT_OUT_15(PORT_OUT_15));

endmodule 