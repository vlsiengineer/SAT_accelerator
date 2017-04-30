module SAT_accelerator #(parameter truthVal=32'd0) (outCNF,clk,resetClause,negCtrl,enableClause,varPos,resetCNF,enableCNF);

output reg outCNF;  
input clk,resetClause,enableClause;
input negCtrl;
input unsigned[4:0] varPos;
input resetCNF,enableCNF;

reg[31:0] accTruthVal = truthVal;
reg clauseOut;
wire[1:0] inORgate;
wire[1:0] inANDgate;

assign inORgate[0] = negCtrl?(~accTruthVal[varPos]):(accTruthVal[varPos]);
assign inORgate[1] = clauseOut;

assign inANDgate[0] = clauseOut;
assign inANDgate[1] = outCNF;

always@(posedge clk or negedge resetClause)
begin

if(~resetClause) begin
clauseOut <= 1'b0;
end

else if(enableClause) begin
clauseOut <= |inORgate;
end

end

always@(posedge clk or negedge resetCNF)
begin

if(~resetCNF) begin
outCNF <= 1'b1;
end

else if(enableCNF) begin
outCNF <= &inANDgate;
end

end

endmodule