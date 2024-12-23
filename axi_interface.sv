interface axi_intf #(parameter A_WIDTH = 16, D_WIDTH = 16)(input bit clk, bit rstn); 
	//Write Address 
	logic [8:0] AWID; 
	logic [A_WIDTH-1:0] AWADDR;
	logic [3:0] AWLEN; 
	logic [2:0] AWSIZE;
	logic [1:0] AWBURST;
	logic AWLEN, AWREADY;

	// Write Data
    	logic [8:0] WID;
    	logic [D_WIDTH-1:0] WDATA;
    	logic [(D_WIDTH/8)-1:0] WSTRB;
    	logic WLAST, WVALID, WREADY;

    	// Write Response
    	logic [8:0] BID;
    	logic [1:0] BRESP;
    	logic BVALID, BREADY;

    	// Read Address
    	logic [8:0] ARID;
    	logic [A_WIDTH-1:0] ARADDR;
    	logic [3:0] ARLEN;
    	logic [2:0] ARSIZE;
    	logic [1:0] ARBURST;
    	logic ARVALID, ARREADY;

    	// Read Data
    	logic [8:0] RID;
    	logic [D_WIDTH-1:0] RDATA;
    	logic [1:0] RRESP;
    	logic RLAST, RVALID, RREADY;

endinterface
