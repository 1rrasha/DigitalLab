module DFlipFlop(Clk,D,Q,Q1);
input Clk,D;
output reg Q,Q1;
always @(posedge Clk)
begin
Q = D;
Q1 = ~D;
end
endmodule 