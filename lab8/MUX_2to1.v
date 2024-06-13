module MUX_2to1 (a,b,sel,y);
input a,b,sel;
output y;
wire a,b,sel,y;

assign y = (sel) ? b : a;

endmodule 