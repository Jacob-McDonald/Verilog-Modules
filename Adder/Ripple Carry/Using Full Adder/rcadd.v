module ripple_carry_adder(S, C, A, B, Cin);
   output [3:0] S;   // The 4-bit sum.
   output 	C;   // The 1-bit carry.
   input [3:0] 	A;   // The 4-bit augend.
   input [3:0] 	B;   // The 4-bit addend.
   input 	Cin; // The carry input.
 	
   wire 	C0; // The carry out bit of fa0, the carry in bit of fa1.
   wire 	C1; // The carry out bit of fa1, the carry in bit of fa2.
   wire 	C2; // The carry out bit of fa2, the carry in bit of fa3.
	
   full_adder fa0(S[0], C0, A[0], B[0], Cin);    // Least significant bit.
   full_adder fa1(S[1], C1, A[1], B[1], C0);
   full_adder fa2(S[2], C2, A[2], B[2], C1);
   full_adder fa3(S[3], C, A[3], B[3], C2);    // Most significant bit.
endmodule // ripple_carry_adder