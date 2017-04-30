// Parameter N indicates the number of SAT accelerator instances
// Example N = 65536 (2^16)
module SAT_accelerator_top #(parameter N=4) (outSATRes,clk,resetN,stateVal,varPos,negCtrl);

output reg outSATRes;
input clk, resetN;
input [1:0] stateVal;
input [4:0] varPos;
input negCtrl;

wire ResetN_Clause, ResetN_CNF, Clause_En, CNF_En;

wire[(N-1):0] outCNF;

SAT_synchronizer SAT_sync( .ResetN_Clause(ResetN_Clause), .ResetN_CNF(ResetN_CNF), .Clause_En(Clause_En), .CNF_En(CNF_En), .clk(clk), .resetN(resetN), .stateVal(stateVal));

genvar i;
generate
for (i=0;i<N;i=i+1) begin : generate_blocks
localparam truthVal = i*1; // Modify the number 1 to any other to bring in spacing between truth values of various accelrators.
SAT_accelerator #(.truthVal(truthVal)) SAT_acc( .outCNF(outCNF[i]), .clk(clk),.resetClause(ResetN_Clause),.negCtrl(negCtrl),.enableClause(Clause_En),.varPos(varPos),.resetCNF(ResetN_CNF),.enableCNF(CNF_En));
end
endgenerate

always@(posedge clk or negedge resetN)
begin

if(~resetN) begin
outSATRes <= 1'b0;
end

else begin
outSATRes <= |outCNF;
end

end

endmodule
