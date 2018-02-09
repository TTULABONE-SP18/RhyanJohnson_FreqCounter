//SlowClock.v
//Rhyan Johnson
//Adapted from http://www.fpga4student.com/2017/09/seven-segment-led-display-controller-basys3-fpga.html
//Refreshes internal clock while simultaneously creating a two bit counter

module SlowClock(
    input CLK,
    input reset,
    output [1:0]countout
);
reg [20:0] refresh_counter; 

always @(posedge CLK)
begin 
 if(reset==1)
  refresh_counter <= 0;
 else
  refresh_counter <= refresh_counter + 1;
end 
assign countout = refresh_counter[20:19];
endmodule