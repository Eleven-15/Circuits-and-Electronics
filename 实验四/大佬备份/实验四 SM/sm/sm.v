module sm(
    input clk,sm_en,
    output reg sm
);
initial sm=1'b0;
always @(negedge clk) begin
    if(sm_en)begin
        sm<=~sm;
    end
    else begin
        sm<=sm;
    end
end    
endmodule
