module fadderbh(s, c, x, y, z);
    input x, y, z;
    output s, c;
    reg s, c;

    always @(x, y, z)
    begin
        if(x + y + z == 3)
        begin
            s = 1; c = 1;
        end
        else if(x + y + z == 2)
        begin
            s = 0; c = 1;
        end
        else if(x + y + z == 1)
        begin
            s = 1; c = 0; 
        end
        else
        begin
            s = 0; c = 0;
        end
    end

endmodule