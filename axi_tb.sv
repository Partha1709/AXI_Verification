module tb;
	axi_if();

	initial begin 
		vif.clk <=0;
	end

	always #5 vif.clk <= ~vif.clk;

	initial begin 
		uvm_config_db#(virtual axi_if)::set(null,"*","vif",vif);
		run_test("test");
	end
endmodule
