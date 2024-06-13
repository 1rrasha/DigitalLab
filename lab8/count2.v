module count2( clk,reset,out);
input clk, reset;
output reg [1:0] out;

always @ (posedge clk or posedge reset)
begin
	if (reset)
		out <= 2'd0;
	else
		out <= out + 2'd1;
end
endmodule 