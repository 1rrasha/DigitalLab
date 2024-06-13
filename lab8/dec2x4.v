module dec2x4(in, t3, t2, t1, t0);
  input [1:0] in;
  output reg t3, t2, t1, t0;

  always @(*)
  begin
    if (in[1] == 1'b0 && in[0] == 1'b0) begin
      t0 = 1'b1;
      t1 = 1'b0;
      t2 = 1'b0;
      t3 = 1'b0;
    end
    else if (in[1] == 1'b0 && in[0] == 1'b1) begin
      t0 = 1'b0;
      t1 = 1'b1;
      t2 = 1'b0;
      t3 = 1'b0;
    end
    else if (in[1] == 1'b1 && in[0] == 1'b0) begin
      t0 = 1'b0;
      t1 = 1'b0;
      t2 = 1'b1;
      t3 = 1'b0;
    end
    else begin
      t0 = 1'b0;
      t1 = 1'b0;
      t2 = 1'b0;
      t3 = 1'b1;
    end
  end
endmodule 