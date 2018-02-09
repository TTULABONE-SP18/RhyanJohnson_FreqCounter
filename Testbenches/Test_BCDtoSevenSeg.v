//Test_LED_BCDtoSevenSeg
// Developed by: Rhyan Johnson
//Tests LED_BCDtoSevenSeg.v

module Test_BCDtoSevenSeg();

//Inputs
reg [3:0]LED_BCD;

//Outputs
wire [6:0]SEG;

//Instantiate
BCDtoSevenSeg uut(
    .LED_BCD(LED_BCD),
    .SEG(SEG)
);

//begin test
initial begin
#50 LED_BCD = 4'b0011; //Should output led arrangement for 3 (7'b0110000)
#50 LED_BCD = 4'b0001; //Should output led arrangement for 1 (7'b1000000)
#50 LED_BCD = 4'b1000; //Should output led arrangement for 8  (7'b0000000)
#50 LED_BCD = 4'b0010; //Should output led arrangement for 2  (7'b0100100)
end
endmodule
