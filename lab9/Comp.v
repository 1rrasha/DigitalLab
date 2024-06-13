module Comp(out,in);
input [6:0]in;
output reg out;

always @ (in)
begin
if(in == 7'b0100100)
out <= 1'b1;
else 
out <= 1'b0;
end
endmodule 