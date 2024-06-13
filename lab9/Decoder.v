module Decoder (en,select, out);
input [1:0] select;
input en;
wire [1:0] select;
output [3:0] out;
reg[3:0] out;
always @(select)
begin
if(en == 1)
case(select)
0: out = 4'b0001;
1: out = 4'b0010;
2: out = 4'b0100;
3: out = 4'b1000;
endcase
else
out <= 4'b0000;
end
endmodule 