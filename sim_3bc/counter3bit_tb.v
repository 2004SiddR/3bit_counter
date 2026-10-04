`timescale 1ns/1ps
module counter3bit_tb;
 reg clock,reset; //input of design (output of Testbench)
  wire [2:0] Q;   //output of design (input of Testbench)
  
  counter_3bit DUT(clock,reset,Q);//instantiation of design
  
  initial begin   //initialization of inputs
    clock = 0;    //clock initialization
    reset = 0;    //reset initialization
    #10 reset = 1; //Q = 0, if(reset) executed,flipflops initialized 
    #20 reset =0;//else condition executed after 20 ns
    $monitor($time,"  Q=%d",Q);
      end
  
  always begin        //toggling of clock signal 10 ns 
    #10 clock = ~ clock; //so time period  T = 20 ns
  end
  
  initial begin
    #1000 $stop;  //simulation stops after 1000 ns
  end
  
  initial 
    begin		//waveform generation code 
      $dumpfile("dump.vcd");//this block of code not required 
      $dumpvars;            //for xilinx or altera tools,
   end//but open source tools and linux tools, we should declare
 
endmodule
