
module Test_BinaryToBCD();

	reg [11:0] bnum = 12'b000001111101;   // 125 7d
    wire [15:0] BCD;
	BinaryToBCD uut(
		.bnum(bnum), 
		.BCD(BCD)
	);
      
endmodule