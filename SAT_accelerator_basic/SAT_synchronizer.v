module SAT_synchronizer (
  output reg ResetN_Clause,
  output reg ResetN_CNF,
  output reg Clause_En,
  output reg CNF_En,
  input wire clk,
  input wire resetN,
  input wire [1:0] stateVal
);
  
  reg [1:0] state;
  
  // state bits
  parameter 
  RESET_SAT          = 2'b00,  // Reset State
  COMPUTE_CLAUSE = 2'b01,  // Compute Clause (OR operations)
  COMPUTE_CNF    = 2'b10,  // Compute CNF (AND operation) and reset clause for next op.
  RESET_CLAUSE     = 2'b11;    // End of current CNF Computation

  always @(posedge clk or negedge resetN) begin
  if(~resetN) begin
        state <= 2'b00;   
  end
  else begin
        state <= stateVal;
  end
  end
  
  // sequential always block
  always @* begin
  
  case (state)
      RESET_SAT         : 
	  begin
        ResetN_Clause <= 1'b0;
        ResetN_CNF <= 1'b0;
        Clause_En <= 1'b0;
        CNF_En <= 1'b0;
		end
      COMPUTE_CLAUSE:
	  begin
        ResetN_Clause <= 1'b1;
        ResetN_CNF <= 1'b1;
        Clause_En <= 1'b1;
        CNF_En <= 1'b0;
		end
      COMPUTE_CNF:
	  begin
        ResetN_Clause <= 1'b1;
        ResetN_CNF <= 1'b1;
        Clause_En <= 1'b0;
        CNF_En <= 1'b1;
		end
      RESET_CLAUSE    :
	  begin
        ResetN_Clause <= 1'b0;
        ResetN_CNF <= 1'b1;
        Clause_En <= 1'b0;
        CNF_En <= 1'b1;
		end
      default       :
	  begin
        ResetN_Clause <= 1'b0;
        ResetN_CNF <= 1'b0;
        Clause_En <= 1'b0;
        CNF_En <= 1'b0;
		end
    endcase
end

// This code allows you to see state names in simulation
//`ifndef SYNTHESIS
//reg [111:0] statename;
//always @* begin
//  case (state)
//      RESET         :
//        statename = "RESET";
//      COMPUTE_CLAUSE:
//        statename = "COMPUTE_CLAUSE";
//      COMPUTE_CNF   :
//        statename = "COMPUTE_CNF";
//      END_COMPUTE    :
//        statename = "END_COMPUTE";
//      default       :
//       statename = "XXXXXXXXXXXXXX";
//   endcase
//end
//`endif

endmodule
