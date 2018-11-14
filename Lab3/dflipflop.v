module dff_sync_clear(d, clearb, clock, q);
    input clearb, clock, d;
    output q;
    reg q;

    always @ ( posedge clock )
    begin
        if( !(clearb) ) q <= 1'b0;
        else q <= d;
        
    end
endmodule

module dff_async_clear(d, clearb, clock, q);
    input clearb, d, clock;
    output q;
    reg q;

    always @(posedge clock or negedge clearb)
    begin
        if(!(clearb)) q <= 1'b0;
        else q <= d;  
    end
endmodule