module SIMCOMP(clk,PC,IR,MBR,AC,MAR);
input clk;
output PC,IR,MBR,AC,MAR;
reg [15:0] IR,MBR,AC;
reg [11:0] PC,MAR;
reg [15:0] Memory [0:63];
reg [2:0] state;

parameter load = 4'b0011, store = 4'b1011, add = 4'b0111;
 
initial begin
    //program
    Memory [10]= 16'h3020;
    Memory [11]= 16'h7021;
    Memory [12]= 16'hB014;
    
    //data at byte address
    Memory [32]= 16'd7;
    Memory [33]= 16'd5;
    
    //set the program counter to the start of the memory
    PC = 10; state = 0;
end

always @(posedge clk) begin
case (state)
 0:begin 
    MAR <= PC;
    state=1;
    end
 1:begin //fetch the instruction from the memory
    IR <= Memory[MAR];
    PC <= PC+1;
    state=2;//next state
    end
 2:begin //instruction decode
    MAR <= IR[11:0];
    state=3;//next state
    end 
 3:begin //operand fetch
    state=4;//next state
     case (IR [15:12])
       load : MBR<= Memory[MAR];
       add : MBR<= Memory[MAR];
       store : MBR<=AC;
    endcase
    end   
 4:begin //execute
    if (IR[15:12]==4'h7) begin
     AC <= AC+MBR;
     state=0;//next state
    end 
    else if (IR[15:12]==4'h3) begin
     AC <= MBR;
     state=0;//next state
    end
     else if (IR[15:12]==4'hB) begin
     Memory[MAR] <= MBR;
     state=0;
    end
   end
  endcase
  end
  endmodule
       

    
    
         
    