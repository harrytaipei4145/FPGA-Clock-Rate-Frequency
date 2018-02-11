`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:42:49 12/03/2015 
// Design Name: 
// Module Name:    STU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module STU(
    input clk,
    output reg clk_new,
    output reg[3:0] student_ID 
    );

reg [3:0]count1; 
reg [5:0]count2;

always @(posedge clk)begin
	if(count1==5)begin
	clk_new<=1;
	count1<=count1+1;
	end
	else if(count1>=9)begin
	count1<=0;
	clk_new<=0;
	end
	else 
	begin
	clk_new<=clk_new;
	count1<=count1+1;
	end
end

always @(posedge clk_new)begin

   if(count2>=21)
	count2<=0;
	else if(count2==0)begin
	student_ID<=0;
	count2<=count2+1;
	end
	else if(count2==1)begin
	student_ID<=2;
	count2<=count2+1;
	end
	else if(count2==4)begin
	student_ID<=1;
	count2<=count2+1;
	end
	else if(count2==6)begin
	student_ID<=1;
	count2<=count2+1;
	end
	else if(count2==8)begin
	student_ID<=2;
	count2<=count2+1;
	end
	else if(count2==11)begin
	student_ID<=6;
	count2<=count2+1;
	end
	else if(count2==18)begin
	student_ID<=1;
	count2<=count2+1;
	end
	else if(count2==20)begin
	student_ID<=4'b1111;
	count2<=0;
	end
	
	else
	begin
	//student_ID<=student_ID;
	count2<=count2+1;
	end
end


endmodule
