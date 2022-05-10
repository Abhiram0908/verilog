module gate (a, b, c, d, y);
    input a, b, c, d;
    output y;
    
    assign y = !((!(!(a&b)&b)) | (!(!(c&d)&d)));

endmodule

module end_tb;
    wire Y;
    reg A, B, C, D;
    
    gate my_gate (A, B, C, D, Y);
    
    initial
        begin
        $monitor (A," ", B, " ",C, " ", D, " ", Y);
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        #5
        A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        D = 1'b0;
        #5
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        D = 1'b0;
        #5
        A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        #5
        A = 1'b0;
        B = 1'b0;
        C = 1'b0;
        D = 1'b1;
        #5
        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
        #5
        A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        #5
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
        #5
        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        D = 1'b1;
        #5
        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b0;
        #5
        A = 1'b0;
        B = 1'b0;
        C = 1'b1;
        D = 1'b1;
        #5
        A = 1'b1;
        B = 1'b1;
        C = 1'b0;
        D = 1'b0;
        #5
        A = 1'b1;
        B = 1'b0;
        C = 1'b0;
        D = 1'b1;
        #5
        A = 1'b0;
        B = 1'b1;
        C = 1'b0;
        D = 1'b1;
        #5
        A = 1'b0;
        B = 1'b1;
        C = 1'b1;
        D = 1'b0;
        #5
        A = 1'b1;
        B = 1'b0;
        C = 1'b1;
        D = 1'b0;
        
        
        
        
        
        end
endmodule
        
