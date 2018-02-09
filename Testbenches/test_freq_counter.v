`timescale 1 ns / 1 ps
//Rhyan Johnson
//Adapted from Rice Rodriguez
module test_freq_counter();

     wire [7:0] freq;

     reg clk, in;



     initial begin

          clk = 0;

          in = 0;
          

        forever   #6897000 in = !in;

        
           end
           always #100000 clk = !clk;

     freq_counter tb1(

          .CLK(clk),

          .IN(in),

          .freq(freq)

          );

endmodule