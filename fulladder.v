module fulladder (a,b,c,x,y);
    input a,b,c;
    output x,y;

    assign x = (a^b)^c;
    assign y = (a&b)+(b&c)+(c&a);
endmodule

module add_tb;
    wire X,Y;
    reg A,B,C;

    fulladder my_gate (.a(A),.b(B),.c(C),.x(X),.y(Y));

    initial
        begin
            $monitor (A," ",B," ",C," ",X," ",Y);
            A = 1'b0;
            B = 1'b0;
            C = 1'b0;
            #5
            A = 1'b1;
            B = 1'b0;
            C = 1'b0;
            #5
            A = 1'b0;
            B = 1'b1;
            C = 1'b0;
            #5
            A = 1'b0;
            B = 1'b0;
            C = 1'b1;
            #5
            A = 1'b1;
            B = 1'b1;
            C = 1'b0;
            #5
            A = 1'b1;
            B = 1'b0;
            C = 1'b1;
            #5
            A = 1'b0;
            B = 1'b1;
            C = 1'b1;
            #5
            A = 1'b1;
            B = 1'b1;
            C = 1'b1;
        
            
        end
endmodule