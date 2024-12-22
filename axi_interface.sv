interface axi_intf #(parameter A_WIDTH = 16, D_WIDTH = 16)(input bit clk, bit rstn); 
	//Write Address 
	logic [8:0] AWID; 
	logic [A_WIDTH-1:0] AWADDR;
	logic [3:0] AWLEN; 
	logic [2:0] AWSIZE;
	logic [1:0] AWBURST;
	logic AWLEN, AWREADY;

	//Write Data
