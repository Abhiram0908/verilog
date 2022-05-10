//2,4-decoder
module decoder(a,b,e,w,x,y,z);

input a,b,e;
output w,x,y,z;

assign w = (e&a&b);
assign x = (e&a&(!b));
assign y = (e&(!a)&b);
assign z = (e&(!a)&(!b));

endmodule

module end_tb;

    wire W,X,Y,Z;
    reg A,B,E;

    decoder my_gate(.a(A),.b(B),.e(E),.w(W),.x(X),.y(Y),.z(Z));

    initial
        begin
            $monitor(E," ",A," ",B," ",W," ",X," ",Y," ",Z);

            A = 1'bx;
            B = 1'bx;
            E = 1'b0;
            #5
            A = 1'b0;
            B = 1'b0;
            E = 1'b1;
            #5
            A = 1'b0;
            B = 1'b1;
            E = 1'b1;
            #5
            A = 1'b1;
            B = 1'b0;
            E = 1'b1;
            #5
            A = 1'b1;
            B = 1'b1;
            E = 1'b1;

        end

endmodule
