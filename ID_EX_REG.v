`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:00:11 11/14/2012 
// Design Name: 
// Module Name:    ID_EX_REG 
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
module ID_EX_REG(clk, rst,MemWrite, MemRead,RegWrite,RegWriteSel,MemtoReg,DataMemExtendSign,BranchBLTZ_BGTZ,BranchBGEZ,
						BranchNotEqual,BraqnchEqual,RegDest,ALUASrc,BHW,ALUBSrc,ALUControl,ReadRegister1, 
						ReadRegister2,Instruction_ID,Extended15to0Inst,BranchFlush,MemWrite_EX, MemRead_EX,RegWrite_EX,RegWriteSel_EX,
						MemtoReg_EX,DataMemExtendSign_EX,BranchBLTZ_BGTZ_EX,BranchBGEZ_EX,BranchNotEqual_EX,BraqnchEqual_EX,
						RegDest_EX,ALUASrc_EX,BHW_EX,ALUBSrc_EX,ALUControl_EX,ReadRegister1_EX, ReadRegister2_EX,
						Instruction_EX,Extended15to0Inst_EX,BranchFlush_EX);
	
	
	input MemWrite, MemRead,RegWrite,RegWriteSel,MemtoReg,DataMemExtendSign;
	input BranchBLTZ_BGTZ,BranchBGEZ,BranchNotEqual,BraqnchEqual,BranchFlush;
	input [1:0] RegDest,ALUASrc,BHW;
	input [3:0] ALUBSrc,ALUControl;
	input [4:0] ReadRegister1, ReadRegister2;
	input [31:0] Instruction_ID,Extended15to0Inst;
   input clk,rst;	
	
	output MemWrite_EX, MemRead_EX,RegWrite_EX,RegWriteSel_EX,MemtoReg_EX,DataMemExtendSign_EX;
	output BranchBLTZ_BGTZ_EX,BranchBGEZ_EX,BranchNotEqual_EX,BraqnchEqual_EX,BranchFlush_EX;
	output [1:0] RegDest_EX,ALUASrc_EX,BHW_EX;
   output [3:0] ALUBSrc_EX,ALUControl_EX;
	output [4:0] ReadRegister1_EX, ReadRegister2_EX;
	output [31:0] Instruction_EX,Extended15to0Inst_EX;
	
	reg MemWrite_EX, MemRead_EX,RegWrite_EX,RegWriteSel_EX,MemtoReg_EX,DataMemExtendSign_EX;
	reg BranchBLTZ_BGTZ_EX,BranchBGEZ_EX,BranchNotEqual_EX,BraqnchEqual_EX,BranchFlush_EX;
	reg [1:0] RegDest_EX,ALUASrc_EX,BHW_EX;
   reg [3:0] ALUBSrc_EX,ALUControl_EX;
	reg [4:0] ReadRegister1_EX, ReadRegister2_EX;
	reg [31:0] Instruction_EX,Extended15to0Inst_EX;
	
always@(rst)
begin
   MemWrite_EX 			<=  0;
	MemRead_EX 				<=  0;
	RegWrite_EX 			<=  0;
	RegWriteSel_EX 		<=  0;
	MemtoReg_EX 			<=  0;
	DataMemExtendSign_EX <=  0;
	BranchBLTZ_BGTZ_EX 	<=  0;
	BranchBGEZ_EX 			<=	 0;
	BranchNotEqual_EX 	<=  0;
	BraqnchEqual_EX		<=  0;
	RegDest_EX				<=  0;
	ALUASrc_EX				<=  0;
	BHW_EX					<=  0;
	ALUBSrc_EX				<=  0;
	ALUControl_EX			<=  0;
	ReadRegister1_EX		<=  0;
	ReadRegister2_EX		<=  0;
	Instruction_EX			<=  0;
	Extended15to0Inst_EX <=  0;
end

always@(posedge clk)
begin
   MemWrite_EX 			<=  MemWrite;
	MemRead_EX 				<=  MemRead;
	RegWrite_EX 			<=  RegWrite;
	RegWriteSel_EX 		<=  RegWriteSel;
	MemtoReg_EX 			<=  MemtoReg;
	DataMemExtendSign_EX <=  DataMemExtendSign;
	BranchBLTZ_BGTZ_EX 	<=  BranchBLTZ_BGTZ;
	BranchBGEZ_EX 			<=	 BranchBGEZ;
	BranchNotEqual_EX 	<=  BranchNotEqual;
	BraqnchEqual_EX		<=  BraqnchEqual;
	RegDest_EX				<=  RegDest;
	ALUASrc_EX				<=  ALUASrc;
	BHW_EX					<=  BHW;
	ALUBSrc_EX				<=  ALUBSrc;
	ALUControl_EX			<=  ALUControl;
	ReadRegister1_EX		<=  ReadRegister1;
	ReadRegister2_EX		<=  ReadRegister2;
	Instruction_EX			<=  Instruction_ID;
	Extended15to0Inst_EX <=  Extended15to0Inst;
end
	 	
endmodule
