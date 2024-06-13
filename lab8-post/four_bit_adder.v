module four_bit_adder (
  input [3:0] x,
  input [3:0] y,
  input c_in,
  output c_out,
  output [3:0] sum
);

  wire [3:0] carry;
  
 
  assign {carry[3], sum[3:0]} = x + y + c_in;
  
  assign c_out = carry[3];

endmodule
