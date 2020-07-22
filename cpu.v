/* Kris Keillor 
 * 8 bit computer 
 * Original source: Quick Start Guide to Verilog
 *                  Brock J. LaMeres */

module CPU (
    // INPUTS
    input DIN [7:0],
    input CLK,
    input RST_L,
    // OUTPUTS 
    output reg DOUT [7:0],
    output reg ADDRESS [7:0],
    output reg EN_WRITE);

endmodule 