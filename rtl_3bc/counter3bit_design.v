`timescale 1ns / 1ps 
module counter_3bit(clock,reset,Q);
  input clock,reset;  //inputs
  output [2:0] Q;     //outputs
  wire clock,reset;//inputs are wires
  reg [2:0] Q;    //outputs are reg
  
  always@(posedge clock)
    begin
      if(reset)
        Q <= 0;      
      else
        Q <= Q + 1;
    end
endmodule
