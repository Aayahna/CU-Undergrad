// (C) 1992-2015 Altera Corporation. All rights reserved.                         
// Your use of Altera Corporation's design tools, logic functions and other       
// software and tools, and its AMPP partner logic functions, and any output       
// files any of the foregoing (including device programming or simulation         
// files), and any associated documentation or information are expressly subject  
// to the terms and conditions of the Altera Program License Subscription         
// Agreement, Altera MegaCore Function License Agreement, or other applicable     
// license agreement, including, without limitation, that your use is for the     
// sole purpose of programming logic devices manufactured by Altera and sold by   
// Altera or its authorized distributors.  Please refer to the applicable         
// agreement for further details.                                                 
    

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module comparator_kernel_basic_block_0
	(
		input 		clock,
		input 		resetn,
		input [63:0] 		input_A,
		input [63:0] 		input_B,
		input [63:0] 		input_equals,
		input [31:0] 		input_global_size_0,
		input 		valid_in,
		output 		stall_out,
		input [31:0] 		input_global_id_0,
		output 		valid_out,
		input 		stall_in,
		input [31:0] 		workgroup_size,
		input 		start,
		output 		avm_local_bb0_ld__enable,
		input [255:0] 		avm_local_bb0_ld__readdata,
		input 		avm_local_bb0_ld__readdatavalid,
		input 		avm_local_bb0_ld__waitrequest,
		output [29:0] 		avm_local_bb0_ld__address,
		output 		avm_local_bb0_ld__read,
		output 		avm_local_bb0_ld__write,
		input 		avm_local_bb0_ld__writeack,
		output [255:0] 		avm_local_bb0_ld__writedata,
		output [31:0] 		avm_local_bb0_ld__byteenable,
		output [4:0] 		avm_local_bb0_ld__burstcount,
		output 		local_bb0_ld__active,
		input 		clock2x,
		output 		avm_local_bb0_ld__u0_enable,
		input [255:0] 		avm_local_bb0_ld__u0_readdata,
		input 		avm_local_bb0_ld__u0_readdatavalid,
		input 		avm_local_bb0_ld__u0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__u0_address,
		output 		avm_local_bb0_ld__u0_read,
		output 		avm_local_bb0_ld__u0_write,
		input 		avm_local_bb0_ld__u0_writeack,
		output [255:0] 		avm_local_bb0_ld__u0_writedata,
		output [31:0] 		avm_local_bb0_ld__u0_byteenable,
		output [4:0] 		avm_local_bb0_ld__u0_burstcount,
		output 		local_bb0_ld__u0_active,
		output 		avm_local_bb0_st_c0_exe1_enable,
		input [255:0] 		avm_local_bb0_st_c0_exe1_readdata,
		input 		avm_local_bb0_st_c0_exe1_readdatavalid,
		input 		avm_local_bb0_st_c0_exe1_waitrequest,
		output [29:0] 		avm_local_bb0_st_c0_exe1_address,
		output 		avm_local_bb0_st_c0_exe1_read,
		output 		avm_local_bb0_st_c0_exe1_write,
		input 		avm_local_bb0_st_c0_exe1_writeack,
		output [255:0] 		avm_local_bb0_st_c0_exe1_writedata,
		output [31:0] 		avm_local_bb0_st_c0_exe1_byteenable,
		output [4:0] 		avm_local_bb0_st_c0_exe1_burstcount,
		output 		local_bb0_st_c0_exe1_active
	);


// Values used for debugging.  These are swept away by synthesis.
wire _entry;
wire _exit;
 reg [31:0] _num_entry_NO_SHIFT_REG;
 reg [31:0] _num_exit_NO_SHIFT_REG;
wire [31:0] _num_live;

assign _entry = ((&valid_in) & ~((|stall_out)));
assign _exit = ((&valid_out) & ~((|stall_in)));
assign _num_live = (_num_entry_NO_SHIFT_REG - _num_exit_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		_num_entry_NO_SHIFT_REG <= 32'h0;
		_num_exit_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		if (_entry)
		begin
			_num_entry_NO_SHIFT_REG <= (_num_entry_NO_SHIFT_REG + 2'h1);
		end
		if (_exit)
		begin
			_num_exit_NO_SHIFT_REG <= (_num_exit_NO_SHIFT_REG + 2'h1);
		end
	end
end



// This section defines the behaviour of the MERGE node
wire merge_node_stall_in;
 reg merge_node_valid_out_NO_SHIFT_REG;
wire merge_stalled_by_successors;
 reg merge_block_selector_NO_SHIFT_REG;
 reg merge_node_valid_in_staging_reg_NO_SHIFT_REG;
 reg [31:0] input_global_id_0_staging_reg_NO_SHIFT_REG;
 reg [31:0] local_lvm_input_global_id_0_NO_SHIFT_REG;
 reg is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
 reg invariant_valid_NO_SHIFT_REG;

assign merge_stalled_by_successors = (|(merge_node_stall_in & merge_node_valid_out_NO_SHIFT_REG));
assign stall_out = merge_node_valid_in_staging_reg_NO_SHIFT_REG;

always @(*)
begin
	if ((merge_node_valid_in_staging_reg_NO_SHIFT_REG | valid_in))
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b1;
	end
	else
	begin
		merge_block_selector_NO_SHIFT_REG = 1'b0;
		is_merge_data_to_local_regs_valid_NO_SHIFT_REG = 1'b0;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		input_global_id_0_staging_reg_NO_SHIFT_REG <= 'x;
		merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (((merge_block_selector_NO_SHIFT_REG != 1'b0) | merge_stalled_by_successors))
		begin
			if (~(merge_node_valid_in_staging_reg_NO_SHIFT_REG))
			begin
				input_global_id_0_staging_reg_NO_SHIFT_REG <= input_global_id_0;
				merge_node_valid_in_staging_reg_NO_SHIFT_REG <= valid_in;
			end
		end
		else
		begin
			merge_node_valid_in_staging_reg_NO_SHIFT_REG <= 1'b0;
		end
	end
end

always @(posedge clock)
begin
	if (~(merge_stalled_by_successors))
	begin
		case (merge_block_selector_NO_SHIFT_REG)
			1'b0:
			begin
				if (merge_node_valid_in_staging_reg_NO_SHIFT_REG)
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0_staging_reg_NO_SHIFT_REG;
				end
				else
				begin
					local_lvm_input_global_id_0_NO_SHIFT_REG <= input_global_id_0;
				end
			end

			default:
			begin
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		merge_node_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (~(merge_stalled_by_successors))
		begin
			merge_node_valid_out_NO_SHIFT_REG <= is_merge_data_to_local_regs_valid_NO_SHIFT_REG;
		end
		else
		begin
			if (~(merge_node_stall_in))
			begin
				merge_node_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		invariant_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		invariant_valid_NO_SHIFT_REG <= (~(start) & (invariant_valid_NO_SHIFT_REG | is_merge_data_to_local_regs_valid_NO_SHIFT_REG));
	end
end


// This section implements an unregistered operation.
// 
wire local_bb0_idxprom_stall_local;
wire [63:0] local_bb0_idxprom;

assign local_bb0_idxprom[32] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[33] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[34] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[35] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[36] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[37] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[38] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[39] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[40] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[41] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[42] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[43] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[44] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[45] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[46] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[47] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[48] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[49] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[50] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[51] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[52] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[53] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[54] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[55] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[56] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[57] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[58] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[59] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[60] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[61] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[62] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[63] = local_lvm_input_global_id_0_NO_SHIFT_REG[31];
assign local_bb0_idxprom[31:0] = local_lvm_input_global_id_0_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb0_arrayidx_stall_local;
wire [63:0] local_bb0_arrayidx;

assign local_bb0_arrayidx = ((input_A & 64'hFFFFFFFFFFFFFC00) + (local_bb0_idxprom << 6'h1));

// This section implements an unregistered operation.
// 
wire local_bb0_arrayidx3_stall_local;
wire [63:0] local_bb0_arrayidx3;

assign local_bb0_arrayidx3 = ((input_B & 64'hFFFFFFFFFFFFFC00) + (local_bb0_idxprom << 6'h1));

// This section implements an unregistered operation.
// 
wire local_bb0_arrayidx_valid_out;
wire local_bb0_arrayidx_stall_in;
wire local_bb0_arrayidx3_valid_out;
wire local_bb0_arrayidx3_stall_in;
wire local_bb0_arrayidx7_valid_out;
wire local_bb0_arrayidx7_stall_in;
wire local_bb0_arrayidx7_inputs_ready;
wire local_bb0_arrayidx7_stall_local;
wire [63:0] local_bb0_arrayidx7;
 reg local_bb0_arrayidx_consumed_0_NO_SHIFT_REG;
 reg local_bb0_arrayidx3_consumed_0_NO_SHIFT_REG;
 reg local_bb0_arrayidx7_consumed_0_NO_SHIFT_REG;

assign local_bb0_arrayidx7_inputs_ready = merge_node_valid_out_NO_SHIFT_REG;
assign local_bb0_arrayidx7 = ((input_equals & 64'hFFFFFFFFFFFFFC00) + (local_bb0_idxprom << 6'h1));
assign local_bb0_arrayidx7_stall_local = ((local_bb0_arrayidx_stall_in & ~(local_bb0_arrayidx_consumed_0_NO_SHIFT_REG)) | (local_bb0_arrayidx3_stall_in & ~(local_bb0_arrayidx3_consumed_0_NO_SHIFT_REG)) | (local_bb0_arrayidx7_stall_in & ~(local_bb0_arrayidx7_consumed_0_NO_SHIFT_REG)));
assign local_bb0_arrayidx_valid_out = (local_bb0_arrayidx7_inputs_ready & ~(local_bb0_arrayidx_consumed_0_NO_SHIFT_REG));
assign local_bb0_arrayidx3_valid_out = (local_bb0_arrayidx7_inputs_ready & ~(local_bb0_arrayidx3_consumed_0_NO_SHIFT_REG));
assign local_bb0_arrayidx7_valid_out = (local_bb0_arrayidx7_inputs_ready & ~(local_bb0_arrayidx7_consumed_0_NO_SHIFT_REG));
assign merge_node_stall_in = (|local_bb0_arrayidx7_stall_local);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_arrayidx_consumed_0_NO_SHIFT_REG <= 1'b0;
		local_bb0_arrayidx3_consumed_0_NO_SHIFT_REG <= 1'b0;
		local_bb0_arrayidx7_consumed_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		local_bb0_arrayidx_consumed_0_NO_SHIFT_REG <= (local_bb0_arrayidx7_inputs_ready & (local_bb0_arrayidx_consumed_0_NO_SHIFT_REG | ~(local_bb0_arrayidx_stall_in)) & local_bb0_arrayidx7_stall_local);
		local_bb0_arrayidx3_consumed_0_NO_SHIFT_REG <= (local_bb0_arrayidx7_inputs_ready & (local_bb0_arrayidx3_consumed_0_NO_SHIFT_REG | ~(local_bb0_arrayidx3_stall_in)) & local_bb0_arrayidx7_stall_local);
		local_bb0_arrayidx7_consumed_0_NO_SHIFT_REG <= (local_bb0_arrayidx7_inputs_ready & (local_bb0_arrayidx7_consumed_0_NO_SHIFT_REG | ~(local_bb0_arrayidx7_stall_in)) & local_bb0_arrayidx7_stall_local);
	end
end


// This section implements a staging register.
// 
wire rstag_1to1_bb0_arrayidx_valid_out;
wire rstag_1to1_bb0_arrayidx_stall_in;
wire rstag_1to1_bb0_arrayidx_inputs_ready;
wire rstag_1to1_bb0_arrayidx_stall_local;
 reg rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG;
wire rstag_1to1_bb0_arrayidx_combined_valid;
 reg [63:0] rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG;
wire [63:0] rstag_1to1_bb0_arrayidx;

assign rstag_1to1_bb0_arrayidx_inputs_ready = local_bb0_arrayidx_valid_out;
assign rstag_1to1_bb0_arrayidx = (rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG ? rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG : (local_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFE));
assign rstag_1to1_bb0_arrayidx_combined_valid = (rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG | rstag_1to1_bb0_arrayidx_inputs_ready);
assign rstag_1to1_bb0_arrayidx_valid_out = rstag_1to1_bb0_arrayidx_combined_valid;
assign rstag_1to1_bb0_arrayidx_stall_local = rstag_1to1_bb0_arrayidx_stall_in;
assign local_bb0_arrayidx_stall_in = (|rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_1to1_bb0_arrayidx_stall_local)
		begin
			if (~(rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG))
			begin
				rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG <= rstag_1to1_bb0_arrayidx_inputs_ready;
			end
		end
		else
		begin
			rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_1to1_bb0_arrayidx_staging_valid_NO_SHIFT_REG))
		begin
			rstag_1to1_bb0_arrayidx_staging_reg_NO_SHIFT_REG <= (local_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFE);
		end
	end
end


// This section implements a staging register.
// 
wire rstag_1to1_bb0_arrayidx3_valid_out;
wire rstag_1to1_bb0_arrayidx3_stall_in;
wire rstag_1to1_bb0_arrayidx3_inputs_ready;
wire rstag_1to1_bb0_arrayidx3_stall_local;
 reg rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG;
wire rstag_1to1_bb0_arrayidx3_combined_valid;
 reg [63:0] rstag_1to1_bb0_arrayidx3_staging_reg_NO_SHIFT_REG;
wire [63:0] rstag_1to1_bb0_arrayidx3;

assign rstag_1to1_bb0_arrayidx3_inputs_ready = local_bb0_arrayidx3_valid_out;
assign rstag_1to1_bb0_arrayidx3 = (rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG ? rstag_1to1_bb0_arrayidx3_staging_reg_NO_SHIFT_REG : (local_bb0_arrayidx3 & 64'hFFFFFFFFFFFFFFFE));
assign rstag_1to1_bb0_arrayidx3_combined_valid = (rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG | rstag_1to1_bb0_arrayidx3_inputs_ready);
assign rstag_1to1_bb0_arrayidx3_valid_out = rstag_1to1_bb0_arrayidx3_combined_valid;
assign rstag_1to1_bb0_arrayidx3_stall_local = rstag_1to1_bb0_arrayidx3_stall_in;
assign local_bb0_arrayidx3_stall_in = (|rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_1to1_bb0_arrayidx3_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_1to1_bb0_arrayidx3_stall_local)
		begin
			if (~(rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG))
			begin
				rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG <= rstag_1to1_bb0_arrayidx3_inputs_ready;
			end
		end
		else
		begin
			rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_1to1_bb0_arrayidx3_staging_valid_NO_SHIFT_REG))
		begin
			rstag_1to1_bb0_arrayidx3_staging_reg_NO_SHIFT_REG <= (local_bb0_arrayidx3 & 64'hFFFFFFFFFFFFFFFE);
		end
	end
end


// Register node:
//  * latency = 9
//  * capacity = 9
 logic rnode_1to10_bb0_arrayidx7_0_valid_out_NO_SHIFT_REG;
 logic rnode_1to10_bb0_arrayidx7_0_stall_in_NO_SHIFT_REG;
 logic [63:0] rnode_1to10_bb0_arrayidx7_0_NO_SHIFT_REG;
 logic rnode_1to10_bb0_arrayidx7_0_reg_10_inputs_ready_NO_SHIFT_REG;
 logic [63:0] rnode_1to10_bb0_arrayidx7_0_reg_10_NO_SHIFT_REG;
 logic rnode_1to10_bb0_arrayidx7_0_valid_out_reg_10_NO_SHIFT_REG;
 logic rnode_1to10_bb0_arrayidx7_0_stall_in_reg_10_NO_SHIFT_REG;
 logic rnode_1to10_bb0_arrayidx7_0_stall_out_reg_10_NO_SHIFT_REG;

acl_data_fifo rnode_1to10_bb0_arrayidx7_0_reg_10_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_1to10_bb0_arrayidx7_0_reg_10_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_1to10_bb0_arrayidx7_0_stall_in_reg_10_NO_SHIFT_REG),
	.valid_out(rnode_1to10_bb0_arrayidx7_0_valid_out_reg_10_NO_SHIFT_REG),
	.stall_out(rnode_1to10_bb0_arrayidx7_0_stall_out_reg_10_NO_SHIFT_REG),
	.data_in((local_bb0_arrayidx7 & 64'hFFFFFFFFFFFFFFFE)),
	.data_out(rnode_1to10_bb0_arrayidx7_0_reg_10_NO_SHIFT_REG)
);

defparam rnode_1to10_bb0_arrayidx7_0_reg_10_fifo.DEPTH = 10;
defparam rnode_1to10_bb0_arrayidx7_0_reg_10_fifo.DATA_WIDTH = 64;
defparam rnode_1to10_bb0_arrayidx7_0_reg_10_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_1to10_bb0_arrayidx7_0_reg_10_fifo.IMPL = "ram";

assign rnode_1to10_bb0_arrayidx7_0_reg_10_inputs_ready_NO_SHIFT_REG = local_bb0_arrayidx7_valid_out;
assign local_bb0_arrayidx7_stall_in = rnode_1to10_bb0_arrayidx7_0_stall_out_reg_10_NO_SHIFT_REG;
assign rnode_1to10_bb0_arrayidx7_0_NO_SHIFT_REG = rnode_1to10_bb0_arrayidx7_0_reg_10_NO_SHIFT_REG;
assign rnode_1to10_bb0_arrayidx7_0_stall_in_reg_10_NO_SHIFT_REG = rnode_1to10_bb0_arrayidx7_0_stall_in_NO_SHIFT_REG;
assign rnode_1to10_bb0_arrayidx7_0_valid_out_NO_SHIFT_REG = rnode_1to10_bb0_arrayidx7_0_valid_out_reg_10_NO_SHIFT_REG;

// This section implements a registered operation.
// 
wire local_bb0_ld__inputs_ready;
 reg local_bb0_ld__valid_out_NO_SHIFT_REG;
wire local_bb0_ld__stall_in;
wire local_bb0_ld__output_regs_ready;
wire local_bb0_ld__fu_stall_out;
wire local_bb0_ld__fu_valid_out;
wire [15:0] local_bb0_ld__lsu_dataout;
 reg [15:0] local_bb0_ld__NO_SHIFT_REG;
wire local_bb0_ld__causedstall;

lsu_top lsu_local_bb0_ld_ (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((rstag_1to1_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFE)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb0_ld__fu_stall_out),
	.i_valid(local_bb0_ld__inputs_ready),
	.i_address((rstag_1to1_bb0_arrayidx & 64'hFFFFFFFFFFFFFFFE)),
	.i_writedata(),
	.i_cmpdata(),
	.i_predicate(1'b0),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb0_ld__output_regs_ready)),
	.o_valid(local_bb0_ld__fu_valid_out),
	.o_readdata(local_bb0_ld__lsu_dataout),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb0_ld__active),
	.avm_address(avm_local_bb0_ld__address),
	.avm_read(avm_local_bb0_ld__read),
	.avm_enable(avm_local_bb0_ld__enable),
	.avm_readdata(avm_local_bb0_ld__readdata),
	.avm_write(avm_local_bb0_ld__write),
	.avm_writeack(avm_local_bb0_ld__writeack),
	.avm_burstcount(avm_local_bb0_ld__burstcount),
	.avm_writedata(avm_local_bb0_ld__writedata),
	.avm_byteenable(avm_local_bb0_ld__byteenable),
	.avm_waitrequest(avm_local_bb0_ld__waitrequest),
	.avm_readdatavalid(avm_local_bb0_ld__readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb0_ld_.AWIDTH = 30;
defparam lsu_local_bb0_ld_.WIDTH_BYTES = 2;
defparam lsu_local_bb0_ld_.MWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld_.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld_.ALIGNMENT_BYTES = 2;
defparam lsu_local_bb0_ld_.READ = 1;
defparam lsu_local_bb0_ld_.ATOMIC = 0;
defparam lsu_local_bb0_ld_.WIDTH = 16;
defparam lsu_local_bb0_ld_.MWIDTH = 256;
defparam lsu_local_bb0_ld_.ATOMIC_WIDTH = 3;
defparam lsu_local_bb0_ld_.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb0_ld_.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb0_ld_.MEMORY_SIDE_MEM_LATENCY = 89;
defparam lsu_local_bb0_ld_.USE_WRITE_ACK = 0;
defparam lsu_local_bb0_ld_.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb0_ld_.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb0_ld_.NUMBER_BANKS = 1;
defparam lsu_local_bb0_ld_.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb0_ld_.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb0_ld_.USEINPUTFIFO = 0;
defparam lsu_local_bb0_ld_.USECACHING = 0;
defparam lsu_local_bb0_ld_.USEOUTPUTFIFO = 1;
defparam lsu_local_bb0_ld_.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb0_ld_.ADDRSPACE = 1;
defparam lsu_local_bb0_ld_.STYLE = "STREAMING";

assign local_bb0_ld__inputs_ready = rstag_1to1_bb0_arrayidx_valid_out;
assign local_bb0_ld__output_regs_ready = (&(~(local_bb0_ld__valid_out_NO_SHIFT_REG) | ~(local_bb0_ld__stall_in)));
assign rstag_1to1_bb0_arrayidx_stall_in = (local_bb0_ld__fu_stall_out | ~(local_bb0_ld__inputs_ready));
assign local_bb0_ld__causedstall = (local_bb0_ld__inputs_ready && (local_bb0_ld__fu_stall_out && !(~(local_bb0_ld__output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_ld__NO_SHIFT_REG <= 'x;
		local_bb0_ld__valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_ld__output_regs_ready)
		begin
			local_bb0_ld__NO_SHIFT_REG <= local_bb0_ld__lsu_dataout;
			local_bb0_ld__valid_out_NO_SHIFT_REG <= local_bb0_ld__fu_valid_out;
		end
		else
		begin
			if (~(local_bb0_ld__stall_in))
			begin
				local_bb0_ld__valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a registered operation.
// 
wire local_bb0_ld__u0_inputs_ready;
 reg local_bb0_ld__u0_valid_out_NO_SHIFT_REG;
wire local_bb0_ld__u0_stall_in;
wire local_bb0_ld__u0_output_regs_ready;
wire local_bb0_ld__u0_fu_stall_out;
wire local_bb0_ld__u0_fu_valid_out;
wire [15:0] local_bb0_ld__u0_lsu_dataout;
 reg [15:0] local_bb0_ld__u0_NO_SHIFT_REG;
wire local_bb0_ld__u0_causedstall;

lsu_top lsu_local_bb0_ld__u0 (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((rstag_1to1_bb0_arrayidx3 & 64'hFFFFFFFFFFFFFFFE)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb0_ld__u0_fu_stall_out),
	.i_valid(local_bb0_ld__u0_inputs_ready),
	.i_address((rstag_1to1_bb0_arrayidx3 & 64'hFFFFFFFFFFFFFFFE)),
	.i_writedata(),
	.i_cmpdata(),
	.i_predicate(1'b0),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb0_ld__u0_output_regs_ready)),
	.o_valid(local_bb0_ld__u0_fu_valid_out),
	.o_readdata(local_bb0_ld__u0_lsu_dataout),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb0_ld__u0_active),
	.avm_address(avm_local_bb0_ld__u0_address),
	.avm_read(avm_local_bb0_ld__u0_read),
	.avm_enable(avm_local_bb0_ld__u0_enable),
	.avm_readdata(avm_local_bb0_ld__u0_readdata),
	.avm_write(avm_local_bb0_ld__u0_write),
	.avm_writeack(avm_local_bb0_ld__u0_writeack),
	.avm_burstcount(avm_local_bb0_ld__u0_burstcount),
	.avm_writedata(avm_local_bb0_ld__u0_writedata),
	.avm_byteenable(avm_local_bb0_ld__u0_byteenable),
	.avm_waitrequest(avm_local_bb0_ld__u0_waitrequest),
	.avm_readdatavalid(avm_local_bb0_ld__u0_readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb0_ld__u0.AWIDTH = 30;
defparam lsu_local_bb0_ld__u0.WIDTH_BYTES = 2;
defparam lsu_local_bb0_ld__u0.MWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld__u0.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb0_ld__u0.ALIGNMENT_BYTES = 2;
defparam lsu_local_bb0_ld__u0.READ = 1;
defparam lsu_local_bb0_ld__u0.ATOMIC = 0;
defparam lsu_local_bb0_ld__u0.WIDTH = 16;
defparam lsu_local_bb0_ld__u0.MWIDTH = 256;
defparam lsu_local_bb0_ld__u0.ATOMIC_WIDTH = 3;
defparam lsu_local_bb0_ld__u0.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb0_ld__u0.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb0_ld__u0.MEMORY_SIDE_MEM_LATENCY = 89;
defparam lsu_local_bb0_ld__u0.USE_WRITE_ACK = 0;
defparam lsu_local_bb0_ld__u0.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb0_ld__u0.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb0_ld__u0.NUMBER_BANKS = 1;
defparam lsu_local_bb0_ld__u0.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb0_ld__u0.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb0_ld__u0.USEINPUTFIFO = 0;
defparam lsu_local_bb0_ld__u0.USECACHING = 0;
defparam lsu_local_bb0_ld__u0.USEOUTPUTFIFO = 1;
defparam lsu_local_bb0_ld__u0.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb0_ld__u0.ADDRSPACE = 1;
defparam lsu_local_bb0_ld__u0.STYLE = "STREAMING";

assign local_bb0_ld__u0_inputs_ready = rstag_1to1_bb0_arrayidx3_valid_out;
assign local_bb0_ld__u0_output_regs_ready = (&(~(local_bb0_ld__u0_valid_out_NO_SHIFT_REG) | ~(local_bb0_ld__u0_stall_in)));
assign rstag_1to1_bb0_arrayidx3_stall_in = (local_bb0_ld__u0_fu_stall_out | ~(local_bb0_ld__u0_inputs_ready));
assign local_bb0_ld__u0_causedstall = (local_bb0_ld__u0_inputs_ready && (local_bb0_ld__u0_fu_stall_out && !(~(local_bb0_ld__u0_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_ld__u0_NO_SHIFT_REG <= 'x;
		local_bb0_ld__u0_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_ld__u0_output_regs_ready)
		begin
			local_bb0_ld__u0_NO_SHIFT_REG <= local_bb0_ld__u0_lsu_dataout;
			local_bb0_ld__u0_valid_out_NO_SHIFT_REG <= local_bb0_ld__u0_fu_valid_out;
		end
		else
		begin
			if (~(local_bb0_ld__u0_stall_in))
			begin
				local_bb0_ld__u0_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_10to11_bb0_arrayidx7_0_valid_out_NO_SHIFT_REG;
 logic rnode_10to11_bb0_arrayidx7_0_stall_in_NO_SHIFT_REG;
 logic [63:0] rnode_10to11_bb0_arrayidx7_0_NO_SHIFT_REG;
 logic rnode_10to11_bb0_arrayidx7_0_reg_11_inputs_ready_NO_SHIFT_REG;
 logic [63:0] rnode_10to11_bb0_arrayidx7_0_reg_11_NO_SHIFT_REG;
 logic rnode_10to11_bb0_arrayidx7_0_valid_out_reg_11_NO_SHIFT_REG;
 logic rnode_10to11_bb0_arrayidx7_0_stall_in_reg_11_NO_SHIFT_REG;
 logic rnode_10to11_bb0_arrayidx7_0_stall_out_reg_11_NO_SHIFT_REG;

acl_data_fifo rnode_10to11_bb0_arrayidx7_0_reg_11_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_10to11_bb0_arrayidx7_0_reg_11_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_10to11_bb0_arrayidx7_0_stall_in_reg_11_NO_SHIFT_REG),
	.valid_out(rnode_10to11_bb0_arrayidx7_0_valid_out_reg_11_NO_SHIFT_REG),
	.stall_out(rnode_10to11_bb0_arrayidx7_0_stall_out_reg_11_NO_SHIFT_REG),
	.data_in((rnode_1to10_bb0_arrayidx7_0_NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFE)),
	.data_out(rnode_10to11_bb0_arrayidx7_0_reg_11_NO_SHIFT_REG)
);

defparam rnode_10to11_bb0_arrayidx7_0_reg_11_fifo.DEPTH = 2;
defparam rnode_10to11_bb0_arrayidx7_0_reg_11_fifo.DATA_WIDTH = 64;
defparam rnode_10to11_bb0_arrayidx7_0_reg_11_fifo.ALLOW_FULL_WRITE = 0;
defparam rnode_10to11_bb0_arrayidx7_0_reg_11_fifo.IMPL = "ll_reg";

assign rnode_10to11_bb0_arrayidx7_0_reg_11_inputs_ready_NO_SHIFT_REG = rnode_1to10_bb0_arrayidx7_0_valid_out_NO_SHIFT_REG;
assign rnode_1to10_bb0_arrayidx7_0_stall_in_NO_SHIFT_REG = rnode_10to11_bb0_arrayidx7_0_stall_out_reg_11_NO_SHIFT_REG;
assign rnode_10to11_bb0_arrayidx7_0_NO_SHIFT_REG = rnode_10to11_bb0_arrayidx7_0_reg_11_NO_SHIFT_REG;
assign rnode_10to11_bb0_arrayidx7_0_stall_in_reg_11_NO_SHIFT_REG = rnode_10to11_bb0_arrayidx7_0_stall_in_NO_SHIFT_REG;
assign rnode_10to11_bb0_arrayidx7_0_valid_out_NO_SHIFT_REG = rnode_10to11_bb0_arrayidx7_0_valid_out_reg_11_NO_SHIFT_REG;

// This section implements a staging register.
// 
wire rstag_3to3_bb0_ld__valid_out;
wire rstag_3to3_bb0_ld__stall_in;
wire rstag_3to3_bb0_ld__inputs_ready;
wire rstag_3to3_bb0_ld__stall_local;
 reg rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG;
wire rstag_3to3_bb0_ld__combined_valid;
 reg [15:0] rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG;
wire [15:0] rstag_3to3_bb0_ld_;

assign rstag_3to3_bb0_ld__inputs_ready = local_bb0_ld__valid_out_NO_SHIFT_REG;
assign rstag_3to3_bb0_ld_ = (rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG ? rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG : local_bb0_ld__NO_SHIFT_REG);
assign rstag_3to3_bb0_ld__combined_valid = (rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG | rstag_3to3_bb0_ld__inputs_ready);
assign rstag_3to3_bb0_ld__valid_out = rstag_3to3_bb0_ld__combined_valid;
assign rstag_3to3_bb0_ld__stall_local = rstag_3to3_bb0_ld__stall_in;
assign local_bb0_ld__stall_in = (|rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_3to3_bb0_ld__stall_local)
		begin
			if (~(rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG))
			begin
				rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG <= rstag_3to3_bb0_ld__inputs_ready;
			end
		end
		else
		begin
			rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_3to3_bb0_ld__staging_valid_NO_SHIFT_REG))
		begin
			rstag_3to3_bb0_ld__staging_reg_NO_SHIFT_REG <= local_bb0_ld__NO_SHIFT_REG;
		end
	end
end


// This section implements a staging register.
// 
wire rstag_3to3_bb0_ld__u0_valid_out;
wire rstag_3to3_bb0_ld__u0_stall_in;
wire rstag_3to3_bb0_ld__u0_inputs_ready;
wire rstag_3to3_bb0_ld__u0_stall_local;
 reg rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG;
wire rstag_3to3_bb0_ld__u0_combined_valid;
 reg [15:0] rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG;
wire [15:0] rstag_3to3_bb0_ld__u0;

assign rstag_3to3_bb0_ld__u0_inputs_ready = local_bb0_ld__u0_valid_out_NO_SHIFT_REG;
assign rstag_3to3_bb0_ld__u0 = (rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG ? rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG : local_bb0_ld__u0_NO_SHIFT_REG);
assign rstag_3to3_bb0_ld__u0_combined_valid = (rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG | rstag_3to3_bb0_ld__u0_inputs_ready);
assign rstag_3to3_bb0_ld__u0_valid_out = rstag_3to3_bb0_ld__u0_combined_valid;
assign rstag_3to3_bb0_ld__u0_stall_local = rstag_3to3_bb0_ld__u0_stall_in;
assign local_bb0_ld__u0_stall_in = (|rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG <= 1'b0;
		rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG <= 'x;
	end
	else
	begin
		if (rstag_3to3_bb0_ld__u0_stall_local)
		begin
			if (~(rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG))
			begin
				rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG <= rstag_3to3_bb0_ld__u0_inputs_ready;
			end
		end
		else
		begin
			rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
		if (~(rstag_3to3_bb0_ld__u0_staging_valid_NO_SHIFT_REG))
		begin
			rstag_3to3_bb0_ld__u0_staging_reg_NO_SHIFT_REG <= local_bb0_ld__u0_NO_SHIFT_REG;
		end
	end
end


// This section implements an unregistered operation.
// 
wire local_bb0_c0_eni1_stall_local;
wire [47:0] local_bb0_c0_eni1;

assign local_bb0_c0_eni1[15:0] = 16'bx;
assign local_bb0_c0_eni1[31:16] = rstag_3to3_bb0_ld_;
assign local_bb0_c0_eni1[47:32] = 16'bx;

// This section implements an unregistered operation.
// 
wire local_bb0_c0_eni2_valid_out;
wire local_bb0_c0_eni2_stall_in;
wire local_bb0_c0_eni2_inputs_ready;
wire local_bb0_c0_eni2_stall_local;
wire [47:0] local_bb0_c0_eni2;

assign local_bb0_c0_eni2_inputs_ready = (rstag_3to3_bb0_ld__valid_out & rstag_3to3_bb0_ld__u0_valid_out);
assign local_bb0_c0_eni2[31:0] = local_bb0_c0_eni1[31:0];
assign local_bb0_c0_eni2[47:32] = rstag_3to3_bb0_ld__u0;
assign local_bb0_c0_eni2_valid_out = local_bb0_c0_eni2_inputs_ready;
assign local_bb0_c0_eni2_stall_local = local_bb0_c0_eni2_stall_in;
assign rstag_3to3_bb0_ld__stall_in = (local_bb0_c0_eni2_stall_local | ~(local_bb0_c0_eni2_inputs_ready));
assign rstag_3to3_bb0_ld__u0_stall_in = (local_bb0_c0_eni2_stall_local | ~(local_bb0_c0_eni2_inputs_ready));

// This section implements a registered operation.
// 
wire local_bb0_c0_enter_c0_eni2_inputs_ready;
 reg local_bb0_c0_enter_c0_eni2_valid_out_0_NO_SHIFT_REG;
wire local_bb0_c0_enter_c0_eni2_stall_in_0;
 reg local_bb0_c0_enter_c0_eni2_valid_out_1_NO_SHIFT_REG;
wire local_bb0_c0_enter_c0_eni2_stall_in_1;
 reg local_bb0_c0_enter_c0_eni2_valid_out_2_NO_SHIFT_REG;
wire local_bb0_c0_enter_c0_eni2_stall_in_2;
wire local_bb0_c0_enter_c0_eni2_output_regs_ready;
 reg [47:0] local_bb0_c0_enter_c0_eni2_NO_SHIFT_REG;
wire local_bb0_c0_enter_c0_eni2_input_accepted;
 reg local_bb0_c0_enter_c0_eni2_valid_bit_NO_SHIFT_REG;
wire local_bb0_c0_exit_c0_exi1_entry_stall;
wire local_bb0_c0_exit_c0_exi1_output_regs_ready;
wire local_bb0_c0_exit_c0_exi1_valid_in;
wire local_bb0_c0_exit_c0_exi1_phases;
wire local_bb0_c0_enter_c0_eni2_inc_pipelined_thread;
wire local_bb0_c0_enter_c0_eni2_dec_pipelined_thread;
wire local_bb0_c0_enter_c0_eni2_causedstall;

assign local_bb0_c0_enter_c0_eni2_inputs_ready = local_bb0_c0_eni2_valid_out;
assign local_bb0_c0_enter_c0_eni2_output_regs_ready = 1'b1;
assign local_bb0_c0_enter_c0_eni2_input_accepted = (local_bb0_c0_enter_c0_eni2_inputs_ready && !(local_bb0_c0_exit_c0_exi1_entry_stall));
assign local_bb0_c0_enter_c0_eni2_inc_pipelined_thread = 1'b1;
assign local_bb0_c0_enter_c0_eni2_dec_pipelined_thread = ~(1'b0);
assign local_bb0_c0_eni2_stall_in = ((~(local_bb0_c0_enter_c0_eni2_inputs_ready) | local_bb0_c0_exit_c0_exi1_entry_stall) | ~(1'b1));
assign local_bb0_c0_enter_c0_eni2_causedstall = (1'b1 && ((~(local_bb0_c0_enter_c0_eni2_inputs_ready) | local_bb0_c0_exit_c0_exi1_entry_stall) && !(1'b0)));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_c0_enter_c0_eni2_valid_bit_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		local_bb0_c0_enter_c0_eni2_valid_bit_NO_SHIFT_REG <= local_bb0_c0_enter_c0_eni2_input_accepted;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_c0_enter_c0_eni2_NO_SHIFT_REG <= 'x;
		local_bb0_c0_enter_c0_eni2_valid_out_0_NO_SHIFT_REG <= 1'b0;
		local_bb0_c0_enter_c0_eni2_valid_out_1_NO_SHIFT_REG <= 1'b0;
		local_bb0_c0_enter_c0_eni2_valid_out_2_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_c0_enter_c0_eni2_output_regs_ready)
		begin
			local_bb0_c0_enter_c0_eni2_NO_SHIFT_REG <= local_bb0_c0_eni2;
			local_bb0_c0_enter_c0_eni2_valid_out_0_NO_SHIFT_REG <= 1'b1;
			local_bb0_c0_enter_c0_eni2_valid_out_1_NO_SHIFT_REG <= 1'b1;
			local_bb0_c0_enter_c0_eni2_valid_out_2_NO_SHIFT_REG <= 1'b1;
		end
		else
		begin
			if (~(local_bb0_c0_enter_c0_eni2_stall_in_0))
			begin
				local_bb0_c0_enter_c0_eni2_valid_out_0_NO_SHIFT_REG <= 1'b0;
			end
			if (~(local_bb0_c0_enter_c0_eni2_stall_in_1))
			begin
				local_bb0_c0_enter_c0_eni2_valid_out_1_NO_SHIFT_REG <= 1'b0;
			end
			if (~(local_bb0_c0_enter_c0_eni2_stall_in_2))
			begin
				local_bb0_c0_enter_c0_eni2_valid_out_2_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements an unregistered operation.
// 
wire local_bb0_c0_ene1_stall_local;
wire [15:0] local_bb0_c0_ene1;

assign local_bb0_c0_ene1 = local_bb0_c0_enter_c0_eni2_NO_SHIFT_REG[31:16];

// This section implements an unregistered operation.
// 
wire local_bb0_c0_ene2_stall_local;
wire [15:0] local_bb0_c0_ene2;

assign local_bb0_c0_ene2 = local_bb0_c0_enter_c0_eni2_NO_SHIFT_REG[47:32];

// This section implements an unregistered operation.
// 
wire SFC_1_VALID_4_4_0_stall_local;
wire SFC_1_VALID_4_4_0;

assign SFC_1_VALID_4_4_0 = local_bb0_c0_enter_c0_eni2_valid_bit_NO_SHIFT_REG;

// This section implements an unregistered operation.
// 
wire local_bb0_conv1_stall_local;
wire [31:0] local_bb0_conv1;

assign local_bb0_conv1[31:16] = 16'h0;
assign local_bb0_conv1[15:0] = local_bb0_c0_ene1;

// This section implements an unregistered operation.
// 
wire local_bb0_conv4_stall_local;
wire [31:0] local_bb0_conv4;

assign local_bb0_conv4[31:16] = 16'h0;
assign local_bb0_conv4[15:0] = local_bb0_c0_ene2;

// This section implements an unregistered operation.
// 
wire local_bb0_shl_stall_local;
wire [31:0] local_bb0_shl;

assign local_bb0_shl = ((local_bb0_conv1 & 32'hFFFF) << 32'h10);

// This section implements an unregistered operation.
// 
wire local_bb0_or_stall_local;
wire [31:0] local_bb0_or;

assign local_bb0_or = ((local_bb0_shl & 32'hFFFF0000) | (local_bb0_conv4 & 32'hFFFF));

// This section implements an unregistered operation.
// 
wire local_bb0_efi_struct_stall_local;
wire [31:0] local_bb0_efi_struct;

assign local_bb0_efi_struct[31:0] = local_bb0_or;

// This section implements an unregistered operation.
// 
wire SFC_1_VALID_4_4_0_valid_out_0;
wire SFC_1_VALID_4_4_0_stall_in_0;
wire SFC_1_VALID_4_4_0_valid_out_2;
wire SFC_1_VALID_4_4_0_stall_in_2;
wire local_bb0__acl_external_iowr_i1_si32_p4si32_0_valid_out;
wire local_bb0__acl_external_iowr_i1_si32_p4si32_0_stall_in;
wire local_bb0__acl_external_iowr_i1_si32_p4si32_0_inputs_ready;
wire local_bb0__acl_external_iowr_i1_si32_p4si32_0_stall_local;
wire local_bb0__acl_external_iowr_i1_si32_p4si32_0_fu_stall_out;
wire local_bb0__acl_external_iowr_i1_si32_p4si32_0_fu_valid_out;
wire [31:0] efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_idata;
wire efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_ivalid;
wire efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_iready;
wire [15:0] efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_odata;
wire efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_ovalid;
wire efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_oready;

comparator_cl efi_comparator_kernel_0_comparator_comparator_cl (
	.clock(clock),
	.resetn(resetn),
	.iready(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_iready),
	.ivalid(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_ivalid),
	.oready(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_oready),
	.ovalid(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_ovalid),
	.datain(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_idata[31:0]),
	.dataout(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_odata)
);


st_write st_local_bb0__acl_external_iowr_i1_si32_p4si32_0 (
	.clock(clock),
	.resetn(resetn),
	.o_stall(local_bb0__acl_external_iowr_i1_si32_p4si32_0_fu_stall_out),
	.i_valid(SFC_1_VALID_4_4_0),
	.i_predicate(1'b0),
	.i_data(local_bb0_efi_struct),
	.i_stall(local_bb0__acl_external_iowr_i1_si32_p4si32_0_stall_local),
	.o_ack(),
	.o_valid(local_bb0__acl_external_iowr_i1_si32_p4si32_0_fu_valid_out),
	.o_fifovalid(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_ivalid),
	.o_fifodata(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_idata),
	.i_fifoready(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_oready),
	.i_fifosize(),
	.profile_i_valid(),
	.profile_i_stall(),
	.profile_o_stall(),
	.profile_total_req(),
	.profile_fifo_stall(),
	.profile_total_fifo_size(),
	.profile_total_fifo_size_incr()
);

defparam st_local_bb0__acl_external_iowr_i1_si32_p4si32_0.DATA_WIDTH = 32;
defparam st_local_bb0__acl_external_iowr_i1_si32_p4si32_0.EFI_LATENCY = 0;

assign local_bb0__acl_external_iowr_i1_si32_p4si32_0_inputs_ready = (local_bb0_c0_enter_c0_eni2_valid_out_0_NO_SHIFT_REG & local_bb0_c0_enter_c0_eni2_valid_out_1_NO_SHIFT_REG & local_bb0_c0_enter_c0_eni2_valid_out_2_NO_SHIFT_REG);
assign local_bb0__acl_external_iowr_i1_si32_p4si32_0_stall_local = 1'b0;
assign SFC_1_VALID_4_4_0_valid_out_0 = 1'b1;
assign SFC_1_VALID_4_4_0_valid_out_2 = 1'b1;
assign local_bb0__acl_external_iowr_i1_si32_p4si32_0_valid_out = 1'b1;
assign local_bb0_c0_enter_c0_eni2_stall_in_0 = 1'b0;
assign local_bb0_c0_enter_c0_eni2_stall_in_1 = 1'b0;
assign local_bb0_c0_enter_c0_eni2_stall_in_2 = 1'b0;

// This section implements a registered operation.
// 
wire SFC_1_VALID_4_5_0_inputs_ready;
 reg SFC_1_VALID_4_5_0_valid_out_NO_SHIFT_REG;
wire SFC_1_VALID_4_5_0_stall_in;
wire SFC_1_VALID_4_5_0_output_regs_ready;
 reg SFC_1_VALID_4_5_0_NO_SHIFT_REG /* synthesis  preserve  */;
wire SFC_1_VALID_4_5_0_causedstall;

assign SFC_1_VALID_4_5_0_inputs_ready = 1'b1;
assign SFC_1_VALID_4_5_0_output_regs_ready = 1'b1;
assign SFC_1_VALID_4_4_0_stall_in_0 = 1'b0;
assign SFC_1_VALID_4_5_0_causedstall = (1'b1 && (1'b0 && !(1'b0)));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		SFC_1_VALID_4_5_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (SFC_1_VALID_4_5_0_output_regs_ready)
		begin
			SFC_1_VALID_4_5_0_NO_SHIFT_REG <= SFC_1_VALID_4_4_0;
		end
	end
end


// This section implements a registered operation.
// 
wire local_bb0__acl_external_iord_i16_p4i16_0_inputs_ready;
 reg local_bb0__acl_external_iord_i16_p4i16_0_valid_out_NO_SHIFT_REG;
wire local_bb0__acl_external_iord_i16_p4i16_0_stall_in;
wire local_bb0__acl_external_iord_i16_p4i16_0_output_regs_ready;
wire local_bb0__acl_external_iord_i16_p4i16_0_fu_stall_out;
wire local_bb0__acl_external_iord_i16_p4i16_0_fu_valid_out;
wire [15:0] local_bb0__acl_external_iord_i16_p4i16_0_st_dataout;
 reg [15:0] local_bb0__acl_external_iord_i16_p4i16_0_NO_SHIFT_REG;
wire local_bb0__acl_external_iord_i16_p4i16_0_causedstall;

st_read st_local_bb0__acl_external_iord_i16_p4i16_0 (
	.clock(clock),
	.resetn(resetn),
	.i_init(start),
	.o_stall(local_bb0__acl_external_iord_i16_p4i16_0_fu_stall_out),
	.i_valid((SFC_1_VALID_4_4_0 & ~(1'b0))),
	.i_predicate(1'b0),
	.i_stall(1'b0),
	.o_valid(local_bb0__acl_external_iord_i16_p4i16_0_fu_valid_out),
	.o_data(local_bb0__acl_external_iord_i16_p4i16_0_st_dataout),
	.o_datavalid(),
	.i_fifovalid(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_ovalid),
	.i_fifodata(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_odata),
	.o_fifoready(efi_local_bb0__acl_external_iowr_i1_si32_p4si32_0_iready),
	.i_fifosize(),
	.profile_i_valid(),
	.profile_i_stall(),
	.profile_o_stall(),
	.profile_total_req(),
	.profile_fifo_stall(),
	.profile_total_fifo_size(),
	.profile_total_fifo_size_incr()
);

defparam st_local_bb0__acl_external_iord_i16_p4i16_0.DATA_WIDTH = 16;

assign local_bb0__acl_external_iord_i16_p4i16_0_inputs_ready = 1'b1;
assign local_bb0__acl_external_iord_i16_p4i16_0_output_regs_ready = 1'b1;
assign local_bb0__acl_external_iowr_i1_si32_p4si32_0_stall_in = 1'b0;
assign SFC_1_VALID_4_4_0_stall_in_2 = 1'b0;
assign local_bb0__acl_external_iord_i16_p4i16_0_causedstall = ((SFC_1_VALID_4_4_0 & ~(1'b0)) && (1'b0 && !(1'b0)));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0__acl_external_iord_i16_p4i16_0_NO_SHIFT_REG <= 'x;
		local_bb0__acl_external_iord_i16_p4i16_0_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0__acl_external_iord_i16_p4i16_0_output_regs_ready)
		begin
			local_bb0__acl_external_iord_i16_p4i16_0_NO_SHIFT_REG <= local_bb0__acl_external_iord_i16_p4i16_0_st_dataout;
			local_bb0__acl_external_iord_i16_p4i16_0_valid_out_NO_SHIFT_REG <= 1'b1;
		end
		else
		begin
			if (~(local_bb0__acl_external_iord_i16_p4i16_0_stall_in))
			begin
				local_bb0__acl_external_iord_i16_p4i16_0_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a registered operation.
// 
wire SFC_1_VALID_5_6_0_inputs_ready;
 reg SFC_1_VALID_5_6_0_valid_out_NO_SHIFT_REG;
wire SFC_1_VALID_5_6_0_stall_in;
wire SFC_1_VALID_5_6_0_output_regs_ready;
 reg SFC_1_VALID_5_6_0_NO_SHIFT_REG /* synthesis  preserve  */;
wire SFC_1_VALID_5_6_0_causedstall;

assign SFC_1_VALID_5_6_0_inputs_ready = 1'b1;
assign SFC_1_VALID_5_6_0_output_regs_ready = 1'b1;
assign SFC_1_VALID_4_5_0_stall_in = 1'b0;
assign SFC_1_VALID_5_6_0_causedstall = (1'b1 && (1'b0 && !(1'b0)));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		SFC_1_VALID_5_6_0_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (SFC_1_VALID_5_6_0_output_regs_ready)
		begin
			SFC_1_VALID_5_6_0_NO_SHIFT_REG <= SFC_1_VALID_4_5_0_NO_SHIFT_REG;
		end
	end
end


// Register node:
//  * latency = 1
//  * capacity = 1
 logic rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_valid_out_NO_SHIFT_REG;
 logic rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_stall_in_NO_SHIFT_REG;
 logic [15:0] rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_NO_SHIFT_REG;
 logic rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_inputs_ready_NO_SHIFT_REG;
 logic [15:0] rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_NO_SHIFT_REG;
 logic rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_valid_out_reg_6_NO_SHIFT_REG;
 logic rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_stall_in_reg_6_NO_SHIFT_REG;
 logic rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_stall_out_reg_6_NO_SHIFT_REG;

acl_data_fifo rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_fifo (
	.clock(clock),
	.resetn(resetn),
	.valid_in(rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_inputs_ready_NO_SHIFT_REG),
	.stall_in(rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_stall_in_reg_6_NO_SHIFT_REG),
	.valid_out(rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_valid_out_reg_6_NO_SHIFT_REG),
	.stall_out(rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_stall_out_reg_6_NO_SHIFT_REG),
	.data_in(local_bb0__acl_external_iord_i16_p4i16_0_NO_SHIFT_REG),
	.data_out(rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_NO_SHIFT_REG)
);

defparam rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_fifo.DEPTH = 1;
defparam rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_fifo.DATA_WIDTH = 16;
defparam rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_fifo.ALLOW_FULL_WRITE = 1;
defparam rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_fifo.IMPL = "shift_reg";

assign rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_inputs_ready_NO_SHIFT_REG = 1'b1;
assign local_bb0__acl_external_iord_i16_p4i16_0_stall_in = 1'b0;
assign rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_NO_SHIFT_REG = rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_reg_6_NO_SHIFT_REG;
assign rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_stall_in_reg_6_NO_SHIFT_REG = 1'b0;
assign rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_valid_out_NO_SHIFT_REG = 1'b1;

// This section implements an unregistered operation.
// 
wire local_bb0_c0_exi1_valid_out;
wire local_bb0_c0_exi1_stall_in;
wire local_bb0_c0_exi1_inputs_ready;
wire local_bb0_c0_exi1_stall_local;
wire [31:0] local_bb0_c0_exi1;

assign local_bb0_c0_exi1_inputs_ready = rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_valid_out_NO_SHIFT_REG;
assign local_bb0_c0_exi1[15:0] = 16'bx;
assign local_bb0_c0_exi1[31:16] = rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_NO_SHIFT_REG;
assign local_bb0_c0_exi1_valid_out = 1'b1;
assign rnode_5to6_bb0__acl_external_iord_i16_p4i16_0_0_stall_in_NO_SHIFT_REG = 1'b0;

// This section implements a registered operation.
// 
wire local_bb0_c0_exit_c0_exi1_inputs_ready;
 reg local_bb0_c0_exit_c0_exi1_valid_out_NO_SHIFT_REG;
wire local_bb0_c0_exit_c0_exi1_stall_in;
 reg [31:0] local_bb0_c0_exit_c0_exi1_NO_SHIFT_REG;
wire [31:0] local_bb0_c0_exit_c0_exi1_in;
wire local_bb0_c0_exit_c0_exi1_valid;
wire local_bb0_c0_exit_c0_exi1_causedstall;

acl_stall_free_sink local_bb0_c0_exit_c0_exi1_instance (
	.clock(clock),
	.resetn(resetn),
	.data_in(local_bb0_c0_exi1),
	.data_out(local_bb0_c0_exit_c0_exi1_in),
	.input_accepted(local_bb0_c0_enter_c0_eni2_input_accepted),
	.valid_out(local_bb0_c0_exit_c0_exi1_valid),
	.stall_in(~(local_bb0_c0_exit_c0_exi1_output_regs_ready)),
	.stall_entry(local_bb0_c0_exit_c0_exi1_entry_stall),
	.valid_in(local_bb0_c0_exit_c0_exi1_valid_in),
	.IIphases(local_bb0_c0_exit_c0_exi1_phases),
	.inc_pipelined_thread(local_bb0_c0_enter_c0_eni2_inc_pipelined_thread),
	.dec_pipelined_thread(local_bb0_c0_enter_c0_eni2_dec_pipelined_thread)
);

defparam local_bb0_c0_exit_c0_exi1_instance.DATA_WIDTH = 32;
defparam local_bb0_c0_exit_c0_exi1_instance.PIPELINE_DEPTH = 8;
defparam local_bb0_c0_exit_c0_exi1_instance.SHARINGII = 1;
defparam local_bb0_c0_exit_c0_exi1_instance.SCHEDULEII = 1;
defparam local_bb0_c0_exit_c0_exi1_instance.ALWAYS_THROTTLE = 0;

assign local_bb0_c0_exit_c0_exi1_inputs_ready = 1'b1;
assign local_bb0_c0_exit_c0_exi1_output_regs_ready = (&(~(local_bb0_c0_exit_c0_exi1_valid_out_NO_SHIFT_REG) | ~(local_bb0_c0_exit_c0_exi1_stall_in)));
assign local_bb0_c0_exit_c0_exi1_valid_in = SFC_1_VALID_5_6_0_NO_SHIFT_REG;
assign local_bb0_c0_exi1_stall_in = 1'b0;
assign SFC_1_VALID_5_6_0_stall_in = 1'b0;
assign local_bb0_c0_exit_c0_exi1_causedstall = (1'b1 && (1'b0 && !(~(local_bb0_c0_exit_c0_exi1_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_c0_exit_c0_exi1_NO_SHIFT_REG <= 'x;
		local_bb0_c0_exit_c0_exi1_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_c0_exit_c0_exi1_output_regs_ready)
		begin
			local_bb0_c0_exit_c0_exi1_NO_SHIFT_REG <= local_bb0_c0_exit_c0_exi1_in;
			local_bb0_c0_exit_c0_exi1_valid_out_NO_SHIFT_REG <= local_bb0_c0_exit_c0_exi1_valid;
		end
		else
		begin
			if (~(local_bb0_c0_exit_c0_exi1_stall_in))
			begin
				local_bb0_c0_exit_c0_exi1_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements an unregistered operation.
// 
wire local_bb0_c0_exe1_valid_out;
wire local_bb0_c0_exe1_stall_in;
wire local_bb0_c0_exe1_inputs_ready;
wire local_bb0_c0_exe1_stall_local;
wire [15:0] local_bb0_c0_exe1;

assign local_bb0_c0_exe1_inputs_ready = local_bb0_c0_exit_c0_exi1_valid_out_NO_SHIFT_REG;
assign local_bb0_c0_exe1 = local_bb0_c0_exit_c0_exi1_NO_SHIFT_REG[31:16];
assign local_bb0_c0_exe1_valid_out = local_bb0_c0_exe1_inputs_ready;
assign local_bb0_c0_exe1_stall_local = local_bb0_c0_exe1_stall_in;
assign local_bb0_c0_exit_c0_exi1_stall_in = (|local_bb0_c0_exe1_stall_local);

// This section implements a registered operation.
// 
wire local_bb0_st_c0_exe1_inputs_ready;
 reg local_bb0_st_c0_exe1_valid_out_NO_SHIFT_REG;
wire local_bb0_st_c0_exe1_stall_in;
wire local_bb0_st_c0_exe1_output_regs_ready;
wire local_bb0_st_c0_exe1_fu_stall_out;
wire local_bb0_st_c0_exe1_fu_valid_out;
wire local_bb0_st_c0_exe1_causedstall;

lsu_top lsu_local_bb0_st_c0_exe1 (
	.clock(clock),
	.clock2x(clock2x),
	.resetn(resetn),
	.flush(start),
	.stream_base_addr((rnode_10to11_bb0_arrayidx7_0_NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFE)),
	.stream_size(input_global_size_0),
	.stream_reset(valid_in),
	.o_stall(local_bb0_st_c0_exe1_fu_stall_out),
	.i_valid(local_bb0_st_c0_exe1_inputs_ready),
	.i_address((rnode_10to11_bb0_arrayidx7_0_NO_SHIFT_REG & 64'hFFFFFFFFFFFFFFFE)),
	.i_writedata(local_bb0_c0_exe1),
	.i_cmpdata(),
	.i_predicate(1'b0),
	.i_bitwiseor(64'h0),
	.i_byteenable(),
	.i_stall(~(local_bb0_st_c0_exe1_output_regs_ready)),
	.o_valid(local_bb0_st_c0_exe1_fu_valid_out),
	.o_readdata(),
	.o_input_fifo_depth(),
	.o_writeack(),
	.i_atomic_op(3'h0),
	.o_active(local_bb0_st_c0_exe1_active),
	.avm_address(avm_local_bb0_st_c0_exe1_address),
	.avm_read(avm_local_bb0_st_c0_exe1_read),
	.avm_enable(avm_local_bb0_st_c0_exe1_enable),
	.avm_readdata(avm_local_bb0_st_c0_exe1_readdata),
	.avm_write(avm_local_bb0_st_c0_exe1_write),
	.avm_writeack(avm_local_bb0_st_c0_exe1_writeack),
	.avm_burstcount(avm_local_bb0_st_c0_exe1_burstcount),
	.avm_writedata(avm_local_bb0_st_c0_exe1_writedata),
	.avm_byteenable(avm_local_bb0_st_c0_exe1_byteenable),
	.avm_waitrequest(avm_local_bb0_st_c0_exe1_waitrequest),
	.avm_readdatavalid(avm_local_bb0_st_c0_exe1_readdatavalid),
	.profile_bw(),
	.profile_bw_incr(),
	.profile_total_ivalid(),
	.profile_total_req(),
	.profile_i_stall_count(),
	.profile_o_stall_count(),
	.profile_avm_readwrite_count(),
	.profile_avm_burstcount_total(),
	.profile_avm_burstcount_total_incr(),
	.profile_req_cache_hit_count(),
	.profile_extra_unaligned_reqs(),
	.profile_avm_stall()
);

defparam lsu_local_bb0_st_c0_exe1.AWIDTH = 30;
defparam lsu_local_bb0_st_c0_exe1.WIDTH_BYTES = 2;
defparam lsu_local_bb0_st_c0_exe1.MWIDTH_BYTES = 32;
defparam lsu_local_bb0_st_c0_exe1.WRITEDATAWIDTH_BYTES = 32;
defparam lsu_local_bb0_st_c0_exe1.ALIGNMENT_BYTES = 2;
defparam lsu_local_bb0_st_c0_exe1.READ = 0;
defparam lsu_local_bb0_st_c0_exe1.ATOMIC = 0;
defparam lsu_local_bb0_st_c0_exe1.WIDTH = 16;
defparam lsu_local_bb0_st_c0_exe1.MWIDTH = 256;
defparam lsu_local_bb0_st_c0_exe1.ATOMIC_WIDTH = 3;
defparam lsu_local_bb0_st_c0_exe1.BURSTCOUNT_WIDTH = 5;
defparam lsu_local_bb0_st_c0_exe1.KERNEL_SIDE_MEM_LATENCY = 2;
defparam lsu_local_bb0_st_c0_exe1.MEMORY_SIDE_MEM_LATENCY = 32;
defparam lsu_local_bb0_st_c0_exe1.USE_WRITE_ACK = 0;
defparam lsu_local_bb0_st_c0_exe1.ENABLE_BANKED_MEMORY = 0;
defparam lsu_local_bb0_st_c0_exe1.ABITS_PER_LMEM_BANK = 0;
defparam lsu_local_bb0_st_c0_exe1.NUMBER_BANKS = 1;
defparam lsu_local_bb0_st_c0_exe1.LMEM_ADDR_PERMUTATION_STYLE = 0;
defparam lsu_local_bb0_st_c0_exe1.INTENDED_DEVICE_FAMILY = "Cyclone V";
defparam lsu_local_bb0_st_c0_exe1.USEINPUTFIFO = 0;
defparam lsu_local_bb0_st_c0_exe1.USECACHING = 0;
defparam lsu_local_bb0_st_c0_exe1.USEOUTPUTFIFO = 1;
defparam lsu_local_bb0_st_c0_exe1.FORCE_NOP_SUPPORT = 0;
defparam lsu_local_bb0_st_c0_exe1.ADDRSPACE = 1;
defparam lsu_local_bb0_st_c0_exe1.STYLE = "STREAMING";
defparam lsu_local_bb0_st_c0_exe1.USE_BYTE_EN = 0;

assign local_bb0_st_c0_exe1_inputs_ready = (local_bb0_c0_exe1_valid_out & rnode_10to11_bb0_arrayidx7_0_valid_out_NO_SHIFT_REG);
assign local_bb0_st_c0_exe1_output_regs_ready = (&(~(local_bb0_st_c0_exe1_valid_out_NO_SHIFT_REG) | ~(local_bb0_st_c0_exe1_stall_in)));
assign local_bb0_c0_exe1_stall_in = (local_bb0_st_c0_exe1_fu_stall_out | ~(local_bb0_st_c0_exe1_inputs_ready));
assign rnode_10to11_bb0_arrayidx7_0_stall_in_NO_SHIFT_REG = (local_bb0_st_c0_exe1_fu_stall_out | ~(local_bb0_st_c0_exe1_inputs_ready));
assign local_bb0_st_c0_exe1_causedstall = (local_bb0_st_c0_exe1_inputs_ready && (local_bb0_st_c0_exe1_fu_stall_out && !(~(local_bb0_st_c0_exe1_output_regs_ready))));

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		local_bb0_st_c0_exe1_valid_out_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (local_bb0_st_c0_exe1_output_regs_ready)
		begin
			local_bb0_st_c0_exe1_valid_out_NO_SHIFT_REG <= local_bb0_st_c0_exe1_fu_valid_out;
		end
		else
		begin
			if (~(local_bb0_st_c0_exe1_stall_in))
			begin
				local_bb0_st_c0_exe1_valid_out_NO_SHIFT_REG <= 1'b0;
			end
		end
	end
end


// This section implements a staging register.
// 
wire rstag_13to13_bb0_st_c0_exe1_valid_out;
wire rstag_13to13_bb0_st_c0_exe1_stall_in;
wire rstag_13to13_bb0_st_c0_exe1_inputs_ready;
wire rstag_13to13_bb0_st_c0_exe1_stall_local;
 reg rstag_13to13_bb0_st_c0_exe1_staging_valid_NO_SHIFT_REG;
wire rstag_13to13_bb0_st_c0_exe1_combined_valid;

assign rstag_13to13_bb0_st_c0_exe1_inputs_ready = local_bb0_st_c0_exe1_valid_out_NO_SHIFT_REG;
assign rstag_13to13_bb0_st_c0_exe1_combined_valid = (rstag_13to13_bb0_st_c0_exe1_staging_valid_NO_SHIFT_REG | rstag_13to13_bb0_st_c0_exe1_inputs_ready);
assign rstag_13to13_bb0_st_c0_exe1_valid_out = rstag_13to13_bb0_st_c0_exe1_combined_valid;
assign rstag_13to13_bb0_st_c0_exe1_stall_local = rstag_13to13_bb0_st_c0_exe1_stall_in;
assign local_bb0_st_c0_exe1_stall_in = (|rstag_13to13_bb0_st_c0_exe1_staging_valid_NO_SHIFT_REG);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		rstag_13to13_bb0_st_c0_exe1_staging_valid_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		if (rstag_13to13_bb0_st_c0_exe1_stall_local)
		begin
			if (~(rstag_13to13_bb0_st_c0_exe1_staging_valid_NO_SHIFT_REG))
			begin
				rstag_13to13_bb0_st_c0_exe1_staging_valid_NO_SHIFT_REG <= rstag_13to13_bb0_st_c0_exe1_inputs_ready;
			end
		end
		else
		begin
			rstag_13to13_bb0_st_c0_exe1_staging_valid_NO_SHIFT_REG <= 1'b0;
		end
	end
end


// This section describes the behaviour of the BRANCH node.
wire branch_var__inputs_ready;
wire branch_var__output_regs_ready;

assign branch_var__inputs_ready = rstag_13to13_bb0_st_c0_exe1_valid_out;
assign branch_var__output_regs_ready = ~(stall_in);
assign rstag_13to13_bb0_st_c0_exe1_stall_in = (~(branch_var__output_regs_ready) | ~(branch_var__inputs_ready));
assign valid_out = branch_var__inputs_ready;

endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module comparator_kernel_function
	(
		input 		clock,
		input 		resetn,
		input [31:0] 		input_global_id_0,
		output 		stall_out,
		input 		valid_in,
		output 		valid_out,
		input 		stall_in,
		input [31:0] 		workgroup_size,
		output 		avm_local_bb0_ld__enable,
		input [255:0] 		avm_local_bb0_ld__readdata,
		input 		avm_local_bb0_ld__readdatavalid,
		input 		avm_local_bb0_ld__waitrequest,
		output [29:0] 		avm_local_bb0_ld__address,
		output 		avm_local_bb0_ld__read,
		output 		avm_local_bb0_ld__write,
		input 		avm_local_bb0_ld__writeack,
		output [255:0] 		avm_local_bb0_ld__writedata,
		output [31:0] 		avm_local_bb0_ld__byteenable,
		output [4:0] 		avm_local_bb0_ld__burstcount,
		output 		avm_local_bb0_ld__u0_enable,
		input [255:0] 		avm_local_bb0_ld__u0_readdata,
		input 		avm_local_bb0_ld__u0_readdatavalid,
		input 		avm_local_bb0_ld__u0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__u0_address,
		output 		avm_local_bb0_ld__u0_read,
		output 		avm_local_bb0_ld__u0_write,
		input 		avm_local_bb0_ld__u0_writeack,
		output [255:0] 		avm_local_bb0_ld__u0_writedata,
		output [31:0] 		avm_local_bb0_ld__u0_byteenable,
		output [4:0] 		avm_local_bb0_ld__u0_burstcount,
		output 		avm_local_bb0_st_c0_exe1_enable,
		input [255:0] 		avm_local_bb0_st_c0_exe1_readdata,
		input 		avm_local_bb0_st_c0_exe1_readdatavalid,
		input 		avm_local_bb0_st_c0_exe1_waitrequest,
		output [29:0] 		avm_local_bb0_st_c0_exe1_address,
		output 		avm_local_bb0_st_c0_exe1_read,
		output 		avm_local_bb0_st_c0_exe1_write,
		input 		avm_local_bb0_st_c0_exe1_writeack,
		output [255:0] 		avm_local_bb0_st_c0_exe1_writedata,
		output [31:0] 		avm_local_bb0_st_c0_exe1_byteenable,
		output [4:0] 		avm_local_bb0_st_c0_exe1_burstcount,
		input 		clock2x,
		input 		start,
		input [63:0] 		input_A,
		input [63:0] 		input_B,
		input [63:0] 		input_equals,
		input [31:0] 		input_global_size_0,
		output reg 		has_a_write_pending,
		output reg 		has_a_lsu_active
	);


wire [31:0] cur_cycle;
wire bb_0_stall_out;
wire bb_0_valid_out;
wire bb_0_local_bb0_ld__active;
wire bb_0_local_bb0_ld__u0_active;
wire bb_0_local_bb0_st_c0_exe1_active;
wire writes_pending;
wire [2:0] lsus_active;

comparator_kernel_basic_block_0 comparator_kernel_basic_block_0 (
	.clock(clock),
	.resetn(resetn),
	.input_A(input_A),
	.input_B(input_B),
	.input_equals(input_equals),
	.input_global_size_0(input_global_size_0),
	.valid_in(valid_in),
	.stall_out(bb_0_stall_out),
	.input_global_id_0(input_global_id_0),
	.valid_out(bb_0_valid_out),
	.stall_in(stall_in),
	.workgroup_size(workgroup_size),
	.start(start),
	.avm_local_bb0_ld__enable(avm_local_bb0_ld__enable),
	.avm_local_bb0_ld__readdata(avm_local_bb0_ld__readdata),
	.avm_local_bb0_ld__readdatavalid(avm_local_bb0_ld__readdatavalid),
	.avm_local_bb0_ld__waitrequest(avm_local_bb0_ld__waitrequest),
	.avm_local_bb0_ld__address(avm_local_bb0_ld__address),
	.avm_local_bb0_ld__read(avm_local_bb0_ld__read),
	.avm_local_bb0_ld__write(avm_local_bb0_ld__write),
	.avm_local_bb0_ld__writeack(avm_local_bb0_ld__writeack),
	.avm_local_bb0_ld__writedata(avm_local_bb0_ld__writedata),
	.avm_local_bb0_ld__byteenable(avm_local_bb0_ld__byteenable),
	.avm_local_bb0_ld__burstcount(avm_local_bb0_ld__burstcount),
	.local_bb0_ld__active(bb_0_local_bb0_ld__active),
	.clock2x(clock2x),
	.avm_local_bb0_ld__u0_enable(avm_local_bb0_ld__u0_enable),
	.avm_local_bb0_ld__u0_readdata(avm_local_bb0_ld__u0_readdata),
	.avm_local_bb0_ld__u0_readdatavalid(avm_local_bb0_ld__u0_readdatavalid),
	.avm_local_bb0_ld__u0_waitrequest(avm_local_bb0_ld__u0_waitrequest),
	.avm_local_bb0_ld__u0_address(avm_local_bb0_ld__u0_address),
	.avm_local_bb0_ld__u0_read(avm_local_bb0_ld__u0_read),
	.avm_local_bb0_ld__u0_write(avm_local_bb0_ld__u0_write),
	.avm_local_bb0_ld__u0_writeack(avm_local_bb0_ld__u0_writeack),
	.avm_local_bb0_ld__u0_writedata(avm_local_bb0_ld__u0_writedata),
	.avm_local_bb0_ld__u0_byteenable(avm_local_bb0_ld__u0_byteenable),
	.avm_local_bb0_ld__u0_burstcount(avm_local_bb0_ld__u0_burstcount),
	.local_bb0_ld__u0_active(bb_0_local_bb0_ld__u0_active),
	.avm_local_bb0_st_c0_exe1_enable(avm_local_bb0_st_c0_exe1_enable),
	.avm_local_bb0_st_c0_exe1_readdata(avm_local_bb0_st_c0_exe1_readdata),
	.avm_local_bb0_st_c0_exe1_readdatavalid(avm_local_bb0_st_c0_exe1_readdatavalid),
	.avm_local_bb0_st_c0_exe1_waitrequest(avm_local_bb0_st_c0_exe1_waitrequest),
	.avm_local_bb0_st_c0_exe1_address(avm_local_bb0_st_c0_exe1_address),
	.avm_local_bb0_st_c0_exe1_read(avm_local_bb0_st_c0_exe1_read),
	.avm_local_bb0_st_c0_exe1_write(avm_local_bb0_st_c0_exe1_write),
	.avm_local_bb0_st_c0_exe1_writeack(avm_local_bb0_st_c0_exe1_writeack),
	.avm_local_bb0_st_c0_exe1_writedata(avm_local_bb0_st_c0_exe1_writedata),
	.avm_local_bb0_st_c0_exe1_byteenable(avm_local_bb0_st_c0_exe1_byteenable),
	.avm_local_bb0_st_c0_exe1_burstcount(avm_local_bb0_st_c0_exe1_burstcount),
	.local_bb0_st_c0_exe1_active(bb_0_local_bb0_st_c0_exe1_active)
);


comparator_kernel_sys_cycle_time system_cycle_time_module (
	.clock(clock),
	.resetn(resetn),
	.cur_cycle(cur_cycle)
);


assign valid_out = bb_0_valid_out;
assign stall_out = bb_0_stall_out;
assign writes_pending = bb_0_local_bb0_st_c0_exe1_active;
assign lsus_active[0] = bb_0_local_bb0_ld__active;
assign lsus_active[1] = bb_0_local_bb0_ld__u0_active;
assign lsus_active[2] = bb_0_local_bb0_st_c0_exe1_active;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		has_a_write_pending <= 1'b0;
		has_a_lsu_active <= 1'b0;
	end
	else
	begin
		has_a_write_pending <= (|writes_pending);
		has_a_lsu_active <= (|lsus_active);
	end
end

endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module comparator_kernel_function_wrapper
	(
		input 		clock,
		input 		resetn,
		input 		clock2x,
		input 		local_router_hang,
		input 		avs_cra_enable,
		input 		avs_cra_read,
		input 		avs_cra_write,
		input [3:0] 		avs_cra_address,
		input [63:0] 		avs_cra_writedata,
		input [7:0] 		avs_cra_byteenable,
		output reg [63:0] 		avs_cra_readdata,
		output reg 		avs_cra_readdatavalid,
		output 		cra_irq,
		output 		avm_local_bb0_ld__inst0_enable,
		input [255:0] 		avm_local_bb0_ld__inst0_readdata,
		input 		avm_local_bb0_ld__inst0_readdatavalid,
		input 		avm_local_bb0_ld__inst0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__inst0_address,
		output 		avm_local_bb0_ld__inst0_read,
		output 		avm_local_bb0_ld__inst0_write,
		input 		avm_local_bb0_ld__inst0_writeack,
		output [255:0] 		avm_local_bb0_ld__inst0_writedata,
		output [31:0] 		avm_local_bb0_ld__inst0_byteenable,
		output [4:0] 		avm_local_bb0_ld__inst0_burstcount,
		output 		avm_local_bb0_ld__u0_inst0_enable,
		input [255:0] 		avm_local_bb0_ld__u0_inst0_readdata,
		input 		avm_local_bb0_ld__u0_inst0_readdatavalid,
		input 		avm_local_bb0_ld__u0_inst0_waitrequest,
		output [29:0] 		avm_local_bb0_ld__u0_inst0_address,
		output 		avm_local_bb0_ld__u0_inst0_read,
		output 		avm_local_bb0_ld__u0_inst0_write,
		input 		avm_local_bb0_ld__u0_inst0_writeack,
		output [255:0] 		avm_local_bb0_ld__u0_inst0_writedata,
		output [31:0] 		avm_local_bb0_ld__u0_inst0_byteenable,
		output [4:0] 		avm_local_bb0_ld__u0_inst0_burstcount,
		output 		avm_local_bb0_st_c0_exe1_inst0_enable,
		input [255:0] 		avm_local_bb0_st_c0_exe1_inst0_readdata,
		input 		avm_local_bb0_st_c0_exe1_inst0_readdatavalid,
		input 		avm_local_bb0_st_c0_exe1_inst0_waitrequest,
		output [29:0] 		avm_local_bb0_st_c0_exe1_inst0_address,
		output 		avm_local_bb0_st_c0_exe1_inst0_read,
		output 		avm_local_bb0_st_c0_exe1_inst0_write,
		input 		avm_local_bb0_st_c0_exe1_inst0_writeack,
		output [255:0] 		avm_local_bb0_st_c0_exe1_inst0_writedata,
		output [31:0] 		avm_local_bb0_st_c0_exe1_inst0_byteenable,
		output [4:0] 		avm_local_bb0_st_c0_exe1_inst0_burstcount
	);

// Responsible for interfacing a kernel with the outside world. It comprises a
// slave interface to specify the kernel arguments and retain kernel status. 

// This section of the wrapper implements the slave interface.
// twoXclock_consumer uses clock2x, even if nobody inside the kernel does. Keeps interface to acl_iface consistent for all kernels.
 reg start_NO_SHIFT_REG;
 reg started_NO_SHIFT_REG;
wire finish;
 reg [31:0] status_NO_SHIFT_REG;
wire has_a_write_pending;
wire has_a_lsu_active;
 reg [191:0] kernel_arguments_NO_SHIFT_REG;
 reg twoXclock_consumer_NO_SHIFT_REG /* synthesis  preserve  noprune  */;
 reg [31:0] workgroup_size_NO_SHIFT_REG;
 reg [31:0] global_size_NO_SHIFT_REG[2:0];
 reg [31:0] num_groups_NO_SHIFT_REG[2:0];
 reg [31:0] local_size_NO_SHIFT_REG[2:0];
 reg [31:0] work_dim_NO_SHIFT_REG;
 reg [31:0] global_offset_NO_SHIFT_REG[2:0];
 reg [63:0] profile_data_NO_SHIFT_REG;
 reg [31:0] profile_ctrl_NO_SHIFT_REG;
 reg [63:0] profile_start_cycle_NO_SHIFT_REG;
 reg [63:0] profile_stop_cycle_NO_SHIFT_REG;
wire dispatched_all_groups;
wire [31:0] group_id_tmp[2:0];
wire [31:0] global_id_base_out[2:0];
wire start_out;
wire [31:0] local_id[0:0][2:0];
wire [31:0] global_id[0:0][2:0];
wire [31:0] group_id[0:0][2:0];
wire iter_valid_in;
wire iter_stall_out;
wire stall_in;
wire stall_out;
wire valid_in;
wire valid_out;

always @(posedge clock2x or negedge resetn)
begin
	if (~(resetn))
	begin
		twoXclock_consumer_NO_SHIFT_REG <= 1'b0;
	end
	else
	begin
		twoXclock_consumer_NO_SHIFT_REG <= 1'b1;
	end
end



// Work group dispatcher is responsible for issuing work-groups to id iterator(s)
acl_work_group_dispatcher group_dispatcher (
	.clock(clock),
	.resetn(resetn),
	.start(start_NO_SHIFT_REG),
	.num_groups(num_groups_NO_SHIFT_REG),
	.local_size(local_size_NO_SHIFT_REG),
	.stall_in(iter_stall_out),
	.valid_out(iter_valid_in),
	.group_id_out(group_id_tmp),
	.global_id_base_out(global_id_base_out),
	.start_out(start_out),
	.dispatched_all_groups(dispatched_all_groups)
);

defparam group_dispatcher.NUM_COPIES = 1;
defparam group_dispatcher.RUN_FOREVER = 0;


// This section of the wrapper implements an Avalon Slave Interface used to configure a kernel invocation.
// The few words words contain the status and the workgroup size registers.
// The remaining addressable space is reserved for kernel arguments.
 reg [63:0] cra_readdata_st1_NO_SHIFT_REG;
 reg [3:0] cra_addr_st1_NO_SHIFT_REG;
 reg cra_read_st1_NO_SHIFT_REG;
wire [63:0] bitenable;

assign bitenable[7:0] = (avs_cra_byteenable[0] ? 8'hFF : 8'h0);
assign bitenable[15:8] = (avs_cra_byteenable[1] ? 8'hFF : 8'h0);
assign bitenable[23:16] = (avs_cra_byteenable[2] ? 8'hFF : 8'h0);
assign bitenable[31:24] = (avs_cra_byteenable[3] ? 8'hFF : 8'h0);
assign bitenable[39:32] = (avs_cra_byteenable[4] ? 8'hFF : 8'h0);
assign bitenable[47:40] = (avs_cra_byteenable[5] ? 8'hFF : 8'h0);
assign bitenable[55:48] = (avs_cra_byteenable[6] ? 8'hFF : 8'h0);
assign bitenable[63:56] = (avs_cra_byteenable[7] ? 8'hFF : 8'h0);
assign cra_irq = (status_NO_SHIFT_REG[1] | status_NO_SHIFT_REG[3]);

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		start_NO_SHIFT_REG <= 1'b0;
		started_NO_SHIFT_REG <= 1'b0;
		kernel_arguments_NO_SHIFT_REG <= 192'h0;
		status_NO_SHIFT_REG <= 32'h30000;
		profile_ctrl_NO_SHIFT_REG <= 32'h4;
		profile_start_cycle_NO_SHIFT_REG <= 64'h0;
		profile_stop_cycle_NO_SHIFT_REG <= 64'hFFFFFFFFFFFFFFFF;
		work_dim_NO_SHIFT_REG <= 32'h0;
		workgroup_size_NO_SHIFT_REG <= 32'h0;
		global_size_NO_SHIFT_REG[0] <= 32'h0;
		global_size_NO_SHIFT_REG[1] <= 32'h0;
		global_size_NO_SHIFT_REG[2] <= 32'h0;
		num_groups_NO_SHIFT_REG[0] <= 32'h0;
		num_groups_NO_SHIFT_REG[1] <= 32'h0;
		num_groups_NO_SHIFT_REG[2] <= 32'h0;
		local_size_NO_SHIFT_REG[0] <= 32'h0;
		local_size_NO_SHIFT_REG[1] <= 32'h0;
		local_size_NO_SHIFT_REG[2] <= 32'h0;
		global_offset_NO_SHIFT_REG[0] <= 32'h0;
		global_offset_NO_SHIFT_REG[1] <= 32'h0;
		global_offset_NO_SHIFT_REG[2] <= 32'h0;
	end
	else
	begin
		if (avs_cra_write)
		begin
			case (avs_cra_address)
				4'h0:
				begin
					status_NO_SHIFT_REG[31:16] <= 16'h3;
					status_NO_SHIFT_REG[15:0] <= ((status_NO_SHIFT_REG[15:0] & ~(bitenable[15:0])) | (avs_cra_writedata[15:0] & bitenable[15:0]));
				end

				4'h1:
				begin
					profile_ctrl_NO_SHIFT_REG <= ((profile_ctrl_NO_SHIFT_REG & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h3:
				begin
					profile_start_cycle_NO_SHIFT_REG[31:0] <= ((profile_start_cycle_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					profile_start_cycle_NO_SHIFT_REG[63:32] <= ((profile_start_cycle_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h4:
				begin
					profile_stop_cycle_NO_SHIFT_REG[31:0] <= ((profile_stop_cycle_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					profile_stop_cycle_NO_SHIFT_REG[63:32] <= ((profile_stop_cycle_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h5:
				begin
					work_dim_NO_SHIFT_REG <= ((work_dim_NO_SHIFT_REG & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					workgroup_size_NO_SHIFT_REG <= ((workgroup_size_NO_SHIFT_REG & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h6:
				begin
					global_size_NO_SHIFT_REG[0] <= ((global_size_NO_SHIFT_REG[0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_size_NO_SHIFT_REG[1] <= ((global_size_NO_SHIFT_REG[1] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h7:
				begin
					global_size_NO_SHIFT_REG[2] <= ((global_size_NO_SHIFT_REG[2] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					num_groups_NO_SHIFT_REG[0] <= ((num_groups_NO_SHIFT_REG[0] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h8:
				begin
					num_groups_NO_SHIFT_REG[1] <= ((num_groups_NO_SHIFT_REG[1] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					num_groups_NO_SHIFT_REG[2] <= ((num_groups_NO_SHIFT_REG[2] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'h9:
				begin
					local_size_NO_SHIFT_REG[0] <= ((local_size_NO_SHIFT_REG[0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					local_size_NO_SHIFT_REG[1] <= ((local_size_NO_SHIFT_REG[1] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hA:
				begin
					local_size_NO_SHIFT_REG[2] <= ((local_size_NO_SHIFT_REG[2] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_offset_NO_SHIFT_REG[0] <= ((global_offset_NO_SHIFT_REG[0] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hB:
				begin
					global_offset_NO_SHIFT_REG[1] <= ((global_offset_NO_SHIFT_REG[1] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					global_offset_NO_SHIFT_REG[2] <= ((global_offset_NO_SHIFT_REG[2] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hC:
				begin
					kernel_arguments_NO_SHIFT_REG[31:0] <= ((kernel_arguments_NO_SHIFT_REG[31:0] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[63:32] <= ((kernel_arguments_NO_SHIFT_REG[63:32] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hD:
				begin
					kernel_arguments_NO_SHIFT_REG[95:64] <= ((kernel_arguments_NO_SHIFT_REG[95:64] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[127:96] <= ((kernel_arguments_NO_SHIFT_REG[127:96] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				4'hE:
				begin
					kernel_arguments_NO_SHIFT_REG[159:128] <= ((kernel_arguments_NO_SHIFT_REG[159:128] & ~(bitenable[31:0])) | (avs_cra_writedata[31:0] & bitenable[31:0]));
					kernel_arguments_NO_SHIFT_REG[191:160] <= ((kernel_arguments_NO_SHIFT_REG[191:160] & ~(bitenable[63:32])) | (avs_cra_writedata[63:32] & bitenable[63:32]));
				end

				default:
				begin
				end

			endcase
		end
		else
		begin
			if (status_NO_SHIFT_REG[0])
			begin
				start_NO_SHIFT_REG <= 1'b1;
			end
			if (start_NO_SHIFT_REG)
			begin
				status_NO_SHIFT_REG[0] <= 1'b0;
				started_NO_SHIFT_REG <= 1'b1;
			end
			if (started_NO_SHIFT_REG)
			begin
				start_NO_SHIFT_REG <= 1'b0;
			end
			if (finish)
			begin
				status_NO_SHIFT_REG[1] <= 1'b1;
				started_NO_SHIFT_REG <= 1'b0;
			end
		end
		status_NO_SHIFT_REG[11] <= 1'b0;
		status_NO_SHIFT_REG[12] <= (|has_a_lsu_active);
		status_NO_SHIFT_REG[13] <= (|has_a_write_pending);
		status_NO_SHIFT_REG[14] <= (|valid_in);
		status_NO_SHIFT_REG[15] <= started_NO_SHIFT_REG;
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		cra_read_st1_NO_SHIFT_REG <= 1'b0;
		cra_addr_st1_NO_SHIFT_REG <= 4'h0;
		cra_readdata_st1_NO_SHIFT_REG <= 64'h0;
	end
	else
	begin
		cra_read_st1_NO_SHIFT_REG <= avs_cra_read;
		cra_addr_st1_NO_SHIFT_REG <= avs_cra_address;
		case (avs_cra_address)
			4'h0:
			begin
				cra_readdata_st1_NO_SHIFT_REG[31:0] <= status_NO_SHIFT_REG;
				cra_readdata_st1_NO_SHIFT_REG[63:32] <= 32'h0;
			end

			4'h1:
			begin
				cra_readdata_st1_NO_SHIFT_REG[31:0] <= 'x;
				cra_readdata_st1_NO_SHIFT_REG[63:32] <= 32'h0;
			end

			4'h2:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			4'h3:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			4'h4:
			begin
				cra_readdata_st1_NO_SHIFT_REG[63:0] <= 64'h0;
			end

			default:
			begin
				cra_readdata_st1_NO_SHIFT_REG <= status_NO_SHIFT_REG;
			end

		endcase
	end
end

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		avs_cra_readdatavalid <= 1'b0;
		avs_cra_readdata <= 64'h0;
	end
	else
	begin
		avs_cra_readdatavalid <= cra_read_st1_NO_SHIFT_REG;
		case (cra_addr_st1_NO_SHIFT_REG)
			4'h2:
			begin
				avs_cra_readdata[63:0] <= profile_data_NO_SHIFT_REG;
			end

			default:
			begin
				avs_cra_readdata <= cra_readdata_st1_NO_SHIFT_REG;
			end

		endcase
	end
end


// Handshaking signals used to control data through the pipeline

// Determine when the kernel is finished.
acl_kernel_finish_detector kernel_finish_detector (
	.clock(clock),
	.resetn(resetn),
	.start(start_NO_SHIFT_REG),
	.wg_size(workgroup_size_NO_SHIFT_REG),
	.wg_dispatch_valid_out(iter_valid_in),
	.wg_dispatch_stall_in(iter_stall_out),
	.dispatched_all_groups(dispatched_all_groups),
	.kernel_copy_valid_out(valid_out),
	.kernel_copy_stall_in(stall_in),
	.pending_writes(has_a_write_pending),
	.finish(finish)
);

defparam kernel_finish_detector.TESSELLATION_SIZE = 0;
defparam kernel_finish_detector.NUM_COPIES = 1;
defparam kernel_finish_detector.WG_SIZE_W = 32;

assign stall_in = 1'b0;

// Creating ID iterator and kernel instance for every requested kernel copy

// ID iterator is responsible for iterating over all local ids for given work-groups
acl_id_iterator id_iter_inst0 (
	.clock(clock),
	.resetn(resetn),
	.start(start_out),
	.valid_in(iter_valid_in),
	.stall_out(iter_stall_out),
	.stall_in(stall_out),
	.valid_out(valid_in),
	.group_id_in(group_id_tmp),
	.global_id_base_in(global_id_base_out),
	.local_size(local_size_NO_SHIFT_REG),
	.global_size(global_size_NO_SHIFT_REG),
	.local_id(local_id[0]),
	.global_id(global_id[0]),
	.group_id(group_id[0])
);

defparam id_iter_inst0.LOCAL_WIDTH_X = 32;
defparam id_iter_inst0.LOCAL_WIDTH_Y = 32;
defparam id_iter_inst0.LOCAL_WIDTH_Z = 32;


// This section instantiates a kernel function block
comparator_kernel_function comparator_kernel_function_inst0 (
	.clock(clock),
	.resetn(resetn),
	.input_global_id_0(global_id[0][0]),
	.stall_out(stall_out),
	.valid_in(valid_in),
	.valid_out(valid_out),
	.stall_in(stall_in),
	.workgroup_size(workgroup_size_NO_SHIFT_REG),
	.avm_local_bb0_ld__enable(avm_local_bb0_ld__inst0_enable),
	.avm_local_bb0_ld__readdata(avm_local_bb0_ld__inst0_readdata),
	.avm_local_bb0_ld__readdatavalid(avm_local_bb0_ld__inst0_readdatavalid),
	.avm_local_bb0_ld__waitrequest(avm_local_bb0_ld__inst0_waitrequest),
	.avm_local_bb0_ld__address(avm_local_bb0_ld__inst0_address),
	.avm_local_bb0_ld__read(avm_local_bb0_ld__inst0_read),
	.avm_local_bb0_ld__write(avm_local_bb0_ld__inst0_write),
	.avm_local_bb0_ld__writeack(avm_local_bb0_ld__inst0_writeack),
	.avm_local_bb0_ld__writedata(avm_local_bb0_ld__inst0_writedata),
	.avm_local_bb0_ld__byteenable(avm_local_bb0_ld__inst0_byteenable),
	.avm_local_bb0_ld__burstcount(avm_local_bb0_ld__inst0_burstcount),
	.avm_local_bb0_ld__u0_enable(avm_local_bb0_ld__u0_inst0_enable),
	.avm_local_bb0_ld__u0_readdata(avm_local_bb0_ld__u0_inst0_readdata),
	.avm_local_bb0_ld__u0_readdatavalid(avm_local_bb0_ld__u0_inst0_readdatavalid),
	.avm_local_bb0_ld__u0_waitrequest(avm_local_bb0_ld__u0_inst0_waitrequest),
	.avm_local_bb0_ld__u0_address(avm_local_bb0_ld__u0_inst0_address),
	.avm_local_bb0_ld__u0_read(avm_local_bb0_ld__u0_inst0_read),
	.avm_local_bb0_ld__u0_write(avm_local_bb0_ld__u0_inst0_write),
	.avm_local_bb0_ld__u0_writeack(avm_local_bb0_ld__u0_inst0_writeack),
	.avm_local_bb0_ld__u0_writedata(avm_local_bb0_ld__u0_inst0_writedata),
	.avm_local_bb0_ld__u0_byteenable(avm_local_bb0_ld__u0_inst0_byteenable),
	.avm_local_bb0_ld__u0_burstcount(avm_local_bb0_ld__u0_inst0_burstcount),
	.avm_local_bb0_st_c0_exe1_enable(avm_local_bb0_st_c0_exe1_inst0_enable),
	.avm_local_bb0_st_c0_exe1_readdata(avm_local_bb0_st_c0_exe1_inst0_readdata),
	.avm_local_bb0_st_c0_exe1_readdatavalid(avm_local_bb0_st_c0_exe1_inst0_readdatavalid),
	.avm_local_bb0_st_c0_exe1_waitrequest(avm_local_bb0_st_c0_exe1_inst0_waitrequest),
	.avm_local_bb0_st_c0_exe1_address(avm_local_bb0_st_c0_exe1_inst0_address),
	.avm_local_bb0_st_c0_exe1_read(avm_local_bb0_st_c0_exe1_inst0_read),
	.avm_local_bb0_st_c0_exe1_write(avm_local_bb0_st_c0_exe1_inst0_write),
	.avm_local_bb0_st_c0_exe1_writeack(avm_local_bb0_st_c0_exe1_inst0_writeack),
	.avm_local_bb0_st_c0_exe1_writedata(avm_local_bb0_st_c0_exe1_inst0_writedata),
	.avm_local_bb0_st_c0_exe1_byteenable(avm_local_bb0_st_c0_exe1_inst0_byteenable),
	.avm_local_bb0_st_c0_exe1_burstcount(avm_local_bb0_st_c0_exe1_inst0_burstcount),
	.clock2x(clock2x),
	.start(start_out),
	.input_A(kernel_arguments_NO_SHIFT_REG[63:0]),
	.input_B(kernel_arguments_NO_SHIFT_REG[127:64]),
	.input_equals(kernel_arguments_NO_SHIFT_REG[191:128]),
	.input_global_size_0(global_size_NO_SHIFT_REG[0]),
	.has_a_write_pending(has_a_write_pending),
	.has_a_lsu_active(has_a_lsu_active)
);



endmodule

//////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////

// altera message_off 10036
// altera message_off 10230
// altera message_off 10858
module comparator_kernel_sys_cycle_time
	(
		input 		clock,
		input 		resetn,
		output [31:0] 		cur_cycle
	);


 reg [31:0] cur_count_NO_SHIFT_REG;

assign cur_cycle = cur_count_NO_SHIFT_REG;

always @(posedge clock or negedge resetn)
begin
	if (~(resetn))
	begin
		cur_count_NO_SHIFT_REG <= 32'h0;
	end
	else
	begin
		cur_count_NO_SHIFT_REG <= (cur_count_NO_SHIFT_REG + 32'h1);
	end
end

endmodule

