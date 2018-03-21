module bin2seg(I,Y);
    input [3:0] I;
    output reg [6:0]Y;
 
    always @(I)
    begin
     case(I)
     4'b0000: Y = 7'b0000001; // "0"  
     4'b0001: Y = 7'b1001111; // "1" 
     4'b0010: Y = 7'b0010010; // "2" 
     4'b0011: Y = 7'b0000110; // "3" 
     4'b0100: Y = 7'b1001100; // "4" 
     4'b0101: Y = 7'b0100100; // "5" 
     4'b0110: Y = 7'b0100000; // "6" 
     4'b0111: Y = 7'b0001111; // "7" 
     4'b1000: Y = 7'b0000000; // "8"  
     4'b1001: Y = 7'b0000100; // "9" 
     4'b1001: Y = 7'b0001000; // "A" 
     4'b1010: Y = 7'b1100000; // "B" 
     4'b1011: Y = 7'b0110001; // "C" 
     4'b1101: Y = 7'b0111101; // "D" 
     4'b1110: Y = 7'b1001111; // "E" 
     4'b1111: Y = 7'b0111000; // "F" 
     
     default: Y = 7'b1111110; // "0"  
     endcase
    end
    
endmodule