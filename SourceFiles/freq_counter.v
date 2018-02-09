`timescale 1 ns / 1 ps

//freq_counter.v
//Rhyan Johnson
//Adapted from: Rice Rodriguez
//Gets frequency from input square wave



module freq_counter(


	input CLK,



	input IN,



	output reg [11:0] freq = 12'b0);



	

	reg[31:0] count = 32'b0;

	

	reg [11:0] edge_count = 12'b0;

	

	reg last = 0;



	



	//localparam max = 'd10000;           // Uncomment this out for testbench

	 localparam max = 'd100000000;         // Comment this for testbench



	

	always @(posedge CLK) begin

		last <= IN;

	end



	always @ (posedge CLK)

	begin

		case (1)

			

			count < max: begin

		

				count <= count + 1;

				if(~last & IN)

					edge_count <= edge_count + 1;

				end

			

			default: begin

				freq <= edge_count;

				edge_count <= 0;

				count <= 0;

			end

		endcase

	end



endmodule