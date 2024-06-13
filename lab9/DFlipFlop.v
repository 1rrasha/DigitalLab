module DFlipFlop(Clk,D,Q);
input Clk,D;
output reg Q;
always @(posedge Clk)
begin
Q = D;
end
endmodule 