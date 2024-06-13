module FullAdder(x,y,cin,cout,sum);
input x,y,cin;
output sum,cout;

assign sum=(x^y)^cin;
assign cout=(x&&y)||(cin&&(x&&y));


endmodule 