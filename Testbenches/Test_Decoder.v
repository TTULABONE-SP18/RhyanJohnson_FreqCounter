//Test_Decoder.v
//Developed by Rhyan Johnson
//Tests Decoder.v
module Test_Decoder();
 reg [1:0]countout;
 reg [15:0] BCD = 16'b0001001000110100;
 wire [3:0] LED_BCD;
 wire [3:0]digits;

 Decoder uut(
     .countout(countout),
     .BCD(BCD),
     .LED_BCD(LED_BCD),
     .digits(digits)
 );
  
 initial begin
 #100
 #10 countout = 'b00;
 #10 countout = 'b01;
 #10 countout = 'b10;
 #10 countout = 'b11;
 end
 endmodule