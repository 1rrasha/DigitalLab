module Mux(A,B,S,out);
input A,B,S;
output reg out;
always 
begin
if(S==0)
out = A;
else
out = B;
end
endmodule 