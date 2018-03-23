// This ALU can perform additional operations: subtract and less than.
// Both subtract and less than use the adder's hardware.


// :Example:
//
// Slice for second ALU.  See :PH: Figure 4.16.  Input less is
// generated by MSB slice, alu_slice2MSB for bit zero and 0 for all
// the others.

module alu_slice2(
   input a; 
   input b; 
   input cin; 
   input binvert;
   input less;
   input [1:0] op;
   output result, 
   output cout;
);
   
   parameter   sop_and = 0;
   parameter   sop_or  = 1;
   parameter   sop_add = 2;
   parameter   sop_slt = 3;

   wire        b2 = binvert ? ~b : b;
   wire        sum;

   full_adder fa1(sum,cout,a,b2,cin);

   assign result =
          op == sop_and ? a & b :
          op == sop_or  ? a | b :
          op == sop_add ? sum :
          less; // else, op == sop_slt

endmodule
