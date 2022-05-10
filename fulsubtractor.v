module subtractor (a,b,c,x,y);

    input  a,b,c;
    output  x,y;
    
    assign x = (a^b)^c;
    assign y = ((!(a&b))&c) + ((!(a&c))&b) + ((!a)&b&c) + (a&b&c);
    
endmodule

module end_tb;

wire X,Y;
reg A,B,C;

subtractor my_gate (.a(A), .b(B), .c(C), .x(X), .y(Y));

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