module quad_mux_2x1 (
    input [3:0] m,
    input [3:0] i,
    input b,
    output [3:0] result
);

assign result = (b & m[0] & i[0]) | (b & m[1] & i[1]) | (~b & m[2] & i[2]) | (~b & m[3] & i[3]);

endmodule
