 //----------------------------------------------------------

`timescale 1 ns / 100 ps

module SAT_accelerator_tb ();

reg clk,resetN;
reg[3:0] fifoIndexTracker;

wire[7:0] command;
wire outSATRes;

parameter N=4;

SAT_accelerator_top #(.N(N)) SAT_acc_test (
.outSATRes(outSATRes),
.clk(clk),
.resetN(resetN),
.command(command)
);


bufferReg b1 (
.clk(clk), 
.reset(resetN), 
.fifoIndexTracker(fifoIndexTracker), 
.outVal(command));

 initial
 begin 
 clk = 1'b1;
 resetN = 1'b0; 
 fifoIndexTracker = 3'd0;
 #4 resetN = 1'b1;
 end
 
 always #2 clk = ~clk;

always@(posedge clk)
begin
fifoIndexTracker <= fifoIndexTracker+1;
end
 
endmodule
 

// Buffer Register for testbench 
module bufferReg (input clk, input reset, input[3:0] fifoIndexTracker, output reg[7:0] outVal);

reg[7:0] fifoVal[0:15]; 

initial begin

// CNF - (x1+x2)*(~x1+x2)

fifoVal[0] = 8'b00000000; // RESET -- state=00,varPos=00000,negCtrl=0 ==> 00000000
fifoVal[1] = 8'b00000000; // RESET -- state=00,varPos=00000,negCtrl=0 ==> 00000000
fifoVal[2] = 8'b00000000; // RESET -- state=00,varPos=00000,negCtrl=0 ==> 00000000
fifoVal[3] = 8'b00000000; // RESET -- state=00,varPos=00000,negCtrl=0 ==> 00000000
fifoVal[4] = 8'b00000000; // RESET -- state=00,varPos=00000,negCtrl=0 ==> 00000000
fifoVal[5] = 8'b00000000; // RESET -- state=00,varPos=00000,negCtrl=0 ==> 00000000
fifoVal[6] = 8'b01000000; // Compute Clause x1 -- state=01,varPos=00000,negCtrl=0 ==> 01000000 
fifoVal[7] = 8'b01000010; // Compute Clause x2 -- state=01,varPos=00001,negCtrl=0 ==> 01000010 
fifoVal[8] = 8'b10000000; // Compute CNF -- state=10,varPos=000000,negCtrl=0 ==> 10000000
fifoVal[9] = 8'b11000000; // Reset Clause -- state=11,varPos=000000,negCtrl=0 ==> 10000000
fifoVal[10] = 8'b01000001; // Compute Clause x1 -- state=01,varPos=00000,negCtrl=1 ==> 01000001
fifoVal[11] = 8'b01000010; // Compute Clause x2 -- state=01,varPos=00001,negCtrl=0 ==> 01000010
fifoVal[12] = 8'b10000000; // Compute CNF -- state=10,varPos=00000,negCtrl=0 ==> 10000000
fifoVal[13] = 8'b11000000; // Reset Clause -- state=11,varPos=00000,negCtrl=0 ==> 10000000
fifoVal[14] = 8'b00000000; // Reset Clause -- state=11,varPos=00000,negCtrl=0 ==> 10000000
fifoVal[15] = 8'b00000000; // Reset Clause -- state=11,varPos=00000,negCtrl=0 ==> 10000000

end

always@(posedge clk, negedge reset)
begin

if(~reset) begin
outVal <= 8'd0;
end 

else begin
outVal <= fifoVal[fifoIndexTracker];
end

end

endmodule