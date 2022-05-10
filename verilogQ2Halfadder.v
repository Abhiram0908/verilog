module gate (a, b, s, c);
    input a, b;
    output s, c;
    
    assign s = (!a||!b)&(a||b);
    assign c = a&b;

endmodule

module end_tb;
    wire S, C;
    reg A, B;
    
    gate my_gate (.a(A), .b(B), .s(S), .c(C));
    
    initial
        begin
        $monitor (A," ", B, " ",S, " ", C);
        A = 1'b0;
        B = 1'b0;
        #5
        A = 1'b1;
        B = 1'b0;
        #5
        A = 1'b0;
        B = 1'b1;
        #5
        A = 1'b1;
        B = 1'b1;
        
        end
endmodule
        
