module gate (a, b, y);
    input a, b;
    output y;
    
    assign y = (!(a&b))&(!(a&b));

endmodule

module end_tb;
    wire Y;
    reg A, B;
    
    gate my_gate (.a(A), .b(B), .y(Y));
    
    initial
        begin
        $monitor (A, B, Y);
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
        
