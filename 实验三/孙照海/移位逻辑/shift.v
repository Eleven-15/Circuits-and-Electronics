module shift(fbus,flbus,frbus,a,w,cf);
input wire fbus,flbus,frbus;
input wire[7:0] a;
output reg[7:0] w;
output reg cf;

always @(*)
begin
	cf=0;
	if(fbus==1'b1&&flbus==1'b0&&frbus==1'b0) w=a;
	else if(fbus==1'b0&&flbus==1'b1&&frbus==1'b0)
	begin
		w[7:1]=a[6:0];
        w[0]=a[7];
        cf=a[7];
    end

    else if(fbus==1'b0&&flbus==1'b0&&frbus==1'b1)
    begin
		w[6:0]=a[7:1];
        w[7]=a[0];
        cf=a[0];
    end

	else w=8'hZZ;
end
endmodule
