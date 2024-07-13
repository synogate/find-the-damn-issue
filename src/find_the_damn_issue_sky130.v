module scl_counter
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  [4:0] in_unnamed_4,
   output [4:0] out_m_value,
   output out_m_last,
   output out_const_0,
   output out_const_0_2,
   output out_const_0_3,
   output [4:0] out_const_xxxxx);
  reg [4:0] s_m_value_2;
  wire [4:0] s_m_value_plus_const_0_mux5;
  wire n9282_o;
  wire n9283_o;
  wire [4:0] n9286_o;
  wire n9287_o;
  wire n9288_o;
  wire [4:0] n9290_o;
  wire n9293_o;
  wire n9300_o;
  wire n9302_o;
  wire n9304_o;
  wire n9305_o;
  wire [4:0] n9306_o;
  wire [4:0] n9308_o;
  wire n9310_o;
  wire n9312_o;
  wire n9313_o;
  wire [4:0] n9315_o;
  wire [4:0] n9316_o;
  localparam n9320_o = 1'b0;
  localparam n9321_o = 1'b0;
  localparam n9322_o = 1'b0;
  localparam [4:0] n9323_o = 5'bX;
  wire n9325_o;
  reg [4:0] n9331_q;
  assign out_m_value = s_m_value_2;
  assign out_m_last = n9300_o;
  assign out_const_0 = n9320_o;
  assign out_const_0_2 = n9321_o;
  assign out_const_0_3 = n9322_o;
  assign out_const_xxxxx = n9323_o;
  /* find_the_damn_issue_sky130.vhd:5592:16  */
  always @*
    s_m_value_2 = n9331_q; // (isignal)
  initial
    s_m_value_2 = 5'b01111;
  /* find_the_damn_issue_sky130.vhd:5593:16  */
  assign s_m_value_plus_const_0_mux5 = n9316_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5609:41  */
  assign n9282_o = ~in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:5609:35  */
  assign n9283_o = in_unnamed & n9282_o;
  /* find_the_damn_issue_sky130.vhd:5609:17  */
  assign n9286_o = n9283_o ? 5'b00001 : 5'b00000;
  /* find_the_damn_issue_sky130.vhd:5614:41  */
  assign n9287_o = ~in_unnamed;
  /* find_the_damn_issue_sky130.vhd:5614:35  */
  assign n9288_o = in_unnamed_2 & n9287_o;
  /* find_the_damn_issue_sky130.vhd:5614:17  */
  assign n9290_o = n9288_o ? 5'b11111 : n9286_o;
  /* find_the_damn_issue_sky130.vhd:5622:57  */
  assign n9293_o = s_m_value_2 == 5'b11111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n9300_o = n9293_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5627:34  */
  assign n9302_o = s_m_value_2 == 5'b11111;
  /* find_the_damn_issue_sky130.vhd:5627:67  */
  assign n9304_o = n9290_o == 5'b00001;
  /* find_the_damn_issue_sky130.vhd:5627:45  */
  assign n9305_o = n9302_o & n9304_o;
  /* find_the_damn_issue_sky130.vhd:5630:69  */
  assign n9306_o = s_m_value_2 + n9290_o;
  /* find_the_damn_issue_sky130.vhd:5627:17  */
  assign n9308_o = n9305_o ? 5'b00000 : n9306_o;
  /* find_the_damn_issue_sky130.vhd:5632:34  */
  assign n9310_o = s_m_value_2 == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:5632:67  */
  assign n9312_o = n9290_o == 5'b11111;
  /* find_the_damn_issue_sky130.vhd:5632:45  */
  assign n9313_o = n9310_o & n9312_o;
  /* find_the_damn_issue_sky130.vhd:5632:17  */
  assign n9315_o = n9313_o ? 5'b11111 : n9308_o;
  /* find_the_damn_issue_sky130.vhd:5637:17  */
  assign n9316_o = in_unnamed_3 ? in_unnamed_4 : n9315_o;
  /* find_the_damn_issue_sky130.vhd:5648:27  */
  assign n9325_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5650:17  */
  always @(posedge clk or posedge n9325_o)
    if (n9325_o)
      n9331_q <= 5'b01111;
    else
      n9331_q <= s_m_value_plus_const_0_mux5;
endmodule

module analyze_phase
  (input  clk,
   input  rst_n,
   input  in_delayed_input,
   output [1:0] out_ret);
  reg s_delayed_input_delayed1;
  reg s_delayed_input_delayed1_2;
  reg s_delayed_input_delayed2;
  wire s_delayed_input_2;
  wire s_delayed_input_3;
  wire s_delayed_input_delayed1_3;
  wire n9224_o;
  wire n9225_o;
  wire n9226_o;
  wire [1:0] n9229_o;
  wire n9230_o;
  wire n9231_o;
  wire n9232_o;
  wire n9233_o;
  wire [1:0] n9235_o;
  wire n9236_o;
  wire n9237_o;
  wire n9238_o;
  wire n9239_o;
  wire [1:0] n9241_o;
  wire n9245_o;
  wire n9255_o;
  reg n9261_q;
  reg n9262_q;
  reg n9263_q;
  assign out_ret = n9241_o;
  /* find_the_damn_issue_sky130.vhd:5684:16  */
  always @*
    s_delayed_input_delayed1 = n9261_q; // (isignal)
  initial
    s_delayed_input_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:5685:16  */
  always @*
    s_delayed_input_delayed1_2 = n9262_q; // (isignal)
  initial
    s_delayed_input_delayed1_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:5686:16  */
  always @*
    s_delayed_input_delayed2 = n9263_q; // (isignal)
  initial
    s_delayed_input_delayed2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:5687:16  */
  assign s_delayed_input_2 = in_delayed_input; // (signal)
  /* find_the_damn_issue_sky130.vhd:5688:16  */
  assign s_delayed_input_3 = in_delayed_input; // (signal)
  /* find_the_damn_issue_sky130.vhd:5689:16  */
  assign s_delayed_input_delayed1_3 = s_delayed_input_delayed1; // (signal)
  /* find_the_damn_issue_sky130.vhd:5711:33  */
  assign n9224_o = s_delayed_input_delayed1_3 != s_delayed_input_delayed1_2;
  /* find_the_damn_issue_sky130.vhd:5711:64  */
  assign n9225_o = s_delayed_input_delayed1_3 != s_delayed_input_delayed2;
  /* find_the_damn_issue_sky130.vhd:5711:48  */
  assign n9226_o = n9224_o & n9225_o;
  /* find_the_damn_issue_sky130.vhd:5711:17  */
  assign n9229_o = n9226_o ? 2'b00 : 2'b10;
  /* find_the_damn_issue_sky130.vhd:5716:39  */
  assign n9230_o = s_delayed_input_delayed1_3 != s_delayed_input_delayed1_2;
  /* find_the_damn_issue_sky130.vhd:5716:23  */
  assign n9231_o = ~n9230_o;
  /* find_the_damn_issue_sky130.vhd:5716:71  */
  assign n9232_o = s_delayed_input_delayed1_3 != s_delayed_input_delayed2;
  /* find_the_damn_issue_sky130.vhd:5716:55  */
  assign n9233_o = n9231_o & n9232_o;
  /* find_the_damn_issue_sky130.vhd:5716:17  */
  assign n9235_o = n9233_o ? 2'b01 : n9229_o;
  /* find_the_damn_issue_sky130.vhd:5721:33  */
  assign n9236_o = s_delayed_input_delayed2 != s_delayed_input_delayed1_2;
  /* find_the_damn_issue_sky130.vhd:5721:70  */
  assign n9237_o = s_delayed_input_delayed1_3 != s_delayed_input_delayed2;
  /* find_the_damn_issue_sky130.vhd:5721:54  */
  assign n9238_o = ~n9237_o;
  /* find_the_damn_issue_sky130.vhd:5721:48  */
  assign n9239_o = n9236_o & n9238_o;
  /* find_the_damn_issue_sky130.vhd:5721:17  */
  assign n9241_o = n9239_o ? 2'b00 : n9235_o;
  /* find_the_damn_issue_sky130.vhd:5731:27  */
  assign n9245_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5742:27  */
  assign n9255_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5734:17  */
  always @(posedge clk or posedge n9245_o)
    if (n9245_o)
      n9261_q <= 1'b0;
    else
      n9261_q <= s_delayed_input_2;
  /* find_the_damn_issue_sky130.vhd:5744:17  */
  always @(negedge clk or posedge n9255_o)
    if (n9255_o)
      n9262_q <= 1'b0;
    else
      n9262_q <= s_delayed_input_3;
  /* find_the_damn_issue_sky130.vhd:5734:17  */
  always @(posedge clk or posedge n9245_o)
    if (n9245_o)
      n9263_q <= 1'b0;
    else
      n9263_q <= s_delayed_input_delayed1_3;
endmodule

module detectsingleended
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   output out_singleended);
  reg s_unnamed_delayed1;
  reg s_unnamed_delayed1_2;
  wire s_unnamed_delayed1_3;
  wire s_unnamed_delayed1_4;
  wire s_unnamed_3;
  wire s_unnamed_4;
  wire s_unnamed_5;
  wire s_unnamed_6;
  wire n9185_o;
  wire n9186_o;
  wire n9187_o;
  wire n9188_o;
  wire n9189_o;
  wire n9190_o;
  wire n9191_o;
  wire n9199_o;
  reg n9208_q;
  reg n9209_q;
  reg n9210_q;
  reg n9211_q;
  assign out_singleended = n9191_o;
  /* find_the_damn_issue_sky130.vhd:5779:16  */
  always @*
    s_unnamed_delayed1 = n9208_q; // (isignal)
  initial
    s_unnamed_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:5780:16  */
  always @*
    s_unnamed_delayed1_2 = n9209_q; // (isignal)
  initial
    s_unnamed_delayed1_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:5781:16  */
  assign s_unnamed_delayed1_3 = n9210_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:5782:16  */
  assign s_unnamed_delayed1_4 = n9211_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:5783:16  */
  assign s_unnamed_3 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:5784:16  */
  assign s_unnamed_4 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:5785:16  */
  assign s_unnamed_5 = s_unnamed_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:5786:16  */
  assign s_unnamed_6 = s_unnamed_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:5790:41  */
  assign n9185_o = ~s_unnamed_delayed1;
  /* find_the_damn_issue_sky130.vhd:5790:71  */
  assign n9186_o = ~s_unnamed_delayed1_2;
  /* find_the_damn_issue_sky130.vhd:5790:65  */
  assign n9187_o = n9185_o & n9186_o;
  /* find_the_damn_issue_sky130.vhd:5790:104  */
  assign n9188_o = ~s_unnamed_delayed1_3;
  /* find_the_damn_issue_sky130.vhd:5790:98  */
  assign n9189_o = n9187_o & n9188_o;
  /* find_the_damn_issue_sky130.vhd:5790:137  */
  assign n9190_o = ~s_unnamed_delayed1_4;
  /* find_the_damn_issue_sky130.vhd:5790:131  */
  assign n9191_o = n9189_o & n9190_o;
  /* find_the_damn_issue_sky130.vhd:5807:27  */
  assign n9199_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5810:17  */
  always @(posedge clk or posedge n9199_o)
    if (n9199_o)
      n9208_q <= 1'b0;
    else
      n9208_q <= s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:5810:17  */
  always @(posedge clk or posedge n9199_o)
    if (n9199_o)
      n9209_q <= 1'b0;
    else
      n9209_q <= s_unnamed_3;
  /* find_the_damn_issue_sky130.vhd:5799:17  */
  always @(negedge clk)
    n9210_q <= s_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:5799:17  */
  always @(negedge clk)
    n9211_q <= s_unnamed_6;
endmodule

module delay_chain_with_taps_2
  (input  in_chain_input,
   input  [4:0] in_delay,
   output out_chain_output);
  wire s_chain_input_2;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_2;
  wire s_unnamed;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_3;
  wire s_unnamed_2;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_4;
  wire s_unnamed_3;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_5;
  wire s_unnamed_4;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_6;
  wire s_unnamed_5;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_7;
  wire s_unnamed_6;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_8;
  wire s_unnamed_7;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_9;
  wire s_unnamed_8;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_10;
  wire s_unnamed_9;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_11;
  wire s_unnamed_10;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_12;
  wire s_unnamed_11;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_13;
  wire s_unnamed_12;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_14;
  wire s_unnamed_13;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_15;
  wire s_unnamed_14;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_16;
  wire s_unnamed_15;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_17;
  wire s_unnamed_16;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_18;
  wire s_unnamed_17;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_19;
  wire s_unnamed_18;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_20;
  wire s_unnamed_19;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_21;
  wire s_unnamed_20;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_22;
  wire s_unnamed_21;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_23;
  wire s_unnamed_22;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_24;
  wire s_unnamed_23;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_25;
  wire s_unnamed_24;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_26;
  wire s_unnamed_25;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_27;
  wire s_unnamed_26;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_28;
  wire s_unnamed_27;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_29;
  wire s_unnamed_28;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_30;
  wire s_unnamed_29;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_31;
  wire s_unnamed_30;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_32;
  wire s_unnamed_31;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_33;
  wire s_unnamed_32;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_34;
  wire s_unnamed_33;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_35;
  wire s_unnamed_34;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_36;
  wire s_unnamed_35;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_37;
  wire s_unnamed_36;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_38;
  wire s_unnamed_37;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_39;
  wire s_unnamed_38;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_40;
  wire s_unnamed_39;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_41;
  wire s_unnamed_40;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_42;
  wire s_unnamed_41;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_43;
  wire s_unnamed_42;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_44;
  wire s_unnamed_43;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_45;
  wire s_unnamed_44;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_46;
  wire s_unnamed_45;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_47;
  wire s_unnamed_46;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_48;
  wire s_unnamed_47;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_49;
  wire s_unnamed_48;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_50;
  wire s_unnamed_49;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_51;
  wire s_unnamed_50;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_52;
  wire s_unnamed_51;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_53;
  wire s_unnamed_52;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_54;
  wire s_unnamed_53;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_55;
  wire s_unnamed_54;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_56;
  wire s_unnamed_55;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_57;
  wire s_unnamed_56;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_58;
  wire s_unnamed_57;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_59;
  wire s_unnamed_58;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_60;
  wire s_unnamed_59;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_61;
  wire s_unnamed_60;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_62;
  wire s_unnamed_61;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_63;
  wire s_unnamed_62;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_64;
  wire s_unnamed_63;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_65;
  wire s_unnamed_64;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_66;
  wire s_unnamed_65;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_67;
  wire s_unnamed_66;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_68;
  wire s_unnamed_67;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_69;
  wire s_unnamed_68;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_70;
  wire s_unnamed_69;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_71;
  wire s_unnamed_70;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_72;
  wire s_unnamed_71;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_73;
  wire s_unnamed_72;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_74;
  wire s_unnamed_73;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_75;
  wire s_unnamed_74;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_76;
  wire s_unnamed_75;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_77;
  wire s_unnamed_76;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_78;
  wire s_unnamed_77;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_79;
  wire s_unnamed_78;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_80;
  wire s_unnamed_79;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_81;
  wire s_unnamed_80;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_82;
  wire s_unnamed_81;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_83;
  wire s_unnamed_82;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_84;
  wire s_unnamed_83;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_85;
  wire s_unnamed_84;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_86;
  wire s_unnamed_85;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_87;
  wire s_unnamed_86;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_88;
  wire s_unnamed_87;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_89;
  wire s_unnamed_88;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_90;
  wire s_unnamed_89;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_91;
  wire s_unnamed_90;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_92;
  wire s_unnamed_91;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_93;
  wire s_unnamed_92;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_94;
  wire s_unnamed_93;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_95;
  wire s_unnamed_94;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_96;
  wire s_unnamed_95;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_97;
  wire s_unnamed_96;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_98;
  wire s_unnamed_97;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_99;
  wire s_unnamed_98;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_100;
  wire s_unnamed_99;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_101;
  wire s_unnamed_100;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_102;
  wire s_unnamed_101;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_103;
  wire s_unnamed_102;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_104;
  wire s_unnamed_103;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_105;
  wire s_unnamed_104;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_106;
  wire s_unnamed_105;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_107;
  wire s_unnamed_106;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_108;
  wire s_unnamed_107;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_109;
  wire s_unnamed_108;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_110;
  wire s_unnamed_109;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_111;
  wire s_unnamed_110;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_112;
  wire s_unnamed_111;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_113;
  wire s_unnamed_112;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_114;
  wire s_unnamed_113;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_115;
  wire s_unnamed_114;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_116;
  wire s_unnamed_115;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_117;
  wire s_unnamed_116;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_118;
  wire s_unnamed_117;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_119;
  wire s_unnamed_118;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_120;
  wire s_unnamed_119;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_121;
  wire s_unnamed_120;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_122;
  wire s_unnamed_121;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_123;
  wire s_unnamed_122;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_124;
  wire s_unnamed_123;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_125;
  wire s_unnamed_124;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_126;
  wire s_unnamed_125;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_127;
  wire s_unnamed_126;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_128;
  wire s_unnamed_127;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_129;
  wire s_unnamed_128;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_130;
  wire s_unnamed_129;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_131;
  wire s_unnamed_130;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_132;
  wire s_unnamed_131;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_133;
  wire s_unnamed_132;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_134;
  wire s_unnamed_133;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_135;
  wire s_unnamed_134;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_136;
  wire s_unnamed_135;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_137;
  wire s_unnamed_136;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_138;
  wire s_unnamed_137;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_139;
  wire s_unnamed_138;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_140;
  wire s_unnamed_139;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_141;
  wire s_unnamed_140;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_142;
  wire s_unnamed_141;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_143;
  wire s_unnamed_142;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_144;
  wire s_unnamed_143;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_145;
  wire s_unnamed_144;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_146;
  wire s_unnamed_145;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_147;
  wire s_unnamed_146;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_148;
  wire s_unnamed_147;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_149;
  wire s_unnamed_148;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_150;
  wire s_unnamed_149;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_151;
  wire s_unnamed_150;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_152;
  wire s_unnamed_151;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_153;
  wire s_unnamed_152;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_154;
  wire s_unnamed_153;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_155;
  wire s_unnamed_154;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_156;
  wire s_unnamed_155;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_157;
  wire s_unnamed_156;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_158;
  wire s_unnamed_157;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_159;
  wire s_unnamed_158;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_160;
  wire s_unnamed_159;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_161;
  wire s_unnamed_160;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_162;
  wire s_unnamed_161;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_163;
  wire s_unnamed_162;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_164;
  wire s_unnamed_163;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_165;
  wire s_unnamed_164;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_166;
  wire s_unnamed_165;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_167;
  wire s_unnamed_166;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_168;
  wire s_unnamed_167;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_169;
  wire s_unnamed_168;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_170;
  wire s_unnamed_169;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_171;
  wire s_unnamed_170;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_172;
  wire s_unnamed_171;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_173;
  wire s_unnamed_172;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_174;
  wire s_unnamed_173;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_175;
  wire s_unnamed_174;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_176;
  wire s_unnamed_175;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_177;
  wire s_unnamed_176;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_178;
  wire s_unnamed_177;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_179;
  wire s_unnamed_178;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_180;
  wire s_unnamed_179;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_181;
  wire s_unnamed_180;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_182;
  wire s_unnamed_181;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_183;
  wire s_unnamed_182;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_184;
  wire s_unnamed_183;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_185;
  wire s_unnamed_184;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_186;
  wire s_unnamed_185;
  wire s_unnamed_186;
  wire s_unnamed_187;
  wire s_unnamed_188;
  wire s_unnamed_189;
  wire s_unnamed_190;
  wire s_unnamed_191;
  wire s_unnamed_192;
  wire s_unnamed_193;
  wire s_unnamed_194;
  wire s_unnamed_195;
  wire s_unnamed_196;
  wire s_unnamed_197;
  wire s_unnamed_198;
  wire s_unnamed_199;
  wire s_unnamed_200;
  wire s_unnamed_201;
  wire s_unnamed_202;
  wire s_unnamed_203;
  wire s_unnamed_204;
  wire s_unnamed_205;
  wire s_unnamed_206;
  wire s_unnamed_207;
  wire s_unnamed_208;
  wire s_unnamed_209;
  wire s_unnamed_210;
  wire s_unnamed_211;
  wire s_unnamed_212;
  wire s_unnamed_213;
  wire s_unnamed_214;
  wire s_unnamed_215;
  wire s_unnamed_216;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_2_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_3_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_4_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_5_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_6_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_7_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_8_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_9_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_10_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_11_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_12_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_13_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_14_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_15_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_16_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_17_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_18_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_19_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_20_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_21_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_22_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_23_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_24_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_25_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_26_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_27_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_28_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_29_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_30_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_31_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_32_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_33_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_34_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_35_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_36_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_37_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_38_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_39_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_40_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_41_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_42_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_43_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_44_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_45_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_46_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_47_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_48_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_49_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_50_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_51_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_52_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_53_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_54_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_55_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_56_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_57_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_58_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_59_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_60_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_61_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_62_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_63_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_64_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_65_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_66_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_67_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_68_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_69_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_70_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_71_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_72_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_73_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_74_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_75_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_76_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_77_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_78_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_79_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_80_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_81_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_82_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_83_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_84_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_85_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_86_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_87_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_88_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_89_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_90_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_91_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_92_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_93_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_94_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_95_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_96_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_97_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_98_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_99_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_100_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_101_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_102_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_103_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_104_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_105_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_106_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_107_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_108_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_109_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_110_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_111_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_112_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_113_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_114_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_115_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_116_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_117_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_118_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_119_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_120_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_121_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_122_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_123_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_124_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_125_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_126_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_127_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_128_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_129_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_130_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_131_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_132_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_133_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_134_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_135_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_136_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_137_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_138_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_139_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_140_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_141_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_142_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_143_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_144_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_145_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_146_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_147_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_148_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_149_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_150_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_151_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_152_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_153_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_154_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_155_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_156_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_157_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_158_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_159_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_160_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_161_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_162_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_163_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_164_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_165_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_166_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_167_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_168_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_169_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_170_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_171_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_172_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_173_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_174_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_175_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_176_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_177_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_178_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_179_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_180_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_181_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_182_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_183_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_184_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_185_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_186_X;
  localparam [31:0] n8955_o = 32'bX;
  wire [30:0] n8956_o;
  wire [31:0] n8957_o;
  wire [29:0] n8958_o;
  wire [30:0] n8959_o;
  wire n8960_o;
  wire [31:0] n8961_o;
  wire [28:0] n8962_o;
  wire [29:0] n8963_o;
  wire [1:0] n8964_o;
  wire [31:0] n8965_o;
  wire [27:0] n8966_o;
  wire [28:0] n8967_o;
  wire [2:0] n8968_o;
  wire [31:0] n8969_o;
  wire [26:0] n8970_o;
  wire [27:0] n8971_o;
  wire [3:0] n8972_o;
  wire [31:0] n8973_o;
  wire [25:0] n8974_o;
  wire [26:0] n8975_o;
  wire [4:0] n8976_o;
  wire [31:0] n8977_o;
  wire [24:0] n8978_o;
  wire [25:0] n8979_o;
  wire [5:0] n8980_o;
  wire [31:0] n8981_o;
  wire [23:0] n8982_o;
  wire [24:0] n8983_o;
  wire [6:0] n8984_o;
  wire [31:0] n8985_o;
  wire [22:0] n8986_o;
  wire [23:0] n8987_o;
  wire [7:0] n8988_o;
  wire [31:0] n8989_o;
  wire [21:0] n8990_o;
  wire [22:0] n8991_o;
  wire [8:0] n8992_o;
  wire [31:0] n8993_o;
  wire [20:0] n8994_o;
  wire [21:0] n8995_o;
  wire [9:0] n8996_o;
  wire [31:0] n8997_o;
  wire [19:0] n8998_o;
  wire [20:0] n8999_o;
  wire [10:0] n9000_o;
  wire [31:0] n9001_o;
  wire [18:0] n9002_o;
  wire [19:0] n9003_o;
  wire [11:0] n9004_o;
  wire [31:0] n9005_o;
  wire [17:0] n9006_o;
  wire [18:0] n9007_o;
  wire [12:0] n9008_o;
  wire [31:0] n9009_o;
  wire [16:0] n9010_o;
  wire [17:0] n9011_o;
  wire [13:0] n9012_o;
  wire [31:0] n9013_o;
  wire [15:0] n9014_o;
  wire [16:0] n9015_o;
  wire [14:0] n9016_o;
  wire [31:0] n9017_o;
  wire [14:0] n9018_o;
  wire [15:0] n9019_o;
  wire [15:0] n9020_o;
  wire [31:0] n9021_o;
  wire [13:0] n9022_o;
  wire [14:0] n9023_o;
  wire [16:0] n9024_o;
  wire [31:0] n9025_o;
  wire [12:0] n9026_o;
  wire [13:0] n9027_o;
  wire [17:0] n9028_o;
  wire [31:0] n9029_o;
  wire [11:0] n9030_o;
  wire [12:0] n9031_o;
  wire [18:0] n9032_o;
  wire [31:0] n9033_o;
  wire [10:0] n9034_o;
  wire [11:0] n9035_o;
  wire [19:0] n9036_o;
  wire [31:0] n9037_o;
  wire [9:0] n9038_o;
  wire [10:0] n9039_o;
  wire [20:0] n9040_o;
  wire [31:0] n9041_o;
  wire [8:0] n9042_o;
  wire [9:0] n9043_o;
  wire [21:0] n9044_o;
  wire [31:0] n9045_o;
  wire [7:0] n9046_o;
  wire [8:0] n9047_o;
  wire [22:0] n9048_o;
  wire [31:0] n9049_o;
  wire [6:0] n9050_o;
  wire [7:0] n9051_o;
  wire [23:0] n9052_o;
  wire [31:0] n9053_o;
  wire [5:0] n9054_o;
  wire [6:0] n9055_o;
  wire [24:0] n9056_o;
  wire [31:0] n9057_o;
  wire [4:0] n9058_o;
  wire [5:0] n9059_o;
  wire [25:0] n9060_o;
  wire [31:0] n9061_o;
  wire [3:0] n9062_o;
  wire [4:0] n9063_o;
  wire [26:0] n9064_o;
  wire [31:0] n9065_o;
  wire [2:0] n9066_o;
  wire [3:0] n9067_o;
  wire [27:0] n9068_o;
  wire [31:0] n9069_o;
  wire [1:0] n9070_o;
  wire [2:0] n9071_o;
  wire [28:0] n9072_o;
  wire [31:0] n9073_o;
  wire n9074_o;
  wire [1:0] n9075_o;
  wire [29:0] n9076_o;
  wire [31:0] n9077_o;
  wire [30:0] n9078_o;
  wire [31:0] n9079_o;
  wire n9080_o;
  wire n9082_o;
  wire n9083_o;
  wire n9085_o;
  wire n9086_o;
  wire n9088_o;
  wire n9089_o;
  wire n9091_o;
  wire n9092_o;
  wire n9094_o;
  wire n9095_o;
  wire n9097_o;
  wire n9098_o;
  wire n9100_o;
  wire n9101_o;
  wire n9103_o;
  wire n9104_o;
  wire n9106_o;
  wire n9107_o;
  wire n9109_o;
  wire n9110_o;
  wire n9112_o;
  wire n9113_o;
  wire n9115_o;
  wire n9116_o;
  wire n9118_o;
  wire n9119_o;
  wire n9121_o;
  wire n9122_o;
  wire n9124_o;
  wire n9125_o;
  wire n9127_o;
  wire n9128_o;
  wire n9130_o;
  wire n9131_o;
  wire n9133_o;
  wire n9134_o;
  wire n9136_o;
  wire n9137_o;
  wire n9139_o;
  wire n9140_o;
  wire n9142_o;
  wire n9143_o;
  wire n9145_o;
  wire n9146_o;
  wire n9148_o;
  wire n9149_o;
  wire n9151_o;
  wire n9152_o;
  wire n9154_o;
  wire n9155_o;
  wire n9157_o;
  wire n9158_o;
  wire n9160_o;
  wire n9161_o;
  wire n9163_o;
  wire n9164_o;
  wire n9166_o;
  wire n9167_o;
  wire n9169_o;
  wire n9170_o;
  wire n9172_o;
  wire n9173_o;
  wire n9175_o;
  wire [31:0] n9176_o;
  reg n9178_o;
  assign out_chain_output = n9178_o;
  /* find_the_damn_issue_sky130.vhd:5850:16  */
  assign s_chain_input_2 = in_chain_input; // (signal)
  /* find_the_damn_issue_sky130.vhd:5851:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x = sky130_fd_sc_hd_dlygate4sd3_1_inst_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5852:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_2 = sky130_fd_sc_hd_dlygate4sd3_1_inst_2_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5853:16  */
  assign s_unnamed = s_sky130_fd_sc_hd_dlygate4sd3_1_x; // (signal)
  /* find_the_damn_issue_sky130.vhd:5854:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_3 = sky130_fd_sc_hd_dlygate4sd3_1_inst_3_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5855:16  */
  assign s_unnamed_2 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:5856:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_4 = sky130_fd_sc_hd_dlygate4sd3_1_inst_4_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5857:16  */
  assign s_unnamed_3 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:5858:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_5 = sky130_fd_sc_hd_dlygate4sd3_1_inst_5_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5859:16  */
  assign s_unnamed_4 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:5860:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_6 = sky130_fd_sc_hd_dlygate4sd3_1_inst_6_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5861:16  */
  assign s_unnamed_5 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:5862:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_7 = sky130_fd_sc_hd_dlygate4sd3_1_inst_9_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5863:16  */
  assign s_unnamed_6 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_6; // (signal)
  /* find_the_damn_issue_sky130.vhd:5864:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_8 = sky130_fd_sc_hd_dlygate4sd3_1_inst_11_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5865:16  */
  assign s_unnamed_7 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_7; // (signal)
  /* find_the_damn_issue_sky130.vhd:5866:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_9 = sky130_fd_sc_hd_dlygate4sd3_1_inst_12_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5867:16  */
  assign s_unnamed_8 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_8; // (signal)
  /* find_the_damn_issue_sky130.vhd:5868:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_10 = sky130_fd_sc_hd_dlygate4sd3_1_inst_14_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5869:16  */
  assign s_unnamed_9 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_9; // (signal)
  /* find_the_damn_issue_sky130.vhd:5870:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_11 = sky130_fd_sc_hd_dlygate4sd3_1_inst_16_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5871:16  */
  assign s_unnamed_10 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_10; // (signal)
  /* find_the_damn_issue_sky130.vhd:5872:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_12 = sky130_fd_sc_hd_dlygate4sd3_1_inst_18_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5873:16  */
  assign s_unnamed_11 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_11; // (signal)
  /* find_the_damn_issue_sky130.vhd:5874:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_13 = sky130_fd_sc_hd_dlygate4sd3_1_inst_20_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5875:16  */
  assign s_unnamed_12 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_12; // (signal)
  /* find_the_damn_issue_sky130.vhd:5876:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_14 = sky130_fd_sc_hd_dlygate4sd3_1_inst_22_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5877:16  */
  assign s_unnamed_13 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_13; // (signal)
  /* find_the_damn_issue_sky130.vhd:5878:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_15 = sky130_fd_sc_hd_dlygate4sd3_1_inst_23_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5879:16  */
  assign s_unnamed_14 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_14; // (signal)
  /* find_the_damn_issue_sky130.vhd:5880:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_16 = sky130_fd_sc_hd_dlygate4sd3_1_inst_24_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5881:16  */
  assign s_unnamed_15 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_15; // (signal)
  /* find_the_damn_issue_sky130.vhd:5882:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_17 = sky130_fd_sc_hd_dlygate4sd3_1_inst_26_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5883:16  */
  assign s_unnamed_16 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_16; // (signal)
  /* find_the_damn_issue_sky130.vhd:5884:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_18 = sky130_fd_sc_hd_dlygate4sd3_1_inst_27_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5885:16  */
  assign s_unnamed_17 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_17; // (signal)
  /* find_the_damn_issue_sky130.vhd:5886:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_19 = sky130_fd_sc_hd_dlygate4sd3_1_inst_31_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5887:16  */
  assign s_unnamed_18 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_18; // (signal)
  /* find_the_damn_issue_sky130.vhd:5888:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_20 = sky130_fd_sc_hd_dlygate4sd3_1_inst_32_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5889:16  */
  assign s_unnamed_19 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_19; // (signal)
  /* find_the_damn_issue_sky130.vhd:5890:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_21 = sky130_fd_sc_hd_dlygate4sd3_1_inst_33_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5891:16  */
  assign s_unnamed_20 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_20; // (signal)
  /* find_the_damn_issue_sky130.vhd:5892:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_22 = sky130_fd_sc_hd_dlygate4sd3_1_inst_35_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5893:16  */
  assign s_unnamed_21 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_21; // (signal)
  /* find_the_damn_issue_sky130.vhd:5894:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_23 = sky130_fd_sc_hd_dlygate4sd3_1_inst_36_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5895:16  */
  assign s_unnamed_22 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_22; // (signal)
  /* find_the_damn_issue_sky130.vhd:5896:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_24 = sky130_fd_sc_hd_dlygate4sd3_1_inst_38_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5897:16  */
  assign s_unnamed_23 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_23; // (signal)
  /* find_the_damn_issue_sky130.vhd:5898:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_25 = sky130_fd_sc_hd_dlygate4sd3_1_inst_40_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5899:16  */
  assign s_unnamed_24 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_24; // (signal)
  /* find_the_damn_issue_sky130.vhd:5900:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_26 = sky130_fd_sc_hd_dlygate4sd3_1_inst_42_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5901:16  */
  assign s_unnamed_25 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_25; // (signal)
  /* find_the_damn_issue_sky130.vhd:5902:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_27 = sky130_fd_sc_hd_dlygate4sd3_1_inst_44_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5903:16  */
  assign s_unnamed_26 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_26; // (signal)
  /* find_the_damn_issue_sky130.vhd:5904:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_28 = sky130_fd_sc_hd_dlygate4sd3_1_inst_47_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5905:16  */
  assign s_unnamed_27 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_27; // (signal)
  /* find_the_damn_issue_sky130.vhd:5906:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_29 = sky130_fd_sc_hd_dlygate4sd3_1_inst_49_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5907:16  */
  assign s_unnamed_28 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_28; // (signal)
  /* find_the_damn_issue_sky130.vhd:5908:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_30 = sky130_fd_sc_hd_dlygate4sd3_1_inst_51_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5909:16  */
  assign s_unnamed_29 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_29; // (signal)
  /* find_the_damn_issue_sky130.vhd:5910:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_31 = sky130_fd_sc_hd_dlygate4sd3_1_inst_52_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5911:16  */
  assign s_unnamed_30 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_30; // (signal)
  /* find_the_damn_issue_sky130.vhd:5912:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_32 = sky130_fd_sc_hd_dlygate4sd3_1_inst_54_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5913:16  */
  assign s_unnamed_31 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_31; // (signal)
  /* find_the_damn_issue_sky130.vhd:5914:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_33 = sky130_fd_sc_hd_dlygate4sd3_1_inst_55_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5915:16  */
  assign s_unnamed_32 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_32; // (signal)
  /* find_the_damn_issue_sky130.vhd:5916:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_34 = sky130_fd_sc_hd_dlygate4sd3_1_inst_57_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5917:16  */
  assign s_unnamed_33 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_33; // (signal)
  /* find_the_damn_issue_sky130.vhd:5918:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_35 = sky130_fd_sc_hd_dlygate4sd3_1_inst_59_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5919:16  */
  assign s_unnamed_34 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_34; // (signal)
  /* find_the_damn_issue_sky130.vhd:5920:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_36 = sky130_fd_sc_hd_dlygate4sd3_1_inst_60_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5921:16  */
  assign s_unnamed_35 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_35; // (signal)
  /* find_the_damn_issue_sky130.vhd:5922:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_37 = sky130_fd_sc_hd_dlygate4sd3_1_inst_62_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5923:16  */
  assign s_unnamed_36 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_36; // (signal)
  /* find_the_damn_issue_sky130.vhd:5924:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_38 = sky130_fd_sc_hd_dlygate4sd3_1_inst_64_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5925:16  */
  assign s_unnamed_37 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_37; // (signal)
  /* find_the_damn_issue_sky130.vhd:5926:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_39 = sky130_fd_sc_hd_dlygate4sd3_1_inst_67_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5927:16  */
  assign s_unnamed_38 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_38; // (signal)
  /* find_the_damn_issue_sky130.vhd:5928:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_40 = sky130_fd_sc_hd_dlygate4sd3_1_inst_68_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5929:16  */
  assign s_unnamed_39 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_39; // (signal)
  /* find_the_damn_issue_sky130.vhd:5930:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_41 = sky130_fd_sc_hd_dlygate4sd3_1_inst_69_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5931:16  */
  assign s_unnamed_40 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_40; // (signal)
  /* find_the_damn_issue_sky130.vhd:5932:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_42 = sky130_fd_sc_hd_dlygate4sd3_1_inst_71_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5933:16  */
  assign s_unnamed_41 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_41; // (signal)
  /* find_the_damn_issue_sky130.vhd:5934:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_43 = sky130_fd_sc_hd_dlygate4sd3_1_inst_74_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5935:16  */
  assign s_unnamed_42 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_42; // (signal)
  /* find_the_damn_issue_sky130.vhd:5936:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_44 = sky130_fd_sc_hd_dlygate4sd3_1_inst_75_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5937:16  */
  assign s_unnamed_43 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_43; // (signal)
  /* find_the_damn_issue_sky130.vhd:5938:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_45 = sky130_fd_sc_hd_dlygate4sd3_1_inst_76_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5939:16  */
  assign s_unnamed_44 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_44; // (signal)
  /* find_the_damn_issue_sky130.vhd:5940:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_46 = sky130_fd_sc_hd_dlygate4sd3_1_inst_78_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5941:16  */
  assign s_unnamed_45 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_45; // (signal)
  /* find_the_damn_issue_sky130.vhd:5942:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_47 = sky130_fd_sc_hd_dlygate4sd3_1_inst_79_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5943:16  */
  assign s_unnamed_46 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_46; // (signal)
  /* find_the_damn_issue_sky130.vhd:5944:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_48 = sky130_fd_sc_hd_dlygate4sd3_1_inst_80_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5945:16  */
  assign s_unnamed_47 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_47; // (signal)
  /* find_the_damn_issue_sky130.vhd:5946:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_49 = sky130_fd_sc_hd_dlygate4sd3_1_inst_82_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5947:16  */
  assign s_unnamed_48 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_48; // (signal)
  /* find_the_damn_issue_sky130.vhd:5948:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_50 = sky130_fd_sc_hd_dlygate4sd3_1_inst_84_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5949:16  */
  assign s_unnamed_49 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_49; // (signal)
  /* find_the_damn_issue_sky130.vhd:5950:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_51 = sky130_fd_sc_hd_dlygate4sd3_1_inst_86_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5951:16  */
  assign s_unnamed_50 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_50; // (signal)
  /* find_the_damn_issue_sky130.vhd:5952:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_52 = sky130_fd_sc_hd_dlygate4sd3_1_inst_88_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5953:16  */
  assign s_unnamed_51 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_51; // (signal)
  /* find_the_damn_issue_sky130.vhd:5954:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_53 = sky130_fd_sc_hd_dlygate4sd3_1_inst_90_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5955:16  */
  assign s_unnamed_52 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_52; // (signal)
  /* find_the_damn_issue_sky130.vhd:5956:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_54 = sky130_fd_sc_hd_dlygate4sd3_1_inst_91_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5957:16  */
  assign s_unnamed_53 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_53; // (signal)
  /* find_the_damn_issue_sky130.vhd:5958:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_55 = sky130_fd_sc_hd_dlygate4sd3_1_inst_95_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5959:16  */
  assign s_unnamed_54 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_54; // (signal)
  /* find_the_damn_issue_sky130.vhd:5960:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_56 = sky130_fd_sc_hd_dlygate4sd3_1_inst_96_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5961:16  */
  assign s_unnamed_55 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_55; // (signal)
  /* find_the_damn_issue_sky130.vhd:5962:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_57 = sky130_fd_sc_hd_dlygate4sd3_1_inst_98_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5963:16  */
  assign s_unnamed_56 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_56; // (signal)
  /* find_the_damn_issue_sky130.vhd:5964:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_58 = sky130_fd_sc_hd_dlygate4sd3_1_inst_99_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5965:16  */
  assign s_unnamed_57 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_57; // (signal)
  /* find_the_damn_issue_sky130.vhd:5966:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_59 = sky130_fd_sc_hd_dlygate4sd3_1_inst_101_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5967:16  */
  assign s_unnamed_58 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_58; // (signal)
  /* find_the_damn_issue_sky130.vhd:5968:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_60 = sky130_fd_sc_hd_dlygate4sd3_1_inst_103_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5969:16  */
  assign s_unnamed_59 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_59; // (signal)
  /* find_the_damn_issue_sky130.vhd:5970:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_61 = sky130_fd_sc_hd_dlygate4sd3_1_inst_104_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5971:16  */
  assign s_unnamed_60 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_60; // (signal)
  /* find_the_damn_issue_sky130.vhd:5972:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_62 = sky130_fd_sc_hd_dlygate4sd3_1_inst_106_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5973:16  */
  assign s_unnamed_61 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_61; // (signal)
  /* find_the_damn_issue_sky130.vhd:5974:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_63 = sky130_fd_sc_hd_dlygate4sd3_1_inst_107_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5975:16  */
  assign s_unnamed_62 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_62; // (signal)
  /* find_the_damn_issue_sky130.vhd:5976:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_64 = sky130_fd_sc_hd_dlygate4sd3_1_inst_109_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5977:16  */
  assign s_unnamed_63 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_63; // (signal)
  /* find_the_damn_issue_sky130.vhd:5978:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_65 = sky130_fd_sc_hd_dlygate4sd3_1_inst_111_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5979:16  */
  assign s_unnamed_64 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_64; // (signal)
  /* find_the_damn_issue_sky130.vhd:5980:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_66 = sky130_fd_sc_hd_dlygate4sd3_1_inst_113_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5981:16  */
  assign s_unnamed_65 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_65; // (signal)
  /* find_the_damn_issue_sky130.vhd:5982:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_67 = sky130_fd_sc_hd_dlygate4sd3_1_inst_115_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5983:16  */
  assign s_unnamed_66 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_66; // (signal)
  /* find_the_damn_issue_sky130.vhd:5984:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_68 = sky130_fd_sc_hd_dlygate4sd3_1_inst_116_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5985:16  */
  assign s_unnamed_67 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_67; // (signal)
  /* find_the_damn_issue_sky130.vhd:5986:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_69 = sky130_fd_sc_hd_dlygate4sd3_1_inst_119_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5987:16  */
  assign s_unnamed_68 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_68; // (signal)
  /* find_the_damn_issue_sky130.vhd:5988:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_70 = sky130_fd_sc_hd_dlygate4sd3_1_inst_120_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5989:16  */
  assign s_unnamed_69 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_69; // (signal)
  /* find_the_damn_issue_sky130.vhd:5990:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_71 = sky130_fd_sc_hd_dlygate4sd3_1_inst_122_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5991:16  */
  assign s_unnamed_70 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_70; // (signal)
  /* find_the_damn_issue_sky130.vhd:5992:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_72 = sky130_fd_sc_hd_dlygate4sd3_1_inst_123_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5993:16  */
  assign s_unnamed_71 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_71; // (signal)
  /* find_the_damn_issue_sky130.vhd:5994:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_73 = sky130_fd_sc_hd_dlygate4sd3_1_inst_126_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5995:16  */
  assign s_unnamed_72 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_72; // (signal)
  /* find_the_damn_issue_sky130.vhd:5996:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_74 = sky130_fd_sc_hd_dlygate4sd3_1_inst_127_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5997:16  */
  assign s_unnamed_73 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_73; // (signal)
  /* find_the_damn_issue_sky130.vhd:5998:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_75 = sky130_fd_sc_hd_dlygate4sd3_1_inst_128_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:5999:16  */
  assign s_unnamed_74 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_74; // (signal)
  /* find_the_damn_issue_sky130.vhd:6000:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_76 = sky130_fd_sc_hd_dlygate4sd3_1_inst_131_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6001:16  */
  assign s_unnamed_75 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_75; // (signal)
  /* find_the_damn_issue_sky130.vhd:6002:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_77 = sky130_fd_sc_hd_dlygate4sd3_1_inst_133_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6003:16  */
  assign s_unnamed_76 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_76; // (signal)
  /* find_the_damn_issue_sky130.vhd:6004:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_78 = sky130_fd_sc_hd_dlygate4sd3_1_inst_135_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6005:16  */
  assign s_unnamed_77 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_77; // (signal)
  /* find_the_damn_issue_sky130.vhd:6006:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_79 = sky130_fd_sc_hd_dlygate4sd3_1_inst_136_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6007:16  */
  assign s_unnamed_78 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_78; // (signal)
  /* find_the_damn_issue_sky130.vhd:6008:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_80 = sky130_fd_sc_hd_dlygate4sd3_1_inst_138_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6009:16  */
  assign s_unnamed_79 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_79; // (signal)
  /* find_the_damn_issue_sky130.vhd:6010:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_81 = sky130_fd_sc_hd_dlygate4sd3_1_inst_140_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6011:16  */
  assign s_unnamed_80 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_80; // (signal)
  /* find_the_damn_issue_sky130.vhd:6012:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_82 = sky130_fd_sc_hd_dlygate4sd3_1_inst_142_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6013:16  */
  assign s_unnamed_81 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_81; // (signal)
  /* find_the_damn_issue_sky130.vhd:6014:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_83 = sky130_fd_sc_hd_dlygate4sd3_1_inst_143_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6015:16  */
  assign s_unnamed_82 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_82; // (signal)
  /* find_the_damn_issue_sky130.vhd:6016:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_84 = sky130_fd_sc_hd_dlygate4sd3_1_inst_144_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6017:16  */
  assign s_unnamed_83 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_83; // (signal)
  /* find_the_damn_issue_sky130.vhd:6018:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_85 = sky130_fd_sc_hd_dlygate4sd3_1_inst_147_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6019:16  */
  assign s_unnamed_84 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_84; // (signal)
  /* find_the_damn_issue_sky130.vhd:6020:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_86 = sky130_fd_sc_hd_dlygate4sd3_1_inst_149_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6021:16  */
  assign s_unnamed_85 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_85; // (signal)
  /* find_the_damn_issue_sky130.vhd:6022:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_87 = sky130_fd_sc_hd_dlygate4sd3_1_inst_151_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6023:16  */
  assign s_unnamed_86 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_86; // (signal)
  /* find_the_damn_issue_sky130.vhd:6024:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_88 = sky130_fd_sc_hd_dlygate4sd3_1_inst_152_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6025:16  */
  assign s_unnamed_87 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_87; // (signal)
  /* find_the_damn_issue_sky130.vhd:6026:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_89 = sky130_fd_sc_hd_dlygate4sd3_1_inst_153_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6027:16  */
  assign s_unnamed_88 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_88; // (signal)
  /* find_the_damn_issue_sky130.vhd:6028:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_90 = sky130_fd_sc_hd_dlygate4sd3_1_inst_156_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6029:16  */
  assign s_unnamed_89 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_89; // (signal)
  /* find_the_damn_issue_sky130.vhd:6030:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_91 = sky130_fd_sc_hd_dlygate4sd3_1_inst_159_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6031:16  */
  assign s_unnamed_90 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_90; // (signal)
  /* find_the_damn_issue_sky130.vhd:6032:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_92 = sky130_fd_sc_hd_dlygate4sd3_1_inst_160_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6033:16  */
  assign s_unnamed_91 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_91; // (signal)
  /* find_the_damn_issue_sky130.vhd:6034:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_93 = sky130_fd_sc_hd_dlygate4sd3_1_inst_162_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6035:16  */
  assign s_unnamed_92 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_92; // (signal)
  /* find_the_damn_issue_sky130.vhd:6036:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_94 = sky130_fd_sc_hd_dlygate4sd3_1_inst_164_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6037:16  */
  assign s_unnamed_93 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_93; // (signal)
  /* find_the_damn_issue_sky130.vhd:6038:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_95 = sky130_fd_sc_hd_dlygate4sd3_1_inst_166_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6039:16  */
  assign s_unnamed_94 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_94; // (signal)
  /* find_the_damn_issue_sky130.vhd:6040:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_96 = sky130_fd_sc_hd_dlygate4sd3_1_inst_168_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6041:16  */
  assign s_unnamed_95 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_95; // (signal)
  /* find_the_damn_issue_sky130.vhd:6042:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_97 = sky130_fd_sc_hd_dlygate4sd3_1_inst_169_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6043:16  */
  assign s_unnamed_96 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_96; // (signal)
  /* find_the_damn_issue_sky130.vhd:6044:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_98 = sky130_fd_sc_hd_dlygate4sd3_1_inst_172_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6045:16  */
  assign s_unnamed_97 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_97; // (signal)
  /* find_the_damn_issue_sky130.vhd:6046:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_99 = sky130_fd_sc_hd_dlygate4sd3_1_inst_173_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6047:16  */
  assign s_unnamed_98 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_98; // (signal)
  /* find_the_damn_issue_sky130.vhd:6048:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_100 = sky130_fd_sc_hd_dlygate4sd3_1_inst_176_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6049:16  */
  assign s_unnamed_99 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_99; // (signal)
  /* find_the_damn_issue_sky130.vhd:6050:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_101 = sky130_fd_sc_hd_dlygate4sd3_1_inst_178_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6051:16  */
  assign s_unnamed_100 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_100; // (signal)
  /* find_the_damn_issue_sky130.vhd:6052:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_102 = sky130_fd_sc_hd_dlygate4sd3_1_inst_179_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6053:16  */
  assign s_unnamed_101 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_101; // (signal)
  /* find_the_damn_issue_sky130.vhd:6054:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_103 = sky130_fd_sc_hd_dlygate4sd3_1_inst_181_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6055:16  */
  assign s_unnamed_102 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_102; // (signal)
  /* find_the_damn_issue_sky130.vhd:6056:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_104 = sky130_fd_sc_hd_dlygate4sd3_1_inst_183_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6057:16  */
  assign s_unnamed_103 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_103; // (signal)
  /* find_the_damn_issue_sky130.vhd:6058:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_105 = sky130_fd_sc_hd_dlygate4sd3_1_inst_185_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6059:16  */
  assign s_unnamed_104 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_104; // (signal)
  /* find_the_damn_issue_sky130.vhd:6060:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_106 = sky130_fd_sc_hd_dlygate4sd3_1_inst_186_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6061:16  */
  assign s_unnamed_105 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_105; // (signal)
  /* find_the_damn_issue_sky130.vhd:6062:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_107 = sky130_fd_sc_hd_dlygate4sd3_1_inst_8_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6063:16  */
  assign s_unnamed_106 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_106; // (signal)
  /* find_the_damn_issue_sky130.vhd:6064:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_108 = sky130_fd_sc_hd_dlygate4sd3_1_inst_17_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6065:16  */
  assign s_unnamed_107 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_107; // (signal)
  /* find_the_damn_issue_sky130.vhd:6066:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_109 = sky130_fd_sc_hd_dlygate4sd3_1_inst_30_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6067:16  */
  assign s_unnamed_108 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_108; // (signal)
  /* find_the_damn_issue_sky130.vhd:6068:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_110 = sky130_fd_sc_hd_dlygate4sd3_1_inst_39_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6069:16  */
  assign s_unnamed_109 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_109; // (signal)
  /* find_the_damn_issue_sky130.vhd:6070:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_111 = sky130_fd_sc_hd_dlygate4sd3_1_inst_48_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6071:16  */
  assign s_unnamed_110 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_110; // (signal)
  /* find_the_damn_issue_sky130.vhd:6072:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_112 = sky130_fd_sc_hd_dlygate4sd3_1_inst_56_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6073:16  */
  assign s_unnamed_111 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_111; // (signal)
  /* find_the_damn_issue_sky130.vhd:6074:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_113 = sky130_fd_sc_hd_dlygate4sd3_1_inst_63_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6075:16  */
  assign s_unnamed_112 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_112; // (signal)
  /* find_the_damn_issue_sky130.vhd:6076:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_114 = sky130_fd_sc_hd_dlygate4sd3_1_inst_72_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6077:16  */
  assign s_unnamed_113 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_113; // (signal)
  /* find_the_damn_issue_sky130.vhd:6078:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_115 = sky130_fd_sc_hd_dlygate4sd3_1_inst_83_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6079:16  */
  assign s_unnamed_114 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_114; // (signal)
  /* find_the_damn_issue_sky130.vhd:6080:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_116 = sky130_fd_sc_hd_dlygate4sd3_1_inst_92_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6081:16  */
  assign s_unnamed_115 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_115; // (signal)
  /* find_the_damn_issue_sky130.vhd:6082:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_117 = sky130_fd_sc_hd_dlygate4sd3_1_inst_102_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6083:16  */
  assign s_unnamed_116 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_116; // (signal)
  /* find_the_damn_issue_sky130.vhd:6084:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_118 = sky130_fd_sc_hd_dlygate4sd3_1_inst_108_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6085:16  */
  assign s_unnamed_117 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_117; // (signal)
  /* find_the_damn_issue_sky130.vhd:6086:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_119 = sky130_fd_sc_hd_dlygate4sd3_1_inst_118_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6087:16  */
  assign s_unnamed_118 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_118; // (signal)
  /* find_the_damn_issue_sky130.vhd:6088:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_120 = sky130_fd_sc_hd_dlygate4sd3_1_inst_125_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6089:16  */
  assign s_unnamed_119 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_119; // (signal)
  /* find_the_damn_issue_sky130.vhd:6090:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_121 = sky130_fd_sc_hd_dlygate4sd3_1_inst_139_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6091:16  */
  assign s_unnamed_120 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_120; // (signal)
  /* find_the_damn_issue_sky130.vhd:6092:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_122 = sky130_fd_sc_hd_dlygate4sd3_1_inst_146_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6093:16  */
  assign s_unnamed_121 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_121; // (signal)
  /* find_the_damn_issue_sky130.vhd:6094:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_123 = sky130_fd_sc_hd_dlygate4sd3_1_inst_155_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6095:16  */
  assign s_unnamed_122 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_122; // (signal)
  /* find_the_damn_issue_sky130.vhd:6096:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_124 = sky130_fd_sc_hd_dlygate4sd3_1_inst_165_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6097:16  */
  assign s_unnamed_123 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_123; // (signal)
  /* find_the_damn_issue_sky130.vhd:6098:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_125 = sky130_fd_sc_hd_dlygate4sd3_1_inst_174_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6099:16  */
  assign s_unnamed_124 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_124; // (signal)
  /* find_the_damn_issue_sky130.vhd:6100:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_126 = sky130_fd_sc_hd_dlygate4sd3_1_inst_182_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6101:16  */
  assign s_unnamed_125 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_125; // (signal)
  /* find_the_damn_issue_sky130.vhd:6102:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_127 = sky130_fd_sc_hd_dlygate4sd3_1_inst_43_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6103:16  */
  assign s_unnamed_126 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_126; // (signal)
  /* find_the_damn_issue_sky130.vhd:6104:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_128 = sky130_fd_sc_hd_dlygate4sd3_1_inst_87_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6105:16  */
  assign s_unnamed_127 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_127; // (signal)
  /* find_the_damn_issue_sky130.vhd:6106:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_129 = sky130_fd_sc_hd_dlygate4sd3_1_inst_129_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6107:16  */
  assign s_unnamed_128 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_128; // (signal)
  /* find_the_damn_issue_sky130.vhd:6108:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_130 = sky130_fd_sc_hd_dlygate4sd3_1_inst_177_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6109:16  */
  assign s_unnamed_129 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_129; // (signal)
  /* find_the_damn_issue_sky130.vhd:6110:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_131 = sky130_fd_sc_hd_dlygate4sd3_1_inst_157_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6111:16  */
  assign s_unnamed_130 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_130; // (signal)
  /* find_the_damn_issue_sky130.vhd:6112:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_132 = sky130_fd_sc_hd_dlygate4sd3_1_inst_161_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6113:16  */
  assign s_unnamed_131 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_131; // (signal)
  /* find_the_damn_issue_sky130.vhd:6114:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_133 = sky130_fd_sc_hd_dlygate4sd3_1_inst_15_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6115:16  */
  assign s_unnamed_132 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_132; // (signal)
  /* find_the_damn_issue_sky130.vhd:6116:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_134 = sky130_fd_sc_hd_dlygate4sd3_1_inst_170_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6117:16  */
  assign s_unnamed_133 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_133; // (signal)
  /* find_the_damn_issue_sky130.vhd:6118:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_135 = sky130_fd_sc_hd_dlygate4sd3_1_inst_150_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6119:16  */
  assign s_unnamed_134 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_134; // (signal)
  /* find_the_damn_issue_sky130.vhd:6120:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_136 = sky130_fd_sc_hd_dlygate4sd3_1_inst_132_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6121:16  */
  assign s_unnamed_135 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_135; // (signal)
  /* find_the_damn_issue_sky130.vhd:6122:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_137 = sky130_fd_sc_hd_dlygate4sd3_1_inst_112_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6123:16  */
  assign s_unnamed_136 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_136; // (signal)
  /* find_the_damn_issue_sky130.vhd:6124:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_138 = sky130_fd_sc_hd_dlygate4sd3_1_inst_93_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6125:16  */
  assign s_unnamed_137 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_137; // (signal)
  /* find_the_damn_issue_sky130.vhd:6126:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_139 = sky130_fd_sc_hd_dlygate4sd3_1_inst_65_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6127:16  */
  assign s_unnamed_138 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_138; // (signal)
  /* find_the_damn_issue_sky130.vhd:6128:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_140 = sky130_fd_sc_hd_dlygate4sd3_1_inst_45_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6129:16  */
  assign s_unnamed_139 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_139; // (signal)
  /* find_the_damn_issue_sky130.vhd:6130:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_141 = sky130_fd_sc_hd_dlygate4sd3_1_inst_28_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6131:16  */
  assign s_unnamed_140 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_140; // (signal)
  /* find_the_damn_issue_sky130.vhd:6132:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_142 = sky130_fd_sc_hd_dlygate4sd3_1_inst_7_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6133:16  */
  assign s_unnamed_141 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_141; // (signal)
  /* find_the_damn_issue_sky130.vhd:6134:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_143 = sky130_fd_sc_hd_dlygate4sd3_1_inst_184_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6135:16  */
  assign s_unnamed_142 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_142; // (signal)
  /* find_the_damn_issue_sky130.vhd:6136:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_144 = sky130_fd_sc_hd_dlygate4sd3_1_inst_180_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6137:16  */
  assign s_unnamed_143 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_143; // (signal)
  /* find_the_damn_issue_sky130.vhd:6138:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_145 = sky130_fd_sc_hd_dlygate4sd3_1_inst_175_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6139:16  */
  assign s_unnamed_144 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_144; // (signal)
  /* find_the_damn_issue_sky130.vhd:6140:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_146 = sky130_fd_sc_hd_dlygate4sd3_1_inst_171_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6141:16  */
  assign s_unnamed_145 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_145; // (signal)
  /* find_the_damn_issue_sky130.vhd:6142:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_147 = sky130_fd_sc_hd_dlygate4sd3_1_inst_167_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6143:16  */
  assign s_unnamed_146 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_146; // (signal)
  /* find_the_damn_issue_sky130.vhd:6144:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_148 = sky130_fd_sc_hd_dlygate4sd3_1_inst_163_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6145:16  */
  assign s_unnamed_147 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_147; // (signal)
  /* find_the_damn_issue_sky130.vhd:6146:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_149 = sky130_fd_sc_hd_dlygate4sd3_1_inst_158_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6147:16  */
  assign s_unnamed_148 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_148; // (signal)
  /* find_the_damn_issue_sky130.vhd:6148:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_150 = sky130_fd_sc_hd_dlygate4sd3_1_inst_154_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6149:16  */
  assign s_unnamed_149 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_149; // (signal)
  /* find_the_damn_issue_sky130.vhd:6150:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_151 = sky130_fd_sc_hd_dlygate4sd3_1_inst_148_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6151:16  */
  assign s_unnamed_150 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_150; // (signal)
  /* find_the_damn_issue_sky130.vhd:6152:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_152 = sky130_fd_sc_hd_dlygate4sd3_1_inst_145_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6153:16  */
  assign s_unnamed_151 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_151; // (signal)
  /* find_the_damn_issue_sky130.vhd:6154:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_153 = sky130_fd_sc_hd_dlygate4sd3_1_inst_141_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6155:16  */
  assign s_unnamed_152 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_152; // (signal)
  /* find_the_damn_issue_sky130.vhd:6156:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_154 = sky130_fd_sc_hd_dlygate4sd3_1_inst_137_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6157:16  */
  assign s_unnamed_153 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_153; // (signal)
  /* find_the_damn_issue_sky130.vhd:6158:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_155 = sky130_fd_sc_hd_dlygate4sd3_1_inst_134_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6159:16  */
  assign s_unnamed_154 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_154; // (signal)
  /* find_the_damn_issue_sky130.vhd:6160:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_156 = sky130_fd_sc_hd_dlygate4sd3_1_inst_130_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6161:16  */
  assign s_unnamed_155 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_155; // (signal)
  /* find_the_damn_issue_sky130.vhd:6162:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_157 = sky130_fd_sc_hd_dlygate4sd3_1_inst_124_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6163:16  */
  assign s_unnamed_156 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_156; // (signal)
  /* find_the_damn_issue_sky130.vhd:6164:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_158 = sky130_fd_sc_hd_dlygate4sd3_1_inst_121_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6165:16  */
  assign s_unnamed_157 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_157; // (signal)
  /* find_the_damn_issue_sky130.vhd:6166:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_159 = sky130_fd_sc_hd_dlygate4sd3_1_inst_117_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6167:16  */
  assign s_unnamed_158 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_158; // (signal)
  /* find_the_damn_issue_sky130.vhd:6168:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_160 = sky130_fd_sc_hd_dlygate4sd3_1_inst_114_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6169:16  */
  assign s_unnamed_159 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_159; // (signal)
  /* find_the_damn_issue_sky130.vhd:6170:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_161 = sky130_fd_sc_hd_dlygate4sd3_1_inst_110_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6171:16  */
  assign s_unnamed_160 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_160; // (signal)
  /* find_the_damn_issue_sky130.vhd:6172:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_162 = sky130_fd_sc_hd_dlygate4sd3_1_inst_105_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6173:16  */
  assign s_unnamed_161 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_161; // (signal)
  /* find_the_damn_issue_sky130.vhd:6174:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_163 = sky130_fd_sc_hd_dlygate4sd3_1_inst_100_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6175:16  */
  assign s_unnamed_162 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_162; // (signal)
  /* find_the_damn_issue_sky130.vhd:6176:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_164 = sky130_fd_sc_hd_dlygate4sd3_1_inst_97_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6177:16  */
  assign s_unnamed_163 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_163; // (signal)
  /* find_the_damn_issue_sky130.vhd:6178:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_165 = sky130_fd_sc_hd_dlygate4sd3_1_inst_94_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6179:16  */
  assign s_unnamed_164 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_164; // (signal)
  /* find_the_damn_issue_sky130.vhd:6180:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_166 = sky130_fd_sc_hd_dlygate4sd3_1_inst_89_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6181:16  */
  assign s_unnamed_165 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_165; // (signal)
  /* find_the_damn_issue_sky130.vhd:6182:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_167 = sky130_fd_sc_hd_dlygate4sd3_1_inst_85_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6183:16  */
  assign s_unnamed_166 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_166; // (signal)
  /* find_the_damn_issue_sky130.vhd:6184:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_168 = sky130_fd_sc_hd_dlygate4sd3_1_inst_81_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6185:16  */
  assign s_unnamed_167 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_167; // (signal)
  /* find_the_damn_issue_sky130.vhd:6186:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_169 = sky130_fd_sc_hd_dlygate4sd3_1_inst_77_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6187:16  */
  assign s_unnamed_168 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_168; // (signal)
  /* find_the_damn_issue_sky130.vhd:6188:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_170 = sky130_fd_sc_hd_dlygate4sd3_1_inst_73_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6189:16  */
  assign s_unnamed_169 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_169; // (signal)
  /* find_the_damn_issue_sky130.vhd:6190:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_171 = sky130_fd_sc_hd_dlygate4sd3_1_inst_70_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6191:16  */
  assign s_unnamed_170 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_170; // (signal)
  /* find_the_damn_issue_sky130.vhd:6192:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_172 = sky130_fd_sc_hd_dlygate4sd3_1_inst_66_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6193:16  */
  assign s_unnamed_171 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_171; // (signal)
  /* find_the_damn_issue_sky130.vhd:6194:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_173 = sky130_fd_sc_hd_dlygate4sd3_1_inst_61_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6195:16  */
  assign s_unnamed_172 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_172; // (signal)
  /* find_the_damn_issue_sky130.vhd:6196:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_174 = sky130_fd_sc_hd_dlygate4sd3_1_inst_58_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6197:16  */
  assign s_unnamed_173 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_173; // (signal)
  /* find_the_damn_issue_sky130.vhd:6198:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_175 = sky130_fd_sc_hd_dlygate4sd3_1_inst_53_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6199:16  */
  assign s_unnamed_174 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_174; // (signal)
  /* find_the_damn_issue_sky130.vhd:6200:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_176 = sky130_fd_sc_hd_dlygate4sd3_1_inst_50_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6201:16  */
  assign s_unnamed_175 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_175; // (signal)
  /* find_the_damn_issue_sky130.vhd:6202:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_177 = sky130_fd_sc_hd_dlygate4sd3_1_inst_46_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6203:16  */
  assign s_unnamed_176 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_176; // (signal)
  /* find_the_damn_issue_sky130.vhd:6204:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_178 = sky130_fd_sc_hd_dlygate4sd3_1_inst_41_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6205:16  */
  assign s_unnamed_177 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_177; // (signal)
  /* find_the_damn_issue_sky130.vhd:6206:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_179 = sky130_fd_sc_hd_dlygate4sd3_1_inst_37_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6207:16  */
  assign s_unnamed_178 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_178; // (signal)
  /* find_the_damn_issue_sky130.vhd:6208:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_180 = sky130_fd_sc_hd_dlygate4sd3_1_inst_34_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6209:16  */
  assign s_unnamed_179 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_179; // (signal)
  /* find_the_damn_issue_sky130.vhd:6210:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_181 = sky130_fd_sc_hd_dlygate4sd3_1_inst_29_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6211:16  */
  assign s_unnamed_180 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_180; // (signal)
  /* find_the_damn_issue_sky130.vhd:6212:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_182 = sky130_fd_sc_hd_dlygate4sd3_1_inst_25_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6213:16  */
  assign s_unnamed_181 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_181; // (signal)
  /* find_the_damn_issue_sky130.vhd:6214:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_183 = sky130_fd_sc_hd_dlygate4sd3_1_inst_21_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6215:16  */
  assign s_unnamed_182 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_182; // (signal)
  /* find_the_damn_issue_sky130.vhd:6216:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_184 = sky130_fd_sc_hd_dlygate4sd3_1_inst_19_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6217:16  */
  assign s_unnamed_183 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_183; // (signal)
  /* find_the_damn_issue_sky130.vhd:6218:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_185 = sky130_fd_sc_hd_dlygate4sd3_1_inst_13_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6219:16  */
  assign s_unnamed_184 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_184; // (signal)
  /* find_the_damn_issue_sky130.vhd:6220:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_186 = sky130_fd_sc_hd_dlygate4sd3_1_inst_10_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:6221:16  */
  assign s_unnamed_185 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_185; // (signal)
  /* find_the_damn_issue_sky130.vhd:6222:16  */
  assign s_unnamed_186 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_6; // (signal)
  /* find_the_damn_issue_sky130.vhd:6223:16  */
  assign s_unnamed_187 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_12; // (signal)
  /* find_the_damn_issue_sky130.vhd:6224:16  */
  assign s_unnamed_188 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_18; // (signal)
  /* find_the_damn_issue_sky130.vhd:6225:16  */
  assign s_unnamed_189 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_24; // (signal)
  /* find_the_damn_issue_sky130.vhd:6226:16  */
  assign s_unnamed_190 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_30; // (signal)
  /* find_the_damn_issue_sky130.vhd:6227:16  */
  assign s_unnamed_191 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_36; // (signal)
  /* find_the_damn_issue_sky130.vhd:6228:16  */
  assign s_unnamed_192 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_42; // (signal)
  /* find_the_damn_issue_sky130.vhd:6229:16  */
  assign s_unnamed_193 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_48; // (signal)
  /* find_the_damn_issue_sky130.vhd:6230:16  */
  assign s_unnamed_194 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_54; // (signal)
  /* find_the_damn_issue_sky130.vhd:6231:16  */
  assign s_unnamed_195 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_60; // (signal)
  /* find_the_damn_issue_sky130.vhd:6232:16  */
  assign s_unnamed_196 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_66; // (signal)
  /* find_the_damn_issue_sky130.vhd:6233:16  */
  assign s_unnamed_197 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_72; // (signal)
  /* find_the_damn_issue_sky130.vhd:6234:16  */
  assign s_unnamed_198 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_78; // (signal)
  /* find_the_damn_issue_sky130.vhd:6235:16  */
  assign s_unnamed_199 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_84; // (signal)
  /* find_the_damn_issue_sky130.vhd:6236:16  */
  assign s_unnamed_200 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_90; // (signal)
  /* find_the_damn_issue_sky130.vhd:6237:16  */
  assign s_unnamed_201 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_96; // (signal)
  /* find_the_damn_issue_sky130.vhd:6238:16  */
  assign s_unnamed_202 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_102; // (signal)
  /* find_the_damn_issue_sky130.vhd:6239:16  */
  assign s_unnamed_203 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_108; // (signal)
  /* find_the_damn_issue_sky130.vhd:6240:16  */
  assign s_unnamed_204 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_114; // (signal)
  /* find_the_damn_issue_sky130.vhd:6241:16  */
  assign s_unnamed_205 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_120; // (signal)
  /* find_the_damn_issue_sky130.vhd:6242:16  */
  assign s_unnamed_206 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_126; // (signal)
  /* find_the_damn_issue_sky130.vhd:6243:16  */
  assign s_unnamed_207 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_132; // (signal)
  /* find_the_damn_issue_sky130.vhd:6244:16  */
  assign s_unnamed_208 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_138; // (signal)
  /* find_the_damn_issue_sky130.vhd:6245:16  */
  assign s_unnamed_209 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_144; // (signal)
  /* find_the_damn_issue_sky130.vhd:6246:16  */
  assign s_unnamed_210 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_150; // (signal)
  /* find_the_damn_issue_sky130.vhd:6247:16  */
  assign s_unnamed_211 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_156; // (signal)
  /* find_the_damn_issue_sky130.vhd:6248:16  */
  assign s_unnamed_212 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_162; // (signal)
  /* find_the_damn_issue_sky130.vhd:6249:16  */
  assign s_unnamed_213 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_168; // (signal)
  /* find_the_damn_issue_sky130.vhd:6250:16  */
  assign s_unnamed_214 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_174; // (signal)
  /* find_the_damn_issue_sky130.vhd:6251:16  */
  assign s_unnamed_215 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_180; // (signal)
  /* find_the_damn_issue_sky130.vhd:6252:16  */
  assign s_unnamed_216 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_186; // (signal)
  /* find_the_damn_issue_sky130.vhd:6254:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst (
    .A(s_chain_input_2),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_X));
  /* find_the_damn_issue_sky130.vhd:6259:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_2 (
    .A(s_unnamed),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_2_X));
  /* find_the_damn_issue_sky130.vhd:6264:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_3 (
    .A(s_unnamed_2),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_3_X));
  /* find_the_damn_issue_sky130.vhd:6269:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_4 (
    .A(s_unnamed_3),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_4_X));
  /* find_the_damn_issue_sky130.vhd:6274:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_5 (
    .A(s_unnamed_4),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_5_X));
  /* find_the_damn_issue_sky130.vhd:6279:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_6 (
    .A(s_unnamed_5),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_6_X));
  /* find_the_damn_issue_sky130.vhd:6284:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_7 (
    .A(s_unnamed_141),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_7_X));
  /* find_the_damn_issue_sky130.vhd:6289:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_8 (
    .A(s_unnamed_106),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_8_X));
  /* find_the_damn_issue_sky130.vhd:6294:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_9 (
    .A(s_unnamed_6),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_9_X));
  /* find_the_damn_issue_sky130.vhd:6299:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_10 (
    .A(s_unnamed_185),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_10_X));
  /* find_the_damn_issue_sky130.vhd:6304:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_11 (
    .A(s_unnamed_7),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_11_X));
  /* find_the_damn_issue_sky130.vhd:6309:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_12 (
    .A(s_unnamed_8),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_12_X));
  /* find_the_damn_issue_sky130.vhd:6314:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_13 (
    .A(s_unnamed_184),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_13_X));
  /* find_the_damn_issue_sky130.vhd:6319:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_14 (
    .A(s_unnamed_9),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_14_X));
  /* find_the_damn_issue_sky130.vhd:6324:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_15 (
    .A(s_unnamed_132),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_15_X));
  /* find_the_damn_issue_sky130.vhd:6329:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_16 (
    .A(s_unnamed_10),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_16_X));
  /* find_the_damn_issue_sky130.vhd:6334:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_17 (
    .A(s_unnamed_107),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_17_X));
  /* find_the_damn_issue_sky130.vhd:6339:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_18 (
    .A(s_unnamed_11),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_18_X));
  /* find_the_damn_issue_sky130.vhd:6344:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_19 (
    .A(s_unnamed_183),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_19_X));
  /* find_the_damn_issue_sky130.vhd:6349:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_20 (
    .A(s_unnamed_12),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_20_X));
  /* find_the_damn_issue_sky130.vhd:6354:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_21 (
    .A(s_unnamed_182),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_21_X));
  /* find_the_damn_issue_sky130.vhd:6359:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_22 (
    .A(s_unnamed_13),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_22_X));
  /* find_the_damn_issue_sky130.vhd:6364:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_23 (
    .A(s_unnamed_14),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_23_X));
  /* find_the_damn_issue_sky130.vhd:6369:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_24 (
    .A(s_unnamed_15),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_24_X));
  /* find_the_damn_issue_sky130.vhd:6374:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_25 (
    .A(s_unnamed_181),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_25_X));
  /* find_the_damn_issue_sky130.vhd:6379:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_26 (
    .A(s_unnamed_16),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_26_X));
  /* find_the_damn_issue_sky130.vhd:6384:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_27 (
    .A(s_unnamed_17),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_27_X));
  /* find_the_damn_issue_sky130.vhd:6389:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_28 (
    .A(s_unnamed_140),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_28_X));
  /* find_the_damn_issue_sky130.vhd:6394:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_29 (
    .A(s_unnamed_180),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_29_X));
  /* find_the_damn_issue_sky130.vhd:6399:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_30 (
    .A(s_unnamed_108),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_30_X));
  /* find_the_damn_issue_sky130.vhd:6404:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_31 (
    .A(s_unnamed_18),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_31_X));
  /* find_the_damn_issue_sky130.vhd:6409:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_32 (
    .A(s_unnamed_19),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_32_X));
  /* find_the_damn_issue_sky130.vhd:6414:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_33 (
    .A(s_unnamed_20),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_33_X));
  /* find_the_damn_issue_sky130.vhd:6419:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_34 (
    .A(s_unnamed_179),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_34_X));
  /* find_the_damn_issue_sky130.vhd:6424:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_35 (
    .A(s_unnamed_21),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_35_X));
  /* find_the_damn_issue_sky130.vhd:6429:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_36 (
    .A(s_unnamed_22),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_36_X));
  /* find_the_damn_issue_sky130.vhd:6434:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_37 (
    .A(s_unnamed_178),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_37_X));
  /* find_the_damn_issue_sky130.vhd:6439:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_38 (
    .A(s_unnamed_23),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_38_X));
  /* find_the_damn_issue_sky130.vhd:6444:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_39 (
    .A(s_unnamed_109),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_39_X));
  /* find_the_damn_issue_sky130.vhd:6449:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_40 (
    .A(s_unnamed_24),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_40_X));
  /* find_the_damn_issue_sky130.vhd:6454:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_41 (
    .A(s_unnamed_177),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_41_X));
  /* find_the_damn_issue_sky130.vhd:6459:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_42 (
    .A(s_unnamed_25),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_42_X));
  /* find_the_damn_issue_sky130.vhd:6464:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_43 (
    .A(s_unnamed_126),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_43_X));
  /* find_the_damn_issue_sky130.vhd:6469:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_44 (
    .A(s_unnamed_26),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_44_X));
  /* find_the_damn_issue_sky130.vhd:6474:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_45 (
    .A(s_unnamed_139),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_45_X));
  /* find_the_damn_issue_sky130.vhd:6479:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_46 (
    .A(s_unnamed_176),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_46_X));
  /* find_the_damn_issue_sky130.vhd:6484:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_47 (
    .A(s_unnamed_27),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_47_X));
  /* find_the_damn_issue_sky130.vhd:6489:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_48 (
    .A(s_unnamed_110),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_48_X));
  /* find_the_damn_issue_sky130.vhd:6494:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_49 (
    .A(s_unnamed_28),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_49_X));
  /* find_the_damn_issue_sky130.vhd:6499:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_50 (
    .A(s_unnamed_175),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_50_X));
  /* find_the_damn_issue_sky130.vhd:6504:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_51 (
    .A(s_unnamed_29),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_51_X));
  /* find_the_damn_issue_sky130.vhd:6509:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_52 (
    .A(s_unnamed_30),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_52_X));
  /* find_the_damn_issue_sky130.vhd:6514:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_53 (
    .A(s_unnamed_174),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_53_X));
  /* find_the_damn_issue_sky130.vhd:6519:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_54 (
    .A(s_unnamed_31),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_54_X));
  /* find_the_damn_issue_sky130.vhd:6524:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_55 (
    .A(s_unnamed_32),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_55_X));
  /* find_the_damn_issue_sky130.vhd:6529:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_56 (
    .A(s_unnamed_111),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_56_X));
  /* find_the_damn_issue_sky130.vhd:6534:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_57 (
    .A(s_unnamed_33),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_57_X));
  /* find_the_damn_issue_sky130.vhd:6539:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_58 (
    .A(s_unnamed_173),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_58_X));
  /* find_the_damn_issue_sky130.vhd:6544:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_59 (
    .A(s_unnamed_34),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_59_X));
  /* find_the_damn_issue_sky130.vhd:6549:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_60 (
    .A(s_unnamed_35),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_60_X));
  /* find_the_damn_issue_sky130.vhd:6554:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_61 (
    .A(s_unnamed_172),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_61_X));
  /* find_the_damn_issue_sky130.vhd:6559:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_62 (
    .A(s_unnamed_36),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_62_X));
  /* find_the_damn_issue_sky130.vhd:6564:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_63 (
    .A(s_unnamed_112),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_63_X));
  /* find_the_damn_issue_sky130.vhd:6569:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_64 (
    .A(s_unnamed_37),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_64_X));
  /* find_the_damn_issue_sky130.vhd:6574:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_65 (
    .A(s_unnamed_138),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_65_X));
  /* find_the_damn_issue_sky130.vhd:6579:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_66 (
    .A(s_unnamed_171),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_66_X));
  /* find_the_damn_issue_sky130.vhd:6584:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_67 (
    .A(s_unnamed_38),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_67_X));
  /* find_the_damn_issue_sky130.vhd:6589:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_68 (
    .A(s_unnamed_39),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_68_X));
  /* find_the_damn_issue_sky130.vhd:6594:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_69 (
    .A(s_unnamed_40),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_69_X));
  /* find_the_damn_issue_sky130.vhd:6599:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_70 (
    .A(s_unnamed_170),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_70_X));
  /* find_the_damn_issue_sky130.vhd:6604:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_71 (
    .A(s_unnamed_41),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_71_X));
  /* find_the_damn_issue_sky130.vhd:6609:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_72 (
    .A(s_unnamed_113),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_72_X));
  /* find_the_damn_issue_sky130.vhd:6614:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_73 (
    .A(s_unnamed_169),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_73_X));
  /* find_the_damn_issue_sky130.vhd:6619:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_74 (
    .A(s_unnamed_42),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_74_X));
  /* find_the_damn_issue_sky130.vhd:6624:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_75 (
    .A(s_unnamed_43),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_75_X));
  /* find_the_damn_issue_sky130.vhd:6629:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_76 (
    .A(s_unnamed_44),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_76_X));
  /* find_the_damn_issue_sky130.vhd:6634:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_77 (
    .A(s_unnamed_168),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_77_X));
  /* find_the_damn_issue_sky130.vhd:6639:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_78 (
    .A(s_unnamed_45),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_78_X));
  /* find_the_damn_issue_sky130.vhd:6644:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_79 (
    .A(s_unnamed_46),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_79_X));
  /* find_the_damn_issue_sky130.vhd:6649:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_80 (
    .A(s_unnamed_47),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_80_X));
  /* find_the_damn_issue_sky130.vhd:6654:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_81 (
    .A(s_unnamed_167),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_81_X));
  /* find_the_damn_issue_sky130.vhd:6659:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_82 (
    .A(s_unnamed_48),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_82_X));
  /* find_the_damn_issue_sky130.vhd:6664:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_83 (
    .A(s_unnamed_114),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_83_X));
  /* find_the_damn_issue_sky130.vhd:6669:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_84 (
    .A(s_unnamed_49),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_84_X));
  /* find_the_damn_issue_sky130.vhd:6674:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_85 (
    .A(s_unnamed_166),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_85_X));
  /* find_the_damn_issue_sky130.vhd:6679:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_86 (
    .A(s_unnamed_50),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_86_X));
  /* find_the_damn_issue_sky130.vhd:6684:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_87 (
    .A(s_unnamed_127),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_87_X));
  /* find_the_damn_issue_sky130.vhd:6689:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_88 (
    .A(s_unnamed_51),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_88_X));
  /* find_the_damn_issue_sky130.vhd:6694:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_89 (
    .A(s_unnamed_165),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_89_X));
  /* find_the_damn_issue_sky130.vhd:6699:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_90 (
    .A(s_unnamed_52),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_90_X));
  /* find_the_damn_issue_sky130.vhd:6704:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_91 (
    .A(s_unnamed_53),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_91_X));
  /* find_the_damn_issue_sky130.vhd:6709:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_92 (
    .A(s_unnamed_115),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_92_X));
  /* find_the_damn_issue_sky130.vhd:6714:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_93 (
    .A(s_unnamed_137),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_93_X));
  /* find_the_damn_issue_sky130.vhd:6719:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_94 (
    .A(s_unnamed_164),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_94_X));
  /* find_the_damn_issue_sky130.vhd:6724:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_95 (
    .A(s_unnamed_54),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_95_X));
  /* find_the_damn_issue_sky130.vhd:6729:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_96 (
    .A(s_unnamed_55),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_96_X));
  /* find_the_damn_issue_sky130.vhd:6734:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_97 (
    .A(s_unnamed_163),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_97_X));
  /* find_the_damn_issue_sky130.vhd:6739:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_98 (
    .A(s_unnamed_56),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_98_X));
  /* find_the_damn_issue_sky130.vhd:6744:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_99 (
    .A(s_unnamed_57),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_99_X));
  /* find_the_damn_issue_sky130.vhd:6749:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_100 (
    .A(s_unnamed_162),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_100_X));
  /* find_the_damn_issue_sky130.vhd:6754:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_101 (
    .A(s_unnamed_58),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_101_X));
  /* find_the_damn_issue_sky130.vhd:6759:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_102 (
    .A(s_unnamed_116),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_102_X));
  /* find_the_damn_issue_sky130.vhd:6764:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_103 (
    .A(s_unnamed_59),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_103_X));
  /* find_the_damn_issue_sky130.vhd:6769:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_104 (
    .A(s_unnamed_60),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_104_X));
  /* find_the_damn_issue_sky130.vhd:6774:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_105 (
    .A(s_unnamed_161),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_105_X));
  /* find_the_damn_issue_sky130.vhd:6779:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_106 (
    .A(s_unnamed_61),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_106_X));
  /* find_the_damn_issue_sky130.vhd:6784:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_107 (
    .A(s_unnamed_62),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_107_X));
  /* find_the_damn_issue_sky130.vhd:6789:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_108 (
    .A(s_unnamed_117),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_108_X));
  /* find_the_damn_issue_sky130.vhd:6794:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_109 (
    .A(s_unnamed_63),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_109_X));
  /* find_the_damn_issue_sky130.vhd:6799:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_110 (
    .A(s_unnamed_160),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_110_X));
  /* find_the_damn_issue_sky130.vhd:6804:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_111 (
    .A(s_unnamed_64),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_111_X));
  /* find_the_damn_issue_sky130.vhd:6809:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_112 (
    .A(s_unnamed_136),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_112_X));
  /* find_the_damn_issue_sky130.vhd:6814:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_113 (
    .A(s_unnamed_65),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_113_X));
  /* find_the_damn_issue_sky130.vhd:6819:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_114 (
    .A(s_unnamed_159),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_114_X));
  /* find_the_damn_issue_sky130.vhd:6824:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_115 (
    .A(s_unnamed_66),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_115_X));
  /* find_the_damn_issue_sky130.vhd:6829:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_116 (
    .A(s_unnamed_67),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_116_X));
  /* find_the_damn_issue_sky130.vhd:6834:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_117 (
    .A(s_unnamed_158),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_117_X));
  /* find_the_damn_issue_sky130.vhd:6839:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_118 (
    .A(s_unnamed_118),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_118_X));
  /* find_the_damn_issue_sky130.vhd:6844:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_119 (
    .A(s_unnamed_68),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_119_X));
  /* find_the_damn_issue_sky130.vhd:6849:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_120 (
    .A(s_unnamed_69),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_120_X));
  /* find_the_damn_issue_sky130.vhd:6854:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_121 (
    .A(s_unnamed_157),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_121_X));
  /* find_the_damn_issue_sky130.vhd:6859:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_122 (
    .A(s_unnamed_70),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_122_X));
  /* find_the_damn_issue_sky130.vhd:6864:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_123 (
    .A(s_unnamed_71),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_123_X));
  /* find_the_damn_issue_sky130.vhd:6869:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_124 (
    .A(s_unnamed_156),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_124_X));
  /* find_the_damn_issue_sky130.vhd:6874:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_125 (
    .A(s_unnamed_119),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_125_X));
  /* find_the_damn_issue_sky130.vhd:6879:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_126 (
    .A(s_unnamed_72),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_126_X));
  /* find_the_damn_issue_sky130.vhd:6884:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_127 (
    .A(s_unnamed_73),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_127_X));
  /* find_the_damn_issue_sky130.vhd:6889:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_128 (
    .A(s_unnamed_74),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_128_X));
  /* find_the_damn_issue_sky130.vhd:6894:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_129 (
    .A(s_unnamed_128),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_129_X));
  /* find_the_damn_issue_sky130.vhd:6899:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_130 (
    .A(s_unnamed_155),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_130_X));
  /* find_the_damn_issue_sky130.vhd:6904:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_131 (
    .A(s_unnamed_75),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_131_X));
  /* find_the_damn_issue_sky130.vhd:6909:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_132 (
    .A(s_unnamed_135),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_132_X));
  /* find_the_damn_issue_sky130.vhd:6914:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_133 (
    .A(s_unnamed_76),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_133_X));
  /* find_the_damn_issue_sky130.vhd:6919:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_134 (
    .A(s_unnamed_154),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_134_X));
  /* find_the_damn_issue_sky130.vhd:6924:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_135 (
    .A(s_unnamed_77),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_135_X));
  /* find_the_damn_issue_sky130.vhd:6929:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_136 (
    .A(s_unnamed_78),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_136_X));
  /* find_the_damn_issue_sky130.vhd:6934:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_137 (
    .A(s_unnamed_153),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_137_X));
  /* find_the_damn_issue_sky130.vhd:6939:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_138 (
    .A(s_unnamed_79),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_138_X));
  /* find_the_damn_issue_sky130.vhd:6944:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_139 (
    .A(s_unnamed_120),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_139_X));
  /* find_the_damn_issue_sky130.vhd:6949:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_140 (
    .A(s_unnamed_80),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_140_X));
  /* find_the_damn_issue_sky130.vhd:6954:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_141 (
    .A(s_unnamed_152),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_141_X));
  /* find_the_damn_issue_sky130.vhd:6959:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_142 (
    .A(s_unnamed_81),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_142_X));
  /* find_the_damn_issue_sky130.vhd:6964:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_143 (
    .A(s_unnamed_82),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_143_X));
  /* find_the_damn_issue_sky130.vhd:6969:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_144 (
    .A(s_unnamed_83),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_144_X));
  /* find_the_damn_issue_sky130.vhd:6974:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_145 (
    .A(s_unnamed_151),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_145_X));
  /* find_the_damn_issue_sky130.vhd:6979:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_146 (
    .A(s_unnamed_121),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_146_X));
  /* find_the_damn_issue_sky130.vhd:6984:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_147 (
    .A(s_unnamed_84),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_147_X));
  /* find_the_damn_issue_sky130.vhd:6989:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_148 (
    .A(s_unnamed_150),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_148_X));
  /* find_the_damn_issue_sky130.vhd:6994:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_149 (
    .A(s_unnamed_85),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_149_X));
  /* find_the_damn_issue_sky130.vhd:6999:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_150 (
    .A(s_unnamed_134),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_150_X));
  /* find_the_damn_issue_sky130.vhd:7004:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_151 (
    .A(s_unnamed_86),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_151_X));
  /* find_the_damn_issue_sky130.vhd:7009:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_152 (
    .A(s_unnamed_87),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_152_X));
  /* find_the_damn_issue_sky130.vhd:7014:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_153 (
    .A(s_unnamed_88),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_153_X));
  /* find_the_damn_issue_sky130.vhd:7019:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_154 (
    .A(s_unnamed_149),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_154_X));
  /* find_the_damn_issue_sky130.vhd:7024:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_155 (
    .A(s_unnamed_122),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_155_X));
  /* find_the_damn_issue_sky130.vhd:7029:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_156 (
    .A(s_unnamed_89),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_156_X));
  /* find_the_damn_issue_sky130.vhd:7034:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_157 (
    .A(s_unnamed_130),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_157_X));
  /* find_the_damn_issue_sky130.vhd:7039:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_158 (
    .A(s_unnamed_148),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_158_X));
  /* find_the_damn_issue_sky130.vhd:7044:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_159 (
    .A(s_unnamed_90),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_159_X));
  /* find_the_damn_issue_sky130.vhd:7049:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_160 (
    .A(s_unnamed_91),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_160_X));
  /* find_the_damn_issue_sky130.vhd:7054:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_161 (
    .A(s_unnamed_131),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_161_X));
  /* find_the_damn_issue_sky130.vhd:7059:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_162 (
    .A(s_unnamed_92),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_162_X));
  /* find_the_damn_issue_sky130.vhd:7064:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_163 (
    .A(s_unnamed_147),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_163_X));
  /* find_the_damn_issue_sky130.vhd:7069:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_164 (
    .A(s_unnamed_93),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_164_X));
  /* find_the_damn_issue_sky130.vhd:7074:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_165 (
    .A(s_unnamed_123),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_165_X));
  /* find_the_damn_issue_sky130.vhd:7079:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_166 (
    .A(s_unnamed_94),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_166_X));
  /* find_the_damn_issue_sky130.vhd:7084:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_167 (
    .A(s_unnamed_146),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_167_X));
  /* find_the_damn_issue_sky130.vhd:7089:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_168 (
    .A(s_unnamed_95),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_168_X));
  /* find_the_damn_issue_sky130.vhd:7094:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_169 (
    .A(s_unnamed_96),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_169_X));
  /* find_the_damn_issue_sky130.vhd:7099:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_170 (
    .A(s_unnamed_133),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_170_X));
  /* find_the_damn_issue_sky130.vhd:7104:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_171 (
    .A(s_unnamed_145),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_171_X));
  /* find_the_damn_issue_sky130.vhd:7109:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_172 (
    .A(s_unnamed_97),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_172_X));
  /* find_the_damn_issue_sky130.vhd:7114:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_173 (
    .A(s_unnamed_98),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_173_X));
  /* find_the_damn_issue_sky130.vhd:7119:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_174 (
    .A(s_unnamed_124),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_174_X));
  /* find_the_damn_issue_sky130.vhd:7124:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_175 (
    .A(s_unnamed_144),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_175_X));
  /* find_the_damn_issue_sky130.vhd:7129:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_176 (
    .A(s_unnamed_99),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_176_X));
  /* find_the_damn_issue_sky130.vhd:7134:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_177 (
    .A(s_unnamed_129),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_177_X));
  /* find_the_damn_issue_sky130.vhd:7139:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_178 (
    .A(s_unnamed_100),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_178_X));
  /* find_the_damn_issue_sky130.vhd:7144:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_179 (
    .A(s_unnamed_101),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_179_X));
  /* find_the_damn_issue_sky130.vhd:7149:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_180 (
    .A(s_unnamed_143),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_180_X));
  /* find_the_damn_issue_sky130.vhd:7154:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_181 (
    .A(s_unnamed_102),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_181_X));
  /* find_the_damn_issue_sky130.vhd:7159:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_182 (
    .A(s_unnamed_125),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_182_X));
  /* find_the_damn_issue_sky130.vhd:7164:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_183 (
    .A(s_unnamed_103),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_183_X));
  /* find_the_damn_issue_sky130.vhd:7169:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_184 (
    .A(s_unnamed_142),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_184_X));
  /* find_the_damn_issue_sky130.vhd:7174:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_185 (
    .A(s_unnamed_104),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_185_X));
  /* find_the_damn_issue_sky130.vhd:7179:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_186 (
    .A(s_unnamed_105),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_186_X));
  /* find_the_damn_issue_sky130.vhd:7410:60  */
  assign n8956_o = n8955_o[31:1];
  /* find_the_damn_issue_sky130.vhd:7410:74  */
  assign n8957_o = {n8956_o, s_chain_input_2};
  /* find_the_damn_issue_sky130.vhd:7412:60  */
  assign n8958_o = n8957_o[31:2];
  /* find_the_damn_issue_sky130.vhd:7412:74  */
  assign n8959_o = {n8958_o, s_unnamed_186};
  /* find_the_damn_issue_sky130.vhd:7412:121  */
  assign n8960_o = n8957_o[0];
  /* find_the_damn_issue_sky130.vhd:7412:90  */
  assign n8961_o = {n8959_o, n8960_o};
  /* find_the_damn_issue_sky130.vhd:7414:42  */
  assign n8962_o = n8961_o[31:3];
  /* find_the_damn_issue_sky130.vhd:7414:56  */
  assign n8963_o = {n8962_o, s_unnamed_187};
  /* find_the_damn_issue_sky130.vhd:7414:83  */
  assign n8964_o = n8961_o[1:0];
  /* find_the_damn_issue_sky130.vhd:7414:72  */
  assign n8965_o = {n8963_o, n8964_o};
  /* find_the_damn_issue_sky130.vhd:7416:44  */
  assign n8966_o = n8965_o[31:4];
  /* find_the_damn_issue_sky130.vhd:7416:58  */
  assign n8967_o = {n8966_o, s_unnamed_188};
  /* find_the_damn_issue_sky130.vhd:7416:87  */
  assign n8968_o = n8965_o[2:0];
  /* find_the_damn_issue_sky130.vhd:7416:74  */
  assign n8969_o = {n8967_o, n8968_o};
  /* find_the_damn_issue_sky130.vhd:7418:44  */
  assign n8970_o = n8969_o[31:5];
  /* find_the_damn_issue_sky130.vhd:7418:58  */
  assign n8971_o = {n8970_o, s_unnamed_189};
  /* find_the_damn_issue_sky130.vhd:7418:87  */
  assign n8972_o = n8969_o[3:0];
  /* find_the_damn_issue_sky130.vhd:7418:74  */
  assign n8973_o = {n8971_o, n8972_o};
  /* find_the_damn_issue_sky130.vhd:7420:44  */
  assign n8974_o = n8973_o[31:6];
  /* find_the_damn_issue_sky130.vhd:7420:58  */
  assign n8975_o = {n8974_o, s_unnamed_190};
  /* find_the_damn_issue_sky130.vhd:7420:87  */
  assign n8976_o = n8973_o[4:0];
  /* find_the_damn_issue_sky130.vhd:7420:74  */
  assign n8977_o = {n8975_o, n8976_o};
  /* find_the_damn_issue_sky130.vhd:7422:44  */
  assign n8978_o = n8977_o[31:7];
  /* find_the_damn_issue_sky130.vhd:7422:58  */
  assign n8979_o = {n8978_o, s_unnamed_191};
  /* find_the_damn_issue_sky130.vhd:7422:87  */
  assign n8980_o = n8977_o[5:0];
  /* find_the_damn_issue_sky130.vhd:7422:74  */
  assign n8981_o = {n8979_o, n8980_o};
  /* find_the_damn_issue_sky130.vhd:7424:44  */
  assign n8982_o = n8981_o[31:8];
  /* find_the_damn_issue_sky130.vhd:7424:58  */
  assign n8983_o = {n8982_o, s_unnamed_192};
  /* find_the_damn_issue_sky130.vhd:7424:87  */
  assign n8984_o = n8981_o[6:0];
  /* find_the_damn_issue_sky130.vhd:7424:74  */
  assign n8985_o = {n8983_o, n8984_o};
  /* find_the_damn_issue_sky130.vhd:7426:44  */
  assign n8986_o = n8985_o[31:9];
  /* find_the_damn_issue_sky130.vhd:7426:58  */
  assign n8987_o = {n8986_o, s_unnamed_193};
  /* find_the_damn_issue_sky130.vhd:7426:87  */
  assign n8988_o = n8985_o[7:0];
  /* find_the_damn_issue_sky130.vhd:7426:74  */
  assign n8989_o = {n8987_o, n8988_o};
  /* find_the_damn_issue_sky130.vhd:7428:44  */
  assign n8990_o = n8989_o[31:10];
  /* find_the_damn_issue_sky130.vhd:7428:59  */
  assign n8991_o = {n8990_o, s_unnamed_194};
  /* find_the_damn_issue_sky130.vhd:7428:88  */
  assign n8992_o = n8989_o[8:0];
  /* find_the_damn_issue_sky130.vhd:7428:75  */
  assign n8993_o = {n8991_o, n8992_o};
  /* find_the_damn_issue_sky130.vhd:7430:45  */
  assign n8994_o = n8993_o[31:11];
  /* find_the_damn_issue_sky130.vhd:7430:60  */
  assign n8995_o = {n8994_o, s_unnamed_195};
  /* find_the_damn_issue_sky130.vhd:7430:89  */
  assign n8996_o = n8993_o[9:0];
  /* find_the_damn_issue_sky130.vhd:7430:76  */
  assign n8997_o = {n8995_o, n8996_o};
  /* find_the_damn_issue_sky130.vhd:7432:46  */
  assign n8998_o = n8997_o[31:12];
  /* find_the_damn_issue_sky130.vhd:7432:61  */
  assign n8999_o = {n8998_o, s_unnamed_196};
  /* find_the_damn_issue_sky130.vhd:7432:91  */
  assign n9000_o = n8997_o[10:0];
  /* find_the_damn_issue_sky130.vhd:7432:77  */
  assign n9001_o = {n8999_o, n9000_o};
  /* find_the_damn_issue_sky130.vhd:7434:46  */
  assign n9002_o = n9001_o[31:13];
  /* find_the_damn_issue_sky130.vhd:7434:61  */
  assign n9003_o = {n9002_o, s_unnamed_197};
  /* find_the_damn_issue_sky130.vhd:7434:91  */
  assign n9004_o = n9001_o[11:0];
  /* find_the_damn_issue_sky130.vhd:7434:77  */
  assign n9005_o = {n9003_o, n9004_o};
  /* find_the_damn_issue_sky130.vhd:7436:46  */
  assign n9006_o = n9005_o[31:14];
  /* find_the_damn_issue_sky130.vhd:7436:61  */
  assign n9007_o = {n9006_o, s_unnamed_198};
  /* find_the_damn_issue_sky130.vhd:7436:91  */
  assign n9008_o = n9005_o[12:0];
  /* find_the_damn_issue_sky130.vhd:7436:77  */
  assign n9009_o = {n9007_o, n9008_o};
  /* find_the_damn_issue_sky130.vhd:7438:46  */
  assign n9010_o = n9009_o[31:15];
  /* find_the_damn_issue_sky130.vhd:7438:61  */
  assign n9011_o = {n9010_o, s_unnamed_199};
  /* find_the_damn_issue_sky130.vhd:7438:91  */
  assign n9012_o = n9009_o[13:0];
  /* find_the_damn_issue_sky130.vhd:7438:77  */
  assign n9013_o = {n9011_o, n9012_o};
  /* find_the_damn_issue_sky130.vhd:7440:46  */
  assign n9014_o = n9013_o[31:16];
  /* find_the_damn_issue_sky130.vhd:7440:61  */
  assign n9015_o = {n9014_o, s_unnamed_200};
  /* find_the_damn_issue_sky130.vhd:7440:91  */
  assign n9016_o = n9013_o[14:0];
  /* find_the_damn_issue_sky130.vhd:7440:77  */
  assign n9017_o = {n9015_o, n9016_o};
  /* find_the_damn_issue_sky130.vhd:7442:46  */
  assign n9018_o = n9017_o[31:17];
  /* find_the_damn_issue_sky130.vhd:7442:61  */
  assign n9019_o = {n9018_o, s_unnamed_201};
  /* find_the_damn_issue_sky130.vhd:7442:91  */
  assign n9020_o = n9017_o[15:0];
  /* find_the_damn_issue_sky130.vhd:7442:77  */
  assign n9021_o = {n9019_o, n9020_o};
  /* find_the_damn_issue_sky130.vhd:7444:46  */
  assign n9022_o = n9021_o[31:18];
  /* find_the_damn_issue_sky130.vhd:7444:61  */
  assign n9023_o = {n9022_o, s_unnamed_202};
  /* find_the_damn_issue_sky130.vhd:7444:91  */
  assign n9024_o = n9021_o[16:0];
  /* find_the_damn_issue_sky130.vhd:7444:77  */
  assign n9025_o = {n9023_o, n9024_o};
  /* find_the_damn_issue_sky130.vhd:7446:46  */
  assign n9026_o = n9025_o[31:19];
  /* find_the_damn_issue_sky130.vhd:7446:61  */
  assign n9027_o = {n9026_o, s_unnamed_203};
  /* find_the_damn_issue_sky130.vhd:7446:91  */
  assign n9028_o = n9025_o[17:0];
  /* find_the_damn_issue_sky130.vhd:7446:77  */
  assign n9029_o = {n9027_o, n9028_o};
  /* find_the_damn_issue_sky130.vhd:7448:46  */
  assign n9030_o = n9029_o[31:20];
  /* find_the_damn_issue_sky130.vhd:7448:61  */
  assign n9031_o = {n9030_o, s_unnamed_204};
  /* find_the_damn_issue_sky130.vhd:7448:91  */
  assign n9032_o = n9029_o[18:0];
  /* find_the_damn_issue_sky130.vhd:7448:77  */
  assign n9033_o = {n9031_o, n9032_o};
  /* find_the_damn_issue_sky130.vhd:7450:46  */
  assign n9034_o = n9033_o[31:21];
  /* find_the_damn_issue_sky130.vhd:7450:61  */
  assign n9035_o = {n9034_o, s_unnamed_205};
  /* find_the_damn_issue_sky130.vhd:7450:91  */
  assign n9036_o = n9033_o[19:0];
  /* find_the_damn_issue_sky130.vhd:7450:77  */
  assign n9037_o = {n9035_o, n9036_o};
  /* find_the_damn_issue_sky130.vhd:7452:46  */
  assign n9038_o = n9037_o[31:22];
  /* find_the_damn_issue_sky130.vhd:7452:61  */
  assign n9039_o = {n9038_o, s_unnamed_206};
  /* find_the_damn_issue_sky130.vhd:7452:91  */
  assign n9040_o = n9037_o[20:0];
  /* find_the_damn_issue_sky130.vhd:7452:77  */
  assign n9041_o = {n9039_o, n9040_o};
  /* find_the_damn_issue_sky130.vhd:7454:46  */
  assign n9042_o = n9041_o[31:23];
  /* find_the_damn_issue_sky130.vhd:7454:61  */
  assign n9043_o = {n9042_o, s_unnamed_207};
  /* find_the_damn_issue_sky130.vhd:7454:91  */
  assign n9044_o = n9041_o[21:0];
  /* find_the_damn_issue_sky130.vhd:7454:77  */
  assign n9045_o = {n9043_o, n9044_o};
  /* find_the_damn_issue_sky130.vhd:7456:46  */
  assign n9046_o = n9045_o[31:24];
  /* find_the_damn_issue_sky130.vhd:7456:61  */
  assign n9047_o = {n9046_o, s_unnamed_208};
  /* find_the_damn_issue_sky130.vhd:7456:91  */
  assign n9048_o = n9045_o[22:0];
  /* find_the_damn_issue_sky130.vhd:7456:77  */
  assign n9049_o = {n9047_o, n9048_o};
  /* find_the_damn_issue_sky130.vhd:7458:46  */
  assign n9050_o = n9049_o[31:25];
  /* find_the_damn_issue_sky130.vhd:7458:61  */
  assign n9051_o = {n9050_o, s_unnamed_209};
  /* find_the_damn_issue_sky130.vhd:7458:91  */
  assign n9052_o = n9049_o[23:0];
  /* find_the_damn_issue_sky130.vhd:7458:77  */
  assign n9053_o = {n9051_o, n9052_o};
  /* find_the_damn_issue_sky130.vhd:7460:46  */
  assign n9054_o = n9053_o[31:26];
  /* find_the_damn_issue_sky130.vhd:7460:61  */
  assign n9055_o = {n9054_o, s_unnamed_210};
  /* find_the_damn_issue_sky130.vhd:7460:91  */
  assign n9056_o = n9053_o[24:0];
  /* find_the_damn_issue_sky130.vhd:7460:77  */
  assign n9057_o = {n9055_o, n9056_o};
  /* find_the_damn_issue_sky130.vhd:7462:46  */
  assign n9058_o = n9057_o[31:27];
  /* find_the_damn_issue_sky130.vhd:7462:61  */
  assign n9059_o = {n9058_o, s_unnamed_211};
  /* find_the_damn_issue_sky130.vhd:7462:91  */
  assign n9060_o = n9057_o[25:0];
  /* find_the_damn_issue_sky130.vhd:7462:77  */
  assign n9061_o = {n9059_o, n9060_o};
  /* find_the_damn_issue_sky130.vhd:7464:46  */
  assign n9062_o = n9061_o[31:28];
  /* find_the_damn_issue_sky130.vhd:7464:61  */
  assign n9063_o = {n9062_o, s_unnamed_212};
  /* find_the_damn_issue_sky130.vhd:7464:91  */
  assign n9064_o = n9061_o[26:0];
  /* find_the_damn_issue_sky130.vhd:7464:77  */
  assign n9065_o = {n9063_o, n9064_o};
  /* find_the_damn_issue_sky130.vhd:7466:46  */
  assign n9066_o = n9065_o[31:29];
  /* find_the_damn_issue_sky130.vhd:7466:61  */
  assign n9067_o = {n9066_o, s_unnamed_213};
  /* find_the_damn_issue_sky130.vhd:7466:91  */
  assign n9068_o = n9065_o[27:0];
  /* find_the_damn_issue_sky130.vhd:7466:77  */
  assign n9069_o = {n9067_o, n9068_o};
  /* find_the_damn_issue_sky130.vhd:7468:46  */
  assign n9070_o = n9069_o[31:30];
  /* find_the_damn_issue_sky130.vhd:7468:61  */
  assign n9071_o = {n9070_o, s_unnamed_214};
  /* find_the_damn_issue_sky130.vhd:7468:91  */
  assign n9072_o = n9069_o[28:0];
  /* find_the_damn_issue_sky130.vhd:7468:77  */
  assign n9073_o = {n9071_o, n9072_o};
  /* find_the_damn_issue_sky130.vhd:7470:46  */
  assign n9074_o = n9073_o[31];
  /* find_the_damn_issue_sky130.vhd:7470:61  */
  assign n9075_o = {n9074_o, s_unnamed_215};
  /* find_the_damn_issue_sky130.vhd:7470:91  */
  assign n9076_o = n9073_o[29:0];
  /* find_the_damn_issue_sky130.vhd:7470:77  */
  assign n9077_o = {n9075_o, n9076_o};
  /* find_the_damn_issue_sky130.vhd:7471:62  */
  assign n9078_o = n9077_o[30:0];
  /* find_the_damn_issue_sky130.vhd:7471:48  */
  assign n9079_o = {s_unnamed_216, n9078_o};
  /* find_the_damn_issue_sky130.vhd:7473:71  */
  assign n9080_o = n9079_o[0];
  /* find_the_damn_issue_sky130.vhd:7473:25  */
  assign n9082_o = in_delay == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:7474:71  */
  assign n9083_o = n9079_o[1];
  /* find_the_damn_issue_sky130.vhd:7474:25  */
  assign n9085_o = in_delay == 5'b00001;
  /* find_the_damn_issue_sky130.vhd:7475:71  */
  assign n9086_o = n9079_o[2];
  /* find_the_damn_issue_sky130.vhd:7475:25  */
  assign n9088_o = in_delay == 5'b00010;
  /* find_the_damn_issue_sky130.vhd:7476:71  */
  assign n9089_o = n9079_o[3];
  /* find_the_damn_issue_sky130.vhd:7476:25  */
  assign n9091_o = in_delay == 5'b00011;
  /* find_the_damn_issue_sky130.vhd:7477:71  */
  assign n9092_o = n9079_o[4];
  /* find_the_damn_issue_sky130.vhd:7477:25  */
  assign n9094_o = in_delay == 5'b00100;
  /* find_the_damn_issue_sky130.vhd:7478:71  */
  assign n9095_o = n9079_o[5];
  /* find_the_damn_issue_sky130.vhd:7478:25  */
  assign n9097_o = in_delay == 5'b00101;
  /* find_the_damn_issue_sky130.vhd:7479:71  */
  assign n9098_o = n9079_o[6];
  /* find_the_damn_issue_sky130.vhd:7479:25  */
  assign n9100_o = in_delay == 5'b00110;
  /* find_the_damn_issue_sky130.vhd:7480:71  */
  assign n9101_o = n9079_o[7];
  /* find_the_damn_issue_sky130.vhd:7480:25  */
  assign n9103_o = in_delay == 5'b00111;
  /* find_the_damn_issue_sky130.vhd:7481:71  */
  assign n9104_o = n9079_o[8];
  /* find_the_damn_issue_sky130.vhd:7481:25  */
  assign n9106_o = in_delay == 5'b01000;
  /* find_the_damn_issue_sky130.vhd:7482:71  */
  assign n9107_o = n9079_o[9];
  /* find_the_damn_issue_sky130.vhd:7482:25  */
  assign n9109_o = in_delay == 5'b01001;
  /* find_the_damn_issue_sky130.vhd:7483:71  */
  assign n9110_o = n9079_o[10];
  /* find_the_damn_issue_sky130.vhd:7483:25  */
  assign n9112_o = in_delay == 5'b01010;
  /* find_the_damn_issue_sky130.vhd:7484:71  */
  assign n9113_o = n9079_o[11];
  /* find_the_damn_issue_sky130.vhd:7484:25  */
  assign n9115_o = in_delay == 5'b01011;
  /* find_the_damn_issue_sky130.vhd:7485:71  */
  assign n9116_o = n9079_o[12];
  /* find_the_damn_issue_sky130.vhd:7485:25  */
  assign n9118_o = in_delay == 5'b01100;
  /* find_the_damn_issue_sky130.vhd:7486:71  */
  assign n9119_o = n9079_o[13];
  /* find_the_damn_issue_sky130.vhd:7486:25  */
  assign n9121_o = in_delay == 5'b01101;
  /* find_the_damn_issue_sky130.vhd:7487:71  */
  assign n9122_o = n9079_o[14];
  /* find_the_damn_issue_sky130.vhd:7487:25  */
  assign n9124_o = in_delay == 5'b01110;
  /* find_the_damn_issue_sky130.vhd:7488:71  */
  assign n9125_o = n9079_o[15];
  /* find_the_damn_issue_sky130.vhd:7488:25  */
  assign n9127_o = in_delay == 5'b01111;
  /* find_the_damn_issue_sky130.vhd:7489:71  */
  assign n9128_o = n9079_o[16];
  /* find_the_damn_issue_sky130.vhd:7489:25  */
  assign n9130_o = in_delay == 5'b10000;
  /* find_the_damn_issue_sky130.vhd:7490:71  */
  assign n9131_o = n9079_o[17];
  /* find_the_damn_issue_sky130.vhd:7490:25  */
  assign n9133_o = in_delay == 5'b10001;
  /* find_the_damn_issue_sky130.vhd:7491:71  */
  assign n9134_o = n9079_o[18];
  /* find_the_damn_issue_sky130.vhd:7491:25  */
  assign n9136_o = in_delay == 5'b10010;
  /* find_the_damn_issue_sky130.vhd:7492:71  */
  assign n9137_o = n9079_o[19];
  /* find_the_damn_issue_sky130.vhd:7492:25  */
  assign n9139_o = in_delay == 5'b10011;
  /* find_the_damn_issue_sky130.vhd:7493:71  */
  assign n9140_o = n9079_o[20];
  /* find_the_damn_issue_sky130.vhd:7493:25  */
  assign n9142_o = in_delay == 5'b10100;
  /* find_the_damn_issue_sky130.vhd:7494:71  */
  assign n9143_o = n9079_o[21];
  /* find_the_damn_issue_sky130.vhd:7494:25  */
  assign n9145_o = in_delay == 5'b10101;
  /* find_the_damn_issue_sky130.vhd:7495:71  */
  assign n9146_o = n9079_o[22];
  /* find_the_damn_issue_sky130.vhd:7495:25  */
  assign n9148_o = in_delay == 5'b10110;
  /* find_the_damn_issue_sky130.vhd:7496:71  */
  assign n9149_o = n9079_o[23];
  /* find_the_damn_issue_sky130.vhd:7496:25  */
  assign n9151_o = in_delay == 5'b10111;
  /* find_the_damn_issue_sky130.vhd:7497:71  */
  assign n9152_o = n9079_o[24];
  /* find_the_damn_issue_sky130.vhd:7497:25  */
  assign n9154_o = in_delay == 5'b11000;
  /* find_the_damn_issue_sky130.vhd:7498:71  */
  assign n9155_o = n9079_o[25];
  /* find_the_damn_issue_sky130.vhd:7498:25  */
  assign n9157_o = in_delay == 5'b11001;
  /* find_the_damn_issue_sky130.vhd:7499:71  */
  assign n9158_o = n9079_o[26];
  /* find_the_damn_issue_sky130.vhd:7499:25  */
  assign n9160_o = in_delay == 5'b11010;
  /* find_the_damn_issue_sky130.vhd:7500:71  */
  assign n9161_o = n9079_o[27];
  /* find_the_damn_issue_sky130.vhd:7500:25  */
  assign n9163_o = in_delay == 5'b11011;
  /* find_the_damn_issue_sky130.vhd:7501:71  */
  assign n9164_o = n9079_o[28];
  /* find_the_damn_issue_sky130.vhd:7501:25  */
  assign n9166_o = in_delay == 5'b11100;
  /* find_the_damn_issue_sky130.vhd:7502:71  */
  assign n9167_o = n9079_o[29];
  /* find_the_damn_issue_sky130.vhd:7502:25  */
  assign n9169_o = in_delay == 5'b11101;
  /* find_the_damn_issue_sky130.vhd:7503:71  */
  assign n9170_o = n9079_o[30];
  /* find_the_damn_issue_sky130.vhd:7503:25  */
  assign n9172_o = in_delay == 5'b11110;
  /* find_the_damn_issue_sky130.vhd:7504:71  */
  assign n9173_o = n9079_o[31];
  /* find_the_damn_issue_sky130.vhd:7504:25  */
  assign n9175_o = in_delay == 5'b11111;
  assign n9176_o = {n9175_o, n9172_o, n9169_o, n9166_o, n9163_o, n9160_o, n9157_o, n9154_o, n9151_o, n9148_o, n9145_o, n9142_o, n9139_o, n9136_o, n9133_o, n9130_o, n9127_o, n9124_o, n9121_o, n9118_o, n9115_o, n9112_o, n9109_o, n9106_o, n9103_o, n9100_o, n9097_o, n9094_o, n9091_o, n9088_o, n9085_o, n9082_o};
  /* find_the_damn_issue_sky130.vhd:7472:17  */
  always @*
    case (n9176_o)
      32'b10000000000000000000000000000000: n9178_o = n9173_o;
      32'b01000000000000000000000000000000: n9178_o = n9170_o;
      32'b00100000000000000000000000000000: n9178_o = n9167_o;
      32'b00010000000000000000000000000000: n9178_o = n9164_o;
      32'b00001000000000000000000000000000: n9178_o = n9161_o;
      32'b00000100000000000000000000000000: n9178_o = n9158_o;
      32'b00000010000000000000000000000000: n9178_o = n9155_o;
      32'b00000001000000000000000000000000: n9178_o = n9152_o;
      32'b00000000100000000000000000000000: n9178_o = n9149_o;
      32'b00000000010000000000000000000000: n9178_o = n9146_o;
      32'b00000000001000000000000000000000: n9178_o = n9143_o;
      32'b00000000000100000000000000000000: n9178_o = n9140_o;
      32'b00000000000010000000000000000000: n9178_o = n9137_o;
      32'b00000000000001000000000000000000: n9178_o = n9134_o;
      32'b00000000000000100000000000000000: n9178_o = n9131_o;
      32'b00000000000000010000000000000000: n9178_o = n9128_o;
      32'b00000000000000001000000000000000: n9178_o = n9125_o;
      32'b00000000000000000100000000000000: n9178_o = n9122_o;
      32'b00000000000000000010000000000000: n9178_o = n9119_o;
      32'b00000000000000000001000000000000: n9178_o = n9116_o;
      32'b00000000000000000000100000000000: n9178_o = n9113_o;
      32'b00000000000000000000010000000000: n9178_o = n9110_o;
      32'b00000000000000000000001000000000: n9178_o = n9107_o;
      32'b00000000000000000000000100000000: n9178_o = n9104_o;
      32'b00000000000000000000000010000000: n9178_o = n9101_o;
      32'b00000000000000000000000001000000: n9178_o = n9098_o;
      32'b00000000000000000000000000100000: n9178_o = n9095_o;
      32'b00000000000000000000000000010000: n9178_o = n9092_o;
      32'b00000000000000000000000000001000: n9178_o = n9089_o;
      32'b00000000000000000000000000000100: n9178_o = n9086_o;
      32'b00000000000000000000000000000010: n9178_o = n9083_o;
      32'b00000000000000000000000000000001: n9178_o = n9080_o;
      default: n9178_o = 1'bX;
    endcase
endmodule

module delay_chain_with_taps
  (input  in_chain_input,
   input  [4:0] in_delay,
   output out_chain_output);
  wire s_chain_input_2;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_2;
  wire s_unnamed;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_3;
  wire s_unnamed_2;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_4;
  wire s_unnamed_3;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_5;
  wire s_unnamed_4;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_6;
  wire s_unnamed_5;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_7;
  wire s_unnamed_6;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_8;
  wire s_unnamed_7;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_9;
  wire s_unnamed_8;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_10;
  wire s_unnamed_9;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_11;
  wire s_unnamed_10;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_12;
  wire s_unnamed_11;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_13;
  wire s_unnamed_12;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_14;
  wire s_unnamed_13;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_15;
  wire s_unnamed_14;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_16;
  wire s_unnamed_15;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_17;
  wire s_unnamed_16;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_18;
  wire s_unnamed_17;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_19;
  wire s_unnamed_18;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_20;
  wire s_unnamed_19;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_21;
  wire s_unnamed_20;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_22;
  wire s_unnamed_21;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_23;
  wire s_unnamed_22;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_24;
  wire s_unnamed_23;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_25;
  wire s_unnamed_24;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_26;
  wire s_unnamed_25;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_27;
  wire s_unnamed_26;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_28;
  wire s_unnamed_27;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_29;
  wire s_unnamed_28;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_30;
  wire s_unnamed_29;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_31;
  wire s_unnamed_30;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_32;
  wire s_unnamed_31;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_33;
  wire s_unnamed_32;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_34;
  wire s_unnamed_33;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_35;
  wire s_unnamed_34;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_36;
  wire s_unnamed_35;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_37;
  wire s_unnamed_36;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_38;
  wire s_unnamed_37;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_39;
  wire s_unnamed_38;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_40;
  wire s_unnamed_39;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_41;
  wire s_unnamed_40;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_42;
  wire s_unnamed_41;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_43;
  wire s_unnamed_42;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_44;
  wire s_unnamed_43;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_45;
  wire s_unnamed_44;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_46;
  wire s_unnamed_45;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_47;
  wire s_unnamed_46;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_48;
  wire s_unnamed_47;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_49;
  wire s_unnamed_48;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_50;
  wire s_unnamed_49;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_51;
  wire s_unnamed_50;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_52;
  wire s_unnamed_51;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_53;
  wire s_unnamed_52;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_54;
  wire s_unnamed_53;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_55;
  wire s_unnamed_54;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_56;
  wire s_unnamed_55;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_57;
  wire s_unnamed_56;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_58;
  wire s_unnamed_57;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_59;
  wire s_unnamed_58;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_60;
  wire s_unnamed_59;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_61;
  wire s_unnamed_60;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_62;
  wire s_unnamed_61;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_63;
  wire s_unnamed_62;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_64;
  wire s_unnamed_63;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_65;
  wire s_unnamed_64;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_66;
  wire s_unnamed_65;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_67;
  wire s_unnamed_66;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_68;
  wire s_unnamed_67;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_69;
  wire s_unnamed_68;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_70;
  wire s_unnamed_69;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_71;
  wire s_unnamed_70;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_72;
  wire s_unnamed_71;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_73;
  wire s_unnamed_72;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_74;
  wire s_unnamed_73;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_75;
  wire s_unnamed_74;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_76;
  wire s_unnamed_75;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_77;
  wire s_unnamed_76;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_78;
  wire s_unnamed_77;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_79;
  wire s_unnamed_78;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_80;
  wire s_unnamed_79;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_81;
  wire s_unnamed_80;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_82;
  wire s_unnamed_81;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_83;
  wire s_unnamed_82;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_84;
  wire s_unnamed_83;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_85;
  wire s_unnamed_84;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_86;
  wire s_unnamed_85;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_87;
  wire s_unnamed_86;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_88;
  wire s_unnamed_87;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_89;
  wire s_unnamed_88;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_90;
  wire s_unnamed_89;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_91;
  wire s_unnamed_90;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_92;
  wire s_unnamed_91;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_93;
  wire s_unnamed_92;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_94;
  wire s_unnamed_93;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_95;
  wire s_unnamed_94;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_96;
  wire s_unnamed_95;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_97;
  wire s_unnamed_96;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_98;
  wire s_unnamed_97;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_99;
  wire s_unnamed_98;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_100;
  wire s_unnamed_99;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_101;
  wire s_unnamed_100;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_102;
  wire s_unnamed_101;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_103;
  wire s_unnamed_102;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_104;
  wire s_unnamed_103;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_105;
  wire s_unnamed_104;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_106;
  wire s_unnamed_105;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_107;
  wire s_unnamed_106;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_108;
  wire s_unnamed_107;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_109;
  wire s_unnamed_108;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_110;
  wire s_unnamed_109;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_111;
  wire s_unnamed_110;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_112;
  wire s_unnamed_111;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_113;
  wire s_unnamed_112;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_114;
  wire s_unnamed_113;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_115;
  wire s_unnamed_114;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_116;
  wire s_unnamed_115;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_117;
  wire s_unnamed_116;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_118;
  wire s_unnamed_117;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_119;
  wire s_unnamed_118;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_120;
  wire s_unnamed_119;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_121;
  wire s_unnamed_120;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_122;
  wire s_unnamed_121;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_123;
  wire s_unnamed_122;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_124;
  wire s_unnamed_123;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_125;
  wire s_unnamed_124;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_126;
  wire s_unnamed_125;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_127;
  wire s_unnamed_126;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_128;
  wire s_unnamed_127;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_129;
  wire s_unnamed_128;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_130;
  wire s_unnamed_129;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_131;
  wire s_unnamed_130;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_132;
  wire s_unnamed_131;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_133;
  wire s_unnamed_132;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_134;
  wire s_unnamed_133;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_135;
  wire s_unnamed_134;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_136;
  wire s_unnamed_135;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_137;
  wire s_unnamed_136;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_138;
  wire s_unnamed_137;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_139;
  wire s_unnamed_138;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_140;
  wire s_unnamed_139;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_141;
  wire s_unnamed_140;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_142;
  wire s_unnamed_141;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_143;
  wire s_unnamed_142;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_144;
  wire s_unnamed_143;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_145;
  wire s_unnamed_144;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_146;
  wire s_unnamed_145;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_147;
  wire s_unnamed_146;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_148;
  wire s_unnamed_147;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_149;
  wire s_unnamed_148;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_150;
  wire s_unnamed_149;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_151;
  wire s_unnamed_150;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_152;
  wire s_unnamed_151;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_153;
  wire s_unnamed_152;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_154;
  wire s_unnamed_153;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_155;
  wire s_unnamed_154;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_156;
  wire s_unnamed_155;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_157;
  wire s_unnamed_156;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_158;
  wire s_unnamed_157;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_159;
  wire s_unnamed_158;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_160;
  wire s_unnamed_159;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_161;
  wire s_unnamed_160;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_162;
  wire s_unnamed_161;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_163;
  wire s_unnamed_162;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_164;
  wire s_unnamed_163;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_165;
  wire s_unnamed_164;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_166;
  wire s_unnamed_165;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_167;
  wire s_unnamed_166;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_168;
  wire s_unnamed_167;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_169;
  wire s_unnamed_168;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_170;
  wire s_unnamed_169;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_171;
  wire s_unnamed_170;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_172;
  wire s_unnamed_171;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_173;
  wire s_unnamed_172;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_174;
  wire s_unnamed_173;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_175;
  wire s_unnamed_174;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_176;
  wire s_unnamed_175;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_177;
  wire s_unnamed_176;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_178;
  wire s_unnamed_177;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_179;
  wire s_unnamed_178;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_180;
  wire s_unnamed_179;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_181;
  wire s_unnamed_180;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_182;
  wire s_unnamed_181;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_183;
  wire s_unnamed_182;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_184;
  wire s_unnamed_183;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_185;
  wire s_unnamed_184;
  wire s_sky130_fd_sc_hd_dlygate4sd3_1_x_186;
  wire s_unnamed_185;
  wire s_unnamed_186;
  wire s_unnamed_187;
  wire s_unnamed_188;
  wire s_unnamed_189;
  wire s_unnamed_190;
  wire s_unnamed_191;
  wire s_unnamed_192;
  wire s_unnamed_193;
  wire s_unnamed_194;
  wire s_unnamed_195;
  wire s_unnamed_196;
  wire s_unnamed_197;
  wire s_unnamed_198;
  wire s_unnamed_199;
  wire s_unnamed_200;
  wire s_unnamed_201;
  wire s_unnamed_202;
  wire s_unnamed_203;
  wire s_unnamed_204;
  wire s_unnamed_205;
  wire s_unnamed_206;
  wire s_unnamed_207;
  wire s_unnamed_208;
  wire s_unnamed_209;
  wire s_unnamed_210;
  wire s_unnamed_211;
  wire s_unnamed_212;
  wire s_unnamed_213;
  wire s_unnamed_214;
  wire s_unnamed_215;
  wire s_unnamed_216;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_2_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_3_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_4_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_5_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_6_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_7_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_8_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_9_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_10_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_11_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_12_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_13_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_14_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_15_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_16_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_17_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_18_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_19_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_20_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_21_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_22_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_23_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_24_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_25_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_26_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_27_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_28_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_29_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_30_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_31_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_32_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_33_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_34_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_35_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_36_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_37_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_38_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_39_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_40_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_41_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_42_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_43_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_44_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_45_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_46_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_47_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_48_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_49_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_50_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_51_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_52_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_53_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_54_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_55_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_56_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_57_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_58_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_59_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_60_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_61_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_62_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_63_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_64_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_65_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_66_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_67_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_68_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_69_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_70_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_71_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_72_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_73_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_74_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_75_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_76_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_77_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_78_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_79_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_80_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_81_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_82_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_83_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_84_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_85_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_86_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_87_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_88_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_89_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_90_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_91_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_92_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_93_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_94_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_95_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_96_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_97_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_98_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_99_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_100_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_101_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_102_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_103_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_104_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_105_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_106_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_107_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_108_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_109_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_110_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_111_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_112_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_113_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_114_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_115_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_116_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_117_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_118_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_119_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_120_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_121_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_122_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_123_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_124_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_125_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_126_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_127_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_128_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_129_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_130_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_131_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_132_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_133_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_134_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_135_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_136_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_137_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_138_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_139_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_140_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_141_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_142_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_143_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_144_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_145_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_146_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_147_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_148_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_149_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_150_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_151_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_152_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_153_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_154_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_155_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_156_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_157_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_158_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_159_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_160_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_161_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_162_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_163_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_164_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_165_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_166_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_167_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_168_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_169_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_170_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_171_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_172_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_173_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_174_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_175_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_176_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_177_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_178_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_179_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_180_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_181_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_182_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_183_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_184_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_185_X;
  wire sky130_fd_sc_hd_dlygate4sd3_1_inst_186_X;
  localparam [31:0] n8506_o = 32'bX;
  wire [30:0] n8507_o;
  wire [31:0] n8508_o;
  wire [29:0] n8509_o;
  wire [30:0] n8510_o;
  wire n8511_o;
  wire [31:0] n8512_o;
  wire [28:0] n8513_o;
  wire [29:0] n8514_o;
  wire [1:0] n8515_o;
  wire [31:0] n8516_o;
  wire [27:0] n8517_o;
  wire [28:0] n8518_o;
  wire [2:0] n8519_o;
  wire [31:0] n8520_o;
  wire [26:0] n8521_o;
  wire [27:0] n8522_o;
  wire [3:0] n8523_o;
  wire [31:0] n8524_o;
  wire [25:0] n8525_o;
  wire [26:0] n8526_o;
  wire [4:0] n8527_o;
  wire [31:0] n8528_o;
  wire [24:0] n8529_o;
  wire [25:0] n8530_o;
  wire [5:0] n8531_o;
  wire [31:0] n8532_o;
  wire [23:0] n8533_o;
  wire [24:0] n8534_o;
  wire [6:0] n8535_o;
  wire [31:0] n8536_o;
  wire [22:0] n8537_o;
  wire [23:0] n8538_o;
  wire [7:0] n8539_o;
  wire [31:0] n8540_o;
  wire [21:0] n8541_o;
  wire [22:0] n8542_o;
  wire [8:0] n8543_o;
  wire [31:0] n8544_o;
  wire [20:0] n8545_o;
  wire [21:0] n8546_o;
  wire [9:0] n8547_o;
  wire [31:0] n8548_o;
  wire [19:0] n8549_o;
  wire [20:0] n8550_o;
  wire [10:0] n8551_o;
  wire [31:0] n8552_o;
  wire [18:0] n8553_o;
  wire [19:0] n8554_o;
  wire [11:0] n8555_o;
  wire [31:0] n8556_o;
  wire [17:0] n8557_o;
  wire [18:0] n8558_o;
  wire [12:0] n8559_o;
  wire [31:0] n8560_o;
  wire [16:0] n8561_o;
  wire [17:0] n8562_o;
  wire [13:0] n8563_o;
  wire [31:0] n8564_o;
  wire [15:0] n8565_o;
  wire [16:0] n8566_o;
  wire [14:0] n8567_o;
  wire [31:0] n8568_o;
  wire [14:0] n8569_o;
  wire [15:0] n8570_o;
  wire [15:0] n8571_o;
  wire [31:0] n8572_o;
  wire [13:0] n8573_o;
  wire [14:0] n8574_o;
  wire [16:0] n8575_o;
  wire [31:0] n8576_o;
  wire [12:0] n8577_o;
  wire [13:0] n8578_o;
  wire [17:0] n8579_o;
  wire [31:0] n8580_o;
  wire [11:0] n8581_o;
  wire [12:0] n8582_o;
  wire [18:0] n8583_o;
  wire [31:0] n8584_o;
  wire [10:0] n8585_o;
  wire [11:0] n8586_o;
  wire [19:0] n8587_o;
  wire [31:0] n8588_o;
  wire [9:0] n8589_o;
  wire [10:0] n8590_o;
  wire [20:0] n8591_o;
  wire [31:0] n8592_o;
  wire [8:0] n8593_o;
  wire [9:0] n8594_o;
  wire [21:0] n8595_o;
  wire [31:0] n8596_o;
  wire [7:0] n8597_o;
  wire [8:0] n8598_o;
  wire [22:0] n8599_o;
  wire [31:0] n8600_o;
  wire [6:0] n8601_o;
  wire [7:0] n8602_o;
  wire [23:0] n8603_o;
  wire [31:0] n8604_o;
  wire [5:0] n8605_o;
  wire [6:0] n8606_o;
  wire [24:0] n8607_o;
  wire [31:0] n8608_o;
  wire [4:0] n8609_o;
  wire [5:0] n8610_o;
  wire [25:0] n8611_o;
  wire [31:0] n8612_o;
  wire [3:0] n8613_o;
  wire [4:0] n8614_o;
  wire [26:0] n8615_o;
  wire [31:0] n8616_o;
  wire [2:0] n8617_o;
  wire [3:0] n8618_o;
  wire [27:0] n8619_o;
  wire [31:0] n8620_o;
  wire [1:0] n8621_o;
  wire [2:0] n8622_o;
  wire [28:0] n8623_o;
  wire [31:0] n8624_o;
  wire n8625_o;
  wire [1:0] n8626_o;
  wire [29:0] n8627_o;
  wire [31:0] n8628_o;
  wire [30:0] n8629_o;
  wire [31:0] n8630_o;
  wire n8631_o;
  wire n8633_o;
  wire n8634_o;
  wire n8636_o;
  wire n8637_o;
  wire n8639_o;
  wire n8640_o;
  wire n8642_o;
  wire n8643_o;
  wire n8645_o;
  wire n8646_o;
  wire n8648_o;
  wire n8649_o;
  wire n8651_o;
  wire n8652_o;
  wire n8654_o;
  wire n8655_o;
  wire n8657_o;
  wire n8658_o;
  wire n8660_o;
  wire n8661_o;
  wire n8663_o;
  wire n8664_o;
  wire n8666_o;
  wire n8667_o;
  wire n8669_o;
  wire n8670_o;
  wire n8672_o;
  wire n8673_o;
  wire n8675_o;
  wire n8676_o;
  wire n8678_o;
  wire n8679_o;
  wire n8681_o;
  wire n8682_o;
  wire n8684_o;
  wire n8685_o;
  wire n8687_o;
  wire n8688_o;
  wire n8690_o;
  wire n8691_o;
  wire n8693_o;
  wire n8694_o;
  wire n8696_o;
  wire n8697_o;
  wire n8699_o;
  wire n8700_o;
  wire n8702_o;
  wire n8703_o;
  wire n8705_o;
  wire n8706_o;
  wire n8708_o;
  wire n8709_o;
  wire n8711_o;
  wire n8712_o;
  wire n8714_o;
  wire n8715_o;
  wire n8717_o;
  wire n8718_o;
  wire n8720_o;
  wire n8721_o;
  wire n8723_o;
  wire n8724_o;
  wire n8726_o;
  wire [31:0] n8727_o;
  reg n8729_o;
  assign out_chain_output = n8729_o;
  /* find_the_damn_issue_sky130.vhd:7544:16  */
  assign s_chain_input_2 = in_chain_input; // (signal)
  /* find_the_damn_issue_sky130.vhd:7545:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x = sky130_fd_sc_hd_dlygate4sd3_1_inst_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7546:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_2 = sky130_fd_sc_hd_dlygate4sd3_1_inst_2_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7547:16  */
  assign s_unnamed = s_sky130_fd_sc_hd_dlygate4sd3_1_x; // (signal)
  /* find_the_damn_issue_sky130.vhd:7548:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_3 = sky130_fd_sc_hd_dlygate4sd3_1_inst_3_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7549:16  */
  assign s_unnamed_2 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:7550:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_4 = sky130_fd_sc_hd_dlygate4sd3_1_inst_4_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7551:16  */
  assign s_unnamed_3 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:7552:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_5 = sky130_fd_sc_hd_dlygate4sd3_1_inst_5_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7553:16  */
  assign s_unnamed_4 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:7554:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_6 = sky130_fd_sc_hd_dlygate4sd3_1_inst_6_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7555:16  */
  assign s_unnamed_5 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:7556:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_7 = sky130_fd_sc_hd_dlygate4sd3_1_inst_9_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7557:16  */
  assign s_unnamed_6 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_6; // (signal)
  /* find_the_damn_issue_sky130.vhd:7558:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_8 = sky130_fd_sc_hd_dlygate4sd3_1_inst_11_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7559:16  */
  assign s_unnamed_7 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_7; // (signal)
  /* find_the_damn_issue_sky130.vhd:7560:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_9 = sky130_fd_sc_hd_dlygate4sd3_1_inst_12_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7561:16  */
  assign s_unnamed_8 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_8; // (signal)
  /* find_the_damn_issue_sky130.vhd:7562:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_10 = sky130_fd_sc_hd_dlygate4sd3_1_inst_14_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7563:16  */
  assign s_unnamed_9 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_9; // (signal)
  /* find_the_damn_issue_sky130.vhd:7564:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_11 = sky130_fd_sc_hd_dlygate4sd3_1_inst_16_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7565:16  */
  assign s_unnamed_10 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_10; // (signal)
  /* find_the_damn_issue_sky130.vhd:7566:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_12 = sky130_fd_sc_hd_dlygate4sd3_1_inst_18_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7567:16  */
  assign s_unnamed_11 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_11; // (signal)
  /* find_the_damn_issue_sky130.vhd:7568:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_13 = sky130_fd_sc_hd_dlygate4sd3_1_inst_20_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7569:16  */
  assign s_unnamed_12 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_12; // (signal)
  /* find_the_damn_issue_sky130.vhd:7570:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_14 = sky130_fd_sc_hd_dlygate4sd3_1_inst_22_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7571:16  */
  assign s_unnamed_13 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_13; // (signal)
  /* find_the_damn_issue_sky130.vhd:7572:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_15 = sky130_fd_sc_hd_dlygate4sd3_1_inst_23_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7573:16  */
  assign s_unnamed_14 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_14; // (signal)
  /* find_the_damn_issue_sky130.vhd:7574:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_16 = sky130_fd_sc_hd_dlygate4sd3_1_inst_24_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7575:16  */
  assign s_unnamed_15 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_15; // (signal)
  /* find_the_damn_issue_sky130.vhd:7576:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_17 = sky130_fd_sc_hd_dlygate4sd3_1_inst_26_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7577:16  */
  assign s_unnamed_16 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_16; // (signal)
  /* find_the_damn_issue_sky130.vhd:7578:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_18 = sky130_fd_sc_hd_dlygate4sd3_1_inst_27_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7579:16  */
  assign s_unnamed_17 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_17; // (signal)
  /* find_the_damn_issue_sky130.vhd:7580:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_19 = sky130_fd_sc_hd_dlygate4sd3_1_inst_31_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7581:16  */
  assign s_unnamed_18 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_18; // (signal)
  /* find_the_damn_issue_sky130.vhd:7582:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_20 = sky130_fd_sc_hd_dlygate4sd3_1_inst_32_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7583:16  */
  assign s_unnamed_19 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_19; // (signal)
  /* find_the_damn_issue_sky130.vhd:7584:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_21 = sky130_fd_sc_hd_dlygate4sd3_1_inst_33_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7585:16  */
  assign s_unnamed_20 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_20; // (signal)
  /* find_the_damn_issue_sky130.vhd:7586:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_22 = sky130_fd_sc_hd_dlygate4sd3_1_inst_35_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7587:16  */
  assign s_unnamed_21 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_21; // (signal)
  /* find_the_damn_issue_sky130.vhd:7588:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_23 = sky130_fd_sc_hd_dlygate4sd3_1_inst_36_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7589:16  */
  assign s_unnamed_22 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_22; // (signal)
  /* find_the_damn_issue_sky130.vhd:7590:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_24 = sky130_fd_sc_hd_dlygate4sd3_1_inst_38_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7591:16  */
  assign s_unnamed_23 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_23; // (signal)
  /* find_the_damn_issue_sky130.vhd:7592:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_25 = sky130_fd_sc_hd_dlygate4sd3_1_inst_40_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7593:16  */
  assign s_unnamed_24 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_24; // (signal)
  /* find_the_damn_issue_sky130.vhd:7594:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_26 = sky130_fd_sc_hd_dlygate4sd3_1_inst_42_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7595:16  */
  assign s_unnamed_25 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_25; // (signal)
  /* find_the_damn_issue_sky130.vhd:7596:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_27 = sky130_fd_sc_hd_dlygate4sd3_1_inst_44_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7597:16  */
  assign s_unnamed_26 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_26; // (signal)
  /* find_the_damn_issue_sky130.vhd:7598:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_28 = sky130_fd_sc_hd_dlygate4sd3_1_inst_47_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7599:16  */
  assign s_unnamed_27 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_27; // (signal)
  /* find_the_damn_issue_sky130.vhd:7600:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_29 = sky130_fd_sc_hd_dlygate4sd3_1_inst_49_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7601:16  */
  assign s_unnamed_28 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_28; // (signal)
  /* find_the_damn_issue_sky130.vhd:7602:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_30 = sky130_fd_sc_hd_dlygate4sd3_1_inst_51_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7603:16  */
  assign s_unnamed_29 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_29; // (signal)
  /* find_the_damn_issue_sky130.vhd:7604:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_31 = sky130_fd_sc_hd_dlygate4sd3_1_inst_52_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7605:16  */
  assign s_unnamed_30 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_30; // (signal)
  /* find_the_damn_issue_sky130.vhd:7606:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_32 = sky130_fd_sc_hd_dlygate4sd3_1_inst_54_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7607:16  */
  assign s_unnamed_31 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_31; // (signal)
  /* find_the_damn_issue_sky130.vhd:7608:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_33 = sky130_fd_sc_hd_dlygate4sd3_1_inst_55_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7609:16  */
  assign s_unnamed_32 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_32; // (signal)
  /* find_the_damn_issue_sky130.vhd:7610:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_34 = sky130_fd_sc_hd_dlygate4sd3_1_inst_57_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7611:16  */
  assign s_unnamed_33 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_33; // (signal)
  /* find_the_damn_issue_sky130.vhd:7612:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_35 = sky130_fd_sc_hd_dlygate4sd3_1_inst_59_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7613:16  */
  assign s_unnamed_34 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_34; // (signal)
  /* find_the_damn_issue_sky130.vhd:7614:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_36 = sky130_fd_sc_hd_dlygate4sd3_1_inst_60_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7615:16  */
  assign s_unnamed_35 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_35; // (signal)
  /* find_the_damn_issue_sky130.vhd:7616:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_37 = sky130_fd_sc_hd_dlygate4sd3_1_inst_62_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7617:16  */
  assign s_unnamed_36 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_36; // (signal)
  /* find_the_damn_issue_sky130.vhd:7618:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_38 = sky130_fd_sc_hd_dlygate4sd3_1_inst_64_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7619:16  */
  assign s_unnamed_37 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_37; // (signal)
  /* find_the_damn_issue_sky130.vhd:7620:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_39 = sky130_fd_sc_hd_dlygate4sd3_1_inst_67_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7621:16  */
  assign s_unnamed_38 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_38; // (signal)
  /* find_the_damn_issue_sky130.vhd:7622:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_40 = sky130_fd_sc_hd_dlygate4sd3_1_inst_68_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7623:16  */
  assign s_unnamed_39 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_39; // (signal)
  /* find_the_damn_issue_sky130.vhd:7624:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_41 = sky130_fd_sc_hd_dlygate4sd3_1_inst_69_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7625:16  */
  assign s_unnamed_40 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_40; // (signal)
  /* find_the_damn_issue_sky130.vhd:7626:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_42 = sky130_fd_sc_hd_dlygate4sd3_1_inst_71_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7627:16  */
  assign s_unnamed_41 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_41; // (signal)
  /* find_the_damn_issue_sky130.vhd:7628:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_43 = sky130_fd_sc_hd_dlygate4sd3_1_inst_74_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7629:16  */
  assign s_unnamed_42 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_42; // (signal)
  /* find_the_damn_issue_sky130.vhd:7630:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_44 = sky130_fd_sc_hd_dlygate4sd3_1_inst_75_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7631:16  */
  assign s_unnamed_43 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_43; // (signal)
  /* find_the_damn_issue_sky130.vhd:7632:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_45 = sky130_fd_sc_hd_dlygate4sd3_1_inst_76_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7633:16  */
  assign s_unnamed_44 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_44; // (signal)
  /* find_the_damn_issue_sky130.vhd:7634:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_46 = sky130_fd_sc_hd_dlygate4sd3_1_inst_78_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7635:16  */
  assign s_unnamed_45 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_45; // (signal)
  /* find_the_damn_issue_sky130.vhd:7636:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_47 = sky130_fd_sc_hd_dlygate4sd3_1_inst_79_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7637:16  */
  assign s_unnamed_46 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_46; // (signal)
  /* find_the_damn_issue_sky130.vhd:7638:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_48 = sky130_fd_sc_hd_dlygate4sd3_1_inst_80_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7639:16  */
  assign s_unnamed_47 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_47; // (signal)
  /* find_the_damn_issue_sky130.vhd:7640:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_49 = sky130_fd_sc_hd_dlygate4sd3_1_inst_82_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7641:16  */
  assign s_unnamed_48 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_48; // (signal)
  /* find_the_damn_issue_sky130.vhd:7642:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_50 = sky130_fd_sc_hd_dlygate4sd3_1_inst_84_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7643:16  */
  assign s_unnamed_49 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_49; // (signal)
  /* find_the_damn_issue_sky130.vhd:7644:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_51 = sky130_fd_sc_hd_dlygate4sd3_1_inst_86_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7645:16  */
  assign s_unnamed_50 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_50; // (signal)
  /* find_the_damn_issue_sky130.vhd:7646:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_52 = sky130_fd_sc_hd_dlygate4sd3_1_inst_88_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7647:16  */
  assign s_unnamed_51 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_51; // (signal)
  /* find_the_damn_issue_sky130.vhd:7648:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_53 = sky130_fd_sc_hd_dlygate4sd3_1_inst_90_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7649:16  */
  assign s_unnamed_52 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_52; // (signal)
  /* find_the_damn_issue_sky130.vhd:7650:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_54 = sky130_fd_sc_hd_dlygate4sd3_1_inst_91_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7651:16  */
  assign s_unnamed_53 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_53; // (signal)
  /* find_the_damn_issue_sky130.vhd:7652:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_55 = sky130_fd_sc_hd_dlygate4sd3_1_inst_95_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7653:16  */
  assign s_unnamed_54 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_54; // (signal)
  /* find_the_damn_issue_sky130.vhd:7654:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_56 = sky130_fd_sc_hd_dlygate4sd3_1_inst_96_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7655:16  */
  assign s_unnamed_55 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_55; // (signal)
  /* find_the_damn_issue_sky130.vhd:7656:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_57 = sky130_fd_sc_hd_dlygate4sd3_1_inst_98_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7657:16  */
  assign s_unnamed_56 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_56; // (signal)
  /* find_the_damn_issue_sky130.vhd:7658:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_58 = sky130_fd_sc_hd_dlygate4sd3_1_inst_99_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7659:16  */
  assign s_unnamed_57 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_57; // (signal)
  /* find_the_damn_issue_sky130.vhd:7660:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_59 = sky130_fd_sc_hd_dlygate4sd3_1_inst_101_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7661:16  */
  assign s_unnamed_58 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_58; // (signal)
  /* find_the_damn_issue_sky130.vhd:7662:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_60 = sky130_fd_sc_hd_dlygate4sd3_1_inst_103_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7663:16  */
  assign s_unnamed_59 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_59; // (signal)
  /* find_the_damn_issue_sky130.vhd:7664:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_61 = sky130_fd_sc_hd_dlygate4sd3_1_inst_104_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7665:16  */
  assign s_unnamed_60 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_60; // (signal)
  /* find_the_damn_issue_sky130.vhd:7666:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_62 = sky130_fd_sc_hd_dlygate4sd3_1_inst_106_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7667:16  */
  assign s_unnamed_61 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_61; // (signal)
  /* find_the_damn_issue_sky130.vhd:7668:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_63 = sky130_fd_sc_hd_dlygate4sd3_1_inst_107_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7669:16  */
  assign s_unnamed_62 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_62; // (signal)
  /* find_the_damn_issue_sky130.vhd:7670:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_64 = sky130_fd_sc_hd_dlygate4sd3_1_inst_109_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7671:16  */
  assign s_unnamed_63 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_63; // (signal)
  /* find_the_damn_issue_sky130.vhd:7672:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_65 = sky130_fd_sc_hd_dlygate4sd3_1_inst_111_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7673:16  */
  assign s_unnamed_64 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_64; // (signal)
  /* find_the_damn_issue_sky130.vhd:7674:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_66 = sky130_fd_sc_hd_dlygate4sd3_1_inst_113_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7675:16  */
  assign s_unnamed_65 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_65; // (signal)
  /* find_the_damn_issue_sky130.vhd:7676:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_67 = sky130_fd_sc_hd_dlygate4sd3_1_inst_115_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7677:16  */
  assign s_unnamed_66 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_66; // (signal)
  /* find_the_damn_issue_sky130.vhd:7678:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_68 = sky130_fd_sc_hd_dlygate4sd3_1_inst_116_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7679:16  */
  assign s_unnamed_67 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_67; // (signal)
  /* find_the_damn_issue_sky130.vhd:7680:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_69 = sky130_fd_sc_hd_dlygate4sd3_1_inst_119_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7681:16  */
  assign s_unnamed_68 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_68; // (signal)
  /* find_the_damn_issue_sky130.vhd:7682:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_70 = sky130_fd_sc_hd_dlygate4sd3_1_inst_120_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7683:16  */
  assign s_unnamed_69 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_69; // (signal)
  /* find_the_damn_issue_sky130.vhd:7684:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_71 = sky130_fd_sc_hd_dlygate4sd3_1_inst_122_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7685:16  */
  assign s_unnamed_70 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_70; // (signal)
  /* find_the_damn_issue_sky130.vhd:7686:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_72 = sky130_fd_sc_hd_dlygate4sd3_1_inst_123_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7687:16  */
  assign s_unnamed_71 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_71; // (signal)
  /* find_the_damn_issue_sky130.vhd:7688:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_73 = sky130_fd_sc_hd_dlygate4sd3_1_inst_126_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7689:16  */
  assign s_unnamed_72 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_72; // (signal)
  /* find_the_damn_issue_sky130.vhd:7690:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_74 = sky130_fd_sc_hd_dlygate4sd3_1_inst_127_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7691:16  */
  assign s_unnamed_73 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_73; // (signal)
  /* find_the_damn_issue_sky130.vhd:7692:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_75 = sky130_fd_sc_hd_dlygate4sd3_1_inst_128_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7693:16  */
  assign s_unnamed_74 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_74; // (signal)
  /* find_the_damn_issue_sky130.vhd:7694:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_76 = sky130_fd_sc_hd_dlygate4sd3_1_inst_131_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7695:16  */
  assign s_unnamed_75 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_75; // (signal)
  /* find_the_damn_issue_sky130.vhd:7696:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_77 = sky130_fd_sc_hd_dlygate4sd3_1_inst_133_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7697:16  */
  assign s_unnamed_76 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_76; // (signal)
  /* find_the_damn_issue_sky130.vhd:7698:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_78 = sky130_fd_sc_hd_dlygate4sd3_1_inst_135_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7699:16  */
  assign s_unnamed_77 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_77; // (signal)
  /* find_the_damn_issue_sky130.vhd:7700:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_79 = sky130_fd_sc_hd_dlygate4sd3_1_inst_136_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7701:16  */
  assign s_unnamed_78 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_78; // (signal)
  /* find_the_damn_issue_sky130.vhd:7702:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_80 = sky130_fd_sc_hd_dlygate4sd3_1_inst_138_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7703:16  */
  assign s_unnamed_79 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_79; // (signal)
  /* find_the_damn_issue_sky130.vhd:7704:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_81 = sky130_fd_sc_hd_dlygate4sd3_1_inst_140_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7705:16  */
  assign s_unnamed_80 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_80; // (signal)
  /* find_the_damn_issue_sky130.vhd:7706:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_82 = sky130_fd_sc_hd_dlygate4sd3_1_inst_142_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7707:16  */
  assign s_unnamed_81 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_81; // (signal)
  /* find_the_damn_issue_sky130.vhd:7708:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_83 = sky130_fd_sc_hd_dlygate4sd3_1_inst_143_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7709:16  */
  assign s_unnamed_82 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_82; // (signal)
  /* find_the_damn_issue_sky130.vhd:7710:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_84 = sky130_fd_sc_hd_dlygate4sd3_1_inst_144_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7711:16  */
  assign s_unnamed_83 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_83; // (signal)
  /* find_the_damn_issue_sky130.vhd:7712:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_85 = sky130_fd_sc_hd_dlygate4sd3_1_inst_147_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7713:16  */
  assign s_unnamed_84 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_84; // (signal)
  /* find_the_damn_issue_sky130.vhd:7714:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_86 = sky130_fd_sc_hd_dlygate4sd3_1_inst_149_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7715:16  */
  assign s_unnamed_85 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_85; // (signal)
  /* find_the_damn_issue_sky130.vhd:7716:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_87 = sky130_fd_sc_hd_dlygate4sd3_1_inst_151_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7717:16  */
  assign s_unnamed_86 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_86; // (signal)
  /* find_the_damn_issue_sky130.vhd:7718:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_88 = sky130_fd_sc_hd_dlygate4sd3_1_inst_152_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7719:16  */
  assign s_unnamed_87 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_87; // (signal)
  /* find_the_damn_issue_sky130.vhd:7720:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_89 = sky130_fd_sc_hd_dlygate4sd3_1_inst_153_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7721:16  */
  assign s_unnamed_88 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_88; // (signal)
  /* find_the_damn_issue_sky130.vhd:7722:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_90 = sky130_fd_sc_hd_dlygate4sd3_1_inst_156_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7723:16  */
  assign s_unnamed_89 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_89; // (signal)
  /* find_the_damn_issue_sky130.vhd:7724:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_91 = sky130_fd_sc_hd_dlygate4sd3_1_inst_159_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7725:16  */
  assign s_unnamed_90 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_90; // (signal)
  /* find_the_damn_issue_sky130.vhd:7726:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_92 = sky130_fd_sc_hd_dlygate4sd3_1_inst_160_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7727:16  */
  assign s_unnamed_91 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_91; // (signal)
  /* find_the_damn_issue_sky130.vhd:7728:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_93 = sky130_fd_sc_hd_dlygate4sd3_1_inst_162_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7729:16  */
  assign s_unnamed_92 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_92; // (signal)
  /* find_the_damn_issue_sky130.vhd:7730:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_94 = sky130_fd_sc_hd_dlygate4sd3_1_inst_164_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7731:16  */
  assign s_unnamed_93 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_93; // (signal)
  /* find_the_damn_issue_sky130.vhd:7732:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_95 = sky130_fd_sc_hd_dlygate4sd3_1_inst_166_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7733:16  */
  assign s_unnamed_94 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_94; // (signal)
  /* find_the_damn_issue_sky130.vhd:7734:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_96 = sky130_fd_sc_hd_dlygate4sd3_1_inst_168_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7735:16  */
  assign s_unnamed_95 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_95; // (signal)
  /* find_the_damn_issue_sky130.vhd:7736:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_97 = sky130_fd_sc_hd_dlygate4sd3_1_inst_169_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7737:16  */
  assign s_unnamed_96 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_96; // (signal)
  /* find_the_damn_issue_sky130.vhd:7738:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_98 = sky130_fd_sc_hd_dlygate4sd3_1_inst_172_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7739:16  */
  assign s_unnamed_97 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_97; // (signal)
  /* find_the_damn_issue_sky130.vhd:7740:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_99 = sky130_fd_sc_hd_dlygate4sd3_1_inst_173_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7741:16  */
  assign s_unnamed_98 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_98; // (signal)
  /* find_the_damn_issue_sky130.vhd:7742:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_100 = sky130_fd_sc_hd_dlygate4sd3_1_inst_176_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7743:16  */
  assign s_unnamed_99 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_99; // (signal)
  /* find_the_damn_issue_sky130.vhd:7744:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_101 = sky130_fd_sc_hd_dlygate4sd3_1_inst_178_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7745:16  */
  assign s_unnamed_100 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_100; // (signal)
  /* find_the_damn_issue_sky130.vhd:7746:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_102 = sky130_fd_sc_hd_dlygate4sd3_1_inst_179_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7747:16  */
  assign s_unnamed_101 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_101; // (signal)
  /* find_the_damn_issue_sky130.vhd:7748:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_103 = sky130_fd_sc_hd_dlygate4sd3_1_inst_181_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7749:16  */
  assign s_unnamed_102 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_102; // (signal)
  /* find_the_damn_issue_sky130.vhd:7750:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_104 = sky130_fd_sc_hd_dlygate4sd3_1_inst_183_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7751:16  */
  assign s_unnamed_103 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_103; // (signal)
  /* find_the_damn_issue_sky130.vhd:7752:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_105 = sky130_fd_sc_hd_dlygate4sd3_1_inst_185_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7753:16  */
  assign s_unnamed_104 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_104; // (signal)
  /* find_the_damn_issue_sky130.vhd:7754:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_106 = sky130_fd_sc_hd_dlygate4sd3_1_inst_186_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7755:16  */
  assign s_unnamed_105 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_105; // (signal)
  /* find_the_damn_issue_sky130.vhd:7756:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_107 = sky130_fd_sc_hd_dlygate4sd3_1_inst_8_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7757:16  */
  assign s_unnamed_106 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_106; // (signal)
  /* find_the_damn_issue_sky130.vhd:7758:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_108 = sky130_fd_sc_hd_dlygate4sd3_1_inst_17_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7759:16  */
  assign s_unnamed_107 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_107; // (signal)
  /* find_the_damn_issue_sky130.vhd:7760:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_109 = sky130_fd_sc_hd_dlygate4sd3_1_inst_30_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7761:16  */
  assign s_unnamed_108 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_108; // (signal)
  /* find_the_damn_issue_sky130.vhd:7762:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_110 = sky130_fd_sc_hd_dlygate4sd3_1_inst_39_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7763:16  */
  assign s_unnamed_109 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_109; // (signal)
  /* find_the_damn_issue_sky130.vhd:7764:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_111 = sky130_fd_sc_hd_dlygate4sd3_1_inst_48_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7765:16  */
  assign s_unnamed_110 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_110; // (signal)
  /* find_the_damn_issue_sky130.vhd:7766:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_112 = sky130_fd_sc_hd_dlygate4sd3_1_inst_56_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7767:16  */
  assign s_unnamed_111 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_111; // (signal)
  /* find_the_damn_issue_sky130.vhd:7768:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_113 = sky130_fd_sc_hd_dlygate4sd3_1_inst_63_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7769:16  */
  assign s_unnamed_112 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_112; // (signal)
  /* find_the_damn_issue_sky130.vhd:7770:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_114 = sky130_fd_sc_hd_dlygate4sd3_1_inst_72_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7771:16  */
  assign s_unnamed_113 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_113; // (signal)
  /* find_the_damn_issue_sky130.vhd:7772:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_115 = sky130_fd_sc_hd_dlygate4sd3_1_inst_83_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7773:16  */
  assign s_unnamed_114 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_114; // (signal)
  /* find_the_damn_issue_sky130.vhd:7774:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_116 = sky130_fd_sc_hd_dlygate4sd3_1_inst_92_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7775:16  */
  assign s_unnamed_115 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_115; // (signal)
  /* find_the_damn_issue_sky130.vhd:7776:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_117 = sky130_fd_sc_hd_dlygate4sd3_1_inst_102_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7777:16  */
  assign s_unnamed_116 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_116; // (signal)
  /* find_the_damn_issue_sky130.vhd:7778:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_118 = sky130_fd_sc_hd_dlygate4sd3_1_inst_108_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7779:16  */
  assign s_unnamed_117 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_117; // (signal)
  /* find_the_damn_issue_sky130.vhd:7780:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_119 = sky130_fd_sc_hd_dlygate4sd3_1_inst_118_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7781:16  */
  assign s_unnamed_118 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_118; // (signal)
  /* find_the_damn_issue_sky130.vhd:7782:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_120 = sky130_fd_sc_hd_dlygate4sd3_1_inst_125_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7783:16  */
  assign s_unnamed_119 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_119; // (signal)
  /* find_the_damn_issue_sky130.vhd:7784:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_121 = sky130_fd_sc_hd_dlygate4sd3_1_inst_139_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7785:16  */
  assign s_unnamed_120 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_120; // (signal)
  /* find_the_damn_issue_sky130.vhd:7786:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_122 = sky130_fd_sc_hd_dlygate4sd3_1_inst_146_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7787:16  */
  assign s_unnamed_121 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_121; // (signal)
  /* find_the_damn_issue_sky130.vhd:7788:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_123 = sky130_fd_sc_hd_dlygate4sd3_1_inst_155_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7789:16  */
  assign s_unnamed_122 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_122; // (signal)
  /* find_the_damn_issue_sky130.vhd:7790:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_124 = sky130_fd_sc_hd_dlygate4sd3_1_inst_165_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7791:16  */
  assign s_unnamed_123 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_123; // (signal)
  /* find_the_damn_issue_sky130.vhd:7792:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_125 = sky130_fd_sc_hd_dlygate4sd3_1_inst_174_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7793:16  */
  assign s_unnamed_124 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_124; // (signal)
  /* find_the_damn_issue_sky130.vhd:7794:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_126 = sky130_fd_sc_hd_dlygate4sd3_1_inst_182_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7795:16  */
  assign s_unnamed_125 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_125; // (signal)
  /* find_the_damn_issue_sky130.vhd:7796:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_127 = sky130_fd_sc_hd_dlygate4sd3_1_inst_43_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7797:16  */
  assign s_unnamed_126 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_126; // (signal)
  /* find_the_damn_issue_sky130.vhd:7798:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_128 = sky130_fd_sc_hd_dlygate4sd3_1_inst_87_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7799:16  */
  assign s_unnamed_127 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_127; // (signal)
  /* find_the_damn_issue_sky130.vhd:7800:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_129 = sky130_fd_sc_hd_dlygate4sd3_1_inst_129_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7801:16  */
  assign s_unnamed_128 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_128; // (signal)
  /* find_the_damn_issue_sky130.vhd:7802:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_130 = sky130_fd_sc_hd_dlygate4sd3_1_inst_177_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7803:16  */
  assign s_unnamed_129 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_129; // (signal)
  /* find_the_damn_issue_sky130.vhd:7804:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_131 = sky130_fd_sc_hd_dlygate4sd3_1_inst_157_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7805:16  */
  assign s_unnamed_130 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_130; // (signal)
  /* find_the_damn_issue_sky130.vhd:7806:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_132 = sky130_fd_sc_hd_dlygate4sd3_1_inst_161_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7807:16  */
  assign s_unnamed_131 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_131; // (signal)
  /* find_the_damn_issue_sky130.vhd:7808:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_133 = sky130_fd_sc_hd_dlygate4sd3_1_inst_15_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7809:16  */
  assign s_unnamed_132 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_132; // (signal)
  /* find_the_damn_issue_sky130.vhd:7810:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_134 = sky130_fd_sc_hd_dlygate4sd3_1_inst_170_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7811:16  */
  assign s_unnamed_133 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_133; // (signal)
  /* find_the_damn_issue_sky130.vhd:7812:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_135 = sky130_fd_sc_hd_dlygate4sd3_1_inst_150_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7813:16  */
  assign s_unnamed_134 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_134; // (signal)
  /* find_the_damn_issue_sky130.vhd:7814:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_136 = sky130_fd_sc_hd_dlygate4sd3_1_inst_132_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7815:16  */
  assign s_unnamed_135 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_135; // (signal)
  /* find_the_damn_issue_sky130.vhd:7816:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_137 = sky130_fd_sc_hd_dlygate4sd3_1_inst_112_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7817:16  */
  assign s_unnamed_136 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_136; // (signal)
  /* find_the_damn_issue_sky130.vhd:7818:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_138 = sky130_fd_sc_hd_dlygate4sd3_1_inst_93_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7819:16  */
  assign s_unnamed_137 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_137; // (signal)
  /* find_the_damn_issue_sky130.vhd:7820:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_139 = sky130_fd_sc_hd_dlygate4sd3_1_inst_65_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7821:16  */
  assign s_unnamed_138 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_138; // (signal)
  /* find_the_damn_issue_sky130.vhd:7822:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_140 = sky130_fd_sc_hd_dlygate4sd3_1_inst_45_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7823:16  */
  assign s_unnamed_139 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_139; // (signal)
  /* find_the_damn_issue_sky130.vhd:7824:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_141 = sky130_fd_sc_hd_dlygate4sd3_1_inst_28_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7825:16  */
  assign s_unnamed_140 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_140; // (signal)
  /* find_the_damn_issue_sky130.vhd:7826:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_142 = sky130_fd_sc_hd_dlygate4sd3_1_inst_7_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7827:16  */
  assign s_unnamed_141 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_141; // (signal)
  /* find_the_damn_issue_sky130.vhd:7828:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_143 = sky130_fd_sc_hd_dlygate4sd3_1_inst_184_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7829:16  */
  assign s_unnamed_142 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_142; // (signal)
  /* find_the_damn_issue_sky130.vhd:7830:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_144 = sky130_fd_sc_hd_dlygate4sd3_1_inst_180_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7831:16  */
  assign s_unnamed_143 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_143; // (signal)
  /* find_the_damn_issue_sky130.vhd:7832:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_145 = sky130_fd_sc_hd_dlygate4sd3_1_inst_175_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7833:16  */
  assign s_unnamed_144 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_144; // (signal)
  /* find_the_damn_issue_sky130.vhd:7834:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_146 = sky130_fd_sc_hd_dlygate4sd3_1_inst_171_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7835:16  */
  assign s_unnamed_145 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_145; // (signal)
  /* find_the_damn_issue_sky130.vhd:7836:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_147 = sky130_fd_sc_hd_dlygate4sd3_1_inst_167_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7837:16  */
  assign s_unnamed_146 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_146; // (signal)
  /* find_the_damn_issue_sky130.vhd:7838:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_148 = sky130_fd_sc_hd_dlygate4sd3_1_inst_163_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7839:16  */
  assign s_unnamed_147 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_147; // (signal)
  /* find_the_damn_issue_sky130.vhd:7840:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_149 = sky130_fd_sc_hd_dlygate4sd3_1_inst_158_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7841:16  */
  assign s_unnamed_148 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_148; // (signal)
  /* find_the_damn_issue_sky130.vhd:7842:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_150 = sky130_fd_sc_hd_dlygate4sd3_1_inst_154_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7843:16  */
  assign s_unnamed_149 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_149; // (signal)
  /* find_the_damn_issue_sky130.vhd:7844:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_151 = sky130_fd_sc_hd_dlygate4sd3_1_inst_148_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7845:16  */
  assign s_unnamed_150 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_150; // (signal)
  /* find_the_damn_issue_sky130.vhd:7846:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_152 = sky130_fd_sc_hd_dlygate4sd3_1_inst_145_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7847:16  */
  assign s_unnamed_151 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_151; // (signal)
  /* find_the_damn_issue_sky130.vhd:7848:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_153 = sky130_fd_sc_hd_dlygate4sd3_1_inst_141_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7849:16  */
  assign s_unnamed_152 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_152; // (signal)
  /* find_the_damn_issue_sky130.vhd:7850:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_154 = sky130_fd_sc_hd_dlygate4sd3_1_inst_137_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7851:16  */
  assign s_unnamed_153 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_153; // (signal)
  /* find_the_damn_issue_sky130.vhd:7852:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_155 = sky130_fd_sc_hd_dlygate4sd3_1_inst_134_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7853:16  */
  assign s_unnamed_154 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_154; // (signal)
  /* find_the_damn_issue_sky130.vhd:7854:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_156 = sky130_fd_sc_hd_dlygate4sd3_1_inst_130_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7855:16  */
  assign s_unnamed_155 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_155; // (signal)
  /* find_the_damn_issue_sky130.vhd:7856:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_157 = sky130_fd_sc_hd_dlygate4sd3_1_inst_124_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7857:16  */
  assign s_unnamed_156 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_156; // (signal)
  /* find_the_damn_issue_sky130.vhd:7858:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_158 = sky130_fd_sc_hd_dlygate4sd3_1_inst_121_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7859:16  */
  assign s_unnamed_157 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_157; // (signal)
  /* find_the_damn_issue_sky130.vhd:7860:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_159 = sky130_fd_sc_hd_dlygate4sd3_1_inst_117_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7861:16  */
  assign s_unnamed_158 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_158; // (signal)
  /* find_the_damn_issue_sky130.vhd:7862:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_160 = sky130_fd_sc_hd_dlygate4sd3_1_inst_114_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7863:16  */
  assign s_unnamed_159 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_159; // (signal)
  /* find_the_damn_issue_sky130.vhd:7864:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_161 = sky130_fd_sc_hd_dlygate4sd3_1_inst_110_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7865:16  */
  assign s_unnamed_160 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_160; // (signal)
  /* find_the_damn_issue_sky130.vhd:7866:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_162 = sky130_fd_sc_hd_dlygate4sd3_1_inst_105_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7867:16  */
  assign s_unnamed_161 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_161; // (signal)
  /* find_the_damn_issue_sky130.vhd:7868:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_163 = sky130_fd_sc_hd_dlygate4sd3_1_inst_100_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7869:16  */
  assign s_unnamed_162 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_162; // (signal)
  /* find_the_damn_issue_sky130.vhd:7870:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_164 = sky130_fd_sc_hd_dlygate4sd3_1_inst_97_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7871:16  */
  assign s_unnamed_163 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_163; // (signal)
  /* find_the_damn_issue_sky130.vhd:7872:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_165 = sky130_fd_sc_hd_dlygate4sd3_1_inst_94_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7873:16  */
  assign s_unnamed_164 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_164; // (signal)
  /* find_the_damn_issue_sky130.vhd:7874:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_166 = sky130_fd_sc_hd_dlygate4sd3_1_inst_89_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7875:16  */
  assign s_unnamed_165 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_165; // (signal)
  /* find_the_damn_issue_sky130.vhd:7876:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_167 = sky130_fd_sc_hd_dlygate4sd3_1_inst_85_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7877:16  */
  assign s_unnamed_166 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_166; // (signal)
  /* find_the_damn_issue_sky130.vhd:7878:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_168 = sky130_fd_sc_hd_dlygate4sd3_1_inst_81_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7879:16  */
  assign s_unnamed_167 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_167; // (signal)
  /* find_the_damn_issue_sky130.vhd:7880:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_169 = sky130_fd_sc_hd_dlygate4sd3_1_inst_77_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7881:16  */
  assign s_unnamed_168 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_168; // (signal)
  /* find_the_damn_issue_sky130.vhd:7882:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_170 = sky130_fd_sc_hd_dlygate4sd3_1_inst_73_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7883:16  */
  assign s_unnamed_169 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_169; // (signal)
  /* find_the_damn_issue_sky130.vhd:7884:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_171 = sky130_fd_sc_hd_dlygate4sd3_1_inst_70_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7885:16  */
  assign s_unnamed_170 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_170; // (signal)
  /* find_the_damn_issue_sky130.vhd:7886:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_172 = sky130_fd_sc_hd_dlygate4sd3_1_inst_66_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7887:16  */
  assign s_unnamed_171 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_171; // (signal)
  /* find_the_damn_issue_sky130.vhd:7888:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_173 = sky130_fd_sc_hd_dlygate4sd3_1_inst_61_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7889:16  */
  assign s_unnamed_172 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_172; // (signal)
  /* find_the_damn_issue_sky130.vhd:7890:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_174 = sky130_fd_sc_hd_dlygate4sd3_1_inst_58_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7891:16  */
  assign s_unnamed_173 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_173; // (signal)
  /* find_the_damn_issue_sky130.vhd:7892:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_175 = sky130_fd_sc_hd_dlygate4sd3_1_inst_53_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7893:16  */
  assign s_unnamed_174 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_174; // (signal)
  /* find_the_damn_issue_sky130.vhd:7894:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_176 = sky130_fd_sc_hd_dlygate4sd3_1_inst_50_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7895:16  */
  assign s_unnamed_175 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_175; // (signal)
  /* find_the_damn_issue_sky130.vhd:7896:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_177 = sky130_fd_sc_hd_dlygate4sd3_1_inst_46_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7897:16  */
  assign s_unnamed_176 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_176; // (signal)
  /* find_the_damn_issue_sky130.vhd:7898:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_178 = sky130_fd_sc_hd_dlygate4sd3_1_inst_41_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7899:16  */
  assign s_unnamed_177 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_177; // (signal)
  /* find_the_damn_issue_sky130.vhd:7900:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_179 = sky130_fd_sc_hd_dlygate4sd3_1_inst_37_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7901:16  */
  assign s_unnamed_178 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_178; // (signal)
  /* find_the_damn_issue_sky130.vhd:7902:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_180 = sky130_fd_sc_hd_dlygate4sd3_1_inst_34_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7903:16  */
  assign s_unnamed_179 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_179; // (signal)
  /* find_the_damn_issue_sky130.vhd:7904:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_181 = sky130_fd_sc_hd_dlygate4sd3_1_inst_29_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7905:16  */
  assign s_unnamed_180 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_180; // (signal)
  /* find_the_damn_issue_sky130.vhd:7906:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_182 = sky130_fd_sc_hd_dlygate4sd3_1_inst_25_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7907:16  */
  assign s_unnamed_181 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_181; // (signal)
  /* find_the_damn_issue_sky130.vhd:7908:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_183 = sky130_fd_sc_hd_dlygate4sd3_1_inst_21_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7909:16  */
  assign s_unnamed_182 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_182; // (signal)
  /* find_the_damn_issue_sky130.vhd:7910:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_184 = sky130_fd_sc_hd_dlygate4sd3_1_inst_19_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7911:16  */
  assign s_unnamed_183 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_183; // (signal)
  /* find_the_damn_issue_sky130.vhd:7912:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_185 = sky130_fd_sc_hd_dlygate4sd3_1_inst_13_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7913:16  */
  assign s_unnamed_184 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_184; // (signal)
  /* find_the_damn_issue_sky130.vhd:7914:16  */
  assign s_sky130_fd_sc_hd_dlygate4sd3_1_x_186 = sky130_fd_sc_hd_dlygate4sd3_1_inst_10_X; // (signal)
  /* find_the_damn_issue_sky130.vhd:7915:16  */
  assign s_unnamed_185 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_185; // (signal)
  /* find_the_damn_issue_sky130.vhd:7916:16  */
  assign s_unnamed_186 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_6; // (signal)
  /* find_the_damn_issue_sky130.vhd:7917:16  */
  assign s_unnamed_187 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_12; // (signal)
  /* find_the_damn_issue_sky130.vhd:7918:16  */
  assign s_unnamed_188 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_18; // (signal)
  /* find_the_damn_issue_sky130.vhd:7919:16  */
  assign s_unnamed_189 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_24; // (signal)
  /* find_the_damn_issue_sky130.vhd:7920:16  */
  assign s_unnamed_190 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_30; // (signal)
  /* find_the_damn_issue_sky130.vhd:7921:16  */
  assign s_unnamed_191 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_36; // (signal)
  /* find_the_damn_issue_sky130.vhd:7922:16  */
  assign s_unnamed_192 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_42; // (signal)
  /* find_the_damn_issue_sky130.vhd:7923:16  */
  assign s_unnamed_193 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_48; // (signal)
  /* find_the_damn_issue_sky130.vhd:7924:16  */
  assign s_unnamed_194 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_54; // (signal)
  /* find_the_damn_issue_sky130.vhd:7925:16  */
  assign s_unnamed_195 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_60; // (signal)
  /* find_the_damn_issue_sky130.vhd:7926:16  */
  assign s_unnamed_196 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_66; // (signal)
  /* find_the_damn_issue_sky130.vhd:7927:16  */
  assign s_unnamed_197 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_72; // (signal)
  /* find_the_damn_issue_sky130.vhd:7928:16  */
  assign s_unnamed_198 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_78; // (signal)
  /* find_the_damn_issue_sky130.vhd:7929:16  */
  assign s_unnamed_199 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_84; // (signal)
  /* find_the_damn_issue_sky130.vhd:7930:16  */
  assign s_unnamed_200 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_90; // (signal)
  /* find_the_damn_issue_sky130.vhd:7931:16  */
  assign s_unnamed_201 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_96; // (signal)
  /* find_the_damn_issue_sky130.vhd:7932:16  */
  assign s_unnamed_202 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_102; // (signal)
  /* find_the_damn_issue_sky130.vhd:7933:16  */
  assign s_unnamed_203 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_108; // (signal)
  /* find_the_damn_issue_sky130.vhd:7934:16  */
  assign s_unnamed_204 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_114; // (signal)
  /* find_the_damn_issue_sky130.vhd:7935:16  */
  assign s_unnamed_205 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_120; // (signal)
  /* find_the_damn_issue_sky130.vhd:7936:16  */
  assign s_unnamed_206 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_126; // (signal)
  /* find_the_damn_issue_sky130.vhd:7937:16  */
  assign s_unnamed_207 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_132; // (signal)
  /* find_the_damn_issue_sky130.vhd:7938:16  */
  assign s_unnamed_208 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_138; // (signal)
  /* find_the_damn_issue_sky130.vhd:7939:16  */
  assign s_unnamed_209 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_144; // (signal)
  /* find_the_damn_issue_sky130.vhd:7940:16  */
  assign s_unnamed_210 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_150; // (signal)
  /* find_the_damn_issue_sky130.vhd:7941:16  */
  assign s_unnamed_211 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_156; // (signal)
  /* find_the_damn_issue_sky130.vhd:7942:16  */
  assign s_unnamed_212 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_162; // (signal)
  /* find_the_damn_issue_sky130.vhd:7943:16  */
  assign s_unnamed_213 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_168; // (signal)
  /* find_the_damn_issue_sky130.vhd:7944:16  */
  assign s_unnamed_214 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_174; // (signal)
  /* find_the_damn_issue_sky130.vhd:7945:16  */
  assign s_unnamed_215 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_180; // (signal)
  /* find_the_damn_issue_sky130.vhd:7946:16  */
  assign s_unnamed_216 = s_sky130_fd_sc_hd_dlygate4sd3_1_x_186; // (signal)
  /* find_the_damn_issue_sky130.vhd:7948:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst (
    .A(s_chain_input_2),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_X));
  /* find_the_damn_issue_sky130.vhd:7953:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_2 (
    .A(s_unnamed),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_2_X));
  /* find_the_damn_issue_sky130.vhd:7958:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_3 (
    .A(s_unnamed_2),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_3_X));
  /* find_the_damn_issue_sky130.vhd:7963:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_4 (
    .A(s_unnamed_3),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_4_X));
  /* find_the_damn_issue_sky130.vhd:7968:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_5 (
    .A(s_unnamed_4),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_5_X));
  /* find_the_damn_issue_sky130.vhd:7973:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_6 (
    .A(s_unnamed_5),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_6_X));
  /* find_the_damn_issue_sky130.vhd:7978:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_7 (
    .A(s_unnamed_141),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_7_X));
  /* find_the_damn_issue_sky130.vhd:7983:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_8 (
    .A(s_unnamed_106),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_8_X));
  /* find_the_damn_issue_sky130.vhd:7988:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_9 (
    .A(s_unnamed_6),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_9_X));
  /* find_the_damn_issue_sky130.vhd:7993:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_10 (
    .A(s_unnamed_185),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_10_X));
  /* find_the_damn_issue_sky130.vhd:7998:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_11 (
    .A(s_unnamed_7),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_11_X));
  /* find_the_damn_issue_sky130.vhd:8003:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_12 (
    .A(s_unnamed_8),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_12_X));
  /* find_the_damn_issue_sky130.vhd:8008:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_13 (
    .A(s_unnamed_184),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_13_X));
  /* find_the_damn_issue_sky130.vhd:8013:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_14 (
    .A(s_unnamed_9),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_14_X));
  /* find_the_damn_issue_sky130.vhd:8018:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_15 (
    .A(s_unnamed_132),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_15_X));
  /* find_the_damn_issue_sky130.vhd:8023:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_16 (
    .A(s_unnamed_10),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_16_X));
  /* find_the_damn_issue_sky130.vhd:8028:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_17 (
    .A(s_unnamed_107),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_17_X));
  /* find_the_damn_issue_sky130.vhd:8033:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_18 (
    .A(s_unnamed_11),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_18_X));
  /* find_the_damn_issue_sky130.vhd:8038:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_19 (
    .A(s_unnamed_183),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_19_X));
  /* find_the_damn_issue_sky130.vhd:8043:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_20 (
    .A(s_unnamed_12),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_20_X));
  /* find_the_damn_issue_sky130.vhd:8048:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_21 (
    .A(s_unnamed_182),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_21_X));
  /* find_the_damn_issue_sky130.vhd:8053:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_22 (
    .A(s_unnamed_13),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_22_X));
  /* find_the_damn_issue_sky130.vhd:8058:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_23 (
    .A(s_unnamed_14),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_23_X));
  /* find_the_damn_issue_sky130.vhd:8063:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_24 (
    .A(s_unnamed_15),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_24_X));
  /* find_the_damn_issue_sky130.vhd:8068:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_25 (
    .A(s_unnamed_181),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_25_X));
  /* find_the_damn_issue_sky130.vhd:8073:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_26 (
    .A(s_unnamed_16),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_26_X));
  /* find_the_damn_issue_sky130.vhd:8078:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_27 (
    .A(s_unnamed_17),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_27_X));
  /* find_the_damn_issue_sky130.vhd:8083:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_28 (
    .A(s_unnamed_140),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_28_X));
  /* find_the_damn_issue_sky130.vhd:8088:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_29 (
    .A(s_unnamed_180),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_29_X));
  /* find_the_damn_issue_sky130.vhd:8093:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_30 (
    .A(s_unnamed_108),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_30_X));
  /* find_the_damn_issue_sky130.vhd:8098:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_31 (
    .A(s_unnamed_18),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_31_X));
  /* find_the_damn_issue_sky130.vhd:8103:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_32 (
    .A(s_unnamed_19),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_32_X));
  /* find_the_damn_issue_sky130.vhd:8108:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_33 (
    .A(s_unnamed_20),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_33_X));
  /* find_the_damn_issue_sky130.vhd:8113:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_34 (
    .A(s_unnamed_179),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_34_X));
  /* find_the_damn_issue_sky130.vhd:8118:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_35 (
    .A(s_unnamed_21),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_35_X));
  /* find_the_damn_issue_sky130.vhd:8123:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_36 (
    .A(s_unnamed_22),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_36_X));
  /* find_the_damn_issue_sky130.vhd:8128:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_37 (
    .A(s_unnamed_178),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_37_X));
  /* find_the_damn_issue_sky130.vhd:8133:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_38 (
    .A(s_unnamed_23),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_38_X));
  /* find_the_damn_issue_sky130.vhd:8138:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_39 (
    .A(s_unnamed_109),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_39_X));
  /* find_the_damn_issue_sky130.vhd:8143:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_40 (
    .A(s_unnamed_24),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_40_X));
  /* find_the_damn_issue_sky130.vhd:8148:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_41 (
    .A(s_unnamed_177),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_41_X));
  /* find_the_damn_issue_sky130.vhd:8153:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_42 (
    .A(s_unnamed_25),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_42_X));
  /* find_the_damn_issue_sky130.vhd:8158:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_43 (
    .A(s_unnamed_126),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_43_X));
  /* find_the_damn_issue_sky130.vhd:8163:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_44 (
    .A(s_unnamed_26),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_44_X));
  /* find_the_damn_issue_sky130.vhd:8168:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_45 (
    .A(s_unnamed_139),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_45_X));
  /* find_the_damn_issue_sky130.vhd:8173:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_46 (
    .A(s_unnamed_176),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_46_X));
  /* find_the_damn_issue_sky130.vhd:8178:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_47 (
    .A(s_unnamed_27),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_47_X));
  /* find_the_damn_issue_sky130.vhd:8183:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_48 (
    .A(s_unnamed_110),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_48_X));
  /* find_the_damn_issue_sky130.vhd:8188:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_49 (
    .A(s_unnamed_28),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_49_X));
  /* find_the_damn_issue_sky130.vhd:8193:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_50 (
    .A(s_unnamed_175),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_50_X));
  /* find_the_damn_issue_sky130.vhd:8198:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_51 (
    .A(s_unnamed_29),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_51_X));
  /* find_the_damn_issue_sky130.vhd:8203:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_52 (
    .A(s_unnamed_30),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_52_X));
  /* find_the_damn_issue_sky130.vhd:8208:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_53 (
    .A(s_unnamed_174),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_53_X));
  /* find_the_damn_issue_sky130.vhd:8213:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_54 (
    .A(s_unnamed_31),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_54_X));
  /* find_the_damn_issue_sky130.vhd:8218:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_55 (
    .A(s_unnamed_32),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_55_X));
  /* find_the_damn_issue_sky130.vhd:8223:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_56 (
    .A(s_unnamed_111),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_56_X));
  /* find_the_damn_issue_sky130.vhd:8228:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_57 (
    .A(s_unnamed_33),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_57_X));
  /* find_the_damn_issue_sky130.vhd:8233:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_58 (
    .A(s_unnamed_173),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_58_X));
  /* find_the_damn_issue_sky130.vhd:8238:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_59 (
    .A(s_unnamed_34),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_59_X));
  /* find_the_damn_issue_sky130.vhd:8243:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_60 (
    .A(s_unnamed_35),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_60_X));
  /* find_the_damn_issue_sky130.vhd:8248:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_61 (
    .A(s_unnamed_172),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_61_X));
  /* find_the_damn_issue_sky130.vhd:8253:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_62 (
    .A(s_unnamed_36),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_62_X));
  /* find_the_damn_issue_sky130.vhd:8258:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_63 (
    .A(s_unnamed_112),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_63_X));
  /* find_the_damn_issue_sky130.vhd:8263:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_64 (
    .A(s_unnamed_37),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_64_X));
  /* find_the_damn_issue_sky130.vhd:8268:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_65 (
    .A(s_unnamed_138),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_65_X));
  /* find_the_damn_issue_sky130.vhd:8273:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_66 (
    .A(s_unnamed_171),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_66_X));
  /* find_the_damn_issue_sky130.vhd:8278:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_67 (
    .A(s_unnamed_38),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_67_X));
  /* find_the_damn_issue_sky130.vhd:8283:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_68 (
    .A(s_unnamed_39),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_68_X));
  /* find_the_damn_issue_sky130.vhd:8288:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_69 (
    .A(s_unnamed_40),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_69_X));
  /* find_the_damn_issue_sky130.vhd:8293:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_70 (
    .A(s_unnamed_170),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_70_X));
  /* find_the_damn_issue_sky130.vhd:8298:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_71 (
    .A(s_unnamed_41),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_71_X));
  /* find_the_damn_issue_sky130.vhd:8303:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_72 (
    .A(s_unnamed_113),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_72_X));
  /* find_the_damn_issue_sky130.vhd:8308:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_73 (
    .A(s_unnamed_169),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_73_X));
  /* find_the_damn_issue_sky130.vhd:8313:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_74 (
    .A(s_unnamed_42),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_74_X));
  /* find_the_damn_issue_sky130.vhd:8318:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_75 (
    .A(s_unnamed_43),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_75_X));
  /* find_the_damn_issue_sky130.vhd:8323:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_76 (
    .A(s_unnamed_44),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_76_X));
  /* find_the_damn_issue_sky130.vhd:8328:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_77 (
    .A(s_unnamed_168),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_77_X));
  /* find_the_damn_issue_sky130.vhd:8333:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_78 (
    .A(s_unnamed_45),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_78_X));
  /* find_the_damn_issue_sky130.vhd:8338:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_79 (
    .A(s_unnamed_46),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_79_X));
  /* find_the_damn_issue_sky130.vhd:8343:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_80 (
    .A(s_unnamed_47),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_80_X));
  /* find_the_damn_issue_sky130.vhd:8348:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_81 (
    .A(s_unnamed_167),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_81_X));
  /* find_the_damn_issue_sky130.vhd:8353:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_82 (
    .A(s_unnamed_48),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_82_X));
  /* find_the_damn_issue_sky130.vhd:8358:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_83 (
    .A(s_unnamed_114),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_83_X));
  /* find_the_damn_issue_sky130.vhd:8363:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_84 (
    .A(s_unnamed_49),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_84_X));
  /* find_the_damn_issue_sky130.vhd:8368:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_85 (
    .A(s_unnamed_166),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_85_X));
  /* find_the_damn_issue_sky130.vhd:8373:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_86 (
    .A(s_unnamed_50),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_86_X));
  /* find_the_damn_issue_sky130.vhd:8378:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_87 (
    .A(s_unnamed_127),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_87_X));
  /* find_the_damn_issue_sky130.vhd:8383:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_88 (
    .A(s_unnamed_51),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_88_X));
  /* find_the_damn_issue_sky130.vhd:8388:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_89 (
    .A(s_unnamed_165),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_89_X));
  /* find_the_damn_issue_sky130.vhd:8393:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_90 (
    .A(s_unnamed_52),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_90_X));
  /* find_the_damn_issue_sky130.vhd:8398:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_91 (
    .A(s_unnamed_53),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_91_X));
  /* find_the_damn_issue_sky130.vhd:8403:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_92 (
    .A(s_unnamed_115),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_92_X));
  /* find_the_damn_issue_sky130.vhd:8408:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_93 (
    .A(s_unnamed_137),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_93_X));
  /* find_the_damn_issue_sky130.vhd:8413:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_94 (
    .A(s_unnamed_164),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_94_X));
  /* find_the_damn_issue_sky130.vhd:8418:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_95 (
    .A(s_unnamed_54),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_95_X));
  /* find_the_damn_issue_sky130.vhd:8423:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_96 (
    .A(s_unnamed_55),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_96_X));
  /* find_the_damn_issue_sky130.vhd:8428:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_97 (
    .A(s_unnamed_163),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_97_X));
  /* find_the_damn_issue_sky130.vhd:8433:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_98 (
    .A(s_unnamed_56),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_98_X));
  /* find_the_damn_issue_sky130.vhd:8438:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_99 (
    .A(s_unnamed_57),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_99_X));
  /* find_the_damn_issue_sky130.vhd:8443:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_100 (
    .A(s_unnamed_162),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_100_X));
  /* find_the_damn_issue_sky130.vhd:8448:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_101 (
    .A(s_unnamed_58),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_101_X));
  /* find_the_damn_issue_sky130.vhd:8453:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_102 (
    .A(s_unnamed_116),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_102_X));
  /* find_the_damn_issue_sky130.vhd:8458:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_103 (
    .A(s_unnamed_59),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_103_X));
  /* find_the_damn_issue_sky130.vhd:8463:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_104 (
    .A(s_unnamed_60),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_104_X));
  /* find_the_damn_issue_sky130.vhd:8468:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_105 (
    .A(s_unnamed_161),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_105_X));
  /* find_the_damn_issue_sky130.vhd:8473:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_106 (
    .A(s_unnamed_61),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_106_X));
  /* find_the_damn_issue_sky130.vhd:8478:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_107 (
    .A(s_unnamed_62),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_107_X));
  /* find_the_damn_issue_sky130.vhd:8483:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_108 (
    .A(s_unnamed_117),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_108_X));
  /* find_the_damn_issue_sky130.vhd:8488:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_109 (
    .A(s_unnamed_63),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_109_X));
  /* find_the_damn_issue_sky130.vhd:8493:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_110 (
    .A(s_unnamed_160),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_110_X));
  /* find_the_damn_issue_sky130.vhd:8498:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_111 (
    .A(s_unnamed_64),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_111_X));
  /* find_the_damn_issue_sky130.vhd:8503:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_112 (
    .A(s_unnamed_136),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_112_X));
  /* find_the_damn_issue_sky130.vhd:8508:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_113 (
    .A(s_unnamed_65),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_113_X));
  /* find_the_damn_issue_sky130.vhd:8513:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_114 (
    .A(s_unnamed_159),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_114_X));
  /* find_the_damn_issue_sky130.vhd:8518:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_115 (
    .A(s_unnamed_66),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_115_X));
  /* find_the_damn_issue_sky130.vhd:8523:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_116 (
    .A(s_unnamed_67),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_116_X));
  /* find_the_damn_issue_sky130.vhd:8528:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_117 (
    .A(s_unnamed_158),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_117_X));
  /* find_the_damn_issue_sky130.vhd:8533:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_118 (
    .A(s_unnamed_118),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_118_X));
  /* find_the_damn_issue_sky130.vhd:8538:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_119 (
    .A(s_unnamed_68),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_119_X));
  /* find_the_damn_issue_sky130.vhd:8543:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_120 (
    .A(s_unnamed_69),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_120_X));
  /* find_the_damn_issue_sky130.vhd:8548:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_121 (
    .A(s_unnamed_157),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_121_X));
  /* find_the_damn_issue_sky130.vhd:8553:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_122 (
    .A(s_unnamed_70),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_122_X));
  /* find_the_damn_issue_sky130.vhd:8558:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_123 (
    .A(s_unnamed_71),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_123_X));
  /* find_the_damn_issue_sky130.vhd:8563:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_124 (
    .A(s_unnamed_156),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_124_X));
  /* find_the_damn_issue_sky130.vhd:8568:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_125 (
    .A(s_unnamed_119),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_125_X));
  /* find_the_damn_issue_sky130.vhd:8573:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_126 (
    .A(s_unnamed_72),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_126_X));
  /* find_the_damn_issue_sky130.vhd:8578:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_127 (
    .A(s_unnamed_73),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_127_X));
  /* find_the_damn_issue_sky130.vhd:8583:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_128 (
    .A(s_unnamed_74),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_128_X));
  /* find_the_damn_issue_sky130.vhd:8588:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_129 (
    .A(s_unnamed_128),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_129_X));
  /* find_the_damn_issue_sky130.vhd:8593:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_130 (
    .A(s_unnamed_155),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_130_X));
  /* find_the_damn_issue_sky130.vhd:8598:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_131 (
    .A(s_unnamed_75),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_131_X));
  /* find_the_damn_issue_sky130.vhd:8603:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_132 (
    .A(s_unnamed_135),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_132_X));
  /* find_the_damn_issue_sky130.vhd:8608:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_133 (
    .A(s_unnamed_76),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_133_X));
  /* find_the_damn_issue_sky130.vhd:8613:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_134 (
    .A(s_unnamed_154),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_134_X));
  /* find_the_damn_issue_sky130.vhd:8618:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_135 (
    .A(s_unnamed_77),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_135_X));
  /* find_the_damn_issue_sky130.vhd:8623:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_136 (
    .A(s_unnamed_78),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_136_X));
  /* find_the_damn_issue_sky130.vhd:8628:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_137 (
    .A(s_unnamed_153),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_137_X));
  /* find_the_damn_issue_sky130.vhd:8633:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_138 (
    .A(s_unnamed_79),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_138_X));
  /* find_the_damn_issue_sky130.vhd:8638:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_139 (
    .A(s_unnamed_120),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_139_X));
  /* find_the_damn_issue_sky130.vhd:8643:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_140 (
    .A(s_unnamed_80),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_140_X));
  /* find_the_damn_issue_sky130.vhd:8648:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_141 (
    .A(s_unnamed_152),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_141_X));
  /* find_the_damn_issue_sky130.vhd:8653:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_142 (
    .A(s_unnamed_81),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_142_X));
  /* find_the_damn_issue_sky130.vhd:8658:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_143 (
    .A(s_unnamed_82),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_143_X));
  /* find_the_damn_issue_sky130.vhd:8663:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_144 (
    .A(s_unnamed_83),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_144_X));
  /* find_the_damn_issue_sky130.vhd:8668:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_145 (
    .A(s_unnamed_151),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_145_X));
  /* find_the_damn_issue_sky130.vhd:8673:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_146 (
    .A(s_unnamed_121),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_146_X));
  /* find_the_damn_issue_sky130.vhd:8678:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_147 (
    .A(s_unnamed_84),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_147_X));
  /* find_the_damn_issue_sky130.vhd:8683:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_148 (
    .A(s_unnamed_150),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_148_X));
  /* find_the_damn_issue_sky130.vhd:8688:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_149 (
    .A(s_unnamed_85),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_149_X));
  /* find_the_damn_issue_sky130.vhd:8693:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_150 (
    .A(s_unnamed_134),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_150_X));
  /* find_the_damn_issue_sky130.vhd:8698:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_151 (
    .A(s_unnamed_86),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_151_X));
  /* find_the_damn_issue_sky130.vhd:8703:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_152 (
    .A(s_unnamed_87),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_152_X));
  /* find_the_damn_issue_sky130.vhd:8708:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_153 (
    .A(s_unnamed_88),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_153_X));
  /* find_the_damn_issue_sky130.vhd:8713:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_154 (
    .A(s_unnamed_149),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_154_X));
  /* find_the_damn_issue_sky130.vhd:8718:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_155 (
    .A(s_unnamed_122),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_155_X));
  /* find_the_damn_issue_sky130.vhd:8723:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_156 (
    .A(s_unnamed_89),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_156_X));
  /* find_the_damn_issue_sky130.vhd:8728:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_157 (
    .A(s_unnamed_130),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_157_X));
  /* find_the_damn_issue_sky130.vhd:8733:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_158 (
    .A(s_unnamed_148),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_158_X));
  /* find_the_damn_issue_sky130.vhd:8738:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_159 (
    .A(s_unnamed_90),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_159_X));
  /* find_the_damn_issue_sky130.vhd:8743:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_160 (
    .A(s_unnamed_91),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_160_X));
  /* find_the_damn_issue_sky130.vhd:8748:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_161 (
    .A(s_unnamed_131),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_161_X));
  /* find_the_damn_issue_sky130.vhd:8753:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_162 (
    .A(s_unnamed_92),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_162_X));
  /* find_the_damn_issue_sky130.vhd:8758:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_163 (
    .A(s_unnamed_147),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_163_X));
  /* find_the_damn_issue_sky130.vhd:8763:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_164 (
    .A(s_unnamed_93),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_164_X));
  /* find_the_damn_issue_sky130.vhd:8768:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_165 (
    .A(s_unnamed_123),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_165_X));
  /* find_the_damn_issue_sky130.vhd:8773:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_166 (
    .A(s_unnamed_94),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_166_X));
  /* find_the_damn_issue_sky130.vhd:8778:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_167 (
    .A(s_unnamed_146),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_167_X));
  /* find_the_damn_issue_sky130.vhd:8783:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_168 (
    .A(s_unnamed_95),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_168_X));
  /* find_the_damn_issue_sky130.vhd:8788:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_169 (
    .A(s_unnamed_96),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_169_X));
  /* find_the_damn_issue_sky130.vhd:8793:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_170 (
    .A(s_unnamed_133),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_170_X));
  /* find_the_damn_issue_sky130.vhd:8798:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_171 (
    .A(s_unnamed_145),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_171_X));
  /* find_the_damn_issue_sky130.vhd:8803:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_172 (
    .A(s_unnamed_97),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_172_X));
  /* find_the_damn_issue_sky130.vhd:8808:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_173 (
    .A(s_unnamed_98),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_173_X));
  /* find_the_damn_issue_sky130.vhd:8813:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_174 (
    .A(s_unnamed_124),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_174_X));
  /* find_the_damn_issue_sky130.vhd:8818:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_175 (
    .A(s_unnamed_144),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_175_X));
  /* find_the_damn_issue_sky130.vhd:8823:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_176 (
    .A(s_unnamed_99),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_176_X));
  /* find_the_damn_issue_sky130.vhd:8828:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_177 (
    .A(s_unnamed_129),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_177_X));
  /* find_the_damn_issue_sky130.vhd:8833:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_178 (
    .A(s_unnamed_100),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_178_X));
  /* find_the_damn_issue_sky130.vhd:8838:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_179 (
    .A(s_unnamed_101),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_179_X));
  /* find_the_damn_issue_sky130.vhd:8843:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_180 (
    .A(s_unnamed_143),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_180_X));
  /* find_the_damn_issue_sky130.vhd:8848:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_181 (
    .A(s_unnamed_102),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_181_X));
  /* find_the_damn_issue_sky130.vhd:8853:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_182 (
    .A(s_unnamed_125),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_182_X));
  /* find_the_damn_issue_sky130.vhd:8858:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_183 (
    .A(s_unnamed_103),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_183_X));
  /* find_the_damn_issue_sky130.vhd:8863:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_184 (
    .A(s_unnamed_142),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_184_X));
  /* find_the_damn_issue_sky130.vhd:8868:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_185 (
    .A(s_unnamed_104),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_185_X));
  /* find_the_damn_issue_sky130.vhd:8873:9  */
  sky130_fd_sc_hd_dlygate4sd3_1 sky130_fd_sc_hd_dlygate4sd3_1_inst_186 (
    .A(s_unnamed_105),
    .X(sky130_fd_sc_hd_dlygate4sd3_1_inst_186_X));
  /* find_the_damn_issue_sky130.vhd:9104:60  */
  assign n8507_o = n8506_o[31:1];
  /* find_the_damn_issue_sky130.vhd:9104:74  */
  assign n8508_o = {n8507_o, s_chain_input_2};
  /* find_the_damn_issue_sky130.vhd:9106:60  */
  assign n8509_o = n8508_o[31:2];
  /* find_the_damn_issue_sky130.vhd:9106:74  */
  assign n8510_o = {n8509_o, s_unnamed_186};
  /* find_the_damn_issue_sky130.vhd:9106:121  */
  assign n8511_o = n8508_o[0];
  /* find_the_damn_issue_sky130.vhd:9106:90  */
  assign n8512_o = {n8510_o, n8511_o};
  /* find_the_damn_issue_sky130.vhd:9108:42  */
  assign n8513_o = n8512_o[31:3];
  /* find_the_damn_issue_sky130.vhd:9108:56  */
  assign n8514_o = {n8513_o, s_unnamed_187};
  /* find_the_damn_issue_sky130.vhd:9108:83  */
  assign n8515_o = n8512_o[1:0];
  /* find_the_damn_issue_sky130.vhd:9108:72  */
  assign n8516_o = {n8514_o, n8515_o};
  /* find_the_damn_issue_sky130.vhd:9110:44  */
  assign n8517_o = n8516_o[31:4];
  /* find_the_damn_issue_sky130.vhd:9110:58  */
  assign n8518_o = {n8517_o, s_unnamed_188};
  /* find_the_damn_issue_sky130.vhd:9110:87  */
  assign n8519_o = n8516_o[2:0];
  /* find_the_damn_issue_sky130.vhd:9110:74  */
  assign n8520_o = {n8518_o, n8519_o};
  /* find_the_damn_issue_sky130.vhd:9112:44  */
  assign n8521_o = n8520_o[31:5];
  /* find_the_damn_issue_sky130.vhd:9112:58  */
  assign n8522_o = {n8521_o, s_unnamed_189};
  /* find_the_damn_issue_sky130.vhd:9112:87  */
  assign n8523_o = n8520_o[3:0];
  /* find_the_damn_issue_sky130.vhd:9112:74  */
  assign n8524_o = {n8522_o, n8523_o};
  /* find_the_damn_issue_sky130.vhd:9114:44  */
  assign n8525_o = n8524_o[31:6];
  /* find_the_damn_issue_sky130.vhd:9114:58  */
  assign n8526_o = {n8525_o, s_unnamed_190};
  /* find_the_damn_issue_sky130.vhd:9114:87  */
  assign n8527_o = n8524_o[4:0];
  /* find_the_damn_issue_sky130.vhd:9114:74  */
  assign n8528_o = {n8526_o, n8527_o};
  /* find_the_damn_issue_sky130.vhd:9116:44  */
  assign n8529_o = n8528_o[31:7];
  /* find_the_damn_issue_sky130.vhd:9116:58  */
  assign n8530_o = {n8529_o, s_unnamed_191};
  /* find_the_damn_issue_sky130.vhd:9116:87  */
  assign n8531_o = n8528_o[5:0];
  /* find_the_damn_issue_sky130.vhd:9116:74  */
  assign n8532_o = {n8530_o, n8531_o};
  /* find_the_damn_issue_sky130.vhd:9118:44  */
  assign n8533_o = n8532_o[31:8];
  /* find_the_damn_issue_sky130.vhd:9118:58  */
  assign n8534_o = {n8533_o, s_unnamed_192};
  /* find_the_damn_issue_sky130.vhd:9118:87  */
  assign n8535_o = n8532_o[6:0];
  /* find_the_damn_issue_sky130.vhd:9118:74  */
  assign n8536_o = {n8534_o, n8535_o};
  /* find_the_damn_issue_sky130.vhd:9120:44  */
  assign n8537_o = n8536_o[31:9];
  /* find_the_damn_issue_sky130.vhd:9120:58  */
  assign n8538_o = {n8537_o, s_unnamed_193};
  /* find_the_damn_issue_sky130.vhd:9120:87  */
  assign n8539_o = n8536_o[7:0];
  /* find_the_damn_issue_sky130.vhd:9120:74  */
  assign n8540_o = {n8538_o, n8539_o};
  /* find_the_damn_issue_sky130.vhd:9122:44  */
  assign n8541_o = n8540_o[31:10];
  /* find_the_damn_issue_sky130.vhd:9122:59  */
  assign n8542_o = {n8541_o, s_unnamed_194};
  /* find_the_damn_issue_sky130.vhd:9122:88  */
  assign n8543_o = n8540_o[8:0];
  /* find_the_damn_issue_sky130.vhd:9122:75  */
  assign n8544_o = {n8542_o, n8543_o};
  /* find_the_damn_issue_sky130.vhd:9124:45  */
  assign n8545_o = n8544_o[31:11];
  /* find_the_damn_issue_sky130.vhd:9124:60  */
  assign n8546_o = {n8545_o, s_unnamed_195};
  /* find_the_damn_issue_sky130.vhd:9124:89  */
  assign n8547_o = n8544_o[9:0];
  /* find_the_damn_issue_sky130.vhd:9124:76  */
  assign n8548_o = {n8546_o, n8547_o};
  /* find_the_damn_issue_sky130.vhd:9126:46  */
  assign n8549_o = n8548_o[31:12];
  /* find_the_damn_issue_sky130.vhd:9126:61  */
  assign n8550_o = {n8549_o, s_unnamed_196};
  /* find_the_damn_issue_sky130.vhd:9126:91  */
  assign n8551_o = n8548_o[10:0];
  /* find_the_damn_issue_sky130.vhd:9126:77  */
  assign n8552_o = {n8550_o, n8551_o};
  /* find_the_damn_issue_sky130.vhd:9128:46  */
  assign n8553_o = n8552_o[31:13];
  /* find_the_damn_issue_sky130.vhd:9128:61  */
  assign n8554_o = {n8553_o, s_unnamed_197};
  /* find_the_damn_issue_sky130.vhd:9128:91  */
  assign n8555_o = n8552_o[11:0];
  /* find_the_damn_issue_sky130.vhd:9128:77  */
  assign n8556_o = {n8554_o, n8555_o};
  /* find_the_damn_issue_sky130.vhd:9130:46  */
  assign n8557_o = n8556_o[31:14];
  /* find_the_damn_issue_sky130.vhd:9130:61  */
  assign n8558_o = {n8557_o, s_unnamed_198};
  /* find_the_damn_issue_sky130.vhd:9130:91  */
  assign n8559_o = n8556_o[12:0];
  /* find_the_damn_issue_sky130.vhd:9130:77  */
  assign n8560_o = {n8558_o, n8559_o};
  /* find_the_damn_issue_sky130.vhd:9132:46  */
  assign n8561_o = n8560_o[31:15];
  /* find_the_damn_issue_sky130.vhd:9132:61  */
  assign n8562_o = {n8561_o, s_unnamed_199};
  /* find_the_damn_issue_sky130.vhd:9132:91  */
  assign n8563_o = n8560_o[13:0];
  /* find_the_damn_issue_sky130.vhd:9132:77  */
  assign n8564_o = {n8562_o, n8563_o};
  /* find_the_damn_issue_sky130.vhd:9134:46  */
  assign n8565_o = n8564_o[31:16];
  /* find_the_damn_issue_sky130.vhd:9134:61  */
  assign n8566_o = {n8565_o, s_unnamed_200};
  /* find_the_damn_issue_sky130.vhd:9134:91  */
  assign n8567_o = n8564_o[14:0];
  /* find_the_damn_issue_sky130.vhd:9134:77  */
  assign n8568_o = {n8566_o, n8567_o};
  /* find_the_damn_issue_sky130.vhd:9136:46  */
  assign n8569_o = n8568_o[31:17];
  /* find_the_damn_issue_sky130.vhd:9136:61  */
  assign n8570_o = {n8569_o, s_unnamed_201};
  /* find_the_damn_issue_sky130.vhd:9136:91  */
  assign n8571_o = n8568_o[15:0];
  /* find_the_damn_issue_sky130.vhd:9136:77  */
  assign n8572_o = {n8570_o, n8571_o};
  /* find_the_damn_issue_sky130.vhd:9138:46  */
  assign n8573_o = n8572_o[31:18];
  /* find_the_damn_issue_sky130.vhd:9138:61  */
  assign n8574_o = {n8573_o, s_unnamed_202};
  /* find_the_damn_issue_sky130.vhd:9138:91  */
  assign n8575_o = n8572_o[16:0];
  /* find_the_damn_issue_sky130.vhd:9138:77  */
  assign n8576_o = {n8574_o, n8575_o};
  /* find_the_damn_issue_sky130.vhd:9140:46  */
  assign n8577_o = n8576_o[31:19];
  /* find_the_damn_issue_sky130.vhd:9140:61  */
  assign n8578_o = {n8577_o, s_unnamed_203};
  /* find_the_damn_issue_sky130.vhd:9140:91  */
  assign n8579_o = n8576_o[17:0];
  /* find_the_damn_issue_sky130.vhd:9140:77  */
  assign n8580_o = {n8578_o, n8579_o};
  /* find_the_damn_issue_sky130.vhd:9142:46  */
  assign n8581_o = n8580_o[31:20];
  /* find_the_damn_issue_sky130.vhd:9142:61  */
  assign n8582_o = {n8581_o, s_unnamed_204};
  /* find_the_damn_issue_sky130.vhd:9142:91  */
  assign n8583_o = n8580_o[18:0];
  /* find_the_damn_issue_sky130.vhd:9142:77  */
  assign n8584_o = {n8582_o, n8583_o};
  /* find_the_damn_issue_sky130.vhd:9144:46  */
  assign n8585_o = n8584_o[31:21];
  /* find_the_damn_issue_sky130.vhd:9144:61  */
  assign n8586_o = {n8585_o, s_unnamed_205};
  /* find_the_damn_issue_sky130.vhd:9144:91  */
  assign n8587_o = n8584_o[19:0];
  /* find_the_damn_issue_sky130.vhd:9144:77  */
  assign n8588_o = {n8586_o, n8587_o};
  /* find_the_damn_issue_sky130.vhd:9146:46  */
  assign n8589_o = n8588_o[31:22];
  /* find_the_damn_issue_sky130.vhd:9146:61  */
  assign n8590_o = {n8589_o, s_unnamed_206};
  /* find_the_damn_issue_sky130.vhd:9146:91  */
  assign n8591_o = n8588_o[20:0];
  /* find_the_damn_issue_sky130.vhd:9146:77  */
  assign n8592_o = {n8590_o, n8591_o};
  /* find_the_damn_issue_sky130.vhd:9148:46  */
  assign n8593_o = n8592_o[31:23];
  /* find_the_damn_issue_sky130.vhd:9148:61  */
  assign n8594_o = {n8593_o, s_unnamed_207};
  /* find_the_damn_issue_sky130.vhd:9148:91  */
  assign n8595_o = n8592_o[21:0];
  /* find_the_damn_issue_sky130.vhd:9148:77  */
  assign n8596_o = {n8594_o, n8595_o};
  /* find_the_damn_issue_sky130.vhd:9150:46  */
  assign n8597_o = n8596_o[31:24];
  /* find_the_damn_issue_sky130.vhd:9150:61  */
  assign n8598_o = {n8597_o, s_unnamed_208};
  /* find_the_damn_issue_sky130.vhd:9150:91  */
  assign n8599_o = n8596_o[22:0];
  /* find_the_damn_issue_sky130.vhd:9150:77  */
  assign n8600_o = {n8598_o, n8599_o};
  /* find_the_damn_issue_sky130.vhd:9152:46  */
  assign n8601_o = n8600_o[31:25];
  /* find_the_damn_issue_sky130.vhd:9152:61  */
  assign n8602_o = {n8601_o, s_unnamed_209};
  /* find_the_damn_issue_sky130.vhd:9152:91  */
  assign n8603_o = n8600_o[23:0];
  /* find_the_damn_issue_sky130.vhd:9152:77  */
  assign n8604_o = {n8602_o, n8603_o};
  /* find_the_damn_issue_sky130.vhd:9154:46  */
  assign n8605_o = n8604_o[31:26];
  /* find_the_damn_issue_sky130.vhd:9154:61  */
  assign n8606_o = {n8605_o, s_unnamed_210};
  /* find_the_damn_issue_sky130.vhd:9154:91  */
  assign n8607_o = n8604_o[24:0];
  /* find_the_damn_issue_sky130.vhd:9154:77  */
  assign n8608_o = {n8606_o, n8607_o};
  /* find_the_damn_issue_sky130.vhd:9156:46  */
  assign n8609_o = n8608_o[31:27];
  /* find_the_damn_issue_sky130.vhd:9156:61  */
  assign n8610_o = {n8609_o, s_unnamed_211};
  /* find_the_damn_issue_sky130.vhd:9156:91  */
  assign n8611_o = n8608_o[25:0];
  /* find_the_damn_issue_sky130.vhd:9156:77  */
  assign n8612_o = {n8610_o, n8611_o};
  /* find_the_damn_issue_sky130.vhd:9158:46  */
  assign n8613_o = n8612_o[31:28];
  /* find_the_damn_issue_sky130.vhd:9158:61  */
  assign n8614_o = {n8613_o, s_unnamed_212};
  /* find_the_damn_issue_sky130.vhd:9158:91  */
  assign n8615_o = n8612_o[26:0];
  /* find_the_damn_issue_sky130.vhd:9158:77  */
  assign n8616_o = {n8614_o, n8615_o};
  /* find_the_damn_issue_sky130.vhd:9160:46  */
  assign n8617_o = n8616_o[31:29];
  /* find_the_damn_issue_sky130.vhd:9160:61  */
  assign n8618_o = {n8617_o, s_unnamed_213};
  /* find_the_damn_issue_sky130.vhd:9160:91  */
  assign n8619_o = n8616_o[27:0];
  /* find_the_damn_issue_sky130.vhd:9160:77  */
  assign n8620_o = {n8618_o, n8619_o};
  /* find_the_damn_issue_sky130.vhd:9162:46  */
  assign n8621_o = n8620_o[31:30];
  /* find_the_damn_issue_sky130.vhd:9162:61  */
  assign n8622_o = {n8621_o, s_unnamed_214};
  /* find_the_damn_issue_sky130.vhd:9162:91  */
  assign n8623_o = n8620_o[28:0];
  /* find_the_damn_issue_sky130.vhd:9162:77  */
  assign n8624_o = {n8622_o, n8623_o};
  /* find_the_damn_issue_sky130.vhd:9164:46  */
  assign n8625_o = n8624_o[31];
  /* find_the_damn_issue_sky130.vhd:9164:61  */
  assign n8626_o = {n8625_o, s_unnamed_215};
  /* find_the_damn_issue_sky130.vhd:9164:91  */
  assign n8627_o = n8624_o[29:0];
  /* find_the_damn_issue_sky130.vhd:9164:77  */
  assign n8628_o = {n8626_o, n8627_o};
  /* find_the_damn_issue_sky130.vhd:9165:62  */
  assign n8629_o = n8628_o[30:0];
  /* find_the_damn_issue_sky130.vhd:9165:48  */
  assign n8630_o = {s_unnamed_216, n8629_o};
  /* find_the_damn_issue_sky130.vhd:9167:71  */
  assign n8631_o = n8630_o[0];
  /* find_the_damn_issue_sky130.vhd:9167:25  */
  assign n8633_o = in_delay == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:9168:71  */
  assign n8634_o = n8630_o[1];
  /* find_the_damn_issue_sky130.vhd:9168:25  */
  assign n8636_o = in_delay == 5'b00001;
  /* find_the_damn_issue_sky130.vhd:9169:71  */
  assign n8637_o = n8630_o[2];
  /* find_the_damn_issue_sky130.vhd:9169:25  */
  assign n8639_o = in_delay == 5'b00010;
  /* find_the_damn_issue_sky130.vhd:9170:71  */
  assign n8640_o = n8630_o[3];
  /* find_the_damn_issue_sky130.vhd:9170:25  */
  assign n8642_o = in_delay == 5'b00011;
  /* find_the_damn_issue_sky130.vhd:9171:71  */
  assign n8643_o = n8630_o[4];
  /* find_the_damn_issue_sky130.vhd:9171:25  */
  assign n8645_o = in_delay == 5'b00100;
  /* find_the_damn_issue_sky130.vhd:9172:71  */
  assign n8646_o = n8630_o[5];
  /* find_the_damn_issue_sky130.vhd:9172:25  */
  assign n8648_o = in_delay == 5'b00101;
  /* find_the_damn_issue_sky130.vhd:9173:71  */
  assign n8649_o = n8630_o[6];
  /* find_the_damn_issue_sky130.vhd:9173:25  */
  assign n8651_o = in_delay == 5'b00110;
  /* find_the_damn_issue_sky130.vhd:9174:71  */
  assign n8652_o = n8630_o[7];
  /* find_the_damn_issue_sky130.vhd:9174:25  */
  assign n8654_o = in_delay == 5'b00111;
  /* find_the_damn_issue_sky130.vhd:9175:71  */
  assign n8655_o = n8630_o[8];
  /* find_the_damn_issue_sky130.vhd:9175:25  */
  assign n8657_o = in_delay == 5'b01000;
  /* find_the_damn_issue_sky130.vhd:9176:71  */
  assign n8658_o = n8630_o[9];
  /* find_the_damn_issue_sky130.vhd:9176:25  */
  assign n8660_o = in_delay == 5'b01001;
  /* find_the_damn_issue_sky130.vhd:9177:71  */
  assign n8661_o = n8630_o[10];
  /* find_the_damn_issue_sky130.vhd:9177:25  */
  assign n8663_o = in_delay == 5'b01010;
  /* find_the_damn_issue_sky130.vhd:9178:71  */
  assign n8664_o = n8630_o[11];
  /* find_the_damn_issue_sky130.vhd:9178:25  */
  assign n8666_o = in_delay == 5'b01011;
  /* find_the_damn_issue_sky130.vhd:9179:71  */
  assign n8667_o = n8630_o[12];
  /* find_the_damn_issue_sky130.vhd:9179:25  */
  assign n8669_o = in_delay == 5'b01100;
  /* find_the_damn_issue_sky130.vhd:9180:71  */
  assign n8670_o = n8630_o[13];
  /* find_the_damn_issue_sky130.vhd:9180:25  */
  assign n8672_o = in_delay == 5'b01101;
  /* find_the_damn_issue_sky130.vhd:9181:71  */
  assign n8673_o = n8630_o[14];
  /* find_the_damn_issue_sky130.vhd:9181:25  */
  assign n8675_o = in_delay == 5'b01110;
  /* find_the_damn_issue_sky130.vhd:9182:71  */
  assign n8676_o = n8630_o[15];
  /* find_the_damn_issue_sky130.vhd:9182:25  */
  assign n8678_o = in_delay == 5'b01111;
  /* find_the_damn_issue_sky130.vhd:9183:71  */
  assign n8679_o = n8630_o[16];
  /* find_the_damn_issue_sky130.vhd:9183:25  */
  assign n8681_o = in_delay == 5'b10000;
  /* find_the_damn_issue_sky130.vhd:9184:71  */
  assign n8682_o = n8630_o[17];
  /* find_the_damn_issue_sky130.vhd:9184:25  */
  assign n8684_o = in_delay == 5'b10001;
  /* find_the_damn_issue_sky130.vhd:9185:71  */
  assign n8685_o = n8630_o[18];
  /* find_the_damn_issue_sky130.vhd:9185:25  */
  assign n8687_o = in_delay == 5'b10010;
  /* find_the_damn_issue_sky130.vhd:9186:71  */
  assign n8688_o = n8630_o[19];
  /* find_the_damn_issue_sky130.vhd:9186:25  */
  assign n8690_o = in_delay == 5'b10011;
  /* find_the_damn_issue_sky130.vhd:9187:71  */
  assign n8691_o = n8630_o[20];
  /* find_the_damn_issue_sky130.vhd:9187:25  */
  assign n8693_o = in_delay == 5'b10100;
  /* find_the_damn_issue_sky130.vhd:9188:71  */
  assign n8694_o = n8630_o[21];
  /* find_the_damn_issue_sky130.vhd:9188:25  */
  assign n8696_o = in_delay == 5'b10101;
  /* find_the_damn_issue_sky130.vhd:9189:71  */
  assign n8697_o = n8630_o[22];
  /* find_the_damn_issue_sky130.vhd:9189:25  */
  assign n8699_o = in_delay == 5'b10110;
  /* find_the_damn_issue_sky130.vhd:9190:71  */
  assign n8700_o = n8630_o[23];
  /* find_the_damn_issue_sky130.vhd:9190:25  */
  assign n8702_o = in_delay == 5'b10111;
  /* find_the_damn_issue_sky130.vhd:9191:71  */
  assign n8703_o = n8630_o[24];
  /* find_the_damn_issue_sky130.vhd:9191:25  */
  assign n8705_o = in_delay == 5'b11000;
  /* find_the_damn_issue_sky130.vhd:9192:71  */
  assign n8706_o = n8630_o[25];
  /* find_the_damn_issue_sky130.vhd:9192:25  */
  assign n8708_o = in_delay == 5'b11001;
  /* find_the_damn_issue_sky130.vhd:9193:71  */
  assign n8709_o = n8630_o[26];
  /* find_the_damn_issue_sky130.vhd:9193:25  */
  assign n8711_o = in_delay == 5'b11010;
  /* find_the_damn_issue_sky130.vhd:9194:71  */
  assign n8712_o = n8630_o[27];
  /* find_the_damn_issue_sky130.vhd:9194:25  */
  assign n8714_o = in_delay == 5'b11011;
  /* find_the_damn_issue_sky130.vhd:9195:71  */
  assign n8715_o = n8630_o[28];
  /* find_the_damn_issue_sky130.vhd:9195:25  */
  assign n8717_o = in_delay == 5'b11100;
  /* find_the_damn_issue_sky130.vhd:9196:71  */
  assign n8718_o = n8630_o[29];
  /* find_the_damn_issue_sky130.vhd:9196:25  */
  assign n8720_o = in_delay == 5'b11101;
  /* find_the_damn_issue_sky130.vhd:9197:71  */
  assign n8721_o = n8630_o[30];
  /* find_the_damn_issue_sky130.vhd:9197:25  */
  assign n8723_o = in_delay == 5'b11110;
  /* find_the_damn_issue_sky130.vhd:9198:71  */
  assign n8724_o = n8630_o[31];
  /* find_the_damn_issue_sky130.vhd:9198:25  */
  assign n8726_o = in_delay == 5'b11111;
  assign n8727_o = {n8726_o, n8723_o, n8720_o, n8717_o, n8714_o, n8711_o, n8708_o, n8705_o, n8702_o, n8699_o, n8696_o, n8693_o, n8690_o, n8687_o, n8684_o, n8681_o, n8678_o, n8675_o, n8672_o, n8669_o, n8666_o, n8663_o, n8660_o, n8657_o, n8654_o, n8651_o, n8648_o, n8645_o, n8642_o, n8639_o, n8636_o, n8633_o};
  /* find_the_damn_issue_sky130.vhd:9166:17  */
  always @*
    case (n8727_o)
      32'b10000000000000000000000000000000: n8729_o = n8724_o;
      32'b01000000000000000000000000000000: n8729_o = n8721_o;
      32'b00100000000000000000000000000000: n8729_o = n8718_o;
      32'b00010000000000000000000000000000: n8729_o = n8715_o;
      32'b00001000000000000000000000000000: n8729_o = n8712_o;
      32'b00000100000000000000000000000000: n8729_o = n8709_o;
      32'b00000010000000000000000000000000: n8729_o = n8706_o;
      32'b00000001000000000000000000000000: n8729_o = n8703_o;
      32'b00000000100000000000000000000000: n8729_o = n8700_o;
      32'b00000000010000000000000000000000: n8729_o = n8697_o;
      32'b00000000001000000000000000000000: n8729_o = n8694_o;
      32'b00000000000100000000000000000000: n8729_o = n8691_o;
      32'b00000000000010000000000000000000: n8729_o = n8688_o;
      32'b00000000000001000000000000000000: n8729_o = n8685_o;
      32'b00000000000000100000000000000000: n8729_o = n8682_o;
      32'b00000000000000010000000000000000: n8729_o = n8679_o;
      32'b00000000000000001000000000000000: n8729_o = n8676_o;
      32'b00000000000000000100000000000000: n8729_o = n8673_o;
      32'b00000000000000000010000000000000: n8729_o = n8670_o;
      32'b00000000000000000001000000000000: n8729_o = n8667_o;
      32'b00000000000000000000100000000000: n8729_o = n8664_o;
      32'b00000000000000000000010000000000: n8729_o = n8661_o;
      32'b00000000000000000000001000000000: n8729_o = n8658_o;
      32'b00000000000000000000000100000000: n8729_o = n8655_o;
      32'b00000000000000000000000010000000: n8729_o = n8652_o;
      32'b00000000000000000000000001000000: n8729_o = n8649_o;
      32'b00000000000000000000000000100000: n8729_o = n8646_o;
      32'b00000000000000000000000000010000: n8729_o = n8643_o;
      32'b00000000000000000000000000001000: n8729_o = n8640_o;
      32'b00000000000000000000000000000100: n8729_o = n8637_o;
      32'b00000000000000000000000000000010: n8729_o = n8634_o;
      32'b00000000000000000000000000000001: n8729_o = n8631_o;
      default: n8729_o = 1'bX;
    endcase
endmodule

module scl_counter_11
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  [1:0] in_unnamed_2,
   output out_m_last,
   output out_const_0,
   output [1:0] out_const_xx);
  reg [1:0] s_m_value;
  wire [1:0] s_m_value_plus_const_1_mux2;
  wire n8255_o;
  wire [1:0] n8257_o;
  wire [1:0] n8259_o;
  wire [1:0] n8260_o;
  wire n8263_o;
  wire n8270_o;
  localparam n8273_o = 1'b0;
  localparam [1:0] n8274_o = 2'bX;
  wire n8276_o;
  reg [1:0] n8282_q;
  assign out_m_last = n8270_o;
  assign out_const_0 = n8273_o;
  assign out_const_xx = n8274_o;
  /* find_the_damn_issue_sky130.vhd:3649:16  */
  always @*
    s_m_value = n8282_q; // (isignal)
  initial
    s_m_value = 2'b00;
  /* find_the_damn_issue_sky130.vhd:3650:16  */
  assign s_m_value_plus_const_1_mux2 = n8260_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3662:31  */
  assign n8255_o = s_m_value == 2'b10;
  /* find_the_damn_issue_sky130.vhd:3665:67  */
  assign n8257_o = s_m_value + 2'b01;
  /* find_the_damn_issue_sky130.vhd:3662:17  */
  assign n8259_o = n8255_o ? 2'b00 : n8257_o;
  /* find_the_damn_issue_sky130.vhd:3667:17  */
  assign n8260_o = in_unnamed ? in_unnamed_2 : n8259_o;
  /* find_the_damn_issue_sky130.vhd:3672:55  */
  assign n8263_o = s_m_value == 2'b10;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n8270_o = n8263_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3680:27  */
  assign n8276_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:3682:17  */
  always @(posedge clk or posedge n8276_o)
    if (n8276_o)
      n8282_q <= 2'b00;
    else
      n8282_q <= s_m_value_plus_const_1_mux2;
endmodule

module scl_counter_10
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  [1:0] in_unnamed_2,
   output out_m_last,
   output out_const_0,
   output [1:0] out_const_xx);
  reg [1:0] s_m_value;
  wire [1:0] s_m_value_plus_const_1_mux1;
  wire [1:0] n8220_o;
  wire [1:0] n8221_o;
  wire n8224_o;
  wire n8231_o;
  localparam n8234_o = 1'b0;
  localparam [1:0] n8235_o = 2'bX;
  wire n8237_o;
  reg [1:0] n8243_q;
  assign out_m_last = n8231_o;
  assign out_const_0 = n8234_o;
  assign out_const_xx = n8235_o;
  /* find_the_damn_issue_sky130.vhd:3792:16  */
  always @*
    s_m_value = n8243_q; // (isignal)
  initial
    s_m_value = 2'b00;
  /* find_the_damn_issue_sky130.vhd:3793:16  */
  assign s_m_value_plus_const_1_mux1 = n8221_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3807:67  */
  assign n8220_o = s_m_value + 2'b01;
  /* find_the_damn_issue_sky130.vhd:3804:17  */
  assign n8221_o = in_unnamed ? in_unnamed_2 : n8220_o;
  /* find_the_damn_issue_sky130.vhd:3809:55  */
  assign n8224_o = s_m_value == 2'b11;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n8231_o = n8224_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3817:27  */
  assign n8237_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:3819:17  */
  always @(posedge clk or posedge n8237_o)
    if (n8237_o)
      n8243_q <= 2'b00;
    else
      n8243_q <= s_m_value_plus_const_1_mux1;
endmodule

module scl_counter_8
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [2:0] in_unnamed_3,
   output out_m_last,
   output out_const_0,
   output out_const_0_2,
   output [2:0] out_const_xxx);
  reg [2:0] s_m_value;
  wire [2:0] s_m_value_plus_const_0_mux4;
  wire [2:0] n8169_o;
  wire n8172_o;
  wire n8179_o;
  wire n8181_o;
  wire n8183_o;
  wire n8184_o;
  wire [2:0] n8185_o;
  wire [2:0] n8187_o;
  wire n8189_o;
  wire n8191_o;
  wire n8192_o;
  wire [2:0] n8194_o;
  wire [2:0] n8195_o;
  localparam n8199_o = 1'b0;
  localparam n8200_o = 1'b0;
  localparam [2:0] n8201_o = 3'bX;
  wire n8203_o;
  reg [2:0] n8209_q;
  assign out_m_last = n8179_o;
  assign out_const_0 = n8199_o;
  assign out_const_0_2 = n8200_o;
  assign out_const_xxx = n8201_o;
  /* find_the_damn_issue_sky130.vhd:4029:16  */
  always @*
    s_m_value = n8209_q; // (isignal)
  initial
    s_m_value = 3'b000;
  /* find_the_damn_issue_sky130.vhd:4030:16  */
  assign s_m_value_plus_const_0_mux4 = n8195_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4044:17  */
  assign n8169_o = in_unnamed ? 3'b001 : 3'b000;
  /* find_the_damn_issue_sky130.vhd:4052:55  */
  assign n8172_o = s_m_value == 3'b110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n8179_o = n8172_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4056:32  */
  assign n8181_o = s_m_value == 3'b110;
  /* find_the_damn_issue_sky130.vhd:4056:63  */
  assign n8183_o = n8169_o == 3'b001;
  /* find_the_damn_issue_sky130.vhd:4056:41  */
  assign n8184_o = n8181_o & n8183_o;
  /* find_the_damn_issue_sky130.vhd:4059:67  */
  assign n8185_o = s_m_value + n8169_o;
  /* find_the_damn_issue_sky130.vhd:4056:17  */
  assign n8187_o = n8184_o ? 3'b000 : n8185_o;
  /* find_the_damn_issue_sky130.vhd:4061:32  */
  assign n8189_o = s_m_value == 3'b000;
  /* find_the_damn_issue_sky130.vhd:4061:63  */
  assign n8191_o = n8169_o == 3'b111;
  /* find_the_damn_issue_sky130.vhd:4061:41  */
  assign n8192_o = n8189_o & n8191_o;
  /* find_the_damn_issue_sky130.vhd:4061:17  */
  assign n8194_o = n8192_o ? 3'b110 : n8187_o;
  /* find_the_damn_issue_sky130.vhd:4066:17  */
  assign n8195_o = in_unnamed_2 ? in_unnamed_3 : n8194_o;
  /* find_the_damn_issue_sky130.vhd:4077:27  */
  assign n8203_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:4079:17  */
  always @(posedge clk or posedge n8203_o)
    if (n8203_o)
      n8209_q <= 3'b000;
    else
      n8209_q <= s_m_value_plus_const_0_mux4;
endmodule

module scl_counter_7
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [3:0] in_unnamed_3,
   output [3:0] out_m_value,
   output out_m_last,
   output out_const_0,
   output out_const_0_2,
   output [3:0] out_const_x);
  reg [3:0] s_m_value_2;
  wire [3:0] s_m_loadvalue_mux1;
  wire [3:0] n8126_o;
  wire [3:0] n8127_o;
  wire [3:0] n8128_o;
  wire n8131_o;
  wire n8138_o;
  localparam n8141_o = 1'b0;
  localparam n8142_o = 1'b0;
  localparam [3:0] n8143_o = 4'bX;
  wire n8145_o;
  reg [3:0] n8151_q;
  assign out_m_value = s_m_value_2;
  assign out_m_last = n8138_o;
  assign out_const_0 = n8141_o;
  assign out_const_0_2 = n8142_o;
  assign out_const_x = n8143_o;
  /* find_the_damn_issue_sky130.vhd:4227:16  */
  always @*
    s_m_value_2 = n8151_q; // (isignal)
  initial
    s_m_value_2 = 4'b0000;
  /* find_the_damn_issue_sky130.vhd:4228:16  */
  assign s_m_loadvalue_mux1 = n8128_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4238:17  */
  assign n8126_o = in_unnamed ? 4'b0001 : 4'b0000;
  /* find_the_damn_issue_sky130.vhd:4249:60  */
  assign n8127_o = s_m_value_2 + n8126_o;
  /* find_the_damn_issue_sky130.vhd:4246:17  */
  assign n8128_o = in_unnamed_2 ? in_unnamed_3 : n8127_o;
  /* find_the_damn_issue_sky130.vhd:4251:57  */
  assign n8131_o = s_m_value_2 == 4'b1111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n8138_o = n8131_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4260:27  */
  assign n8145_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:4262:17  */
  always @(posedge clk or posedge n8145_o)
    if (n8145_o)
      n8151_q <= 4'b0000;
    else
      n8151_q <= s_m_loadvalue_mux1;
endmodule

module scl_counter_6
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [2:0] in_unnamed_3,
   output [2:0] out_m_value,
   output out_m_last,
   output out_const_0,
   output out_const_0_2,
   output [2:0] out_const_xxx);
  reg [2:0] s_m_value_2;
  wire [2:0] s_m_loadvalue_mux1;
  wire [2:0] n8086_o;
  wire [2:0] n8087_o;
  wire [2:0] n8088_o;
  wire n8091_o;
  wire n8098_o;
  localparam n8101_o = 1'b0;
  localparam n8102_o = 1'b0;
  localparam [2:0] n8103_o = 3'bX;
  wire n8105_o;
  reg [2:0] n8111_q;
  assign out_m_value = s_m_value_2;
  assign out_m_last = n8098_o;
  assign out_const_0 = n8101_o;
  assign out_const_0_2 = n8102_o;
  assign out_const_xxx = n8103_o;
  /* find_the_damn_issue_sky130.vhd:4541:16  */
  always @*
    s_m_value_2 = n8111_q; // (isignal)
  initial
    s_m_value_2 = 3'b000;
  /* find_the_damn_issue_sky130.vhd:4542:16  */
  assign s_m_loadvalue_mux1 = n8088_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4552:17  */
  assign n8086_o = in_unnamed ? 3'b001 : 3'b000;
  /* find_the_damn_issue_sky130.vhd:4563:60  */
  assign n8087_o = s_m_value_2 + n8086_o;
  /* find_the_damn_issue_sky130.vhd:4560:17  */
  assign n8088_o = in_unnamed_2 ? in_unnamed_3 : n8087_o;
  /* find_the_damn_issue_sky130.vhd:4565:57  */
  assign n8091_o = s_m_value_2 == 3'b111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n8098_o = n8091_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4574:27  */
  assign n8105_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:4576:17  */
  always @(posedge clk or posedge n8105_o)
    if (n8105_o)
      n8111_q <= 3'b000;
    else
      n8111_q <= s_m_loadvalue_mux1;
endmodule

module scl_counter_5
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   output out_m_value,
   output out_const_0,
   output out_const_0_2,
   output out_const_x);
  reg s_m_value_2;
  wire s_m_loadvalue_mux1;
  wire n8056_o;
  wire n8057_o;
  wire n8058_o;
  localparam n8061_o = 1'b0;
  localparam n8062_o = 1'b0;
  localparam n8063_o = 1'bX;
  wire n8065_o;
  reg n8071_q;
  assign out_m_value = s_m_value_2;
  assign out_const_0 = n8061_o;
  assign out_const_0_2 = n8062_o;
  assign out_const_x = n8063_o;
  /* find_the_damn_issue_sky130.vhd:4711:16  */
  always @*
    s_m_value_2 = n8071_q; // (isignal)
  initial
    s_m_value_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:4712:16  */
  assign s_m_loadvalue_mux1 = n8058_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4722:17  */
  assign n8056_o = in_unnamed ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4733:60  */
  assign n8057_o = s_m_value_2 + n8056_o;
  /* find_the_damn_issue_sky130.vhd:4730:17  */
  assign n8058_o = in_unnamed_2 ? in_unnamed_3 : n8057_o;
  /* find_the_damn_issue_sky130.vhd:4743:27  */
  assign n8065_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:4745:17  */
  always @(posedge clk or posedge n8065_o)
    if (n8065_o)
      n8071_q <= 1'b0;
    else
      n8071_q <= s_m_loadvalue_mux1;
endmodule

module scl_eraselastbeat
  (input  clk,
   input  rst_n,
   input  [7:0] in_in,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   output out_unnamed_or_in_valid_mux1_delayed1_not,
   output out_out_ready,
   output out_out_valid,
   output out_out_eop,
   output [7:0] out_out);
  wire s_in_ready;
  wire s_in_eop;
  wire [7:0] s_in_2;
  reg s_in_valid_mux1_delayed1;
  wire [7:0] s_out_2;
  reg s_in_valid_mux1_delayed1_2;
  wire s_in_eop_delayed1;
  reg s_unnamed_4;
  wire s_unnamed_5;
  wire s_in_valid_mux1;
  wire n7997_o;
  wire n7998_o;
  wire n8000_o;
  wire n8001_o;
  wire n8003_o;
  wire n8004_o;
  wire n8005_o;
  wire n8006_o;
  wire n8007_o;
  wire n8008_o;
  wire n8020_o;
  wire n8034_o;
  reg n8035_q;
  wire [7:0] n8036_o;
  reg [7:0] n8037_q;
  wire n8038_o;
  reg n8039_q;
  wire n8040_o;
  reg n8041_q;
  reg n8042_q;
  assign out_unnamed_or_in_valid_mux1_delayed1_not = n7998_o;
  assign out_out_ready = in_unnamed_3;
  assign out_out_valid = s_in_valid_mux1_delayed1_2;
  assign out_out_eop = n8003_o;
  assign out_out = s_out_2;
  /* find_the_damn_issue_sky130.vhd:4881:16  */
  assign s_in_ready = n7998_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4882:16  */
  assign s_in_eop = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:4883:16  */
  assign s_in_2 = in_in; // (signal)
  /* find_the_damn_issue_sky130.vhd:4884:16  */
  always @*
    s_in_valid_mux1_delayed1 = n8035_q; // (isignal)
  initial
    s_in_valid_mux1_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:4885:16  */
  assign s_out_2 = n8037_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:4886:16  */
  always @*
    s_in_valid_mux1_delayed1_2 = n8039_q; // (isignal)
  initial
    s_in_valid_mux1_delayed1_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:4887:16  */
  assign s_in_eop_delayed1 = n8041_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:4888:16  */
  always @*
    s_unnamed_4 = n8042_q; // (isignal)
  initial
    s_unnamed_4 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:4889:16  */
  assign s_unnamed_5 = n8008_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4890:16  */
  assign s_in_valid_mux1 = n8000_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4897:81  */
  assign n7997_o = ~s_in_valid_mux1_delayed1;
  /* find_the_damn_issue_sky130.vhd:4897:76  */
  assign n7998_o = in_unnamed_3 | n7997_o;
  /* find_the_damn_issue_sky130.vhd:4902:17  */
  assign n8000_o = in_unnamed_2 ? 1'b0 : in_unnamed;
  /* find_the_damn_issue_sky130.vhd:4907:40  */
  assign n8001_o = in_unnamed_2 | s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:4907:17  */
  assign n8003_o = n8001_o ? 1'b1 : s_in_eop_delayed1;
  /* find_the_damn_issue_sky130.vhd:4916:63  */
  assign n8004_o = in_unnamed_2 & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:4916:46  */
  assign n8005_o = s_unnamed_4 | n8004_o;
  /* find_the_damn_issue_sky130.vhd:4916:118  */
  assign n8006_o = s_in_valid_mux1_delayed1_2 & in_unnamed_3;
  /* find_the_damn_issue_sky130.vhd:4916:86  */
  assign n8007_o = ~n8006_o;
  /* find_the_damn_issue_sky130.vhd:4916:80  */
  assign n8008_o = n8005_o & n8007_o;
  /* find_the_damn_issue_sky130.vhd:4934:27  */
  assign n8020_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:4938:17  */
  assign n8034_o = s_in_ready ? s_in_valid_mux1 : s_in_valid_mux1_delayed1;
  /* find_the_damn_issue_sky130.vhd:4938:17  */
  always @(posedge clk or posedge n8020_o)
    if (n8020_o)
      n8035_q <= 1'b0;
    else
      n8035_q <= n8034_o;
  /* find_the_damn_issue_sky130.vhd:4922:17  */
  assign n8036_o = s_in_ready ? s_in_2 : s_out_2;
  /* find_the_damn_issue_sky130.vhd:4922:17  */
  always @(posedge clk)
    n8037_q <= n8036_o;
  /* find_the_damn_issue_sky130.vhd:4938:17  */
  assign n8038_o = s_in_ready ? s_in_valid_mux1 : s_in_valid_mux1_delayed1_2;
  /* find_the_damn_issue_sky130.vhd:4938:17  */
  always @(posedge clk or posedge n8020_o)
    if (n8020_o)
      n8039_q <= 1'b0;
    else
      n8039_q <= n8038_o;
  /* find_the_damn_issue_sky130.vhd:4922:17  */
  assign n8040_o = s_in_ready ? s_in_eop : s_in_eop_delayed1;
  /* find_the_damn_issue_sky130.vhd:4922:17  */
  always @(posedge clk)
    n8041_q <= n8040_o;
  /* find_the_damn_issue_sky130.vhd:4938:17  */
  always @(posedge clk or posedge n8020_o)
    if (n8020_o)
      n8042_q <= 1'b0;
    else
      n8042_q <= s_unnamed_5;
endmodule

module scl_counter_4
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [2:0] in_unnamed_3,
   output out_m_last,
   output out_const_0,
   output out_const_0_2,
   output [2:0] out_const_xxx);
  reg [2:0] s_m_value;
  wire [2:0] s_m_loadvalue_mux1;
  wire [2:0] n7959_o;
  wire [2:0] n7960_o;
  wire [2:0] n7961_o;
  wire n7964_o;
  wire n7971_o;
  localparam n7974_o = 1'b0;
  localparam n7975_o = 1'b0;
  localparam [2:0] n7976_o = 3'bX;
  wire n7978_o;
  reg [2:0] n7984_q;
  assign out_m_last = n7971_o;
  assign out_const_0 = n7974_o;
  assign out_const_0_2 = n7975_o;
  assign out_const_xxx = n7976_o;
  /* find_the_damn_issue_sky130.vhd:5085:16  */
  always @*
    s_m_value = n7984_q; // (isignal)
  initial
    s_m_value = 3'b000;
  /* find_the_damn_issue_sky130.vhd:5086:16  */
  assign s_m_loadvalue_mux1 = n7961_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5097:17  */
  assign n7959_o = in_unnamed ? 3'b001 : 3'b000;
  /* find_the_damn_issue_sky130.vhd:5108:58  */
  assign n7960_o = s_m_value + n7959_o;
  /* find_the_damn_issue_sky130.vhd:5105:17  */
  assign n7961_o = in_unnamed_2 ? in_unnamed_3 : n7960_o;
  /* find_the_damn_issue_sky130.vhd:5110:55  */
  assign n7964_o = s_m_value == 3'b111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7971_o = n7964_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5119:27  */
  assign n7978_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5121:17  */
  always @(posedge clk or posedge n7978_o)
    if (n7978_o)
      n7984_q <= 3'b000;
    else
      n7984_q <= s_m_loadvalue_mux1;
endmodule

module scl_counter_2
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  [2:0] in_unnamed_2,
   input  in_unnamed_3,
   output out_m_last,
   output out_const_0,
   output [2:0] out_const_xxx);
  reg [2:0] s_m_value;
  wire s_unnamed_4;
  wire [2:0] s_m_value_plus_const_0_mux4;
  wire n7900_o;
  wire n7907_o;
  wire [2:0] n7910_o;
  wire n7911_o;
  wire n7913_o;
  wire n7915_o;
  wire n7916_o;
  wire n7917_o;
  wire [2:0] n7918_o;
  wire [2:0] n7920_o;
  wire n7922_o;
  wire n7924_o;
  wire n7925_o;
  wire n7926_o;
  wire [2:0] n7928_o;
  wire [2:0] n7929_o;
  localparam n7933_o = 1'b0;
  localparam [2:0] n7934_o = 3'bX;
  wire n7936_o;
  wire [2:0] n7943_o;
  reg [2:0] n7944_q;
  assign out_m_last = n7907_o;
  assign out_const_0 = n7933_o;
  assign out_const_xxx = n7934_o;
  /* find_the_damn_issue_sky130.vhd:5401:16  */
  always @*
    s_m_value = n7944_q; // (isignal)
  initial
    s_m_value = 3'b000;
  /* find_the_damn_issue_sky130.vhd:5402:16  */
  assign s_unnamed_4 = in_unnamed_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:5403:16  */
  assign s_m_value_plus_const_0_mux4 = n7929_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5419:55  */
  assign n7900_o = s_m_value == 3'b110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7907_o = n7900_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5422:17  */
  assign n7910_o = s_unnamed_4 ? 3'b001 : 3'b000;
  /* find_the_damn_issue_sky130.vhd:5427:56  */
  assign n7911_o = in_unnamed & s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:5429:32  */
  assign n7913_o = s_m_value == 3'b110;
  /* find_the_damn_issue_sky130.vhd:5429:64  */
  assign n7915_o = n7910_o == 3'b001;
  /* find_the_damn_issue_sky130.vhd:5429:73  */
  assign n7916_o = n7915_o & s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:5429:41  */
  assign n7917_o = n7913_o & n7916_o;
  /* find_the_damn_issue_sky130.vhd:5432:67  */
  assign n7918_o = s_m_value + n7910_o;
  /* find_the_damn_issue_sky130.vhd:5429:17  */
  assign n7920_o = n7917_o ? 3'b000 : n7918_o;
  /* find_the_damn_issue_sky130.vhd:5434:32  */
  assign n7922_o = s_m_value == 3'b000;
  /* find_the_damn_issue_sky130.vhd:5434:64  */
  assign n7924_o = n7910_o == 3'b111;
  /* find_the_damn_issue_sky130.vhd:5434:73  */
  assign n7925_o = n7924_o & s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:5434:41  */
  assign n7926_o = n7922_o & n7925_o;
  /* find_the_damn_issue_sky130.vhd:5434:17  */
  assign n7928_o = n7926_o ? 3'b110 : n7920_o;
  /* find_the_damn_issue_sky130.vhd:5439:17  */
  assign n7929_o = n7911_o ? in_unnamed_2 : n7928_o;
  /* find_the_damn_issue_sky130.vhd:5450:27  */
  assign n7936_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5452:17  */
  assign n7943_o = s_unnamed_4 ? s_m_value_plus_const_0_mux4 : s_m_value;
  /* find_the_damn_issue_sky130.vhd:5452:17  */
  always @(posedge clk or posedge n7936_o)
    if (n7936_o)
      n7944_q <= 3'b000;
    else
      n7944_q <= n7943_o;
endmodule

module scl_recoverdatadifferential_equalsampling_sky130
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   output out_se0,
   output out_p,
   output out_unnamed_3);
  wire s_chain_input;
  wire s_chain_input_2;
  wire s_chain_output;
  wire s_in_p_delayed;
  wire s_chain_output_2;
  wire s_in_n_delayed;
  wire s_singleended;
  wire [1:0] s_ret;
  wire [4:0] s_m_value;
  wire s_m_last;
  wire s_const_0;
  wire s_const_0_2;
  wire s_const_0_3;
  wire s_unnamed_4;
  wire s_unnamed_5;
  wire s_unnamed_6;
  wire [4:0] s_unnamed_7;
  wire [4:0] s_delay;
  reg s_p_2;
  reg s_unnamed_8;
  wire [4:0] s_const_xxxxx;
  wire s_unnamed_9;
  wire delay_chain_with_taps0_out_chain_output;
  wire n7839_o;
  wire n7841_o;
  wire n7842_o;
  wire n7844_o;
  wire n7846_o;
  wire n7847_o;
  wire n7849_o;
  wire n7850_o;
  wire n7852_o;
  wire n7854_o;
  wire [4:0] n7856_o;
  wire n7857_o;
  wire n7858_o;
  wire n7859_o;
  wire n7860_o;
  wire n7861_o;
  wire n7864_o;
  wire delay_chain_with_taps1_out_chain_output;
  wire detectsingleended0_out_singleended;
  wire [1:0] analyze_phase0_out_ret;
  wire [4:0] scl_counter0_out_m_value;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire scl_counter0_out_const_0_2;
  wire scl_counter0_out_const_0_3;
  wire [4:0] scl_counter0_out_const_xxxxx;
  reg n7882_q;
  reg n7883_q;
  assign out_se0 = s_singleended;
  assign out_p = s_p_2;
  assign out_unnamed_3 = n7857_o;
  /* find_the_damn_issue_sky130.vhd:9236:16  */
  assign s_chain_input = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:9237:16  */
  assign s_chain_input_2 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9238:16  */
  assign s_chain_output = delay_chain_with_taps0_out_chain_output; // (signal)
  /* find_the_damn_issue_sky130.vhd:9239:16  */
  assign s_in_p_delayed = s_chain_output; // (signal)
  /* find_the_damn_issue_sky130.vhd:9240:16  */
  assign s_chain_output_2 = delay_chain_with_taps1_out_chain_output; // (signal)
  /* find_the_damn_issue_sky130.vhd:9241:16  */
  assign s_in_n_delayed = s_chain_output_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9242:16  */
  assign s_singleended = detectsingleended0_out_singleended; // (signal)
  /* find_the_damn_issue_sky130.vhd:9243:16  */
  assign s_ret = analyze_phase0_out_ret; // (signal)
  /* find_the_damn_issue_sky130.vhd:9244:16  */
  assign s_m_value = scl_counter0_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:9245:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:9246:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:9247:16  */
  assign s_const_0_2 = scl_counter0_out_const_0_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9248:16  */
  assign s_const_0_3 = scl_counter0_out_const_0_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:9249:16  */
  assign s_unnamed_4 = n7844_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9250:16  */
  assign s_unnamed_5 = n7852_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9251:16  */
  assign s_unnamed_6 = n7854_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9252:16  */
  assign s_unnamed_7 = n7856_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9253:16  */
  assign s_delay = s_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:9254:16  */
  always @*
    s_p_2 = n7882_q; // (isignal)
  initial
    s_p_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9255:16  */
  always @*
    s_unnamed_8 = n7883_q; // (isignal)
  initial
    s_unnamed_8 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9256:16  */
  assign s_const_xxxxx = scl_counter0_out_const_xxxxx; // (signal)
  /* find_the_damn_issue_sky130.vhd:9257:16  */
  assign s_unnamed_9 = n7861_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9259:9  */
  delay_chain_with_taps delay_chain_with_taps0 (
    .in_chain_input(s_chain_input),
    .in_delay(s_delay),
    .out_chain_output(delay_chain_with_taps0_out_chain_output));
  /* find_the_damn_issue_sky130.vhd:9277:23  */
  assign n7839_o = ~s_m_last;
  /* find_the_damn_issue_sky130.vhd:9277:54  */
  assign n7841_o = s_ret == 2'b00;
  /* find_the_damn_issue_sky130.vhd:9277:43  */
  assign n7842_o = n7839_o & n7841_o;
  /* find_the_damn_issue_sky130.vhd:9277:17  */
  assign n7844_o = n7842_o ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:9282:38  */
  assign n7846_o = s_m_value == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:9282:23  */
  assign n7847_o = ~n7846_o;
  /* find_the_damn_issue_sky130.vhd:9282:61  */
  assign n7849_o = s_ret == 2'b01;
  /* find_the_damn_issue_sky130.vhd:9282:50  */
  assign n7850_o = n7847_o & n7849_o;
  /* find_the_damn_issue_sky130.vhd:9282:17  */
  assign n7852_o = n7850_o ? 1'b1 : s_const_0_3;
  /* find_the_damn_issue_sky130.vhd:9287:17  */
  assign n7854_o = s_singleended ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:9292:17  */
  assign n7856_o = s_singleended ? 5'b01111 : s_const_xxxxx;
  /* find_the_damn_issue_sky130.vhd:9299:36  */
  assign n7857_o = ~s_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:9300:46  */
  assign n7858_o = s_unnamed_8 | s_singleended;
  /* find_the_damn_issue_sky130.vhd:9300:70  */
  assign n7859_o = ~s_singleended;
  /* find_the_damn_issue_sky130.vhd:9300:64  */
  assign n7860_o = ~n7859_o;
  /* find_the_damn_issue_sky130.vhd:9300:58  */
  assign n7861_o = n7858_o & n7860_o;
  /* find_the_damn_issue_sky130.vhd:9305:27  */
  assign n7864_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:9314:9  */
  delay_chain_with_taps_2 delay_chain_with_taps1 (
    .in_chain_input(s_chain_input_2),
    .in_delay(s_delay),
    .out_chain_output(delay_chain_with_taps1_out_chain_output));
  /* find_the_damn_issue_sky130.vhd:9319:9  */
  detectsingleended detectsingleended0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_in_p_delayed),
    .in_unnamed_2(s_in_n_delayed),
    .out_singleended(detectsingleended0_out_singleended));
  /* find_the_damn_issue_sky130.vhd:9326:9  */
  analyze_phase analyze_phase0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_delayed_input(s_in_p_delayed),
    .out_ret(analyze_phase0_out_ret));
  /* find_the_damn_issue_sky130.vhd:9332:9  */
  scl_counter scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_4),
    .in_unnamed_2(s_unnamed_5),
    .in_unnamed_3(s_unnamed_6),
    .in_unnamed_4(s_unnamed_7),
    .out_m_value(scl_counter0_out_m_value),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_0_2(scl_counter0_out_const_0_2),
    .out_const_0_3(scl_counter0_out_const_0_3),
    .out_const_xxxxx(scl_counter0_out_const_xxxxx));
  /* find_the_damn_issue_sky130.vhd:9308:17  */
  always @(posedge clk or posedge n7864_o)
    if (n7864_o)
      n7882_q <= 1'b0;
    else
      n7882_q <= s_in_p_delayed;
  /* find_the_damn_issue_sky130.vhd:9308:17  */
  always @(posedge clk or posedge n7864_o)
    if (n7864_o)
      n7883_q <= 1'b0;
    else
      n7883_q <= s_unnamed_9;
endmodule

module physical_memory_3
  (input  clk,
   input  [3:0] in_unnamed,
   input  [11:0] in_unnamed_2,
   input  [3:0] in_unnamed_3,
   input  in_unnamed_4,
   output [11:0] out_unnamed_5);
  reg [11:0] n7828_data; // mem_rd
  assign out_unnamed_5 = n7828_data;
  /* find_the_damn_issue_sky130.vhd:91:17  */
  reg [11:0] memory[15:0] ; // memory
  always @(posedge clk)
    if (1'b1)
      n7828_data <= memory[in_unnamed];
  always @(posedge clk)
    if (in_unnamed_4)
      memory[in_unnamed_3] <= in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:110:40  */
endmodule

module physical_memory_2
  (input  clk,
   input  [3:0] in_unnamed,
   input  [11:0] in_unnamed_2,
   input  [3:0] in_unnamed_3,
   input  in_unnamed_4,
   output [11:0] out_unnamed_5);
  reg [11:0] n7808_data; // mem_rd
  assign out_unnamed_5 = n7808_data;
  /* find_the_damn_issue_sky130.vhd:2765:17  */
  reg [11:0] memory[15:0] ; // memory
  always @(posedge clk)
    if (1'b1)
      n7808_data <= memory[in_unnamed];
  always @(posedge clk)
    if (in_unnamed_4)
      memory[in_unnamed_3] <= in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:2784:40  */
endmodule

module physical_memory
  (input  clk,
   input  [7:0] in_unnamed,
   output [7:0] out_unnamed_2);
  reg [1255:0] memory;
  reg [7:0] n7789_data; // mem_rd
  assign out_unnamed_2 = n7789_data;
  /* find_the_damn_issue_sky130.vhd:3324:16  */
  always @*
    memory = 1256'b00000000011001010000000001110101000000000111001100000000011100110000000001001001000000000110111000000000011011010000000001100001000000000100010000000000011001010000000001101000000000000101010000000000011001000000000001101110000000000110100100000000010001100000001100100010000000000110010100000000011101000000000001100001000000000110011100000000011011110000000001101110000000000111100100000000010100110000001100010010000001000000100100000011000001000000000100000000000010000000001000000001000001010000011100000001000000000000100000000010100000010000010100000111000000000000000000000000000010100000001000000000000000010000010000001001000000010000000000001000000000111000001000000101000001110000000100000000000001100010010000000101000000000000001000100100000001000000000000000000000000010010010000000101000000010001000000000000001001000000010100000000000000010000001000000010000000010000000000000000000001000000100100110010100000000000000000000001000000100000000001000011000000100000100100000001000000000000001000000001000000010000000000000000000000000001110101010000000010000000000000000000000000100000000100010000000000010001001000000000000000000000110100001100000010110000101000001001000010000000011100000110000001010000010000000011000000100000000100000000; // (isignal)
  initial
    memory = 1256'b00000000011001010000000001110101000000000111001100000000011100110000000001001001000000000110111000000000011011010000000001100001000000000100010000000000011001010000000001101000000000000101010000000000011001000000000001101110000000000110100100000000010001100000001100100010000000000110010100000000011101000000000001100001000000000110011100000000011011110000000001101110000000000111100100000000010100110000001100010010000001000000100100000011000001000000000100000000000010000000001000000001000001010000011100000001000000000000100000000010100000010000010100000111000000000000000000000000000010100000001000000000000000010000010000001001000000010000000000001000000000111000001000000101000001110000000100000000000001100010010000000101000000000000001000100100000001000000000000000000000000010010010000000101000000010001000000000000001001000000010100000000000000010000001000000010000000010000000000000000000001000000100100110010100000000000000000000001000000100000000001000011000000100000100100000001000000000000001000000001000000010000000000000000000000000001110101010000000010000000000000000000000000100000000100010000000000010001001000000000000000000000110100001100000010110000101000001001000010000000011100000110000001010000010000000011000000100000000100000000;
  /* find_the_damn_issue_sky130.vhd:3314:17  */
  reg [7:0] n7787[156:0] ; // memory
  initial begin
    n7787[156] = 8'b00000000;
    n7787[155] = 8'b01100101;
    n7787[154] = 8'b00000000;
    n7787[153] = 8'b01110101;
    n7787[152] = 8'b00000000;
    n7787[151] = 8'b01110011;
    n7787[150] = 8'b00000000;
    n7787[149] = 8'b01110011;
    n7787[148] = 8'b00000000;
    n7787[147] = 8'b01001001;
    n7787[146] = 8'b00000000;
    n7787[145] = 8'b01101110;
    n7787[144] = 8'b00000000;
    n7787[143] = 8'b01101101;
    n7787[142] = 8'b00000000;
    n7787[141] = 8'b01100001;
    n7787[140] = 8'b00000000;
    n7787[139] = 8'b01000100;
    n7787[138] = 8'b00000000;
    n7787[137] = 8'b01100101;
    n7787[136] = 8'b00000000;
    n7787[135] = 8'b01101000;
    n7787[134] = 8'b00000000;
    n7787[133] = 8'b01010100;
    n7787[132] = 8'b00000000;
    n7787[131] = 8'b01100100;
    n7787[130] = 8'b00000000;
    n7787[129] = 8'b01101110;
    n7787[128] = 8'b00000000;
    n7787[127] = 8'b01101001;
    n7787[126] = 8'b00000000;
    n7787[125] = 8'b01000110;
    n7787[124] = 8'b00000011;
    n7787[123] = 8'b00100010;
    n7787[122] = 8'b00000000;
    n7787[121] = 8'b01100101;
    n7787[120] = 8'b00000000;
    n7787[119] = 8'b01110100;
    n7787[118] = 8'b00000000;
    n7787[117] = 8'b01100001;
    n7787[116] = 8'b00000000;
    n7787[115] = 8'b01100111;
    n7787[114] = 8'b00000000;
    n7787[113] = 8'b01101111;
    n7787[112] = 8'b00000000;
    n7787[111] = 8'b01101110;
    n7787[110] = 8'b00000000;
    n7787[109] = 8'b01111001;
    n7787[108] = 8'b00000000;
    n7787[107] = 8'b01010011;
    n7787[106] = 8'b00000011;
    n7787[105] = 8'b00010010;
    n7787[104] = 8'b00000100;
    n7787[103] = 8'b00001001;
    n7787[102] = 8'b00000011;
    n7787[101] = 8'b00000100;
    n7787[100] = 8'b00000001;
    n7787[99] = 8'b00000000;
    n7787[98] = 8'b00001000;
    n7787[97] = 8'b00000010;
    n7787[96] = 8'b00000001;
    n7787[95] = 8'b00000101;
    n7787[94] = 8'b00000111;
    n7787[93] = 8'b00000001;
    n7787[92] = 8'b00000000;
    n7787[91] = 8'b00001000;
    n7787[90] = 8'b00000010;
    n7787[89] = 8'b10000001;
    n7787[88] = 8'b00000101;
    n7787[87] = 8'b00000111;
    n7787[86] = 8'b00000000;
    n7787[85] = 8'b00000000;
    n7787[84] = 8'b00000000;
    n7787[83] = 8'b00001010;
    n7787[82] = 8'b00000010;
    n7787[81] = 8'b00000000;
    n7787[80] = 8'b00000001;
    n7787[79] = 8'b00000100;
    n7787[78] = 8'b00001001;
    n7787[77] = 8'b00000001;
    n7787[76] = 8'b00000000;
    n7787[75] = 8'b00001000;
    n7787[74] = 8'b00000011;
    n7787[73] = 8'b10000010;
    n7787[72] = 8'b00000101;
    n7787[71] = 8'b00000111;
    n7787[70] = 8'b00000001;
    n7787[69] = 8'b00000000;
    n7787[68] = 8'b00000110;
    n7787[67] = 8'b00100100;
    n7787[66] = 8'b00000101;
    n7787[65] = 8'b00000000;
    n7787[64] = 8'b00000010;
    n7787[63] = 8'b00100100;
    n7787[62] = 8'b00000100;
    n7787[61] = 8'b00000000;
    n7787[60] = 8'b00000000;
    n7787[59] = 8'b00000001;
    n7787[58] = 8'b00100100;
    n7787[57] = 8'b00000101;
    n7787[56] = 8'b00000001;
    n7787[55] = 8'b00010000;
    n7787[54] = 8'b00000000;
    n7787[53] = 8'b00100100;
    n7787[52] = 8'b00000101;
    n7787[51] = 8'b00000000;
    n7787[50] = 8'b00000001;
    n7787[49] = 8'b00000010;
    n7787[48] = 8'b00000010;
    n7787[47] = 8'b00000001;
    n7787[46] = 8'b00000000;
    n7787[45] = 8'b00000000;
    n7787[44] = 8'b00000100;
    n7787[43] = 8'b00001001;
    n7787[42] = 8'b00110010;
    n7787[41] = 8'b10000000;
    n7787[40] = 8'b00000000;
    n7787[39] = 8'b00000001;
    n7787[38] = 8'b00000010;
    n7787[37] = 8'b00000000;
    n7787[36] = 8'b01000011;
    n7787[35] = 8'b00000010;
    n7787[34] = 8'b00001001;
    n7787[33] = 8'b00000001;
    n7787[32] = 8'b00000000;
    n7787[31] = 8'b00000010;
    n7787[30] = 8'b00000001;
    n7787[29] = 8'b00000001;
    n7787[28] = 8'b00000000;
    n7787[27] = 8'b00000000;
    n7787[26] = 8'b00000000;
    n7787[25] = 8'b00011101;
    n7787[24] = 8'b01010000;
    n7787[23] = 8'b00001000;
    n7787[22] = 8'b00000000;
    n7787[21] = 8'b00000000;
    n7787[20] = 8'b00000010;
    n7787[19] = 8'b00000001;
    n7787[18] = 8'b00010000;
    n7787[17] = 8'b00000001;
    n7787[16] = 8'b00010010;
    n7787[15] = 8'b00000000;
    n7787[14] = 8'b00000000;
    n7787[13] = 8'b00001101;
    n7787[12] = 8'b00001100;
    n7787[11] = 8'b00001011;
    n7787[10] = 8'b00001010;
    n7787[9] = 8'b00001001;
    n7787[8] = 8'b00001000;
    n7787[7] = 8'b00000111;
    n7787[6] = 8'b00000110;
    n7787[5] = 8'b00000101;
    n7787[4] = 8'b00000100;
    n7787[3] = 8'b00000011;
    n7787[2] = 8'b00000010;
    n7787[1] = 8'b00000001;
    n7787[0] = 8'b00000000;
    end
  always @(posedge clk)
    if (1'b1)
      n7789_data <= n7787[in_unnamed];
  /* find_the_damn_issue_sky130.vhd:3753:17  */
endmodule

module scl_pulseextender_2
  (input  clk,
   input  rst_n,
   input  in_input,
   output out_ret);
  wire s_m_last;
  wire s_const_0;
  wire s_unnamed;
  wire [1:0] s_unnamed_2;
  reg s_ret_and_m_last_and_input_not_not_delayed1;
  wire [1:0] s_const_xx;
  wire s_ret_and_m_last_and_input_not_not;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire [1:0] scl_counter0_out_const_xx;
  wire n7759_o;
  wire [1:0] n7761_o;
  wire n7762_o;
  wire n7763_o;
  wire n7764_o;
  wire n7765_o;
  wire n7766_o;
  wire n7769_o;
  reg n7775_q;
  assign out_ret = n7762_o;
  /* find_the_damn_issue_sky130.vhd:3716:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:3717:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:3718:16  */
  assign s_unnamed = n7759_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3719:16  */
  assign s_unnamed_2 = n7761_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3720:16  */
  always @*
    s_ret_and_m_last_and_input_not_not_delayed1 = n7775_q; // (isignal)
  initial
    s_ret_and_m_last_and_input_not_not_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:3721:16  */
  assign s_const_xx = scl_counter0_out_const_xx; // (signal)
  /* find_the_damn_issue_sky130.vhd:3722:16  */
  assign s_ret_and_m_last_and_input_not_not = n7766_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3724:9  */
  scl_counter_11 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed),
    .in_unnamed_2(s_unnamed_2),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_xx(scl_counter0_out_const_xx));
  /* find_the_damn_issue_sky130.vhd:3736:17  */
  assign n7759_o = in_input ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:3741:17  */
  assign n7761_o = in_input ? 2'b00 : s_const_xx;
  /* find_the_damn_issue_sky130.vhd:3747:73  */
  assign n7762_o = s_ret_and_m_last_and_input_not_not_delayed1 | in_input;
  /* find_the_damn_issue_sky130.vhd:3748:90  */
  assign n7763_o = ~in_input;
  /* find_the_damn_issue_sky130.vhd:3748:84  */
  assign n7764_o = s_m_last & n7763_o;
  /* find_the_damn_issue_sky130.vhd:3748:70  */
  assign n7765_o = ~n7764_o;
  /* find_the_damn_issue_sky130.vhd:3748:64  */
  assign n7766_o = n7762_o & n7765_o;
  /* find_the_damn_issue_sky130.vhd:3753:27  */
  assign n7769_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:3755:17  */
  always @(posedge clk or posedge n7769_o)
    if (n7769_o)
      n7775_q <= 1'b0;
    else
      n7775_q <= s_ret_and_m_last_and_input_not_not;
endmodule

module scl_pulseextender
  (input  clk,
   input  rst_n,
   input  in_input,
   output out_ret);
  wire s_m_last;
  wire s_const_0;
  wire s_unnamed;
  wire [1:0] s_unnamed_2;
  reg s_ret_and_m_last_and_input_not_not_delayed1;
  wire [1:0] s_const_xx;
  wire s_ret_and_m_last_and_input_not_not;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire [1:0] scl_counter0_out_const_xx;
  wire n7734_o;
  wire [1:0] n7736_o;
  wire n7737_o;
  wire n7738_o;
  wire n7739_o;
  wire n7740_o;
  wire n7741_o;
  wire n7744_o;
  reg n7750_q;
  assign out_ret = n7737_o;
  /* find_the_damn_issue_sky130.vhd:3853:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:3854:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:3855:16  */
  assign s_unnamed = n7734_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3856:16  */
  assign s_unnamed_2 = n7736_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3857:16  */
  always @*
    s_ret_and_m_last_and_input_not_not_delayed1 = n7750_q; // (isignal)
  initial
    s_ret_and_m_last_and_input_not_not_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:3858:16  */
  assign s_const_xx = scl_counter0_out_const_xx; // (signal)
  /* find_the_damn_issue_sky130.vhd:3859:16  */
  assign s_ret_and_m_last_and_input_not_not = n7741_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3861:9  */
  scl_counter_10 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed),
    .in_unnamed_2(s_unnamed_2),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_xx(scl_counter0_out_const_xx));
  /* find_the_damn_issue_sky130.vhd:3873:17  */
  assign n7734_o = in_input ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:3878:17  */
  assign n7736_o = in_input ? 2'b00 : s_const_xx;
  /* find_the_damn_issue_sky130.vhd:3884:73  */
  assign n7737_o = s_ret_and_m_last_and_input_not_not_delayed1 | in_input;
  /* find_the_damn_issue_sky130.vhd:3885:90  */
  assign n7738_o = ~in_input;
  /* find_the_damn_issue_sky130.vhd:3885:84  */
  assign n7739_o = s_m_last & n7738_o;
  /* find_the_damn_issue_sky130.vhd:3885:70  */
  assign n7740_o = ~n7739_o;
  /* find_the_damn_issue_sky130.vhd:3885:64  */
  assign n7741_o = n7737_o & n7740_o;
  /* find_the_damn_issue_sky130.vhd:3890:27  */
  assign n7744_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:3892:17  */
  always @(posedge clk or posedge n7744_o)
    if (n7744_o)
      n7750_q <= 1'b0;
    else
      n7750_q <= s_ret_and_m_last_and_input_not_not;
endmodule

module scl_counter_9
  (output out_m_last);
  localparam n7725_o = 1'b1;
  assign out_m_last = n7725_o;
endmodule

module nrzi
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  in_unnamed_4,
   output out_out);
  reg s_last;
  wire s_last_mux2;
  wire n7704_o;
  wire n7705_o;
  wire n7706_o;
  wire n7707_o;
  wire n7708_o;
  wire n7709_o;
  wire n7711_o;
  wire n7715_o;
  reg n7721_q;
  assign out_out = n7707_o;
  /* find_the_damn_issue_sky130.vhd:3961:16  */
  always @*
    s_last = n7721_q; // (isignal)
  initial
    s_last = 1'b1;
  /* find_the_damn_issue_sky130.vhd:3962:16  */
  assign s_last_mux2 = n7711_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3970:79  */
  assign n7704_o = in_unnamed_2 & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:3970:61  */
  assign n7705_o = in_unnamed_3 & n7704_o;
  /* find_the_damn_issue_sky130.vhd:3972:42  */
  assign n7706_o = ~in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:3972:36  */
  assign n7707_o = s_last ^ n7706_o;
  /* find_the_damn_issue_sky130.vhd:3973:40  */
  assign n7708_o = in_unnamed_2 & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:3973:17  */
  assign n7709_o = n7708_o ? n7707_o : s_last;
  /* find_the_damn_issue_sky130.vhd:3978:17  */
  assign n7711_o = n7705_o ? 1'b1 : n7709_o;
  /* find_the_damn_issue_sky130.vhd:3988:27  */
  assign n7715_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:3990:17  */
  always @(posedge clk or posedge n7715_o)
    if (n7715_o)
      n7721_q <= 1'b1;
    else
      n7721_q <= s_last_mux2;
endmodule

module bitstuff
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  in_unnamed_4,
   input  in_unnamed_5,
   output out_unnamed_mux1,
   output out_out_ready,
   output out_out_valid,
   output out_out_eop,
   output out_out);
  wire s_m_last;
  wire s_const_0;
  wire s_const_0_2;
  wire s_unnamed_6;
  wire s_unnamed_7;
  wire [2:0] s_unnamed_8;
  wire [2:0] s_const_xxx;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire scl_counter0_out_const_0_2;
  wire [2:0] scl_counter0_out_const_xxx;
  wire n7674_o;
  wire n7675_o;
  wire n7677_o;
  wire n7678_o;
  wire n7679_o;
  wire n7680_o;
  wire n7682_o;
  wire [2:0] n7684_o;
  wire n7686_o;
  wire n7688_o;
  wire n7690_o;
  wire n7692_o;
  assign out_unnamed_mux1 = n7686_o;
  assign out_out_ready = in_unnamed_5;
  assign out_out_valid = n7688_o;
  assign out_out_eop = n7690_o;
  assign out_out = n7692_o;
  /* find_the_damn_issue_sky130.vhd:4121:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:4122:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:4123:16  */
  assign s_const_0_2 = scl_counter0_out_const_0_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:4124:16  */
  assign s_unnamed_6 = n7677_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4125:16  */
  assign s_unnamed_7 = n7682_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4126:16  */
  assign s_unnamed_8 = n7684_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4127:16  */
  assign s_const_xxx = scl_counter0_out_const_xxx; // (signal)
  /* find_the_damn_issue_sky130.vhd:4129:9  */
  scl_counter_8 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_6),
    .in_unnamed_2(s_unnamed_7),
    .in_unnamed_3(s_unnamed_8),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_0_2(scl_counter0_out_const_0_2),
    .out_const_xxx(scl_counter0_out_const_xxx));
  /* find_the_damn_issue_sky130.vhd:4148:83  */
  assign n7674_o = in_unnamed_4 & in_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:4148:65  */
  assign n7675_o = in_unnamed_3 & n7674_o;
  /* find_the_damn_issue_sky130.vhd:4149:17  */
  assign n7677_o = n7675_o ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:4154:40  */
  assign n7678_o = ~in_unnamed_3;
  /* find_the_damn_issue_sky130.vhd:4155:92  */
  assign n7679_o = in_unnamed_4 & in_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:4155:74  */
  assign n7680_o = n7678_o & n7679_o;
  /* find_the_damn_issue_sky130.vhd:4156:17  */
  assign n7682_o = n7680_o ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:4161:17  */
  assign n7684_o = n7680_o ? 3'b000 : s_const_xxx;
  /* find_the_damn_issue_sky130.vhd:4166:17  */
  assign n7686_o = s_m_last ? 1'b0 : in_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:4171:17  */
  assign n7688_o = s_m_last ? 1'b1 : in_unnamed;
  /* find_the_damn_issue_sky130.vhd:4176:17  */
  assign n7690_o = s_m_last ? 1'b0 : in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:4181:17  */
  assign n7692_o = s_m_last ? 1'b0 : in_unnamed_3;
endmodule

module generatetxcrcappend
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  in_unnamed_4,
   input  in_unnamed_5,
   input  in_unnamed_6,
   input  in_in_valid,
   input  in_in_eop,
   input  in_in,
   input  in_unnamed_7,
   input  in_unnamed_8,
   output out_unnamed_9,
   output out_unnamed_mux1,
   output out_unnamed_mux1_2,
   output out_firstdatabit_mux2,
   output out_in_valid_and_unnamed_mux2,
   output out_unnamed_mux1_3,
   output out_out_ready,
   output out_out_valid,
   output out_out_eop,
   output out_out);
  wire s_in_2;
  wire [1:0] s_data_mux4;
  reg [1:0] s_state;
  wire [3:0] s_m_value;
  wire s_m_last;
  wire s_const_0;
  wire s_const_0_2;
  wire s_appendcrc;
  wire s_unnamed_10;
  wire s_m_value_eq_const_8_and_state_eq_prefix;
  reg s_firstdatabit;
  wire s_unnamed_11;
  wire [3:0] s_unnamed_12;
  wire [3:0] s_const_x;
  wire s_firstdatabit_or_state_eq_prefix_and_state_neq_prefix_and_in_valid_and_unnamed_not;
  wire [3:0] scl_counter0_out_m_value;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire scl_counter0_out_const_0_2;
  wire [3:0] scl_counter0_out_const_x;
  wire n7484_o;
  wire n7486_o;
  wire n7489_o;
  wire n7496_o;
  wire n7499_o;
  wire n7506_o;
  wire n7507_o;
  wire n7508_o;
  wire n7511_o;
  wire n7518_o;
  wire n7519_o;
  wire n7521_o;
  wire n7522_o;
  wire n7523_o;
  wire n7524_o;
  wire n7526_o;
  wire n7527_o;
  wire [1:0] n7529_o;
  wire n7530_o;
  wire n7531_o;
  wire n7532_o;
  wire n7535_o;
  wire n7542_o;
  wire n7543_o;
  wire n7544_o;
  wire [1:0] n7546_o;
  wire n7548_o;
  wire n7550_o;
  wire n7552_o;
  wire [3:0] n7554_o;
  wire n7556_o;
  wire n7557_o;
  wire n7559_o;
  wire n7560_o;
  wire n7561_o;
  wire n7563_o;
  wire n7564_o;
  wire n7565_o;
  wire n7566_o;
  wire n7568_o;
  wire n7569_o;
  wire [1:0] n7571_o;
  wire n7573_o;
  wire n7575_o;
  wire n7577_o;
  wire n7578_o;
  wire n7580_o;
  wire n7581_o;
  wire n7583_o;
  wire n7584_o;
  wire n7586_o;
  wire n7588_o;
  wire n7589_o;
  wire n7590_o;
  wire n7592_o;
  wire n7594_o;
  wire n7596_o;
  wire n7598_o;
  wire [3:0] n7599_o;
  reg n7602_o;
  wire n7603_o;
  wire n7604_o;
  wire n7606_o;
  wire n7607_o;
  wire [1:0] n7609_o;
  wire n7612_o;
  wire n7619_o;
  wire n7620_o;
  wire n7623_o;
  wire n7630_o;
  wire n7631_o;
  wire n7632_o;
  wire n7633_o;
  wire n7634_o;
  wire n7645_o;
  reg [1:0] n7654_q;
  wire n7655_o;
  reg n7656_q;
  reg n7657_q;
  assign out_unnamed_9 = in_unnamed_8;
  assign out_unnamed_mux1 = n7521_o;
  assign out_unnamed_mux1_2 = n7564_o;
  assign out_firstdatabit_mux2 = n7581_o;
  assign out_in_valid_and_unnamed_mux2 = n7584_o;
  assign out_unnamed_mux1_3 = n7588_o;
  assign out_out_ready = in_unnamed_8;
  assign out_out_valid = n7575_o;
  assign out_out_eop = n7602_o;
  assign out_out = n7578_o;
  /* find_the_damn_issue_sky130.vhd:4315:16  */
  assign s_in_2 = in_in; // (signal)
  /* find_the_damn_issue_sky130.vhd:4316:16  */
  assign s_data_mux4 = n7609_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4317:16  */
  always @*
    s_state = n7654_q; // (isignal)
  initial
    s_state = 2'b00;
  /* find_the_damn_issue_sky130.vhd:4318:16  */
  assign s_m_value = scl_counter0_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:4319:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:4320:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:4321:16  */
  assign s_const_0_2 = scl_counter0_out_const_0_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:4322:16  */
  assign s_appendcrc = n7656_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:4323:16  */
  assign s_unnamed_10 = n7486_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4324:16  */
  assign s_m_value_eq_const_8_and_state_eq_prefix = n7507_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4325:16  */
  always @*
    s_firstdatabit = n7657_q; // (isignal)
  initial
    s_firstdatabit = 1'b0;
  /* find_the_damn_issue_sky130.vhd:4326:16  */
  assign s_unnamed_11 = n7550_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4327:16  */
  assign s_unnamed_12 = n7554_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4328:16  */
  assign s_const_x = scl_counter0_out_const_x; // (signal)
  /* find_the_damn_issue_sky130.vhd:4329:16  */
  assign s_firstdatabit_or_state_eq_prefix_and_state_neq_prefix_and_in_valid_and_unnamed_not = n7634_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4331:9  */
  scl_counter_7 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_10),
    .in_unnamed_2(s_unnamed_11),
    .in_unnamed_3(s_unnamed_12),
    .out_m_value(scl_counter0_out_m_value),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_0_2(scl_counter0_out_const_0_2),
    .out_const_x(scl_counter0_out_const_x));
  /* find_the_damn_issue_sky130.vhd:4381:40  */
  assign n7484_o = in_unnamed_7 & in_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:4381:17  */
  assign n7486_o = n7484_o ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:4386:86  */
  assign n7489_o = s_m_value == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7496_o = n7489_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4386:122  */
  assign n7499_o = s_state == 2'b00;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7506_o = n7499_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4386:96  */
  assign n7507_o = n7496_o & n7506_o;
  /* find_the_damn_issue_sky130.vhd:4387:17  */
  assign n7508_o = s_m_value_eq_const_8_and_state_eq_prefix ? s_in_2 : s_appendcrc;
  /* find_the_damn_issue_sky130.vhd:4392:86  */
  assign n7511_o = s_state == 2'b00;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7518_o = n7511_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4392:60  */
  assign n7519_o = in_in_valid & n7518_o;
  /* find_the_damn_issue_sky130.vhd:4393:17  */
  assign n7521_o = n7519_o ? 1'b1 : in_unnamed_3;
  /* find_the_damn_issue_sky130.vhd:4398:41  */
  assign n7522_o = in_in_valid & in_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:4398:66  */
  assign n7523_o = n7522_o & n7508_o;
  /* find_the_damn_issue_sky130.vhd:4398:94  */
  assign n7524_o = n7523_o & s_m_last;
  /* find_the_damn_issue_sky130.vhd:4398:127  */
  assign n7526_o = s_state == 2'b00;
  /* find_the_damn_issue_sky130.vhd:4398:114  */
  assign n7527_o = n7524_o & n7526_o;
  /* find_the_damn_issue_sky130.vhd:4398:17  */
  assign n7529_o = n7527_o ? 2'b01 : s_state;
  /* find_the_damn_issue_sky130.vhd:4403:75  */
  assign n7530_o = in_in_valid & in_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:4403:94  */
  assign n7531_o = n7530_o & n7508_o;
  /* find_the_damn_issue_sky130.vhd:4403:116  */
  assign n7532_o = n7531_o & s_m_last;
  /* find_the_damn_issue_sky130.vhd:4403:156  */
  assign n7535_o = s_state == 2'b00;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7542_o = n7535_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4403:130  */
  assign n7543_o = n7532_o & n7542_o;
  /* find_the_damn_issue_sky130.vhd:4403:56  */
  assign n7544_o = in_in_eop & n7543_o;
  /* find_the_damn_issue_sky130.vhd:4404:17  */
  assign n7546_o = n7544_o ? 2'b10 : n7529_o;
  /* find_the_damn_issue_sky130.vhd:4410:29  */
  assign n7548_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:4410:17  */
  assign n7550_o = n7548_o ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:4415:29  */
  assign n7552_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:4415:17  */
  assign n7554_o = n7552_o ? 4'b0000 : s_const_x;
  /* find_the_damn_issue_sky130.vhd:4420:29  */
  assign n7556_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:4420:17  */
  assign n7557_o = n7556_o ? s_firstdatabit : in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:4425:29  */
  assign n7559_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:4426:68  */
  assign n7560_o = in_in_valid & in_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:4425:17  */
  assign n7561_o = n7559_o ? n7560_o : in_unnamed_6;
  /* find_the_damn_issue_sky130.vhd:4430:29  */
  assign n7563_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:4430:17  */
  assign n7564_o = n7563_o ? s_in_2 : in_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:4435:40  */
  assign n7565_o = in_in_valid & in_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:4435:65  */
  assign n7566_o = n7565_o & in_in_eop;
  /* find_the_damn_issue_sky130.vhd:4435:98  */
  assign n7568_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:4435:85  */
  assign n7569_o = n7566_o & n7568_o;
  /* find_the_damn_issue_sky130.vhd:4435:17  */
  assign n7571_o = n7569_o ? 2'b10 : n7546_o;
  /* find_the_damn_issue_sky130.vhd:4440:29  */
  assign n7573_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:4440:17  */
  assign n7575_o = n7573_o ? 1'b1 : in_in_valid;
  /* find_the_damn_issue_sky130.vhd:4445:29  */
  assign n7577_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:4445:17  */
  assign n7578_o = n7577_o ? in_unnamed : s_in_2;
  /* find_the_damn_issue_sky130.vhd:4450:29  */
  assign n7580_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:4450:17  */
  assign n7581_o = n7580_o ? s_firstdatabit : n7557_o;
  /* find_the_damn_issue_sky130.vhd:4455:29  */
  assign n7583_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:4455:17  */
  assign n7584_o = n7583_o ? in_unnamed_8 : n7561_o;
  /* find_the_damn_issue_sky130.vhd:4460:29  */
  assign n7586_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:4460:17  */
  assign n7588_o = n7586_o ? 1'b1 : in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:4469:67  */
  assign n7589_o = ~n7508_o;
  /* find_the_damn_issue_sky130.vhd:4469:61  */
  assign n7590_o = in_in_eop & n7589_o;
  /* find_the_damn_issue_sky130.vhd:4469:25  */
  assign n7592_o = s_state == 2'b00;
  /* find_the_damn_issue_sky130.vhd:4470:25  */
  assign n7594_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:4471:25  */
  assign n7596_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:4472:25  */
  assign n7598_o = s_state == 2'b11;
  assign n7599_o = {n7598_o, n7596_o, n7594_o, n7592_o};
  /* find_the_damn_issue_sky130.vhd:4468:17  */
  always @*
    case (n7599_o)
      4'b1000: n7602_o = in_in_eop;
      4'b0100: n7602_o = s_m_last;
      4'b0010: n7602_o = 1'b0;
      4'b0001: n7602_o = n7590_o;
      default: n7602_o = 1'bX;
    endcase
  /* find_the_damn_issue_sky130.vhd:4475:41  */
  assign n7603_o = n7575_o & in_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:4475:66  */
  assign n7604_o = n7603_o & n7602_o;
  /* find_the_damn_issue_sky130.vhd:4475:100  */
  assign n7606_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:4475:87  */
  assign n7607_o = n7604_o & n7606_o;
  /* find_the_damn_issue_sky130.vhd:4475:17  */
  assign n7609_o = n7607_o ? 2'b00 : n7571_o;
  /* find_the_damn_issue_sky130.vhd:4483:146  */
  assign n7612_o = s_state == 2'b00;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7619_o = n7612_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4483:121  */
  assign n7620_o = s_firstdatabit | n7619_o;
  /* find_the_damn_issue_sky130.vhd:4483:194  */
  assign n7623_o = s_state != 2'b00;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7630_o = n7623_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:4483:225  */
  assign n7631_o = in_in_valid & in_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:4483:209  */
  assign n7632_o = n7630_o & n7631_o;
  /* find_the_damn_issue_sky130.vhd:4483:167  */
  assign n7633_o = ~n7632_o;
  /* find_the_damn_issue_sky130.vhd:4483:161  */
  assign n7634_o = n7620_o & n7633_o;
  /* find_the_damn_issue_sky130.vhd:4497:27  */
  assign n7645_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:4500:17  */
  always @(posedge clk or posedge n7645_o)
    if (n7645_o)
      n7654_q <= 2'b00;
    else
      n7654_q <= s_data_mux4;
  /* find_the_damn_issue_sky130.vhd:4488:17  */
  assign n7655_o = s_m_value_eq_const_8_and_state_eq_prefix ? s_in_2 : s_appendcrc;
  /* find_the_damn_issue_sky130.vhd:4488:17  */
  always @(posedge clk)
    n7656_q <= n7655_o;
  /* find_the_damn_issue_sky130.vhd:4500:17  */
  always @(posedge clk or posedge n7645_o)
    if (n7645_o)
      n7657_q <= 1'b0;
    else
      n7657_q <= s_firstdatabit_or_state_eq_prefix_and_state_neq_prefix_and_in_valid_and_unnamed_not;
endmodule

module scl_reducewidth
  (input  clk,
   input  rst_n,
   input  in_out_valid,
   input  in_unnamed,
   input  [7:0] in_unnamed_2,
   input  in_unnamed_3,
   input  in_unnamed_4,
   output out_unnamed_and_m_last,
   output out_out_ready,
   output out_out_valid_2,
   output out_out_eop,
   output out_out);
  wire [2:0] s_m_value;
  wire s_m_last;
  wire s_const_0;
  wire s_const_0_2;
  wire s_unnamed_5;
  wire s_unnamed_6;
  wire [2:0] s_unnamed_7;
  wire [2:0] s_const_xxx;
  wire [2:0] scl_counter0_out_m_value;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire scl_counter0_out_const_0_2;
  wire [2:0] scl_counter0_out_const_xxx;
  wire n7410_o;
  wire n7412_o;
  wire n7414_o;
  wire [2:0] n7416_o;
  wire n7417_o;
  wire n7418_o;
  wire n7419_o;
  wire n7421_o;
  wire n7422_o;
  wire n7424_o;
  wire n7425_o;
  wire n7427_o;
  wire n7428_o;
  wire n7430_o;
  wire n7431_o;
  wire n7433_o;
  wire n7434_o;
  wire n7436_o;
  wire n7437_o;
  wire n7439_o;
  wire n7440_o;
  wire n7442_o;
  wire [7:0] n7443_o;
  reg n7445_o;
  assign out_unnamed_and_m_last = n7417_o;
  assign out_out_ready = in_unnamed_4;
  assign out_out_valid_2 = in_out_valid;
  assign out_out_eop = n7418_o;
  assign out_out = n7445_o;
  /* find_the_damn_issue_sky130.vhd:4618:16  */
  assign s_m_value = scl_counter0_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:4619:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:4620:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:4621:16  */
  assign s_const_0_2 = scl_counter0_out_const_0_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:4622:16  */
  assign s_unnamed_5 = n7412_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4623:16  */
  assign s_unnamed_6 = n7414_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4624:16  */
  assign s_unnamed_7 = n7416_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4625:16  */
  assign s_const_xxx = scl_counter0_out_const_xxx; // (signal)
  /* find_the_damn_issue_sky130.vhd:4627:9  */
  scl_counter_6 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_5),
    .in_unnamed_2(s_unnamed_6),
    .in_unnamed_3(s_unnamed_7),
    .out_m_value(scl_counter0_out_m_value),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_0_2(scl_counter0_out_const_0_2),
    .out_const_xxx(scl_counter0_out_const_xxx));
  /* find_the_damn_issue_sky130.vhd:4643:40  */
  assign n7410_o = in_unnamed_3 & in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:4643:17  */
  assign n7412_o = n7410_o ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:4648:17  */
  assign n7414_o = in_out_valid ? s_const_0 : 1'b1;
  /* find_the_damn_issue_sky130.vhd:4653:17  */
  assign n7416_o = in_out_valid ? s_const_xxx : 3'b000;
  /* find_the_damn_issue_sky130.vhd:4658:57  */
  assign n7417_o = in_unnamed_4 & s_m_last;
  /* find_the_damn_issue_sky130.vhd:4661:44  */
  assign n7418_o = in_unnamed & s_m_last;
  /* find_the_damn_issue_sky130.vhd:4664:57  */
  assign n7419_o = in_unnamed_2[0];
  /* find_the_damn_issue_sky130.vhd:4664:25  */
  assign n7421_o = s_m_value == 3'b000;
  /* find_the_damn_issue_sky130.vhd:4665:57  */
  assign n7422_o = in_unnamed_2[1];
  /* find_the_damn_issue_sky130.vhd:4665:25  */
  assign n7424_o = s_m_value == 3'b001;
  /* find_the_damn_issue_sky130.vhd:4666:57  */
  assign n7425_o = in_unnamed_2[2];
  /* find_the_damn_issue_sky130.vhd:4666:25  */
  assign n7427_o = s_m_value == 3'b010;
  /* find_the_damn_issue_sky130.vhd:4667:57  */
  assign n7428_o = in_unnamed_2[3];
  /* find_the_damn_issue_sky130.vhd:4667:25  */
  assign n7430_o = s_m_value == 3'b011;
  /* find_the_damn_issue_sky130.vhd:4668:57  */
  assign n7431_o = in_unnamed_2[4];
  /* find_the_damn_issue_sky130.vhd:4668:25  */
  assign n7433_o = s_m_value == 3'b100;
  /* find_the_damn_issue_sky130.vhd:4669:57  */
  assign n7434_o = in_unnamed_2[5];
  /* find_the_damn_issue_sky130.vhd:4669:25  */
  assign n7436_o = s_m_value == 3'b101;
  /* find_the_damn_issue_sky130.vhd:4670:57  */
  assign n7437_o = in_unnamed_2[6];
  /* find_the_damn_issue_sky130.vhd:4670:25  */
  assign n7439_o = s_m_value == 3'b110;
  /* find_the_damn_issue_sky130.vhd:4671:57  */
  assign n7440_o = in_unnamed_2[7];
  /* find_the_damn_issue_sky130.vhd:4671:25  */
  assign n7442_o = s_m_value == 3'b111;
  assign n7443_o = {n7442_o, n7439_o, n7436_o, n7433_o, n7430_o, n7427_o, n7424_o, n7421_o};
  /* find_the_damn_issue_sky130.vhd:4663:17  */
  always @*
    case (n7443_o)
      8'b10000000: n7445_o = n7440_o;
      8'b01000000: n7445_o = n7437_o;
      8'b00100000: n7445_o = n7434_o;
      8'b00010000: n7445_o = n7431_o;
      8'b00001000: n7445_o = n7428_o;
      8'b00000100: n7445_o = n7425_o;
      8'b00000010: n7445_o = n7422_o;
      8'b00000001: n7445_o = n7419_o;
      default: n7445_o = 1'bX;
    endcase
endmodule

module scl_insertbeat
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [7:0] in_unnamed_3,
   input  in_unnamed_4,
   output out_unnamed_mux1,
   output out_out_ready,
   output out_out_valid,
   output out_out_eop,
   output [7:0] out_out);
  wire s_m_value;
  wire s_const_0;
  wire s_const_0_2;
  wire s_unnamed_5;
  wire s_unnamed_6;
  wire s_unnamed_7;
  wire s_const_x;
  wire scl_counter0_out_m_value;
  wire scl_counter0_out_const_0;
  wire scl_counter0_out_const_0_2;
  wire scl_counter0_out_const_x;
  wire n7363_o;
  wire n7364_o;
  wire n7365_o;
  wire n7367_o;
  wire n7369_o;
  wire n7370_o;
  wire n7371_o;
  wire n7372_o;
  wire n7374_o;
  wire n7376_o;
  wire n7377_o;
  wire n7378_o;
  wire n7379_o;
  wire n7381_o;
  wire n7383_o;
  wire [7:0] n7385_o;
  wire n7387_o;
  wire n7389_o;
  wire n7391_o;
  wire n7393_o;
  assign out_unnamed_mux1 = n7389_o;
  assign out_out_ready = in_unnamed_4;
  assign out_out_valid = in_unnamed;
  assign out_out_eop = n7393_o;
  assign out_out = n7385_o;
  /* find_the_damn_issue_sky130.vhd:4786:16  */
  assign s_m_value = scl_counter0_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:4787:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:4788:16  */
  assign s_const_0_2 = scl_counter0_out_const_0_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:4789:16  */
  assign s_unnamed_5 = n7367_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4790:16  */
  assign s_unnamed_6 = n7374_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4791:16  */
  assign s_unnamed_7 = n7381_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4792:16  */
  assign s_const_x = scl_counter0_out_const_x; // (signal)
  /* find_the_damn_issue_sky130.vhd:4794:9  */
  scl_counter_5 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_5),
    .in_unnamed_2(s_unnamed_6),
    .in_unnamed_3(s_unnamed_7),
    .out_m_value(scl_counter0_out_m_value),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_0_2(scl_counter0_out_const_0_2),
    .out_const_x(scl_counter0_out_const_x));
  /* find_the_damn_issue_sky130.vhd:4809:32  */
  assign n7363_o = $unsigned(s_m_value) < $unsigned(1'b1);
  /* find_the_damn_issue_sky130.vhd:4809:61  */
  assign n7364_o = in_unnamed & in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:4809:39  */
  assign n7365_o = n7363_o & n7364_o;
  /* find_the_damn_issue_sky130.vhd:4809:17  */
  assign n7367_o = n7365_o ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:4814:56  */
  assign n7369_o = s_m_value != 1'b0;
  /* find_the_damn_issue_sky130.vhd:4814:41  */
  assign n7370_o = in_unnamed_2 & n7369_o;
  /* find_the_damn_issue_sky130.vhd:4814:87  */
  assign n7371_o = in_unnamed & in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:4814:65  */
  assign n7372_o = n7370_o & n7371_o;
  /* find_the_damn_issue_sky130.vhd:4814:17  */
  assign n7374_o = n7372_o ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:4819:56  */
  assign n7376_o = s_m_value != 1'b0;
  /* find_the_damn_issue_sky130.vhd:4819:41  */
  assign n7377_o = in_unnamed_2 & n7376_o;
  /* find_the_damn_issue_sky130.vhd:4819:87  */
  assign n7378_o = in_unnamed & in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:4819:65  */
  assign n7379_o = n7377_o & n7378_o;
  /* find_the_damn_issue_sky130.vhd:4819:17  */
  assign n7381_o = n7379_o ? 1'b0 : s_const_x;
  /* find_the_damn_issue_sky130.vhd:4824:31  */
  assign n7383_o = s_m_value == 1'b0;
  /* find_the_damn_issue_sky130.vhd:4824:17  */
  assign n7385_o = n7383_o ? 8'b10000000 : in_unnamed_3;
  /* find_the_damn_issue_sky130.vhd:4829:31  */
  assign n7387_o = s_m_value == 1'b0;
  /* find_the_damn_issue_sky130.vhd:4829:17  */
  assign n7389_o = n7387_o ? 1'b0 : in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:4834:31  */
  assign n7391_o = s_m_value == 1'b0;
  /* find_the_damn_issue_sky130.vhd:4834:17  */
  assign n7393_o = n7391_o ? 1'b0 : in_unnamed_2;
endmodule

module scl_addeopdeferred
  (input  clk,
   input  rst_n,
   input  in_in_valid,
   input  [7:0] in_in,
   input  in_unnamed,
   input  in_unnamed_2,
   output out_unnamed_or_in_valid_mux1_delayed1_not_mux1,
   output out_out_ready,
   output out_out_valid,
   output out_out_eop,
   output [7:0] out_out);
  wire [7:0] s_in_2;
  wire s_unnamed_3;
  wire s_unnamed_4;
  wire s_unnamed_or_in_valid_mux1_delayed1_not;
  wire s_out_ready_2;
  wire s_out_valid_2;
  wire s_out_eop_2;
  wire [7:0] s_out_2;
  reg s_unnamed_5;
  wire s_unnamed_6;
  wire scl_eraselastbeat0_out_unnamed_or_in_valid_mux1_delayed1_not;
  wire scl_eraselastbeat0_out_out_ready;
  wire scl_eraselastbeat0_out_out_valid;
  wire scl_eraselastbeat0_out_out_eop;
  wire [7:0] scl_eraselastbeat0_out_out;
  wire n7328_o;
  wire n7330_o;
  wire n7332_o;
  wire n7335_o;
  wire n7336_o;
  wire n7337_o;
  wire n7338_o;
  wire n7339_o;
  wire n7343_o;
  reg n7349_q;
  assign out_unnamed_or_in_valid_mux1_delayed1_not_mux1 = n7330_o;
  assign out_out_ready = s_out_ready_2;
  assign out_out_valid = s_out_valid_2;
  assign out_out_eop = s_out_eop_2;
  assign out_out = s_out_2;
  /* find_the_damn_issue_sky130.vhd:4985:16  */
  assign s_in_2 = in_in; // (signal)
  /* find_the_damn_issue_sky130.vhd:4986:16  */
  assign s_unnamed_3 = n7332_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4987:16  */
  assign s_unnamed_4 = n7335_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4988:16  */
  assign s_unnamed_or_in_valid_mux1_delayed1_not = scl_eraselastbeat0_out_unnamed_or_in_valid_mux1_delayed1_not; // (signal)
  /* find_the_damn_issue_sky130.vhd:4989:16  */
  assign s_out_ready_2 = scl_eraselastbeat0_out_out_ready; // (signal)
  /* find_the_damn_issue_sky130.vhd:4990:16  */
  assign s_out_valid_2 = scl_eraselastbeat0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:4991:16  */
  assign s_out_eop_2 = scl_eraselastbeat0_out_out_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:4992:16  */
  assign s_out_2 = scl_eraselastbeat0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:4993:16  */
  always @*
    s_unnamed_5 = n7349_q; // (isignal)
  initial
    s_unnamed_5 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:4994:16  */
  assign s_unnamed_6 = n7339_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:4996:9  */
  scl_eraselastbeat scl_eraselastbeat0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_in(s_in_2),
    .in_unnamed(s_unnamed_3),
    .in_unnamed_2(s_unnamed_4),
    .in_unnamed_3(in_unnamed_2),
    .out_unnamed_or_in_valid_mux1_delayed1_not(scl_eraselastbeat0_out_unnamed_or_in_valid_mux1_delayed1_not),
    .out_out_ready(scl_eraselastbeat0_out_out_ready),
    .out_out_valid(scl_eraselastbeat0_out_out_valid),
    .out_out_eop(scl_eraselastbeat0_out_out_eop),
    .out_out(scl_eraselastbeat0_out_out));
  /* find_the_damn_issue_sky130.vhd:5019:47  */
  assign n7328_o = s_unnamed_5 | in_unnamed;
  /* find_the_damn_issue_sky130.vhd:5020:17  */
  assign n7330_o = n7328_o ? 1'b0 : s_unnamed_or_in_valid_mux1_delayed1_not;
  /* find_the_damn_issue_sky130.vhd:5025:17  */
  assign n7332_o = n7328_o ? 1'b1 : in_in_valid;
  /* find_the_damn_issue_sky130.vhd:5030:17  */
  assign n7335_o = n7328_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5039:46  */
  assign n7336_o = s_unnamed_5 | in_unnamed;
  /* find_the_damn_issue_sky130.vhd:5039:86  */
  assign n7337_o = s_out_valid_2 & s_out_ready_2;
  /* find_the_damn_issue_sky130.vhd:5039:67  */
  assign n7338_o = ~n7337_o;
  /* find_the_damn_issue_sky130.vhd:5039:61  */
  assign n7339_o = n7336_o & n7338_o;
  /* find_the_damn_issue_sky130.vhd:5044:27  */
  assign n7343_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5046:17  */
  always @(posedge clk or posedge n7343_o)
    if (n7343_o)
      n7349_q <= 1'b0;
    else
      n7349_q <= s_unnamed_6;
endmodule

module scl_extendwidth
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_ret_zero,
   input  in_unnamed_3,
   output out_ret_valid,
   output out_ret_zero_2,
   output [7:0] out_ret);
  wire s_m_last;
  wire s_const_0;
  wire s_const_0_2;
  wire s_unnamed_4;
  wire s_unnamed_5;
  wire [2:0] s_unnamed_6;
  wire [7:0] s_unnamed_7;
  wire s_unnamed_8;
  wire [7:0] s_unnamed_9;
  wire [2:0] s_const_xxx;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire scl_counter0_out_const_0_2;
  wire [2:0] scl_counter0_out_const_xxx;
  wire n7293_o;
  wire [2:0] n7295_o;
  wire n7297_o;
  wire n7298_o;
  wire [6:0] n7299_o;
  wire [7:0] n7301_o;
  wire [6:0] n7302_o;
  wire [7:0] n7303_o;
  wire [7:0] n7310_o;
  reg [7:0] n7311_q;
  assign out_ret_valid = n7298_o;
  assign out_ret_zero_2 = in_ret_zero;
  assign out_ret = n7303_o;
  /* find_the_damn_issue_sky130.vhd:5160:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:5161:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:5162:16  */
  assign s_const_0_2 = scl_counter0_out_const_0_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:5163:16  */
  assign s_unnamed_4 = n7297_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5164:16  */
  assign s_unnamed_5 = n7293_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5165:16  */
  assign s_unnamed_6 = n7295_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5166:16  */
  assign s_unnamed_7 = n7311_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:5167:16  */
  assign s_unnamed_8 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:5168:16  */
  assign s_unnamed_9 = n7303_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5169:16  */
  assign s_const_xxx = scl_counter0_out_const_xxx; // (signal)
  /* find_the_damn_issue_sky130.vhd:5171:9  */
  scl_counter_4 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_4),
    .in_unnamed_2(s_unnamed_5),
    .in_unnamed_3(s_unnamed_6),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_0_2(scl_counter0_out_const_0_2),
    .out_const_xxx(scl_counter0_out_const_xxx));
  /* find_the_damn_issue_sky130.vhd:5187:17  */
  assign n7293_o = in_unnamed ? s_const_0 : 1'b1;
  /* find_the_damn_issue_sky130.vhd:5192:17  */
  assign n7295_o = in_unnamed ? s_const_xxx : 3'b000;
  /* find_the_damn_issue_sky130.vhd:5200:17  */
  assign n7297_o = s_unnamed_8 ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:5205:44  */
  assign n7298_o = s_m_last & s_unnamed_8;
  /* find_the_damn_issue_sky130.vhd:5206:48  */
  assign n7299_o = s_unnamed_7[7:1];
  /* find_the_damn_issue_sky130.vhd:5206:37  */
  assign n7301_o = {1'b0, n7299_o};
  /* find_the_damn_issue_sky130.vhd:5207:53  */
  assign n7302_o = n7301_o[6:0];
  /* find_the_damn_issue_sky130.vhd:5207:40  */
  assign n7303_o = {in_unnamed_3, n7302_o};
  /* find_the_damn_issue_sky130.vhd:5214:17  */
  assign n7310_o = s_unnamed_8 ? s_unnamed_9 : s_unnamed_7;
  /* find_the_damn_issue_sky130.vhd:5214:17  */
  always @(posedge clk)
    n7311_q <= n7310_o;
endmodule

module scl_counter_3
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   output out_m_last);
  reg s_m_value;
  wire s_unnamed_3;
  wire s_m_value_plus_const_0_mux1;
  wire n7258_o;
  wire n7261_o;
  wire n7268_o;
  wire n7269_o;
  wire n7272_o;
  wire n7279_o;
  reg n7280_q;
  assign out_m_last = n7268_o;
  /* find_the_damn_issue_sky130.vhd:5251:16  */
  always @*
    s_m_value = n7280_q; // (isignal)
  initial
    s_m_value = 1'b0;
  /* find_the_damn_issue_sky130.vhd:5252:16  */
  assign s_unnamed_3 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:5253:16  */
  assign s_m_value_plus_const_0_mux1 = n7269_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5259:17  */
  assign n7258_o = in_unnamed ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5265:55  */
  assign n7261_o = s_m_value == 1'b1;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7268_o = n7261_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5267:59  */
  assign n7269_o = s_m_value + n7258_o;
  /* find_the_damn_issue_sky130.vhd:5272:27  */
  assign n7272_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5274:17  */
  assign n7279_o = s_unnamed_3 ? s_m_value_plus_const_0_mux1 : s_m_value;
  /* find_the_damn_issue_sky130.vhd:5274:17  */
  always @(posedge clk or posedge n7272_o)
    if (n7272_o)
      n7280_q <= 1'b0;
    else
      n7280_q <= n7279_o;
endmodule

module combinedbitcrc
  (input  clk,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  in_unnamed_4,
   input  in_unnamed_5,
   output out_m_out,
   output out_m_match);
  wire [15:0] s_m_state;
  wire [15:0] s_m_state_delayed1;
  wire s_unnamed_6;
  wire [1:0] n7181_o;
  wire [2:0] n7182_o;
  wire [3:0] n7183_o;
  wire [4:0] n7184_o;
  wire [5:0] n7185_o;
  wire [6:0] n7186_o;
  wire [7:0] n7187_o;
  wire [8:0] n7188_o;
  wire [9:0] n7189_o;
  wire [10:0] n7190_o;
  wire [11:0] n7191_o;
  wire [12:0] n7192_o;
  wire [13:0] n7193_o;
  wire [14:0] n7194_o;
  wire [15:0] n7195_o;
  wire [15:0] n7196_o;
  wire n7198_o;
  wire n7199_o;
  wire n7200_o;
  wire n7201_o;
  wire n7202_o;
  wire n7203_o;
  wire n7204_o;
  wire n7205_o;
  wire [14:0] n7206_o;
  wire [15:0] n7207_o;
  wire [14:0] n7208_o;
  wire n7209_o;
  wire n7210_o;
  wire [15:0] n7211_o;
  wire [1:0] n7212_o;
  wire n7213_o;
  wire n7214_o;
  wire [2:0] n7215_o;
  wire [12:0] n7216_o;
  wire [15:0] n7217_o;
  wire [4:0] n7219_o;
  wire n7221_o;
  wire n7228_o;
  wire n7231_o;
  wire n7238_o;
  wire n7240_o;
  wire n7241_o;
  wire [15:0] n7249_o;
  reg [15:0] n7250_q;
  assign out_m_out = n7202_o;
  assign out_m_match = n7241_o;
  /* find_the_damn_issue_sky130.vhd:5314:16  */
  assign s_m_state = n7217_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5315:16  */
  assign s_m_state_delayed1 = n7250_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:5316:16  */
  assign s_unnamed_6 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:5335:95  */
  assign n7181_o = {in_unnamed_4, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:110  */
  assign n7182_o = {n7181_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:125  */
  assign n7183_o = {n7182_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:140  */
  assign n7184_o = {n7183_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:155  */
  assign n7185_o = {n7184_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:170  */
  assign n7186_o = {n7185_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:185  */
  assign n7187_o = {n7186_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:200  */
  assign n7188_o = {n7187_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:215  */
  assign n7189_o = {n7188_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:230  */
  assign n7190_o = {n7189_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:245  */
  assign n7191_o = {n7190_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:260  */
  assign n7192_o = {n7191_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:275  */
  assign n7193_o = {n7192_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:290  */
  assign n7194_o = {n7193_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:305  */
  assign n7195_o = {n7194_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:5335:78  */
  assign n7196_o = s_m_state_delayed1 | n7195_o;
  /* find_the_damn_issue_sky130.vhd:5337:31  */
  assign n7198_o = in_unnamed == 1'b0;
  /* find_the_damn_issue_sky130.vhd:5338:115  */
  assign n7199_o = n7196_o[11];
  /* find_the_damn_issue_sky130.vhd:5340:115  */
  assign n7200_o = n7196_o[0];
  /* find_the_damn_issue_sky130.vhd:5337:17  */
  assign n7201_o = n7198_o ? n7199_o : n7200_o;
  /* find_the_damn_issue_sky130.vhd:5342:32  */
  assign n7202_o = ~n7201_o;
  /* find_the_damn_issue_sky130.vhd:5343:41  */
  assign n7203_o = in_unnamed_3 ^ n7201_o;
  /* find_the_damn_issue_sky130.vhd:5343:102  */
  assign n7204_o = ~in_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:5343:96  */
  assign n7205_o = n7203_o & n7204_o;
  /* find_the_damn_issue_sky130.vhd:5344:116  */
  assign n7206_o = n7196_o[15:1];
  /* find_the_damn_issue_sky130.vhd:5344:77  */
  assign n7207_o = {n7205_o, n7206_o};
  /* find_the_damn_issue_sky130.vhd:5345:190  */
  assign n7208_o = n7207_o[15:1];
  /* find_the_damn_issue_sky130.vhd:5345:256  */
  assign n7209_o = n7207_o[0];
  /* find_the_damn_issue_sky130.vhd:5345:260  */
  assign n7210_o = n7209_o ^ n7205_o;
  /* find_the_damn_issue_sky130.vhd:5345:204  */
  assign n7211_o = {n7208_o, n7210_o};
  /* find_the_damn_issue_sky130.vhd:5346:150  */
  assign n7212_o = n7211_o[15:14];
  /* find_the_damn_issue_sky130.vhd:5346:287  */
  assign n7213_o = n7211_o[13];
  /* find_the_damn_issue_sky130.vhd:5346:292  */
  assign n7214_o = n7213_o ^ n7205_o;
  /* find_the_damn_issue_sky130.vhd:5346:165  */
  assign n7215_o = {n7212_o, n7214_o};
  /* find_the_damn_issue_sky130.vhd:5346:424  */
  assign n7216_o = n7211_o[12:0];
  /* find_the_damn_issue_sky130.vhd:5346:303  */
  assign n7217_o = {n7215_o, n7216_o};
  /* find_the_damn_issue_sky130.vhd:5349:56  */
  assign n7219_o = n7217_o[15:11];
  /* find_the_damn_issue_sky130.vhd:5349:71  */
  assign n7221_o = n7219_o == 5'b00110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7228_o = n7221_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5350:58  */
  assign n7231_o = n7217_o == 16'b1011000000000001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7238_o = n7231_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5351:31  */
  assign n7240_o = in_unnamed == 1'b0;
  /* find_the_damn_issue_sky130.vhd:5351:17  */
  assign n7241_o = n7240_o ? n7228_o : n7238_o;
  /* find_the_damn_issue_sky130.vhd:5361:17  */
  assign n7249_o = s_unnamed_6 ? s_m_state : s_m_state_delayed1;
  /* find_the_damn_issue_sky130.vhd:5361:17  */
  always @(posedge clk)
    n7250_q <= n7249_o;
endmodule

module scl_decodenrzi
  (input  clk,
   input  rst_n,
   input  in_out_zero,
   input  in_unnamed,
   input  in_unnamed_2,
   output out_out_valid,
   output out_out_zero_2,
   output out_out);
  reg s_unnamed_delayed1;
  wire s_m_last;
  wire s_const_0;
  wire s_unnamed_3;
  wire [2:0] s_unnamed_4;
  wire s_unnamed_5;
  wire s_unnamed_6;
  wire [2:0] s_const_xxx;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire [2:0] scl_counter0_out_const_xxx;
  wire n7134_o;
  wire n7141_o;
  wire n7142_o;
  wire n7143_o;
  wire n7145_o;
  wire n7146_o;
  wire n7147_o;
  wire n7149_o;
  wire n7150_o;
  wire n7151_o;
  wire [2:0] n7153_o;
  wire n7158_o;
  wire n7165_o;
  reg n7166_q;
  assign out_out_valid = n7145_o;
  assign out_out_zero_2 = in_out_zero;
  assign out_out = n7142_o;
  /* find_the_damn_issue_sky130.vhd:5492:16  */
  always @*
    s_unnamed_delayed1 = n7166_q; // (isignal)
  initial
    s_unnamed_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:5493:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:5494:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:5495:16  */
  assign s_unnamed_3 = n7149_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5496:16  */
  assign s_unnamed_4 = n7153_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:5497:16  */
  assign s_unnamed_5 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:5498:16  */
  assign s_unnamed_6 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:5499:16  */
  assign s_const_xxx = scl_counter0_out_const_xxx; // (signal)
  /* find_the_damn_issue_sky130.vhd:5501:9  */
  scl_counter_2 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_3),
    .in_unnamed_2(s_unnamed_4),
    .in_unnamed_3(s_unnamed_6),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_xxx(scl_counter0_out_const_xxx));
  /* find_the_damn_issue_sky130.vhd:5520:60  */
  assign n7134_o = s_unnamed_5 == s_unnamed_delayed1;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7141_o = n7134_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:5519:17  */
  assign n7142_o = s_unnamed_6 ? n7141_o : in_unnamed;
  /* find_the_damn_issue_sky130.vhd:5524:56  */
  assign n7143_o = s_m_last & s_unnamed_6;
  /* find_the_damn_issue_sky130.vhd:5525:17  */
  assign n7145_o = n7143_o ? 1'b0 : in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:5530:23  */
  assign n7146_o = ~n7142_o;
  /* find_the_damn_issue_sky130.vhd:5530:40  */
  assign n7147_o = n7146_o & s_unnamed_6;
  /* find_the_damn_issue_sky130.vhd:5530:17  */
  assign n7149_o = n7147_o ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:5535:23  */
  assign n7150_o = ~n7142_o;
  /* find_the_damn_issue_sky130.vhd:5535:40  */
  assign n7151_o = n7150_o & s_unnamed_6;
  /* find_the_damn_issue_sky130.vhd:5535:17  */
  assign n7153_o = n7151_o ? 3'b000 : s_const_xxx;
  /* find_the_damn_issue_sky130.vhd:5546:27  */
  assign n7158_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:5548:17  */
  assign n7165_o = s_unnamed_6 ? s_unnamed_5 : s_unnamed_delayed1;
  /* find_the_damn_issue_sky130.vhd:5548:17  */
  always @(posedge clk or posedge n7158_o)
    if (n7158_o)
      n7166_q <= 1'b0;
    else
      n7166_q <= n7165_o;
endmodule

module scl_recoverdatadifferential
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   output out_se0,
   output out_p,
   output out_unnamed_3);
  wire s_unnamed_4;
  wire s_unnamed_5;
  wire scl_recoverdatadifferential_equalsampling_sky1300_out_se0;
  wire scl_recoverdatadifferential_equalsampling_sky1300_out_p;
  wire scl_recoverdatadifferential_equalsampling_sky1300_out_unnamed_3;
  assign out_se0 = scl_recoverdatadifferential_equalsampling_sky1300_out_se0;
  assign out_p = scl_recoverdatadifferential_equalsampling_sky1300_out_p;
  assign out_unnamed_3 = scl_recoverdatadifferential_equalsampling_sky1300_out_unnamed_3;
  /* find_the_damn_issue_sky130.vhd:9378:16  */
  assign s_unnamed_4 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:9379:16  */
  assign s_unnamed_5 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9381:9  */
  scl_recoverdatadifferential_equalsampling_sky130 scl_recoverdatadifferential_equalsampling_sky1300 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_4),
    .in_unnamed_2(s_unnamed_5),
    .out_se0(scl_recoverdatadifferential_equalsampling_sky1300_out_se0),
    .out_p(scl_recoverdatadifferential_equalsampling_sky1300_out_p),
    .out_unnamed_3(scl_recoverdatadifferential_equalsampling_sky1300_out_unnamed_3));
endmodule

module scl_memory_3
  (input  clk,
   input  in_unnamed,
   input  [3:0] in_unnamed_2,
   input  [11:0] in_unnamed_3,
   input  [3:0] in_unnamed_4,
   output [11:0] out_unnamed_5);
  wire [3:0] s_unnamed_6;
  wire [11:0] s_unnamed_7;
  wire [3:0] s_unnamed_8;
  wire s_unnamed_9;
  wire [11:0] physical_memory0_out_unnamed_5;
  assign out_unnamed_5 = physical_memory0_out_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:147:16  */
  assign s_unnamed_6 = in_unnamed_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:148:16  */
  assign s_unnamed_7 = in_unnamed_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:149:16  */
  assign s_unnamed_8 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:150:16  */
  assign s_unnamed_9 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:152:9  */
  physical_memory_3 physical_memory0 (
    .clk(clk),
    .in_unnamed(s_unnamed_6),
    .in_unnamed_2(s_unnamed_7),
    .in_unnamed_3(s_unnamed_8),
    .in_unnamed_4(s_unnamed_9),
    .out_unnamed_5(physical_memory0_out_unnamed_5));
endmodule

module scl_counter_16
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   output [2:0] out_m_value,
   output out_m_last);
  reg [2:0] s_m_value_2;
  wire s_unnamed_2;
  wire [2:0] s_m_value_plus_const_0_mux1;
  wire n7087_o;
  wire n7094_o;
  wire [2:0] n7097_o;
  wire [2:0] n7098_o;
  wire n7101_o;
  wire [2:0] n7108_o;
  reg [2:0] n7109_q;
  assign out_m_value = s_m_value_2;
  assign out_m_last = n7094_o;
  /* find_the_damn_issue_sky130.vhd:487:16  */
  always @*
    s_m_value_2 = n7109_q; // (isignal)
  initial
    s_m_value_2 = 3'b000;
  /* find_the_damn_issue_sky130.vhd:488:16  */
  assign s_unnamed_2 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:489:16  */
  assign s_m_value_plus_const_0_mux1 = n7098_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:495:57  */
  assign n7087_o = s_m_value_2 == 3'b111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7094_o = n7087_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:497:17  */
  assign n7097_o = s_unnamed_2 ? 3'b001 : 3'b000;
  /* find_the_damn_issue_sky130.vhd:502:61  */
  assign n7098_o = s_m_value_2 + n7097_o;
  /* find_the_damn_issue_sky130.vhd:507:27  */
  assign n7101_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:509:17  */
  assign n7108_o = s_unnamed_2 ? s_m_value_plus_const_0_mux1 : s_m_value_2;
  /* find_the_damn_issue_sky130.vhd:509:17  */
  always @(posedge clk or posedge n7101_o)
    if (n7101_o)
      n7109_q <= 3'b000;
    else
      n7109_q <= n7108_o;
endmodule

module scl_baudrategenerator_2
  (input  clk,
   input  rst_n,
   input  [23:0] in_baudrate,
   input  in_settohalf,
   output out_out);
  reg [16:0] s_baudcounter;
  wire [16:0] s_baudcounter_rewired_plus_baudrate_rewired_rewired_minus_const_10110111000110110_mux2;
  wire [17:0] n7047_o;
  wire [16:0] n7048_o;
  wire [17:0] n7050_o;
  wire [17:0] n7051_o;
  wire n7054_o;
  wire n7061_o;
  wire n7062_o;
  wire n7063_o;
  wire [16:0] n7064_o;
  wire [16:0] n7066_o;
  wire [16:0] n7067_o;
  wire [16:0] n7069_o;
  wire n7073_o;
  reg [16:0] n7079_q;
  assign out_out = n7063_o;
  /* find_the_damn_issue_sky130.vhd:546:16  */
  always @*
    s_baudcounter = n7079_q; // (isignal)
  initial
    s_baudcounter = 17'b00000000000000000;
  /* find_the_damn_issue_sky130.vhd:547:16  */
  assign s_baudcounter_rewired_plus_baudrate_rewired_rewired_minus_const_10110111000110110_mux2 = n7069_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:561:70  */
  assign n7047_o = {1'b0, s_baudcounter};
  /* find_the_damn_issue_sky130.vhd:561:106  */
  assign n7048_o = in_baudrate[23:7];
  /* find_the_damn_issue_sky130.vhd:561:94  */
  assign n7050_o = {1'b0, n7048_o};
  /* find_the_damn_issue_sky130.vhd:561:87  */
  assign n7051_o = n7047_o + n7050_o;
  /* find_the_damn_issue_sky130.vhd:562:87  */
  assign n7054_o = $unsigned(n7051_o) >= $unsigned(18'b010110111000110110);
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n7061_o = n7054_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:562:118  */
  assign n7062_o = ~in_settohalf;
  /* find_the_damn_issue_sky130.vhd:562:112  */
  assign n7063_o = n7061_o & n7062_o;
  /* find_the_damn_issue_sky130.vhd:563:115  */
  assign n7064_o = n7051_o[16:0];
  /* find_the_damn_issue_sky130.vhd:565:168  */
  assign n7066_o = n7064_o - 17'b10110111000110110;
  /* find_the_damn_issue_sky130.vhd:564:17  */
  assign n7067_o = n7063_o ? n7066_o : n7064_o;
  /* find_the_damn_issue_sky130.vhd:569:17  */
  assign n7069_o = in_settohalf ? 17'b01011011100011011 : n7067_o;
  /* find_the_damn_issue_sky130.vhd:579:27  */
  assign n7073_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:581:17  */
  always @(posedge clk or posedge n7073_o)
    if (n7073_o)
      n7079_q <= 17'b00000000000000000;
    else
      n7079_q <= s_baudcounter_rewired_plus_baudrate_rewired_rewired_minus_const_10110111000110110_mux2;
endmodule

module scl_counter_15
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [2:0] in_unnamed_3,
   output [2:0] out_m_value,
   output out_const_0,
   output [2:0] out_const_xxx);
  reg [2:0] s_m_value_2;
  wire s_unnamed_4;
  wire [2:0] s_m_loadvalue_mux1;
  wire [2:0] n7018_o;
  wire n7019_o;
  wire [2:0] n7020_o;
  wire [2:0] n7021_o;
  localparam n7024_o = 1'b0;
  localparam [2:0] n7025_o = 3'bX;
  wire n7027_o;
  wire [2:0] n7034_o;
  reg [2:0] n7035_q;
  assign out_m_value = s_m_value_2;
  assign out_const_0 = n7024_o;
  assign out_const_xxx = n7025_o;
  /* find_the_damn_issue_sky130.vhd:786:16  */
  always @*
    s_m_value_2 = n7035_q; // (isignal)
  initial
    s_m_value_2 = 3'b000;
  /* find_the_damn_issue_sky130.vhd:787:16  */
  assign s_unnamed_4 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:788:16  */
  assign s_m_loadvalue_mux1 = n7021_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:802:17  */
  assign n7018_o = s_unnamed_4 ? 3'b001 : 3'b000;
  /* find_the_damn_issue_sky130.vhd:807:56  */
  assign n7019_o = in_unnamed_2 & s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:811:60  */
  assign n7020_o = s_m_value_2 + n7018_o;
  /* find_the_damn_issue_sky130.vhd:808:17  */
  assign n7021_o = n7019_o ? in_unnamed_3 : n7020_o;
  /* find_the_damn_issue_sky130.vhd:819:27  */
  assign n7027_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:821:17  */
  assign n7034_o = s_unnamed_4 ? s_m_loadvalue_mux1 : s_m_value_2;
  /* find_the_damn_issue_sky130.vhd:821:17  */
  always @(posedge clk or posedge n7027_o)
    if (n7027_o)
      n7035_q <= 3'b000;
    else
      n7035_q <= n7034_o;
endmodule

module scl_counter_14
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [2:0] in_unnamed_3,
   output [2:0] out_m_value,
   output out_const_0,
   output [2:0] out_const_xxx);
  reg [2:0] s_m_value_2;
  wire s_unnamed_4;
  wire [2:0] s_m_loadvalue_mux1;
  wire [2:0] n6988_o;
  wire n6989_o;
  wire [2:0] n6990_o;
  wire [2:0] n6991_o;
  localparam n6994_o = 1'b0;
  localparam [2:0] n6995_o = 3'bX;
  wire n6997_o;
  wire [2:0] n7004_o;
  reg [2:0] n7005_q;
  assign out_m_value = s_m_value_2;
  assign out_const_0 = n6994_o;
  assign out_const_xxx = n6995_o;
  /* find_the_damn_issue_sky130.vhd:861:16  */
  always @*
    s_m_value_2 = n7005_q; // (isignal)
  initial
    s_m_value_2 = 3'b000;
  /* find_the_damn_issue_sky130.vhd:862:16  */
  assign s_unnamed_4 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:863:16  */
  assign s_m_loadvalue_mux1 = n6991_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:877:17  */
  assign n6988_o = s_unnamed_4 ? 3'b001 : 3'b000;
  /* find_the_damn_issue_sky130.vhd:882:56  */
  assign n6989_o = in_unnamed_2 & s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:886:60  */
  assign n6990_o = s_m_value_2 + n6988_o;
  /* find_the_damn_issue_sky130.vhd:883:17  */
  assign n6991_o = n6989_o ? in_unnamed_3 : n6990_o;
  /* find_the_damn_issue_sky130.vhd:894:27  */
  assign n6997_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:896:17  */
  assign n7004_o = s_unnamed_4 ? s_m_loadvalue_mux1 : s_m_value_2;
  /* find_the_damn_issue_sky130.vhd:896:17  */
  always @(posedge clk or posedge n6997_o)
    if (n6997_o)
      n7005_q <= 3'b000;
    else
      n7005_q <= n7004_o;
endmodule

module scl_counter_13
  (input  clk,
   input  rst_n,
   input  [16:0] in_unnamed,
   output out_m_last);
  reg [16:0] s_m_value;
  wire [16:0] s_m_value_plus_const_1_mux1;
  wire [16:0] n6949_o;
  wire n6950_o;
  wire [16:0] n6952_o;
  wire [16:0] n6954_o;
  wire [16:0] n6957_o;
  wire n6958_o;
  wire n6965_o;
  wire n6969_o;
  reg [16:0] n6975_q;
  assign out_m_last = n6965_o;
  /* find_the_damn_issue_sky130.vhd:932:16  */
  always @*
    s_m_value = n6975_q; // (isignal)
  initial
    s_m_value = 17'b00000000000000000;
  /* find_the_damn_issue_sky130.vhd:933:16  */
  assign s_m_value_plus_const_1_mux1 = n6954_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:940:45  */
  assign n6949_o = in_unnamed - 17'b00000000000000001;
  /* find_the_damn_issue_sky130.vhd:940:31  */
  assign n6950_o = s_m_value == n6949_o;
  /* find_the_damn_issue_sky130.vhd:943:67  */
  assign n6952_o = s_m_value + 17'b00000000000000001;
  /* find_the_damn_issue_sky130.vhd:940:17  */
  assign n6954_o = n6950_o ? 17'b00000000000000000 : n6952_o;
  /* find_the_damn_issue_sky130.vhd:945:69  */
  assign n6957_o = in_unnamed - 17'b00000000000000001;
  /* find_the_damn_issue_sky130.vhd:945:55  */
  assign n6958_o = s_m_value == n6957_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6965_o = n6958_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:951:27  */
  assign n6969_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:953:17  */
  always @(posedge clk or posedge n6969_o)
    if (n6969_o)
      n6975_q <= 17'b00000000000000000;
    else
      n6975_q <= s_m_value_plus_const_1_mux1;
endmodule

module scl_counter_12
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [3:0] in_unnamed_3,
   output [3:0] out_m_value,
   output out_m_last,
   output out_const_0,
   output out_const_0_2,
   output [3:0] out_const_x);
  reg [3:0] s_m_value_2;
  wire [3:0] s_m_loadvalue_mux1;
  wire [3:0] n6917_o;
  wire [3:0] n6918_o;
  wire [3:0] n6919_o;
  wire n6922_o;
  wire n6929_o;
  localparam n6932_o = 1'b0;
  localparam n6933_o = 1'b0;
  localparam [3:0] n6934_o = 4'bX;
  wire n6936_o;
  reg [3:0] n6942_q;
  assign out_m_value = s_m_value_2;
  assign out_m_last = n6929_o;
  assign out_const_0 = n6932_o;
  assign out_const_0_2 = n6933_o;
  assign out_const_x = n6934_o;
  /* find_the_damn_issue_sky130.vhd:2449:16  */
  always @*
    s_m_value_2 = n6942_q; // (isignal)
  initial
    s_m_value_2 = 4'b0100;
  /* find_the_damn_issue_sky130.vhd:2450:16  */
  assign s_m_loadvalue_mux1 = n6919_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2460:17  */
  assign n6917_o = in_unnamed ? 4'b0001 : 4'b0000;
  /* find_the_damn_issue_sky130.vhd:2471:60  */
  assign n6918_o = s_m_value_2 + n6917_o;
  /* find_the_damn_issue_sky130.vhd:2468:17  */
  assign n6919_o = in_unnamed_2 ? in_unnamed_3 : n6918_o;
  /* find_the_damn_issue_sky130.vhd:2473:57  */
  assign n6922_o = s_m_value_2 == 4'b1111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6929_o = n6922_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2482:27  */
  assign n6936_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:2484:17  */
  always @(posedge clk or posedge n6936_o)
    if (n6936_o)
      n6942_q <= 4'b0100;
    else
      n6942_q <= s_m_loadvalue_mux1;
endmodule

module scl_baudrategenerator
  (input  clk,
   input  rst_n,
   input  [23:0] in_baudrate,
   output out_out);
  wire [16:0] s_baudcounter_rewired_plus_baudrate_rewired_rewired_minus_const_10110111000110110_mux1;
  reg [16:0] s_baudcounter;
  wire [17:0] n6874_o;
  wire [16:0] n6875_o;
  wire [17:0] n6877_o;
  wire [17:0] n6878_o;
  wire n6881_o;
  wire n6888_o;
  wire [16:0] n6889_o;
  wire [16:0] n6891_o;
  wire [16:0] n6892_o;
  wire n6896_o;
  reg [16:0] n6902_q;
  assign out_out = n6888_o;
  /* find_the_damn_issue_sky130.vhd:2518:16  */
  assign s_baudcounter_rewired_plus_baudrate_rewired_rewired_minus_const_10110111000110110_mux1 = n6892_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2519:16  */
  always @*
    s_baudcounter = n6902_q; // (isignal)
  initial
    s_baudcounter = 17'b00000000000000000;
  /* find_the_damn_issue_sky130.vhd:2530:70  */
  assign n6874_o = {1'b0, s_baudcounter};
  /* find_the_damn_issue_sky130.vhd:2530:106  */
  assign n6875_o = in_baudrate[23:7];
  /* find_the_damn_issue_sky130.vhd:2530:94  */
  assign n6877_o = {1'b0, n6875_o};
  /* find_the_damn_issue_sky130.vhd:2530:87  */
  assign n6878_o = n6874_o + n6877_o;
  /* find_the_damn_issue_sky130.vhd:2531:86  */
  assign n6881_o = $unsigned(n6878_o) >= $unsigned(18'b010110111000110110);
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6888_o = n6881_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2532:115  */
  assign n6889_o = n6878_o[16:0];
  /* find_the_damn_issue_sky130.vhd:2534:168  */
  assign n6891_o = n6889_o - 17'b10110111000110110;
  /* find_the_damn_issue_sky130.vhd:2533:17  */
  assign n6892_o = n6888_o ? n6891_o : n6889_o;
  /* find_the_damn_issue_sky130.vhd:2543:27  */
  assign n6896_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:2545:17  */
  always @(posedge clk or posedge n6896_o)
    if (n6896_o)
      n6902_q <= 17'b00000000000000000;
    else
      n6902_q <= s_baudcounter_rewired_plus_baudrate_rewired_rewired_minus_const_10110111000110110_mux1;
endmodule

module scl_memory_2
  (input  clk,
   input  in_unnamed,
   input  [3:0] in_unnamed_2,
   input  [11:0] in_unnamed_3,
   input  [3:0] in_unnamed_4,
   output [11:0] out_unnamed_5);
  wire [3:0] s_unnamed_6;
  wire [11:0] s_unnamed_7;
  wire [3:0] s_unnamed_8;
  wire s_unnamed_9;
  wire [11:0] physical_memory0_out_unnamed_5;
  assign out_unnamed_5 = physical_memory0_out_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:2821:16  */
  assign s_unnamed_6 = in_unnamed_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:2822:16  */
  assign s_unnamed_7 = in_unnamed_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:2823:16  */
  assign s_unnamed_8 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:2824:16  */
  assign s_unnamed_9 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:2826:9  */
  physical_memory_2 physical_memory0 (
    .clk(clk),
    .in_unnamed(s_unnamed_6),
    .in_unnamed_2(s_unnamed_7),
    .in_unnamed_3(s_unnamed_8),
    .in_unnamed_4(s_unnamed_9),
    .out_unnamed_5(physical_memory0_out_unnamed_5));
endmodule

module txfifointerface
  (input  [3:0] in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  in_tx_ready,
   input  in_unnamed_4,
   input  [7:0] in_unnamed_5,
   input  [3:0] in_unnamed_6,
   input  [7:0] in_unnamed_7,
   input  [3:0] in_unnamed_8,
   input  in_unnamed_9,
   input  in_unnamed_10,
   input  in_unnamed_11,
   output out_unnamed_not_mux1,
   output out_unnamed_mux2,
   output out_const_0_mux1,
   output out_tx_ready_2,
   output out_tx_valid,
   output [3:0] out_tx_endpoint,
   output [7:0] out_tx_data,
   output out_unnamed_mux2_2);
  wire n6833_o;
  wire n6840_o;
  wire n6841_o;
  wire n6842_o;
  wire [7:0] n6843_o;
  wire [3:0] n6844_o;
  wire n6845_o;
  wire n6846_o;
  wire n6847_o;
  wire n6848_o;
  wire n6850_o;
  wire n6851_o;
  wire n6853_o;
  wire n6856_o;
  assign out_unnamed_not_mux1 = n6847_o;
  assign out_unnamed_mux2 = n6853_o;
  assign out_const_0_mux1 = n6856_o;
  assign out_tx_ready_2 = in_tx_ready;
  assign out_tx_valid = n6842_o;
  assign out_tx_endpoint = n6844_o;
  assign out_tx_data = n6843_o;
  assign out_unnamed_mux2_2 = n6853_o;
  /* find_the_damn_issue_sky130.vhd:3068:55  */
  assign n6833_o = in_unnamed == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6840_o = n6833_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3070:41  */
  assign n6841_o = ~in_unnamed_11;
  /* find_the_damn_issue_sky130.vhd:3069:17  */
  assign n6842_o = n6840_o ? n6841_o : in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:3074:17  */
  assign n6843_o = n6840_o ? in_unnamed_7 : in_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:3079:17  */
  assign n6844_o = n6840_o ? in_unnamed_8 : in_unnamed_6;
  /* find_the_damn_issue_sky130.vhd:3084:63  */
  assign n6845_o = in_tx_ready & n6840_o;
  /* find_the_damn_issue_sky130.vhd:3086:51  */
  assign n6846_o = ~in_unnamed_11;
  /* find_the_damn_issue_sky130.vhd:3085:17  */
  assign n6847_o = n6845_o ? n6846_o : in_unnamed_10;
  /* find_the_damn_issue_sky130.vhd:3090:65  */
  assign n6848_o = in_unnamed_2 & n6840_o;
  /* find_the_damn_issue_sky130.vhd:3091:17  */
  assign n6850_o = n6848_o ? 1'b1 : in_unnamed_9;
  /* find_the_damn_issue_sky130.vhd:3096:67  */
  assign n6851_o = in_unnamed_3 & n6840_o;
  /* find_the_damn_issue_sky130.vhd:3097:17  */
  assign n6853_o = n6851_o ? 1'b0 : n6850_o;
  /* find_the_damn_issue_sky130.vhd:3102:17  */
  assign n6856_o = n6851_o ? 1'b1 : 1'b0;
endmodule

module rxfifointerface
  (input  [3:0] in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  [3:0] in_unnamed_4,
   input  [7:0] in_unnamed_5,
   input  in_unnamed_6,
   input  in_unnamed_7,
   input  [4:0] in_unnamed_8,
   input  in_unnamed_9,
   input  [3:0] in_unnamed_10,
   input  [7:0] in_unnamed_11,
   input  in_unnamed_12,
   input  in_unnamed_13,
   output out_unnamed_not_mux1,
   output out_unnamed_not_mux1_2,
   output [7:0] out_unnamed_mux1,
   output [3:0] out_unnamed_mux1_2,
   output out_const_0_mux1,
   output out_unnamed_mux2,
   output [4:0] out_const_10_mux1);
  wire n6783_o;
  wire n6790_o;
  wire n6791_o;
  wire n6792_o;
  wire n6793_o;
  wire n6794_o;
  wire n6795_o;
  wire [7:0] n6796_o;
  wire [3:0] n6797_o;
  wire n6798_o;
  wire n6799_o;
  wire n6801_o;
  wire n6802_o;
  wire n6803_o;
  wire n6806_o;
  wire n6808_o;
  wire [4:0] n6810_o;
  assign out_unnamed_not_mux1 = n6792_o;
  assign out_unnamed_not_mux1_2 = n6795_o;
  assign out_unnamed_mux1 = n6796_o;
  assign out_unnamed_mux1_2 = n6797_o;
  assign out_const_0_mux1 = n6806_o;
  assign out_unnamed_mux2 = n6808_o;
  assign out_const_10_mux1 = n6810_o;
  /* find_the_damn_issue_sky130.vhd:3171:55  */
  assign n6783_o = in_unnamed == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6790_o = n6783_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3173:51  */
  assign n6791_o = ~in_unnamed_13;
  /* find_the_damn_issue_sky130.vhd:3172:17  */
  assign n6792_o = n6790_o ? n6791_o : in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:3177:64  */
  assign n6793_o = in_unnamed_3 & n6790_o;
  /* find_the_damn_issue_sky130.vhd:3179:53  */
  assign n6794_o = ~in_unnamed_13;
  /* find_the_damn_issue_sky130.vhd:3178:17  */
  assign n6795_o = n6793_o ? n6794_o : in_unnamed_12;
  /* find_the_damn_issue_sky130.vhd:3183:17  */
  assign n6796_o = n6793_o ? in_unnamed_5 : in_unnamed_11;
  /* find_the_damn_issue_sky130.vhd:3188:17  */
  assign n6797_o = n6793_o ? in_unnamed_4 : in_unnamed_10;
  /* find_the_damn_issue_sky130.vhd:3193:62  */
  assign n6798_o = in_unnamed_6 & n6790_o;
  /* find_the_damn_issue_sky130.vhd:3194:64  */
  assign n6799_o = in_unnamed_7 & n6798_o;
  /* find_the_damn_issue_sky130.vhd:3195:17  */
  assign n6801_o = n6799_o ? 1'b1 : in_unnamed_9;
  /* find_the_damn_issue_sky130.vhd:3200:39  */
  assign n6802_o = ~in_unnamed_7;
  /* find_the_damn_issue_sky130.vhd:3201:72  */
  assign n6803_o = n6802_o & n6798_o;
  /* find_the_damn_issue_sky130.vhd:3202:17  */
  assign n6806_o = n6803_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3207:17  */
  assign n6808_o = n6803_o ? 1'b0 : n6801_o;
  /* find_the_damn_issue_sky130.vhd:3212:17  */
  assign n6810_o = n6803_o ? 5'b00010 : in_unnamed_8;
endmodule

module rxstream
  (input  clk,
   input  rst_n,
   input  in_m_rx_ready,
   input  in_unnamed,
   input  in_unnamed_2,
   input  [3:0] in_unnamed_3,
   input  in_unnamed_4,
   input  in_unnamed_5,
   input  in_unnamed_6,
   input  [7:0] in_m_rx_data,
   input  [3:0] in_m_rx_endpoint,
   input  [3:0] in_unnamed_7,
   output out_m_rxreadyerror,
   output out_const_1,
   output out_m_rx_valid,
   output [3:0] out_m_rx_endpoint_2,
   output [7:0] out_m_rx_data_2,
   output out_m_rx_eop,
   output out_m_rx_error);
  reg s_m_rxreadyerror_2;
  wire s_unnamed_or_unnamed_and_functionstream_and_m_rx_ready_not_and_unnamed_not;
  wire n6726_o;
  wire n6733_o;
  wire n6736_o;
  wire n6743_o;
  wire n6744_o;
  wire n6745_o;
  wire n6746_o;
  wire n6747_o;
  wire n6748_o;
  wire n6749_o;
  wire n6750_o;
  wire n6751_o;
  wire n6752_o;
  wire n6753_o;
  wire n6754_o;
  wire n6755_o;
  localparam n6757_o = 1'b1;
  wire n6759_o;
  reg n6765_q;
  assign out_m_rxreadyerror = s_m_rxreadyerror_2;
  assign out_const_1 = n6757_o;
  assign out_m_rx_valid = n6747_o;
  assign out_m_rx_endpoint_2 = in_m_rx_endpoint;
  assign out_m_rx_data_2 = in_m_rx_data;
  assign out_m_rx_eop = n6748_o;
  assign out_m_rx_error = n6749_o;
  /* find_the_damn_issue_sky130.vhd:3263:16  */
  always @*
    s_m_rxreadyerror_2 = n6765_q; // (isignal)
  initial
    s_m_rxreadyerror_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:3264:16  */
  assign s_unnamed_or_unnamed_and_functionstream_and_m_rx_ready_not_and_unnamed_not = n6755_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3271:65  */
  assign n6726_o = in_unnamed_3 == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6733_o = n6726_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3271:110  */
  assign n6736_o = in_unnamed_7 != 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6743_o = n6736_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3271:79  */
  assign n6744_o = n6733_o & n6743_o;
  /* find_the_damn_issue_sky130.vhd:3275:50  */
  assign n6745_o = in_unnamed_4 & n6744_o;
  /* find_the_damn_issue_sky130.vhd:3275:78  */
  assign n6746_o = ~s_m_rxreadyerror_2;
  /* find_the_damn_issue_sky130.vhd:3275:72  */
  assign n6747_o = n6745_o & n6746_o;
  /* find_the_damn_issue_sky130.vhd:3278:47  */
  assign n6748_o = in_unnamed_5 & n6744_o;
  /* find_the_damn_issue_sky130.vhd:3279:49  */
  assign n6749_o = in_unnamed_6 | s_m_rxreadyerror_2;
  /* find_the_damn_issue_sky130.vhd:3280:128  */
  assign n6750_o = in_unnamed_4 & n6744_o;
  /* find_the_damn_issue_sky130.vhd:3280:156  */
  assign n6751_o = ~in_m_rx_ready;
  /* find_the_damn_issue_sky130.vhd:3280:150  */
  assign n6752_o = n6750_o & n6751_o;
  /* find_the_damn_issue_sky130.vhd:3280:110  */
  assign n6753_o = in_unnamed_2 | n6752_o;
  /* find_the_damn_issue_sky130.vhd:3280:182  */
  assign n6754_o = ~in_unnamed;
  /* find_the_damn_issue_sky130.vhd:3280:176  */
  assign n6755_o = n6753_o & n6754_o;
  /* find_the_damn_issue_sky130.vhd:3285:27  */
  assign n6759_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:3287:17  */
  always @(posedge clk or posedge n6759_o)
    if (n6759_o)
      n6765_q <= 1'b0;
    else
      n6765_q <= s_unnamed_or_unnamed_and_functionstream_and_m_rx_ready_not_and_unnamed_not;
endmodule

module scl_memory
  (input  clk,
   input  [7:0] in_unnamed,
   output [7:0] out_unnamed_2);
  wire [7:0] s_unnamed_3;
  wire [7:0] physical_memory0_out_unnamed_2;
  assign out_unnamed_2 = physical_memory0_out_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:3519:16  */
  assign s_unnamed_3 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:3521:9  */
  physical_memory physical_memory0 (
    .clk(clk),
    .in_unnamed(s_unnamed_3),
    .out_unnamed_2(physical_memory0_out_unnamed_2));
endmodule

module functionreset
  (input  clk,
   input  rst_n,
   input  [6:0] in_unnamed,
   input  [3:0] in_unnamed_2,
   input  [6:0] in_unnamed_3,
   input  [1:0] in_unnamed_4,
   input  in_unnamed_5,
   output [3:0] out_unnamed_mux1,
   output [6:0] out_unnamed_mux1_2,
   output [6:0] out_unnamed_mux1_3);
  reg [9:0] s_s0timer;
  reg s_unnamed_or_s0timer_eq_const_0_delayed1;
  wire [9:0] s_s0timer_plus_const_1_mux1;
  wire s_unnamed_or_s0timer_eq_const_0;
  wire n6670_o;
  wire [9:0] n6672_o;
  wire [9:0] n6674_o;
  wire [6:0] n6676_o;
  wire [6:0] n6678_o;
  wire [3:0] n6680_o;
  wire n6683_o;
  wire n6690_o;
  wire n6691_o;
  wire n6698_o;
  reg [9:0] n6707_q;
  reg n6708_q;
  assign out_unnamed_mux1 = n6680_o;
  assign out_unnamed_mux1_2 = n6678_o;
  assign out_unnamed_mux1_3 = n6676_o;
  /* find_the_damn_issue_sky130.vhd:3566:16  */
  always @*
    s_s0timer = n6707_q; // (isignal)
  initial
    s_s0timer = 10'b0000000000;
  /* find_the_damn_issue_sky130.vhd:3567:16  */
  always @*
    s_unnamed_or_s0timer_eq_const_0_delayed1 = n6708_q; // (isignal)
  initial
    s_unnamed_or_s0timer_eq_const_0_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:3568:16  */
  assign s_s0timer_plus_const_1_mux1 = n6674_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3569:16  */
  assign s_unnamed_or_s0timer_eq_const_0 = n6691_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:3579:34  */
  assign n6670_o = in_unnamed_4 == 2'b00;
  /* find_the_damn_issue_sky130.vhd:3580:67  */
  assign n6672_o = s_s0timer + 10'b0000000001;
  /* find_the_damn_issue_sky130.vhd:3579:17  */
  assign n6674_o = n6670_o ? n6672_o : 10'b0000000001;
  /* find_the_damn_issue_sky130.vhd:3584:17  */
  assign n6676_o = s_unnamed_or_s0timer_eq_const_0_delayed1 ? 7'b0000000 : in_unnamed;
  /* find_the_damn_issue_sky130.vhd:3589:17  */
  assign n6678_o = s_unnamed_or_s0timer_eq_const_0_delayed1 ? 7'b0000000 : in_unnamed_3;
  /* find_the_damn_issue_sky130.vhd:3594:17  */
  assign n6680_o = s_unnamed_or_s0timer_eq_const_0_delayed1 ? 4'b0000 : in_unnamed_2;
  /* find_the_damn_issue_sky130.vhd:3600:93  */
  assign n6683_o = s_s0timer == 10'b0000000000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6690_o = n6683_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:3600:66  */
  assign n6691_o = in_unnamed_5 | n6690_o;
  /* find_the_damn_issue_sky130.vhd:3608:27  */
  assign n6698_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:3611:17  */
  always @(posedge clk or posedge n6698_o)
    if (n6698_o)
      n6707_q <= 10'b0000000000;
    else
      n6707_q <= s_s0timer_plus_const_1_mux1;
  /* find_the_damn_issue_sky130.vhd:3611:17  */
  always @(posedge clk or posedge n6698_o)
    if (n6698_o)
      n6708_q <= 1'b0;
    else
      n6708_q <= s_unnamed_or_s0timer_eq_const_0;
endmodule

module scl_usbgpiophy
  (input  clk,
   input  rst_n,
   input  [1:0] in_unnamed,
   input  in_unnamed_2,
   input  in_m_tx_ready,
   input  in_m_tx_valid,
   input  [7:0] in_m_tx_data,
   input  in_m_crcen,
   input  in_m_crcin,
   input  in_m_crcout,
   input  in_m_crcmatch,
   input  in_m_crcreset,
   input  in_m_crcshiftout,
   input  in_unnamed_3,
   input  [7:0] in_unnamed_4,
   input  [7:0] in_unnamed_5,
   input  [7:0] in_unnamed_6,
   output [1:0] out_m_status_linestate,
   output out_m_status_sessend,
   output out_m_status_rxactive,
   output out_m_out,
   output out_m_match_delayed1,
   output out_m_rx_valid,
   output out_m_rx_sop,
   output out_m_rx_eop,
   output out_m_rx_error,
   output [7:0] out_m_rx_data,
   output out_unnamed_or_in_valid_mux1_delayed1_not_mux1,
   output out_unnamed_mux1,
   output out_unnamed_mux1_2,
   output out_firstdatabit_mux2,
   output out_in_valid_and_unnamed_mux2,
   output out_unnamed_mux1_3,
   output [7:0] out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired,
   output [7:0] out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired);
  wire s_dpin;
  wire s_dnin;
  wire s_se0;
  wire s_p;
  wire s_linein_valid;
  wire s_linein_zero;
  wire s_linein;
  wire s_unnamed_7;
  wire [1:0] s_m_status_linestate_2;
  wire s_out_valid;
  wire s_out_zero;
  wire s_out;
  reg s_unnamed_and_lineindecoded_valid_and_lineindecoded_zero_not_delayed1;
  wire s_m_se0;
  wire s_m_crcmode;
  wire s_m_crcmode_2;
  wire s_m_crcen_2;
  wire s_m_crcin_2;
  wire s_m_crcreset_2;
  wire s_m_crcshiftout_2;
  wire s_m_match;
  wire s_unnamed_8;
  wire [2:0] s_waitforlock_mux6;
  reg [2:0] s_preamble_detection_state;
  wire s_lineindecoded_valid_and_preamble_detection_state_eq_waitforlock;
  wire s_unnamed_9;
  wire s_m_last;
  wire s_in_bit_masked_valid;
  wire s_in_bit_masked_zero;
  wire s_in_bit_masked;
  wire s_ret_valid;
  wire [7:0] s_ret;
  reg s_rxdataactive;
  reg s_m_status_rxactive_delayed1;
  reg s_requirecrccheck;
  wire s_unnamed_10;
  reg s_unnamed_11;
  wire s_unnamed_12;
  wire s_unnamed_13;
  wire s_unnamed_14;
  wire s_m_tx_valid_2;
  wire [7:0] s_m_tx_data_2;
  reg s_m_tx_valid_delayed1;
  wire s_unnamed_15;
  wire s_out_valid_2;
  wire s_out_eop;
  wire [7:0] s_out_2;
  wire s_txpacketstream_valid;
  wire s_txpacketstream_eop;
  wire [7:0] s_txpacketstream;
  wire s_unnamed_16;
  wire s_out_valid_3;
  wire s_out_eop_2;
  wire [7:0] s_out_3;
  wire s_txpreambledstream_valid;
  wire s_txpreambledstream_eop;
  wire [7:0] s_txpreambledstream;
  wire s_unnamed_17;
  wire s_out_valid_4;
  wire s_out_eop_3;
  wire s_out_4;
  wire s_txbitvecstream_valid;
  wire s_txbitvecstream_eop;
  wire s_in;
  wire s_unnamed_18;
  wire s_out_valid_5;
  wire s_out_eop_4;
  wire s_out_5;
  wire s_txbitstream_valid;
  wire s_txbitstream_eop;
  wire s_txbitstream;
  wire s_unnamed_19;
  wire s_out_ready_5;
  wire s_out_valid_6;
  wire s_out_eop_5;
  wire s_out_6;
  wire s_out_7;
  wire s_m_last_2;
  wire s_ret_2;
  wire s_unnamed_20;
  wire s_unnamed_21;
  wire s_input;
  wire s_ret_3;
  reg s_se0_2;
  wire s_unnamed_22;
  wire s_unnamed_23;
  wire s_requirecrccheck_or_lineinword_valid_and_rxdataactive_not_and_lineinword_rewired_neq_const_10_and_m_status_rxactive_not_and_m_status_rxactive_delayed1_and_rxdataactive_not;
  wire s_rxdataactive_or_lineinword_valid_and_m_status_rxactive_not_not;
  wire [1:0] s_linein_and_linein_zero_not_unnamed_rewired_linein_not_and_linein_zero_not_rewired;
  wire s_linein_valid_mux1;
  wire s_unnamed_and_lineindecoded_valid_and_lineindecoded_zero_not;
  wire scl_recoverdatadifferential0_out_se0;
  wire scl_recoverdatadifferential0_out_p;
  wire scl_recoverdatadifferential0_out_unnamed_3;
  wire n6401_o;
  wire n6402_o;
  wire n6403_o;
  wire n6405_o;
  wire n6406_o;
  wire [2:0] n6408_o;
  wire n6411_o;
  wire n6418_o;
  wire n6419_o;
  wire n6422_o;
  wire n6429_o;
  wire n6430_o;
  wire n6431_o;
  wire [2:0] n6433_o;
  wire n6434_o;
  wire n6435_o;
  wire n6437_o;
  wire n6438_o;
  wire [2:0] n6440_o;
  wire n6441_o;
  wire n6443_o;
  wire n6444_o;
  wire [2:0] n6446_o;
  wire n6447_o;
  wire n6449_o;
  wire n6450_o;
  wire [2:0] n6452_o;
  wire n6453_o;
  wire [2:0] n6455_o;
  wire n6457_o;
  wire n6458_o;
  wire n6459_o;
  wire n6461_o;
  wire n6462_o;
  wire n6463_o;
  wire n6464_o;
  wire n6465_o;
  wire n6466_o;
  wire n6467_o;
  wire n6468_o;
  wire n6469_o;
  wire n6470_o;
  wire n6471_o;
  wire n6472_o;
  wire n6473_o;
  wire n6475_o;
  wire n6476_o;
  wire n6477_o;
  wire n6478_o;
  wire n6479_o;
  wire n6481_o;
  wire n6483_o;
  wire n6485_o;
  wire n6487_o;
  wire n6488_o;
  wire n6489_o;
  wire n6491_o;
  wire n6493_o;
  wire n6494_o;
  wire n6496_o;
  wire n6498_o;
  wire n6500_o;
  wire n6501_o;
  wire n6503_o;
  wire n6504_o;
  wire n6505_o;
  wire n6506_o;
  wire [1:0] n6507_o;
  wire [5:0] n6508_o;
  wire [7:0] n6509_o;
  wire n6510_o;
  wire [1:0] n6511_o;
  wire [5:0] n6512_o;
  wire [7:0] n6513_o;
  wire [6:0] n6514_o;
  wire [7:0] n6515_o;
  wire [6:0] n6516_o;
  wire [7:0] n6517_o;
  wire n6518_o;
  wire n6519_o;
  wire n6520_o;
  wire n6521_o;
  wire n6522_o;
  wire n6523_o;
  wire n6524_o;
  wire [1:0] n6526_o;
  wire n6528_o;
  wire n6535_o;
  wire n6536_o;
  wire n6537_o;
  wire n6538_o;
  wire n6539_o;
  wire n6540_o;
  wire n6541_o;
  wire n6542_o;
  wire n6543_o;
  wire n6544_o;
  wire n6545_o;
  wire n6546_o;
  wire n6547_o;
  wire n6548_o;
  wire n6549_o;
  wire [1:0] n6550_o;
  wire n6551_o;
  wire n6552_o;
  wire n6553_o;
  wire n6554_o;
  wire [1:0] n6555_o;
  wire n6556_o;
  wire n6557_o;
  wire n6558_o;
  localparam n6562_o = 1'b0;
  wire n6573_o;
  wire scl_decodenrzi0_out_out_valid;
  wire scl_decodenrzi0_out_out_zero_2;
  wire scl_decodenrzi0_out_out;
  wire combinedbitcrc0_out_m_out;
  wire combinedbitcrc0_out_m_match;
  wire scl_counter0_out_m_last;
  wire scl_extendwidth0_out_ret_valid;
  wire scl_extendwidth0_out_ret_zero_2;
  wire [7:0] scl_extendwidth0_out_ret;
  wire scl_addeopdeferred0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1;
  wire scl_addeopdeferred0_out_out_ready;
  wire scl_addeopdeferred0_out_out_valid;
  wire scl_addeopdeferred0_out_out_eop;
  wire [7:0] scl_addeopdeferred0_out_out;
  wire scl_insertbeat0_out_unnamed_mux1;
  wire scl_insertbeat0_out_out_ready;
  wire scl_insertbeat0_out_out_valid;
  wire scl_insertbeat0_out_out_eop;
  wire [7:0] scl_insertbeat0_out_out;
  wire scl_reducewidth0_out_unnamed_and_m_last;
  wire scl_reducewidth0_out_out_ready;
  wire scl_reducewidth0_out_out_valid_2;
  wire scl_reducewidth0_out_out_eop;
  wire scl_reducewidth0_out_out;
  wire generatetxcrcappend0_out_unnamed_9;
  wire generatetxcrcappend0_out_unnamed_mux1;
  wire generatetxcrcappend0_out_unnamed_mux1_2;
  wire generatetxcrcappend0_out_firstdatabit_mux2;
  wire generatetxcrcappend0_out_in_valid_and_unnamed_mux2;
  wire generatetxcrcappend0_out_unnamed_mux1_3;
  wire generatetxcrcappend0_out_out_ready;
  wire generatetxcrcappend0_out_out_valid;
  wire generatetxcrcappend0_out_out_eop;
  wire generatetxcrcappend0_out_out;
  wire bitstuff0_out_unnamed_mux1;
  wire bitstuff0_out_out_ready;
  wire bitstuff0_out_out_valid;
  wire bitstuff0_out_out_eop;
  wire bitstuff0_out_out;
  wire nrzi0_out_out;
  wire scl_counter1_out_m_last;
  wire scl_pulseextender0_out_ret;
  wire scl_pulseextender1_out_ret;
  wire [1:0] n6644_o;
  reg [1:0] n6645_q;
  reg n6646_q;
  reg n6647_q;
  reg [2:0] n6648_q;
  reg n6649_q;
  reg n6650_q;
  reg n6651_q;
  wire n6652_o;
  reg n6653_q;
  reg n6654_q;
  reg n6655_q;
  wire n6656_o;
  reg n6657_q;
  assign out_m_status_linestate = s_m_status_linestate_2;
  assign out_m_status_sessend = n6562_o;
  assign out_m_status_rxactive = n6401_o;
  assign out_m_out = combinedbitcrc0_out_m_out;
  assign out_m_match_delayed1 = n6657_q;
  assign out_m_rx_valid = s_ret_valid;
  assign out_m_rx_sop = n6462_o;
  assign out_m_rx_eop = n6465_o;
  assign out_m_rx_error = n6471_o;
  assign out_m_rx_data = s_ret;
  assign out_unnamed_or_in_valid_mux1_delayed1_not_mux1 = scl_addeopdeferred0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1;
  assign out_unnamed_mux1 = generatetxcrcappend0_out_unnamed_mux1;
  assign out_unnamed_mux1_2 = generatetxcrcappend0_out_unnamed_mux1_2;
  assign out_firstdatabit_mux2 = generatetxcrcappend0_out_firstdatabit_mux2;
  assign out_in_valid_and_unnamed_mux2 = generatetxcrcappend0_out_in_valid_and_unnamed_mux2;
  assign out_unnamed_mux1_3 = generatetxcrcappend0_out_unnamed_mux1_3;
  assign out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired = n6515_o;
  assign out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired = n6517_o;
  /* find_the_damn_issue_sky130.vhd:9456:16  */
  assign s_dpin = n6504_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9457:16  */
  assign s_dnin = n6505_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9458:16  */
  assign s_se0 = scl_recoverdatadifferential0_out_se0; // (signal)
  /* find_the_damn_issue_sky130.vhd:9459:16  */
  assign s_p = scl_recoverdatadifferential0_out_p; // (signal)
  /* find_the_damn_issue_sky130.vhd:9460:16  */
  assign s_linein_valid = scl_recoverdatadifferential0_out_unnamed_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:9461:16  */
  assign s_linein_zero = s_se0; // (signal)
  /* find_the_damn_issue_sky130.vhd:9462:16  */
  assign s_linein = s_p; // (signal)
  /* find_the_damn_issue_sky130.vhd:9463:16  */
  assign s_unnamed_7 = n6498_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9464:16  */
  assign s_m_status_linestate_2 = n6645_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:9465:16  */
  assign s_out_valid = scl_decodenrzi0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:9466:16  */
  assign s_out_zero = scl_decodenrzi0_out_out_zero_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9467:16  */
  assign s_out = scl_decodenrzi0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9468:16  */
  always @*
    s_unnamed_and_lineindecoded_valid_and_lineindecoded_zero_not_delayed1 = n6646_q; // (isignal)
  initial
    s_unnamed_and_lineindecoded_valid_and_lineindecoded_zero_not_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9469:16  */
  assign s_m_se0 = s_out_zero; // (signal)
  /* find_the_damn_issue_sky130.vhd:9470:16  */
  assign s_m_crcmode = n6647_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:9471:16  */
  assign s_m_crcmode_2 = s_m_crcmode; // (signal)
  /* find_the_damn_issue_sky130.vhd:9472:16  */
  assign s_m_crcen_2 = in_m_crcen; // (signal)
  /* find_the_damn_issue_sky130.vhd:9473:16  */
  assign s_m_crcin_2 = in_m_crcin; // (signal)
  /* find_the_damn_issue_sky130.vhd:9474:16  */
  assign s_m_crcreset_2 = in_m_crcreset; // (signal)
  /* find_the_damn_issue_sky130.vhd:9475:16  */
  assign s_m_crcshiftout_2 = in_m_crcshiftout; // (signal)
  /* find_the_damn_issue_sky130.vhd:9476:16  */
  assign s_m_match = combinedbitcrc0_out_m_match; // (signal)
  /* find_the_damn_issue_sky130.vhd:9477:16  */
  assign s_unnamed_8 = 1'b0; // (signal)
  /* find_the_damn_issue_sky130.vhd:9478:16  */
  assign s_waitforlock_mux6 = n6455_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9479:16  */
  always @*
    s_preamble_detection_state = n6648_q; // (isignal)
  initial
    s_preamble_detection_state = 3'b000;
  /* find_the_damn_issue_sky130.vhd:9480:16  */
  assign s_lineindecoded_valid_and_preamble_detection_state_eq_waitforlock = n6419_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9481:16  */
  assign s_unnamed_9 = n6430_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9482:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:9483:16  */
  assign s_in_bit_masked_valid = n6461_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9484:16  */
  assign s_in_bit_masked_zero = s_out_zero; // (signal)
  /* find_the_damn_issue_sky130.vhd:9485:16  */
  assign s_in_bit_masked = s_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9486:16  */
  assign s_ret_valid = scl_extendwidth0_out_ret_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:9488:16  */
  assign s_ret = scl_extendwidth0_out_ret; // (signal)
  /* find_the_damn_issue_sky130.vhd:9489:16  */
  always @*
    s_rxdataactive = n6649_q; // (isignal)
  initial
    s_rxdataactive = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9490:16  */
  always @*
    s_m_status_rxactive_delayed1 = n6650_q; // (isignal)
  initial
    s_m_status_rxactive_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9491:16  */
  always @*
    s_requirecrccheck = n6651_q; // (isignal)
  initial
    s_requirecrccheck = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9492:16  */
  assign s_unnamed_10 = n6481_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9493:16  */
  always @*
    s_unnamed_11 = n6653_q; // (isignal)
  initial
    s_unnamed_11 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9494:16  */
  assign s_unnamed_12 = n6483_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9495:16  */
  assign s_unnamed_13 = n6485_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9496:16  */
  assign s_unnamed_14 = n6487_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9497:16  */
  assign s_m_tx_valid_2 = in_m_tx_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:9498:16  */
  assign s_m_tx_data_2 = in_m_tx_data; // (signal)
  /* find_the_damn_issue_sky130.vhd:9499:16  */
  always @*
    s_m_tx_valid_delayed1 = n6654_q; // (isignal)
  initial
    s_m_tx_valid_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9500:16  */
  assign s_unnamed_15 = n6489_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9502:16  */
  assign s_out_valid_2 = scl_addeopdeferred0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:9503:16  */
  assign s_out_eop = scl_addeopdeferred0_out_out_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:9504:16  */
  assign s_out_2 = scl_addeopdeferred0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9505:16  */
  assign s_txpacketstream_valid = s_out_valid_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9506:16  */
  assign s_txpacketstream_eop = s_out_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:9507:16  */
  assign s_txpacketstream = s_out_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9508:16  */
  assign s_unnamed_16 = scl_insertbeat0_out_unnamed_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:9510:16  */
  assign s_out_valid_3 = scl_insertbeat0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:9511:16  */
  assign s_out_eop_2 = scl_insertbeat0_out_out_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:9512:16  */
  assign s_out_3 = scl_insertbeat0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9513:16  */
  assign s_txpreambledstream_valid = s_out_valid_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:9514:16  */
  assign s_txpreambledstream_eop = s_out_eop_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9515:16  */
  assign s_txpreambledstream = s_out_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:9516:16  */
  assign s_unnamed_17 = scl_reducewidth0_out_unnamed_and_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:9518:16  */
  assign s_out_valid_4 = scl_reducewidth0_out_out_valid_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:9519:16  */
  assign s_out_eop_3 = scl_reducewidth0_out_out_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:9735:41  */
  assign s_out_4 = scl_reducewidth0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9521:16  */
  assign s_txbitvecstream_valid = s_out_valid_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:9522:16  */
  assign s_txbitvecstream_eop = s_out_eop_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:9523:16  */
  assign s_in = s_out_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:9524:16  */
  assign s_unnamed_18 = generatetxcrcappend0_out_unnamed_9; // (signal)
  /* find_the_damn_issue_sky130.vhd:9526:16  */
  assign s_out_valid_5 = generatetxcrcappend0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:9527:16  */
  assign s_out_eop_4 = generatetxcrcappend0_out_out_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:9528:16  */
  assign s_out_5 = generatetxcrcappend0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9529:16  */
  assign s_txbitstream_valid = s_out_valid_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:9530:16  */
  assign s_txbitstream_eop = s_out_eop_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:9531:16  */
  assign s_txbitstream = s_out_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:9532:16  */
  assign s_unnamed_19 = bitstuff0_out_unnamed_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:9533:16  */
  assign s_out_ready_5 = bitstuff0_out_out_ready; // (signal)
  /* find_the_damn_issue_sky130.vhd:9534:16  */
  assign s_out_valid_6 = bitstuff0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:9535:16  */
  assign s_out_eop_5 = bitstuff0_out_out_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:9536:16  */
  assign s_out_6 = bitstuff0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9537:16  */
  assign s_out_7 = nrzi0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:9538:16  */
  assign s_m_last_2 = scl_counter1_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:9539:16  */
  assign s_ret_2 = scl_pulseextender0_out_ret; // (signal)
  /* find_the_damn_issue_sky130.vhd:9540:16  */
  assign s_unnamed_20 = n6491_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9541:16  */
  assign s_unnamed_21 = n6493_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9542:16  */
  assign s_input = n6494_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9543:16  */
  assign s_ret_3 = scl_pulseextender1_out_ret; // (signal)
  /* find_the_damn_issue_sky130.vhd:9544:16  */
  always @*
    s_se0_2 = n6655_q; // (isignal)
  initial
    s_se0_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:9545:16  */
  assign s_unnamed_22 = in_unnamed_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:9546:16  */
  assign s_unnamed_23 = n6522_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9547:16  */
  assign s_requirecrccheck_or_lineinword_valid_and_rxdataactive_not_and_lineinword_rewired_neq_const_10_and_m_status_rxactive_not_and_m_status_rxactive_delayed1_and_rxdataactive_not = n6542_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9548:16  */
  assign s_rxdataactive_or_lineinword_valid_and_m_status_rxactive_not_not = n6546_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9549:16  */
  assign s_linein_and_linein_zero_not_unnamed_rewired_linein_not_and_linein_zero_not_rewired = n6555_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9550:16  */
  assign s_linein_valid_mux1 = s_unnamed_7; // (signal)
  /* find_the_damn_issue_sky130.vhd:9551:16  */
  assign s_unnamed_and_lineindecoded_valid_and_lineindecoded_zero_not = n6558_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:9553:9  */
  scl_recoverdatadifferential scl_recoverdatadifferential0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_dpin),
    .in_unnamed_2(s_dnin),
    .out_se0(scl_recoverdatadifferential0_out_se0),
    .out_p(scl_recoverdatadifferential0_out_p),
    .out_unnamed_3(scl_recoverdatadifferential0_out_unnamed_3));
  /* find_the_damn_issue_sky130.vhd:9629:113  */
  assign n6401_o = s_unnamed_and_lineindecoded_valid_and_lineindecoded_zero_not_delayed1 | s_out_valid;
  /* find_the_damn_issue_sky130.vhd:9640:56  */
  assign n6402_o = ~s_out;
  /* find_the_damn_issue_sky130.vhd:9640:50  */
  assign n6403_o = s_out_valid & n6402_o;
  /* find_the_damn_issue_sky130.vhd:9640:116  */
  assign n6405_o = s_preamble_detection_state == 3'b000;
  /* find_the_damn_issue_sky130.vhd:9640:84  */
  assign n6406_o = n6403_o & n6405_o;
  /* find_the_damn_issue_sky130.vhd:9640:17  */
  assign n6408_o = n6406_o ? 3'b001 : s_preamble_detection_state;
  /* find_the_damn_issue_sky130.vhd:9645:154  */
  assign n6411_o = s_preamble_detection_state == 3'b001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6418_o = n6411_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:9645:109  */
  assign n6419_o = s_out_valid & n6418_o;
  /* find_the_damn_issue_sky130.vhd:9646:144  */
  assign n6422_o = s_preamble_detection_state == 3'b001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6429_o = n6422_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:9646:99  */
  assign n6430_o = s_lineindecoded_valid_and_preamble_detection_state_eq_waitforlock & n6429_o;
  /* find_the_damn_issue_sky130.vhd:9647:56  */
  assign n6431_o = s_m_last & s_lineindecoded_valid_and_preamble_detection_state_eq_waitforlock;
  /* find_the_damn_issue_sky130.vhd:9648:17  */
  assign n6433_o = n6431_o ? 3'b010 : n6408_o;
  /* find_the_damn_issue_sky130.vhd:9653:56  */
  assign n6434_o = ~s_out;
  /* find_the_damn_issue_sky130.vhd:9653:50  */
  assign n6435_o = s_out_valid & n6434_o;
  /* find_the_damn_issue_sky130.vhd:9653:116  */
  assign n6437_o = s_preamble_detection_state == 3'b010;
  /* find_the_damn_issue_sky130.vhd:9653:84  */
  assign n6438_o = n6435_o & n6437_o;
  /* find_the_damn_issue_sky130.vhd:9653:17  */
  assign n6440_o = n6438_o ? 3'b011 : n6433_o;
  /* find_the_damn_issue_sky130.vhd:9658:50  */
  assign n6441_o = s_out_valid & s_out;
  /* find_the_damn_issue_sky130.vhd:9658:109  */
  assign n6443_o = s_preamble_detection_state == 3'b010;
  /* find_the_damn_issue_sky130.vhd:9658:77  */
  assign n6444_o = n6441_o & n6443_o;
  /* find_the_damn_issue_sky130.vhd:9658:17  */
  assign n6446_o = n6444_o ? 3'b000 : n6440_o;
  /* find_the_damn_issue_sky130.vhd:9663:50  */
  assign n6447_o = s_out_valid & s_out;
  /* find_the_damn_issue_sky130.vhd:9663:109  */
  assign n6449_o = s_preamble_detection_state == 3'b011;
  /* find_the_damn_issue_sky130.vhd:9663:77  */
  assign n6450_o = n6447_o & n6449_o;
  /* find_the_damn_issue_sky130.vhd:9663:17  */
  assign n6452_o = n6450_o ? 3'b100 : n6446_o;
  /* find_the_damn_issue_sky130.vhd:9669:49  */
  assign n6453_o = s_out_valid & s_out_zero;
  /* find_the_damn_issue_sky130.vhd:9669:17  */
  assign n6455_o = n6453_o ? 3'b000 : n6452_o;
  /* find_the_damn_issue_sky130.vhd:9676:49  */
  assign n6457_o = s_preamble_detection_state != 3'b100;
  /* find_the_damn_issue_sky130.vhd:9676:94  */
  assign n6458_o = s_out_valid & s_out_zero;
  /* find_the_damn_issue_sky130.vhd:9676:62  */
  assign n6459_o = n6457_o | n6458_o;
  /* find_the_damn_issue_sky130.vhd:9676:17  */
  assign n6461_o = n6459_o ? 1'b0 : s_out_valid;
  /* find_the_damn_issue_sky130.vhd:9690:35  */
  assign n6462_o = ~s_rxdataactive;
  /* find_the_damn_issue_sky130.vhd:9691:37  */
  assign n6463_o = ~n6401_o;
  /* find_the_damn_issue_sky130.vhd:9691:64  */
  assign n6464_o = n6463_o & s_m_status_rxactive_delayed1;
  /* find_the_damn_issue_sky130.vhd:9691:98  */
  assign n6465_o = n6464_o & s_rxdataactive;
  /* find_the_damn_issue_sky130.vhd:9692:40  */
  assign n6466_o = ~n6401_o;
  /* find_the_damn_issue_sky130.vhd:9692:67  */
  assign n6467_o = n6466_o & s_m_status_rxactive_delayed1;
  /* find_the_damn_issue_sky130.vhd:9692:101  */
  assign n6468_o = n6467_o & s_rxdataactive;
  /* find_the_damn_issue_sky130.vhd:9692:128  */
  assign n6469_o = ~n6657_q;
  /* find_the_damn_issue_sky130.vhd:9692:154  */
  assign n6470_o = n6469_o & s_requirecrccheck;
  /* find_the_damn_issue_sky130.vhd:9692:121  */
  assign n6471_o = n6468_o & n6470_o;
  /* find_the_damn_issue_sky130.vhd:9694:43  */
  assign n6472_o = s_ret_valid & n6462_o;
  /* find_the_damn_issue_sky130.vhd:9694:67  */
  assign n6473_o = n6472_o & n6401_o;
  /* find_the_damn_issue_sky130.vhd:9694:17  */
  assign n6475_o = n6473_o ? 1'b0 : s_m_crcmode_2;
  /* find_the_damn_issue_sky130.vhd:9699:34  */
  assign n6476_o = s_ret[1];
  /* find_the_damn_issue_sky130.vhd:9699:71  */
  assign n6477_o = s_ret_valid & n6462_o;
  /* find_the_damn_issue_sky130.vhd:9699:95  */
  assign n6478_o = n6477_o & n6401_o;
  /* find_the_damn_issue_sky130.vhd:9699:44  */
  assign n6479_o = n6476_o & n6478_o;
  /* find_the_damn_issue_sky130.vhd:9699:17  */
  assign n6481_o = n6479_o ? 1'b1 : n6475_o;
  /* find_the_damn_issue_sky130.vhd:9704:17  */
  assign n6483_o = n6401_o ? s_unnamed_11 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:9709:17  */
  assign n6485_o = n6401_o ? s_out : 1'bX;
  /* find_the_damn_issue_sky130.vhd:9714:17  */
  assign n6487_o = n6401_o ? s_in_bit_masked_valid : 1'b0;
  /* find_the_damn_issue_sky130.vhd:9722:36  */
  assign n6488_o = ~s_m_tx_valid_2;
  /* find_the_damn_issue_sky130.vhd:9722:56  */
  assign n6489_o = n6488_o & s_m_tx_valid_delayed1;
  /* find_the_damn_issue_sky130.vhd:9744:17  */
  assign n6491_o = s_ret_2 ? 1'b0 : s_out_valid_6;
  /* find_the_damn_issue_sky130.vhd:9749:17  */
  assign n6493_o = s_ret_2 ? 1'b0 : s_m_last_2;
  /* find_the_damn_issue_sky130.vhd:9754:42  */
  assign n6494_o = s_unnamed_20 & s_out_eop_5;
  /* find_the_damn_issue_sky130.vhd:9756:17  */
  assign n6496_o = s_se0_2 ? 1'b1 : s_unnamed_20;
  /* find_the_damn_issue_sky130.vhd:9761:17  */
  assign n6498_o = n6496_o ? 1'b0 : s_linein_valid;
  /* find_the_damn_issue_sky130.vhd:9766:17  */
  assign n6500_o = s_se0_2 ? 1'b0 : s_out_7;
  /* find_the_damn_issue_sky130.vhd:9774:57  */
  assign n6501_o = ~s_out_7;
  /* find_the_damn_issue_sky130.vhd:9771:17  */
  assign n6503_o = s_se0_2 ? 1'b0 : n6501_o;
  /* find_the_damn_issue_sky130.vhd:9779:38  */
  assign n6504_o = in_unnamed_4[6];
  /* find_the_damn_issue_sky130.vhd:9780:38  */
  assign n6505_o = in_unnamed_4[7];
  /* find_the_damn_issue_sky130.vhd:9783:71  */
  assign n6506_o = in_unnamed_5[7];
  /* find_the_damn_issue_sky130.vhd:9783:84  */
  assign n6507_o = {n6506_o, n6500_o};
  /* find_the_damn_issue_sky130.vhd:9783:122  */
  assign n6508_o = in_unnamed_5[5:0];
  /* find_the_damn_issue_sky130.vhd:9783:109  */
  assign n6509_o = {n6507_o, n6508_o};
  /* find_the_damn_issue_sky130.vhd:9784:77  */
  assign n6510_o = in_unnamed_6[7];
  /* find_the_damn_issue_sky130.vhd:9784:90  */
  assign n6511_o = {n6510_o, n6496_o};
  /* find_the_damn_issue_sky130.vhd:9784:134  */
  assign n6512_o = in_unnamed_6[5:0];
  /* find_the_damn_issue_sky130.vhd:9784:121  */
  assign n6513_o = {n6511_o, n6512_o};
  /* find_the_damn_issue_sky130.vhd:9785:178  */
  assign n6514_o = n6513_o[6:0];
  /* find_the_damn_issue_sky130.vhd:9785:132  */
  assign n6515_o = {n6496_o, n6514_o};
  /* find_the_damn_issue_sky130.vhd:9786:162  */
  assign n6516_o = n6509_o[6:0];
  /* find_the_damn_issue_sky130.vhd:9786:122  */
  assign n6517_o = {n6503_o, n6516_o};
  /* find_the_damn_issue_sky130.vhd:9787:67  */
  assign n6518_o = s_ret_valid & n6462_o;
  /* find_the_damn_issue_sky130.vhd:9787:48  */
  assign n6519_o = s_unnamed_11 | n6518_o;
  /* find_the_damn_issue_sky130.vhd:9787:110  */
  assign n6520_o = s_unnamed_11 & s_in_bit_masked_valid;
  /* find_the_damn_issue_sky130.vhd:9787:92  */
  assign n6521_o = ~n6520_o;
  /* find_the_damn_issue_sky130.vhd:9787:86  */
  assign n6522_o = n6519_o & n6521_o;
  /* find_the_damn_issue_sky130.vhd:9788:243  */
  assign n6523_o = ~s_rxdataactive;
  /* find_the_damn_issue_sky130.vhd:9788:237  */
  assign n6524_o = s_ret_valid & n6523_o;
  /* find_the_damn_issue_sky130.vhd:9788:294  */
  assign n6526_o = s_ret[1:0];
  /* find_the_damn_issue_sky130.vhd:9788:307  */
  assign n6528_o = n6526_o != 2'b10;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6535_o = n6528_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:9788:264  */
  assign n6536_o = n6524_o & n6535_o;
  /* find_the_damn_issue_sky130.vhd:9788:213  */
  assign n6537_o = s_requirecrccheck | n6536_o;
  /* find_the_damn_issue_sky130.vhd:9788:332  */
  assign n6538_o = ~n6401_o;
  /* find_the_damn_issue_sky130.vhd:9788:359  */
  assign n6539_o = n6538_o & s_m_status_rxactive_delayed1;
  /* find_the_damn_issue_sky130.vhd:9788:393  */
  assign n6540_o = n6539_o & s_rxdataactive;
  /* find_the_damn_issue_sky130.vhd:9788:324  */
  assign n6541_o = ~n6540_o;
  /* find_the_damn_issue_sky130.vhd:9788:318  */
  assign n6542_o = n6537_o & n6541_o;
  /* find_the_damn_issue_sky130.vhd:9789:102  */
  assign n6543_o = s_rxdataactive | s_ret_valid;
  /* find_the_damn_issue_sky130.vhd:9789:137  */
  assign n6544_o = ~n6401_o;
  /* find_the_damn_issue_sky130.vhd:9789:131  */
  assign n6545_o = ~n6544_o;
  /* find_the_damn_issue_sky130.vhd:9789:125  */
  assign n6546_o = n6543_o & n6545_o;
  /* find_the_damn_issue_sky130.vhd:9790:75  */
  assign n6547_o = in_unnamed[1];
  /* find_the_damn_issue_sky130.vhd:9790:106  */
  assign n6548_o = ~s_linein_zero;
  /* find_the_damn_issue_sky130.vhd:9790:100  */
  assign n6549_o = s_linein & n6548_o;
  /* find_the_damn_issue_sky130.vhd:9790:88  */
  assign n6550_o = {n6547_o, n6549_o};
  /* find_the_damn_issue_sky130.vhd:9791:108  */
  assign n6551_o = ~s_linein;
  /* find_the_damn_issue_sky130.vhd:9791:128  */
  assign n6552_o = ~s_linein_zero;
  /* find_the_damn_issue_sky130.vhd:9791:122  */
  assign n6553_o = n6551_o & n6552_o;
  /* find_the_damn_issue_sky130.vhd:9791:194  */
  assign n6554_o = n6550_o[0];
  /* find_the_damn_issue_sky130.vhd:9791:148  */
  assign n6555_o = {n6553_o, n6554_o};
  /* find_the_damn_issue_sky130.vhd:9793:128  */
  assign n6556_o = s_out_valid & s_out_zero;
  /* find_the_damn_issue_sky130.vhd:9793:101  */
  assign n6557_o = ~n6556_o;
  /* find_the_damn_issue_sky130.vhd:9793:95  */
  assign n6558_o = in_unnamed_2 & n6557_o;
  /* find_the_damn_issue_sky130.vhd:9811:27  */
  assign n6573_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:9834:9  */
  scl_decodenrzi scl_decodenrzi0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_out_zero(s_linein_zero),
    .in_unnamed(s_linein),
    .in_unnamed_2(s_unnamed_7),
    .out_out_valid(scl_decodenrzi0_out_out_valid),
    .out_out_zero_2(scl_decodenrzi0_out_out_zero_2),
    .out_out(scl_decodenrzi0_out_out));
  /* find_the_damn_issue_sky130.vhd:9844:9  */
  combinedbitcrc combinedbitcrc0 (
    .clk(clk),
    .in_unnamed(s_m_crcmode_2),
    .in_unnamed_2(s_m_crcen_2),
    .in_unnamed_3(s_m_crcin_2),
    .in_unnamed_4(s_m_crcreset_2),
    .in_unnamed_5(s_m_crcshiftout_2),
    .out_m_out(combinedbitcrc0_out_m_out),
    .out_m_match(combinedbitcrc0_out_m_match));
  /* find_the_damn_issue_sky130.vhd:9854:9  */
  scl_counter_3 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_lineindecoded_valid_and_preamble_detection_state_eq_waitforlock),
    .in_unnamed_2(s_unnamed_9),
    .out_m_last(scl_counter0_out_m_last));
  /* find_the_damn_issue_sky130.vhd:9861:9  */
  scl_extendwidth scl_extendwidth0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(n6401_o),
    .in_unnamed_2(s_in_bit_masked_valid),
    .in_ret_zero(s_in_bit_masked_zero),
    .in_unnamed_3(s_in_bit_masked),
    .out_ret_valid(scl_extendwidth0_out_ret_valid),
    .out_ret_zero_2(),
    .out_ret(scl_extendwidth0_out_ret));
  /* find_the_damn_issue_sky130.vhd:9872:9  */
  scl_addeopdeferred scl_addeopdeferred0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_in_valid(s_m_tx_valid_2),
    .in_in(s_m_tx_data_2),
    .in_unnamed(s_unnamed_15),
    .in_unnamed_2(s_unnamed_16),
    .out_unnamed_or_in_valid_mux1_delayed1_not_mux1(scl_addeopdeferred0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1),
    .out_out_ready(),
    .out_out_valid(scl_addeopdeferred0_out_out_valid),
    .out_out_eop(scl_addeopdeferred0_out_out_eop),
    .out_out(scl_addeopdeferred0_out_out));
  /* find_the_damn_issue_sky130.vhd:9885:9  */
  scl_insertbeat scl_insertbeat0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_txpacketstream_valid),
    .in_unnamed_2(s_txpacketstream_eop),
    .in_unnamed_3(s_txpacketstream),
    .in_unnamed_4(s_unnamed_17),
    .out_unnamed_mux1(scl_insertbeat0_out_unnamed_mux1),
    .out_out_ready(),
    .out_out_valid(scl_insertbeat0_out_out_valid),
    .out_out_eop(scl_insertbeat0_out_out_eop),
    .out_out(scl_insertbeat0_out_out));
  /* find_the_damn_issue_sky130.vhd:9898:9  */
  scl_reducewidth scl_reducewidth0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_out_valid(s_txpreambledstream_valid),
    .in_unnamed(s_txpreambledstream_eop),
    .in_unnamed_2(s_txpreambledstream),
    .in_unnamed_3(s_txbitvecstream_valid),
    .in_unnamed_4(s_unnamed_18),
    .out_unnamed_and_m_last(scl_reducewidth0_out_unnamed_and_m_last),
    .out_out_ready(),
    .out_out_valid_2(scl_reducewidth0_out_out_valid_2),
    .out_out_eop(scl_reducewidth0_out_out_eop),
    .out_out(scl_reducewidth0_out_out));
  /* find_the_damn_issue_sky130.vhd:9912:9  */
  generatetxcrcappend generatetxcrcappend0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(combinedbitcrc0_out_m_out),
    .in_unnamed_2(s_unnamed_8),
    .in_unnamed_3(s_unnamed_10),
    .in_unnamed_4(s_unnamed_12),
    .in_unnamed_5(s_unnamed_13),
    .in_unnamed_6(s_unnamed_14),
    .in_in_valid(s_txbitvecstream_valid),
    .in_in_eop(s_txbitvecstream_eop),
    .in_in(s_in),
    .in_unnamed_7(s_txbitstream_valid),
    .in_unnamed_8(s_unnamed_19),
    .out_unnamed_9(generatetxcrcappend0_out_unnamed_9),
    .out_unnamed_mux1(generatetxcrcappend0_out_unnamed_mux1),
    .out_unnamed_mux1_2(generatetxcrcappend0_out_unnamed_mux1_2),
    .out_firstdatabit_mux2(generatetxcrcappend0_out_firstdatabit_mux2),
    .out_in_valid_and_unnamed_mux2(generatetxcrcappend0_out_in_valid_and_unnamed_mux2),
    .out_unnamed_mux1_3(generatetxcrcappend0_out_unnamed_mux1_3),
    .out_out_ready(),
    .out_out_valid(generatetxcrcappend0_out_out_valid),
    .out_out_eop(generatetxcrcappend0_out_out_eop),
    .out_out(generatetxcrcappend0_out_out));
  /* find_the_damn_issue_sky130.vhd:9937:9  */
  bitstuff bitstuff0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_txbitstream_valid),
    .in_unnamed_2(s_txbitstream_eop),
    .in_unnamed_3(s_txbitstream),
    .in_unnamed_4(s_unnamed_20),
    .in_unnamed_5(s_unnamed_21),
    .out_unnamed_mux1(bitstuff0_out_unnamed_mux1),
    .out_out_ready(bitstuff0_out_out_ready),
    .out_out_valid(bitstuff0_out_out_valid),
    .out_out_eop(bitstuff0_out_out_eop),
    .out_out(bitstuff0_out_out));
  /* find_the_damn_issue_sky130.vhd:9951:9  */
  nrzi nrzi0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_out_ready_5),
    .in_unnamed_2(s_out_valid_6),
    .in_unnamed_3(s_out_eop_5),
    .in_unnamed_4(s_out_6),
    .out_out(nrzi0_out_out));
  /* find_the_damn_issue_sky130.vhd:9960:9  */
  scl_counter_9 scl_counter1 (
    .out_m_last(scl_counter1_out_m_last));
  /* find_the_damn_issue_sky130.vhd:9963:9  */
  scl_pulseextender scl_pulseextender0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_input(s_m_se0),
    .out_ret(scl_pulseextender0_out_ret));
  /* find_the_damn_issue_sky130.vhd:9969:9  */
  scl_pulseextender_2 scl_pulseextender1 (
    .clk(clk),
    .rst_n(rst_n),
    .in_input(s_input),
    .out_ret(scl_pulseextender1_out_ret));
  /* find_the_damn_issue_sky130.vhd:9798:17  */
  assign n6644_o = s_linein_valid_mux1 ? s_linein_and_linein_zero_not_unnamed_rewired_linein_not_and_linein_zero_not_rewired : s_m_status_linestate_2;
  /* find_the_damn_issue_sky130.vhd:9798:17  */
  always @(posedge clk)
    n6645_q <= n6644_o;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6646_q <= 1'b0;
    else
      n6646_q <= s_unnamed_and_lineindecoded_valid_and_lineindecoded_zero_not;
  /* find_the_damn_issue_sky130.vhd:9798:17  */
  always @(posedge clk)
    n6647_q <= s_unnamed_22;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6648_q <= 3'b000;
    else
      n6648_q <= s_waitforlock_mux6;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6649_q <= 1'b0;
    else
      n6649_q <= s_rxdataactive_or_lineinword_valid_and_m_status_rxactive_not_not;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6650_q <= 1'b0;
    else
      n6650_q <= n6401_o;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6651_q <= 1'b0;
    else
      n6651_q <= s_requirecrccheck_or_lineinword_valid_and_rxdataactive_not_and_lineinword_rewired_neq_const_10_and_m_status_rxactive_not_and_m_status_rxactive_delayed1_and_rxdataactive_not;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  assign n6652_o = n6401_o ? s_unnamed_23 : s_unnamed_11;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6653_q <= 1'b0;
    else
      n6653_q <= n6652_o;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6654_q <= 1'b0;
    else
      n6654_q <= s_m_tx_valid_2;
  /* find_the_damn_issue_sky130.vhd:9820:17  */
  always @(posedge clk or posedge n6573_o)
    if (n6573_o)
      n6655_q <= 1'b0;
    else
      n6655_q <= s_ret_3;
  /* find_the_damn_issue_sky130.vhd:9798:17  */
  assign n6656_o = s_m_crcen_2 ? s_m_match : n6657_q;
  /* find_the_damn_issue_sky130.vhd:9798:17  */
  always @(posedge clk)
    n6657_q <= n6656_o;
endmodule

module scl_fifo_2
  (input  clk,
   input  rst_n,
   input  [4:0] in_m_pushcutoff,
   input  in_m_popvalid,
   input  in_m_popcommit,
   input  in_m_poprollback,
   input  in_m_pushvalid,
   input  [7:0] in_m_pushdata_data,
   input  [3:0] in_m_pushdata_endpoint,
   input  in_unnamed,
   output [7:0] out_m_peekdata_data,
   output [3:0] out_m_peekdata_endpoint,
   output out_m_pushfull,
   output out_m_popempty);
  wire s_m_pushvalid_2;
  wire [4:0] s_put_mux1_minus_m_pushcutoff;
  reg [4:0] s_put;
  wire [3:0] s_unnamed_2;
  wire [11:0] s_unnamed_3;
  reg s_m_pushfull_2;
  wire [4:0] s_pushput;
  wire [4:0] s_getcheckpoint_mux1;
  reg [4:0] s_get;
  reg [4:0] s_getcheckpoint;
  wire [3:0] s_getcheckpoint_mux1_rewired;
  reg s_m_popempty_2;
  wire [4:0] s_popget;
  reg [4:0] s_pushget;
  reg [4:0] s_popput;
  wire [11:0] s_unnamed_4;
  wire s_popput_bit_4_eq_getcheckpoint_mux1_bit_4_and_popput_rewired_eq_getcheckpoint_mux1_rewired;
  wire [4:0] s_get_mux1;
  wire s_unnamed_5;
  wire s_unnamed_6;
  wire [11:0] scl_memory0_out_unnamed_5;
  wire [7:0] n6227_o;
  wire [3:0] n6228_o;
  wire [3:0] n6229_o;
  wire [11:0] n6230_o;
  wire [4:0] n6232_o;
  wire [4:0] n6233_o;
  wire [4:0] n6234_o;
  wire [4:0] n6236_o;
  wire [4:0] n6237_o;
  wire [4:0] n6238_o;
  wire [4:0] n6239_o;
  wire [3:0] n6240_o;
  wire n6242_o;
  wire n6243_o;
  wire n6244_o;
  wire n6251_o;
  wire [3:0] n6253_o;
  wire n6254_o;
  wire n6261_o;
  wire n6262_o;
  wire n6263_o;
  wire n6264_o;
  wire n6266_o;
  wire n6267_o;
  wire n6268_o;
  wire n6275_o;
  wire [3:0] n6277_o;
  wire [3:0] n6278_o;
  wire n6279_o;
  wire n6286_o;
  wire n6287_o;
  wire n6294_o;
  reg [4:0] n6319_q;
  reg n6320_q;
  reg [4:0] n6321_q;
  wire [4:0] n6322_o;
  reg [4:0] n6323_q;
  reg n6324_q;
  reg [4:0] n6325_q;
  reg [4:0] n6326_q;
  assign out_m_peekdata_data = n6227_o;
  assign out_m_peekdata_endpoint = n6228_o;
  assign out_m_pushfull = s_m_pushfull_2;
  assign out_m_popempty = s_m_popempty_2;
  /* find_the_damn_issue_sky130.vhd:207:16  */
  assign s_m_pushvalid_2 = in_m_pushvalid; // (signal)
  /* find_the_damn_issue_sky130.vhd:208:16  */
  assign s_put_mux1_minus_m_pushcutoff = n6234_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:209:16  */
  always @*
    s_put = n6319_q; // (isignal)
  initial
    s_put = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:210:16  */
  assign s_unnamed_2 = n6229_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:211:16  */
  assign s_unnamed_3 = n6230_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:212:16  */
  always @*
    s_m_pushfull_2 = n6320_q; // (isignal)
  initial
    s_m_pushfull_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:213:16  */
  assign s_pushput = n6234_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:214:16  */
  assign s_getcheckpoint_mux1 = n6238_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:215:16  */
  always @*
    s_get = n6321_q; // (isignal)
  initial
    s_get = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:216:16  */
  always @*
    s_getcheckpoint = n6323_q; // (isignal)
  initial
    s_getcheckpoint = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:217:16  */
  assign s_getcheckpoint_mux1_rewired = n6240_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:218:16  */
  always @*
    s_m_popempty_2 = n6324_q; // (isignal)
  initial
    s_m_popempty_2 = 1'b1;
  /* find_the_damn_issue_sky130.vhd:219:16  */
  assign s_popget = n6239_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:220:16  */
  always @*
    s_pushget = n6325_q; // (isignal)
  initial
    s_pushget = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:221:16  */
  always @*
    s_popput = n6326_q; // (isignal)
  initial
    s_popput = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:222:16  */
  assign s_unnamed_4 = scl_memory0_out_unnamed_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:223:16  */
  assign s_popput_bit_4_eq_getcheckpoint_mux1_bit_4_and_popput_rewired_eq_getcheckpoint_mux1_rewired = n6262_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:224:16  */
  assign s_get_mux1 = n6237_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:225:16  */
  assign s_unnamed_5 = n6264_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:226:16  */
  assign s_unnamed_6 = n6287_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:228:9  */
  scl_memory_3 scl_memory0 (
    .clk(clk),
    .in_unnamed(s_m_pushvalid_2),
    .in_unnamed_2(s_unnamed_2),
    .in_unnamed_3(s_unnamed_3),
    .in_unnamed_4(s_getcheckpoint_mux1_rewired),
    .out_unnamed_5(scl_memory0_out_unnamed_5));
  /* find_the_damn_issue_sky130.vhd:258:51  */
  assign n6227_o = s_unnamed_4[7:0];
  /* find_the_damn_issue_sky130.vhd:261:55  */
  assign n6228_o = s_unnamed_4[11:8];
  /* find_the_damn_issue_sky130.vhd:269:37  */
  assign n6229_o = s_put[3:0];
  /* find_the_damn_issue_sky130.vhd:270:55  */
  assign n6230_o = {in_m_pushdata_endpoint, in_m_pushdata_data};
  /* find_the_damn_issue_sky130.vhd:272:46  */
  assign n6232_o = s_put + 5'b00001;
  /* find_the_damn_issue_sky130.vhd:271:17  */
  assign n6233_o = s_m_pushvalid_2 ? n6232_o : s_put;
  /* find_the_damn_issue_sky130.vhd:276:62  */
  assign n6234_o = n6233_o - in_m_pushcutoff;
  /* find_the_damn_issue_sky130.vhd:285:46  */
  assign n6236_o = s_get + 5'b00001;
  /* find_the_damn_issue_sky130.vhd:284:17  */
  assign n6237_o = in_m_popvalid ? n6236_o : s_get;
  /* find_the_damn_issue_sky130.vhd:292:17  */
  assign n6238_o = in_m_poprollback ? s_getcheckpoint : s_get_mux1;
  /* find_the_damn_issue_sky130.vhd:299:17  */
  assign n6239_o = in_m_popcommit ? n6238_o : s_getcheckpoint;
  /* find_the_damn_issue_sky130.vhd:304:71  */
  assign n6240_o = n6238_o[3:0];
  /* find_the_damn_issue_sky130.vhd:306:135  */
  assign n6242_o = s_popput[4];
  /* find_the_damn_issue_sky130.vhd:306:163  */
  assign n6243_o = n6238_o[4];
  /* find_the_damn_issue_sky130.vhd:306:139  */
  assign n6244_o = n6242_o == n6243_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6251_o = n6244_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:306:194  */
  assign n6253_o = s_popput[3:0];
  /* find_the_damn_issue_sky130.vhd:306:207  */
  assign n6254_o = n6253_o == s_getcheckpoint_mux1_rewired;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6261_o = n6254_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:306:168  */
  assign n6262_o = n6251_o & n6261_o;
  /* find_the_damn_issue_sky130.vhd:307:50  */
  assign n6263_o = ~in_m_poprollback;
  /* find_the_damn_issue_sky130.vhd:307:44  */
  assign n6264_o = in_unnamed & n6263_o;
  /* find_the_damn_issue_sky130.vhd:309:78  */
  assign n6266_o = n6234_o[4];
  /* find_the_damn_issue_sky130.vhd:309:94  */
  assign n6267_o = s_pushget[4];
  /* find_the_damn_issue_sky130.vhd:309:82  */
  assign n6268_o = n6266_o != n6267_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6275_o = n6268_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:309:148  */
  assign n6277_o = n6234_o[3:0];
  /* find_the_damn_issue_sky130.vhd:309:172  */
  assign n6278_o = s_pushget[3:0];
  /* find_the_damn_issue_sky130.vhd:309:161  */
  assign n6279_o = n6277_o == n6278_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6286_o = n6279_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:309:99  */
  assign n6287_o = n6275_o & n6286_o;
  /* find_the_damn_issue_sky130.vhd:314:27  */
  assign n6294_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  always @(posedge clk or posedge n6294_o)
    if (n6294_o)
      n6319_q <= 5'b00000;
    else
      n6319_q <= s_put_mux1_minus_m_pushcutoff;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  always @(posedge clk or posedge n6294_o)
    if (n6294_o)
      n6320_q <= 1'b0;
    else
      n6320_q <= s_unnamed_6;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  always @(posedge clk or posedge n6294_o)
    if (n6294_o)
      n6321_q <= 5'b00000;
    else
      n6321_q <= s_getcheckpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  assign n6322_o = s_unnamed_5 ? s_get_mux1 : s_getcheckpoint;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  always @(posedge clk or posedge n6294_o)
    if (n6294_o)
      n6323_q <= 5'b00000;
    else
      n6323_q <= n6322_o;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  always @(posedge clk or posedge n6294_o)
    if (n6294_o)
      n6324_q <= 1'b1;
    else
      n6324_q <= s_popput_bit_4_eq_getcheckpoint_mux1_bit_4_and_popput_rewired_eq_getcheckpoint_mux1_rewired;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  always @(posedge clk or posedge n6294_o)
    if (n6294_o)
      n6325_q <= 5'b00000;
    else
      n6325_q <= s_popget;
  /* find_the_damn_issue_sky130.vhd:322:17  */
  always @(posedge clk or posedge n6294_o)
    if (n6294_o)
      n6326_q <= 5'b00000;
    else
      n6326_q <= s_pushput;
endmodule

module scl_streamarbiter
  (input  clk,
   input  rst_n,
   input  in_unnamed,
   input  in_m_in1_stream_valid,
   input  [7:0] in_m_in1_stream,
   input  in_m_in0_stream_valid,
   input  [7:0] in_m_in0_stream,
   input  in_m_out_ready,
   output out_const_0_mux1,
   output out_m_out_valid,
   output [7:0] out_m_out);
  reg s_locked;
  reg s_unnamed_delayed1;
  reg s_unnamed_or_m_out_valid_not_delayed1;
  wire s_unnamed_2;
  wire s_locked_not_and_unnamed_or_m_out_valid_not_delayed1;
  wire s_unnamed_or_m_out_valid_not;
  wire s_locked_or_m_out_valid_and_unnamed_and_m_out_valid_not;
  wire n6144_o;
  wire n6145_o;
  wire n6146_o;
  wire n6148_o;
  localparam [8:0] n6149_o = 9'bX;
  wire [7:0] n6150_o;
  wire [7:0] n6151_o;
  wire n6153_o;
  wire n6155_o;
  wire n6157_o;
  wire [7:0] n6158_o;
  wire n6160_o;
  wire n6161_o;
  wire n6163_o;
  wire n6165_o;
  wire n6166_o;
  wire n6167_o;
  wire n6168_o;
  wire n6169_o;
  wire n6170_o;
  wire n6171_o;
  wire n6179_o;
  reg n6192_q;
  wire n6193_o;
  reg n6194_q;
  reg n6195_q;
  assign out_const_0_mux1 = n6165_o;
  assign out_m_out_valid = n6161_o;
  assign out_m_out = n6158_o;
  /* find_the_damn_issue_sky130.vhd:371:16  */
  always @*
    s_locked = n6192_q; // (isignal)
  initial
    s_locked = 1'b0;
  /* find_the_damn_issue_sky130.vhd:372:16  */
  always @*
    s_unnamed_delayed1 = n6194_q; // (isignal)
  initial
    s_unnamed_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:373:16  */
  always @*
    s_unnamed_or_m_out_valid_not_delayed1 = n6195_q; // (isignal)
  initial
    s_unnamed_or_m_out_valid_not_delayed1 = 1'b1;
  /* find_the_damn_issue_sky130.vhd:374:16  */
  assign s_unnamed_2 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:375:16  */
  assign s_locked_not_and_unnamed_or_m_out_valid_not_delayed1 = n6145_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:376:16  */
  assign s_unnamed_or_m_out_valid_not = n6167_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:377:16  */
  assign s_locked_or_m_out_valid_and_unnamed_and_m_out_valid_not = n6171_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:404:76  */
  assign n6144_o = ~s_locked;
  /* find_the_damn_issue_sky130.vhd:404:90  */
  assign n6145_o = n6144_o & s_unnamed_or_m_out_valid_not_delayed1;
  /* find_the_damn_issue_sky130.vhd:405:17  */
  assign n6146_o = s_locked_not_and_unnamed_or_m_out_valid_not_delayed1 ? s_unnamed_2 : s_unnamed_delayed1;
  /* find_the_damn_issue_sky130.vhd:411:34  */
  assign n6148_o = n6146_o == 1'b0;
  /* find_the_damn_issue_sky130.vhd:414:65  */
  assign n6150_o = n6149_o[7:0];
  /* find_the_damn_issue_sky130.vhd:411:17  */
  assign n6151_o = n6148_o ? in_m_in0_stream : n6150_o;
  /* find_the_damn_issue_sky130.vhd:416:34  */
  assign n6153_o = n6146_o == 1'b0;
  /* find_the_damn_issue_sky130.vhd:416:17  */
  assign n6155_o = n6153_o ? in_m_in0_stream_valid : 1'b0;
  /* find_the_damn_issue_sky130.vhd:421:34  */
  assign n6157_o = n6146_o == 1'b1;
  /* find_the_damn_issue_sky130.vhd:421:17  */
  assign n6158_o = n6157_o ? in_m_in1_stream : n6151_o;
  /* find_the_damn_issue_sky130.vhd:426:34  */
  assign n6160_o = n6146_o == 1'b1;
  /* find_the_damn_issue_sky130.vhd:426:17  */
  assign n6161_o = n6160_o ? in_m_in1_stream_valid : n6155_o;
  /* find_the_damn_issue_sky130.vhd:431:34  */
  assign n6163_o = n6146_o == 1'b1;
  /* find_the_damn_issue_sky130.vhd:431:17  */
  assign n6165_o = n6163_o ? in_m_out_ready : 1'b0;
  /* find_the_damn_issue_sky130.vhd:438:70  */
  assign n6166_o = ~n6161_o;
  /* find_the_damn_issue_sky130.vhd:438:65  */
  assign n6167_o = in_m_out_ready | n6166_o;
  /* find_the_damn_issue_sky130.vhd:439:107  */
  assign n6168_o = n6161_o & in_m_out_ready;
  /* find_the_damn_issue_sky130.vhd:439:87  */
  assign n6169_o = s_locked | n6168_o;
  /* find_the_damn_issue_sky130.vhd:439:134  */
  assign n6170_o = ~n6161_o;
  /* find_the_damn_issue_sky130.vhd:439:128  */
  assign n6171_o = n6169_o & n6170_o;
  /* find_the_damn_issue_sky130.vhd:444:27  */
  assign n6179_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:448:17  */
  always @(posedge clk or posedge n6179_o)
    if (n6179_o)
      n6192_q <= 1'b0;
    else
      n6192_q <= s_locked_or_m_out_valid_and_unnamed_and_m_out_valid_not;
  /* find_the_damn_issue_sky130.vhd:448:17  */
  assign n6193_o = s_locked_not_and_unnamed_or_m_out_valid_not_delayed1 ? s_unnamed_2 : s_unnamed_delayed1;
  /* find_the_damn_issue_sky130.vhd:448:17  */
  always @(posedge clk or posedge n6179_o)
    if (n6179_o)
      n6194_q <= 1'b0;
    else
      n6194_q <= n6193_o;
  /* find_the_damn_issue_sky130.vhd:448:17  */
  always @(posedge clk or posedge n6179_o)
    if (n6179_o)
      n6195_q <= 1'b1;
    else
      n6195_q <= s_unnamed_or_m_out_valid_not;
endmodule

module scl_uartrx
  (input  clk,
   input  rst_n,
   input  [23:0] in_baudrate,
   input  in_rx,
   output out_out_valid,
   output [7:0] out_out);
  wire s_rx_2;
  wire s_out_2;
  wire [1:0] s_start_mux5;
  reg [1:0] s_state;
  reg s_rx_delayed1;
  wire s_settohalf;
  wire s_unnamed;
  wire [2:0] s_m_value;
  wire s_m_last;
  wire s_out_valid_2;
  wire [7:0] s_out_3;
  wire [7:0] s_rx_out_rewired_mux1;
  wire s_baud_and_state_eq_data;
  wire s_const_0_mux1;
  wire s_state_eq_wait;
  wire scl_baudrategenerator0_out_out;
  wire n5991_o;
  wire n5998_o;
  wire n5999_o;
  wire [6:0] n6000_o;
  wire [7:0] n6001_o;
  wire n6003_o;
  wire [5:0] n6004_o;
  wire [6:0] n6005_o;
  wire n6006_o;
  wire [7:0] n6007_o;
  wire n6009_o;
  wire [4:0] n6010_o;
  wire [5:0] n6011_o;
  wire [1:0] n6012_o;
  wire [7:0] n6013_o;
  wire n6015_o;
  wire [3:0] n6016_o;
  wire [4:0] n6017_o;
  wire [2:0] n6018_o;
  wire [7:0] n6019_o;
  wire n6021_o;
  wire [2:0] n6022_o;
  wire [3:0] n6023_o;
  wire [3:0] n6024_o;
  wire [7:0] n6025_o;
  wire n6027_o;
  wire [1:0] n6028_o;
  wire [2:0] n6029_o;
  wire [4:0] n6030_o;
  wire [7:0] n6031_o;
  wire n6033_o;
  wire n6034_o;
  wire [1:0] n6035_o;
  wire [5:0] n6036_o;
  wire [7:0] n6037_o;
  wire n6039_o;
  wire [6:0] n6040_o;
  wire [7:0] n6041_o;
  wire n6043_o;
  wire [7:0] n6044_o;
  reg [7:0] n6046_o;
  wire n6047_o;
  wire n6050_o;
  wire n6053_o;
  wire n6060_o;
  wire n6061_o;
  wire n6062_o;
  wire n6063_o;
  wire n6066_o;
  wire n6067_o;
  wire n6068_o;
  wire n6069_o;
  wire [1:0] n6071_o;
  wire n6072_o;
  wire n6074_o;
  wire n6075_o;
  wire n6076_o;
  wire [1:0] n6078_o;
  wire n6079_o;
  wire n6080_o;
  wire n6082_o;
  wire n6083_o;
  wire n6084_o;
  wire [1:0] n6086_o;
  wire [1:0] n6088_o;
  wire n6090_o;
  wire n6091_o;
  wire n6092_o;
  wire [1:0] n6094_o;
  wire n6105_o;
  wire [2:0] scl_counter0_out_m_value;
  wire scl_counter0_out_m_last;
  reg [1:0] n6117_q;
  wire n6118_o;
  reg n6119_q;
  reg n6120_q;
  wire [7:0] n6121_o;
  reg [7:0] n6122_q;
  assign out_out_valid = s_out_valid_2;
  assign out_out = s_out_3;
  /* find_the_damn_issue_sky130.vhd:617:16  */
  assign s_rx_2 = in_rx; // (signal)
  /* find_the_damn_issue_sky130.vhd:618:16  */
  assign s_out_2 = scl_baudrategenerator0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:619:16  */
  assign s_start_mux5 = n6094_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:620:16  */
  always @*
    s_state = n6117_q; // (isignal)
  initial
    s_state = 2'b00;
  /* find_the_damn_issue_sky130.vhd:621:16  */
  always @*
    s_rx_delayed1 = n6119_q; // (isignal)
  initial
    s_rx_delayed1 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:622:16  */
  assign s_settohalf = n6066_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:623:16  */
  assign s_unnamed = n5999_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:624:16  */
  assign s_m_value = scl_counter0_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:625:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:626:16  */
  assign s_out_valid_2 = n6120_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:627:16  */
  assign s_out_3 = n6122_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:628:16  */
  assign s_rx_out_rewired_mux1 = n6046_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:629:16  */
  assign s_baud_and_state_eq_data = s_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:630:16  */
  assign s_const_0_mux1 = n6050_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:631:16  */
  assign s_state_eq_wait = n6060_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:633:9  */
  scl_baudrategenerator_2 scl_baudrategenerator0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_baudrate(in_baudrate),
    .in_settohalf(s_settohalf),
    .out_out(scl_baudrategenerator0_out_out));
  /* find_the_damn_issue_sky130.vhd:665:64  */
  assign n5991_o = s_state == 2'b10;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n5998_o = n5991_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:665:38  */
  assign n5999_o = s_out_2 & n5998_o;
  /* find_the_damn_issue_sky130.vhd:669:72  */
  assign n6000_o = s_out_3[7:1];
  /* find_the_damn_issue_sky130.vhd:669:85  */
  assign n6001_o = {n6000_o, s_rx_2};
  /* find_the_damn_issue_sky130.vhd:669:25  */
  assign n6003_o = s_m_value == 3'b000;
  /* find_the_damn_issue_sky130.vhd:670:72  */
  assign n6004_o = s_out_3[7:2];
  /* find_the_damn_issue_sky130.vhd:670:85  */
  assign n6005_o = {n6004_o, s_rx_2};
  /* find_the_damn_issue_sky130.vhd:670:103  */
  assign n6006_o = s_out_3[0];
  /* find_the_damn_issue_sky130.vhd:670:94  */
  assign n6007_o = {n6005_o, n6006_o};
  /* find_the_damn_issue_sky130.vhd:670:25  */
  assign n6009_o = s_m_value == 3'b001;
  /* find_the_damn_issue_sky130.vhd:671:72  */
  assign n6010_o = s_out_3[7:3];
  /* find_the_damn_issue_sky130.vhd:671:85  */
  assign n6011_o = {n6010_o, s_rx_2};
  /* find_the_damn_issue_sky130.vhd:671:103  */
  assign n6012_o = s_out_3[1:0];
  /* find_the_damn_issue_sky130.vhd:671:94  */
  assign n6013_o = {n6011_o, n6012_o};
  /* find_the_damn_issue_sky130.vhd:671:25  */
  assign n6015_o = s_m_value == 3'b010;
  /* find_the_damn_issue_sky130.vhd:672:72  */
  assign n6016_o = s_out_3[7:4];
  /* find_the_damn_issue_sky130.vhd:672:85  */
  assign n6017_o = {n6016_o, s_rx_2};
  /* find_the_damn_issue_sky130.vhd:672:103  */
  assign n6018_o = s_out_3[2:0];
  /* find_the_damn_issue_sky130.vhd:672:94  */
  assign n6019_o = {n6017_o, n6018_o};
  /* find_the_damn_issue_sky130.vhd:672:25  */
  assign n6021_o = s_m_value == 3'b011;
  /* find_the_damn_issue_sky130.vhd:673:72  */
  assign n6022_o = s_out_3[7:5];
  /* find_the_damn_issue_sky130.vhd:673:85  */
  assign n6023_o = {n6022_o, s_rx_2};
  /* find_the_damn_issue_sky130.vhd:673:103  */
  assign n6024_o = s_out_3[3:0];
  /* find_the_damn_issue_sky130.vhd:673:94  */
  assign n6025_o = {n6023_o, n6024_o};
  /* find_the_damn_issue_sky130.vhd:673:25  */
  assign n6027_o = s_m_value == 3'b100;
  /* find_the_damn_issue_sky130.vhd:674:72  */
  assign n6028_o = s_out_3[7:6];
  /* find_the_damn_issue_sky130.vhd:674:85  */
  assign n6029_o = {n6028_o, s_rx_2};
  /* find_the_damn_issue_sky130.vhd:674:103  */
  assign n6030_o = s_out_3[4:0];
  /* find_the_damn_issue_sky130.vhd:674:94  */
  assign n6031_o = {n6029_o, n6030_o};
  /* find_the_damn_issue_sky130.vhd:674:25  */
  assign n6033_o = s_m_value == 3'b101;
  /* find_the_damn_issue_sky130.vhd:675:72  */
  assign n6034_o = s_out_3[7];
  /* find_the_damn_issue_sky130.vhd:675:85  */
  assign n6035_o = {n6034_o, s_rx_2};
  /* find_the_damn_issue_sky130.vhd:675:103  */
  assign n6036_o = s_out_3[5:0];
  /* find_the_damn_issue_sky130.vhd:675:94  */
  assign n6037_o = {n6035_o, n6036_o};
  /* find_the_damn_issue_sky130.vhd:675:25  */
  assign n6039_o = s_m_value == 3'b110;
  /* find_the_damn_issue_sky130.vhd:676:81  */
  assign n6040_o = s_out_3[6:0];
  /* find_the_damn_issue_sky130.vhd:676:72  */
  assign n6041_o = {s_rx_2, n6040_o};
  /* find_the_damn_issue_sky130.vhd:676:25  */
  assign n6043_o = s_m_value == 3'b111;
  assign n6044_o = {n6043_o, n6039_o, n6033_o, n6027_o, n6021_o, n6015_o, n6009_o, n6003_o};
  /* find_the_damn_issue_sky130.vhd:668:17  */
  always @*
    case (n6044_o)
      8'b10000000: n6046_o = n6041_o;
      8'b01000000: n6046_o = n6037_o;
      8'b00100000: n6046_o = n6031_o;
      8'b00010000: n6046_o = n6025_o;
      8'b00001000: n6046_o = n6019_o;
      8'b00000100: n6046_o = n6013_o;
      8'b00000010: n6046_o = n6007_o;
      8'b00000001: n6046_o = n6001_o;
      default: n6046_o = 8'bX;
    endcase
  /* find_the_damn_issue_sky130.vhd:681:56  */
  assign n6047_o = s_m_last & s_baud_and_state_eq_data;
  /* find_the_damn_issue_sky130.vhd:682:17  */
  assign n6050_o = n6047_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:688:58  */
  assign n6053_o = s_state == 2'b00;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n6060_o = n6053_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:689:24  */
  assign n6061_o = ~s_rx_2;
  /* find_the_damn_issue_sky130.vhd:689:42  */
  assign n6062_o = n6061_o & s_rx_delayed1;
  /* find_the_damn_issue_sky130.vhd:689:67  */
  assign n6063_o = n6062_o & s_state_eq_wait;
  /* find_the_damn_issue_sky130.vhd:689:17  */
  assign n6066_o = n6063_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:694:24  */
  assign n6067_o = ~s_rx_2;
  /* find_the_damn_issue_sky130.vhd:694:42  */
  assign n6068_o = n6067_o & s_rx_delayed1;
  /* find_the_damn_issue_sky130.vhd:694:67  */
  assign n6069_o = n6068_o & s_state_eq_wait;
  /* find_the_damn_issue_sky130.vhd:694:17  */
  assign n6071_o = n6069_o ? 2'b01 : s_state;
  /* find_the_damn_issue_sky130.vhd:699:23  */
  assign n6072_o = ~s_rx_2;
  /* find_the_damn_issue_sky130.vhd:699:72  */
  assign n6074_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:699:59  */
  assign n6075_o = s_out_2 & n6074_o;
  /* find_the_damn_issue_sky130.vhd:699:41  */
  assign n6076_o = n6072_o & n6075_o;
  /* find_the_damn_issue_sky130.vhd:699:17  */
  assign n6078_o = n6076_o ? 2'b10 : n6071_o;
  /* find_the_damn_issue_sky130.vhd:704:29  */
  assign n6079_o = ~s_rx_2;
  /* find_the_damn_issue_sky130.vhd:704:23  */
  assign n6080_o = ~n6079_o;
  /* find_the_damn_issue_sky130.vhd:704:79  */
  assign n6082_o = s_state == 2'b01;
  /* find_the_damn_issue_sky130.vhd:704:66  */
  assign n6083_o = s_out_2 & n6082_o;
  /* find_the_damn_issue_sky130.vhd:704:48  */
  assign n6084_o = n6080_o & n6083_o;
  /* find_the_damn_issue_sky130.vhd:704:17  */
  assign n6086_o = n6084_o ? 2'b00 : n6078_o;
  /* find_the_damn_issue_sky130.vhd:709:17  */
  assign n6088_o = n6047_o ? 2'b11 : n6086_o;
  /* find_the_damn_issue_sky130.vhd:714:65  */
  assign n6090_o = s_state == 2'b11;
  /* find_the_damn_issue_sky130.vhd:714:52  */
  assign n6091_o = s_out_2 & n6090_o;
  /* find_the_damn_issue_sky130.vhd:714:34  */
  assign n6092_o = s_rx_2 & n6091_o;
  /* find_the_damn_issue_sky130.vhd:714:17  */
  assign n6094_o = n6092_o ? 2'b00 : n6088_o;
  /* find_the_damn_issue_sky130.vhd:735:27  */
  assign n6105_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:746:9  */
  scl_counter_16 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed),
    .out_m_value(scl_counter0_out_m_value),
    .out_m_last(scl_counter0_out_m_last));
  /* find_the_damn_issue_sky130.vhd:738:17  */
  always @(posedge clk or posedge n6105_o)
    if (n6105_o)
      n6117_q <= 2'b00;
    else
      n6117_q <= s_start_mux5;
  /* find_the_damn_issue_sky130.vhd:738:17  */
  assign n6118_o = s_state_eq_wait ? s_rx_2 : s_rx_delayed1;
  /* find_the_damn_issue_sky130.vhd:738:17  */
  always @(posedge clk or posedge n6105_o)
    if (n6105_o)
      n6119_q <= 1'b0;
    else
      n6119_q <= n6118_o;
  /* find_the_damn_issue_sky130.vhd:725:17  */
  always @(posedge clk)
    n6120_q <= s_const_0_mux1;
  /* find_the_damn_issue_sky130.vhd:725:17  */
  assign n6121_o = s_baud_and_state_eq_data ? s_rx_out_rewired_mux1 : s_out_3;
  /* find_the_damn_issue_sky130.vhd:725:17  */
  always @(posedge clk)
    n6122_q <= n6121_o;
endmodule

module scl_bitbangengine
  (input  clk,
   input  rst_n,
   input  in_command_ready,
   input  in_command_valid,
   input  [7:0] in_command,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  in_unnamed_4,
   input  in_unnamed_5,
   input  in_unnamed_6,
   input  in_unnamed_7,
   input  in_unnamed_8,
   input  in_unnamed_9,
   input  in_unnamed_10,
   input  in_unnamed_11,
   input  in_unnamed_12,
   input  in_unnamed_13,
   input  in_unnamed_14,
   input  in_unnamed_15,
   output out_const_0_mux13,
   output out_m_io0_out,
   output out_m_io0_en,
   output out_m_io0_opendrain,
   output out_m_io1_out,
   output out_m_io1_en,
   output out_m_io1_opendrain,
   output out_m_io2_out,
   output out_m_io2_en,
   output out_m_io2_opendrain,
   output out_m_io3_out,
   output out_m_io3_en,
   output out_m_io3_opendrain,
   output out_m_io4_out,
   output out_m_io4_en,
   output out_m_io4_opendrain,
   output out_m_io5_out,
   output out_m_io5_en,
   output out_m_io5_opendrain,
   output out_m_io8_out,
   output out_m_io9_out,
   output out_m_io10_out,
   output out_m_io11_out,
   output out_m_io12_out,
   output out_m_io13_out,
   output out_m_io14_out,
   output out_m_io15_out,
   output out_out_ready,
   output out_out_valid,
   output [7:0] out_out);
  wire [3:0] s_followupstate_mux1;
  reg [3:0] s_state;
  wire [3:0] s_clock_setup_mux3;
  reg [3:0] s_followupstate;
  wire s_m_last;
  wire s_tick;
  wire s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed;
  wire s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  wire s_command_rewired_eq_const_10_and_command_rewired_eq_const_0_or_command_bit_7_not_not_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  wire s_command_rewired_eq_const_110_and_unnamed_not_and_state_eq_idle_and_command_valid_and_unnamed;
  wire s_config_targetpingroup;
  wire s_config_stopclocksignal;
  wire s_config_stopclockonsignal;
  wire s_config_stopclockonlastbit;
  wire s_config_tmsoutmode;
  reg s_config_idleclockstate;
  reg s_config_dataloopback;
  wire s_config_shiftin;
  wire s_config_shiftout;
  reg s_config_clockthreephase;
  wire s_config_msbfirst;
  wire s_config_captureedge;
  wire s_config_clockdelay;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_2;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_2;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_3;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_4;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_5;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_6;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_7;
  wire s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_8;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_2;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_3;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_4;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_5;
  wire s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_6;
  wire s_carryin_mux2;
  reg s_carryin;
  wire [19:0] s_bitlength;
  reg [16:0] s_clockdiv;
  wire [16:0] s_clockdiv_2;
  reg s_toggleclockdelayed;
  wire s_toggleclock;
  wire s_setupedge;
  wire s_captureedge;
  wire [2:0] s_m_value;
  wire s_const_0;
  wire s_unnamed_16;
  wire [2:0] s_unnamed_17;
  wire [7:0] s_capturebuffer_mux1_unnamed_mux1_rewired_mux2;
  reg [7:0] s_capturebuffer;
  wire [2:0] s_m_value_2;
  wire s_const_0_2;
  wire s_unnamed_18;
  wire [2:0] s_unnamed_19;
  reg s_m_io0_out_2;
  reg s_m_io0_en_2;
  reg s_m_io0_opendrain_2;
  reg s_m_io1_out_2;
  reg s_m_io1_en_2;
  reg s_m_io1_opendrain_2;
  reg s_m_io2_out_2;
  reg s_m_io2_en_2;
  reg s_m_io2_opendrain_2;
  reg s_m_io3_out_2;
  reg s_m_io3_en_2;
  reg s_m_io3_opendrain_2;
  reg s_m_io4_out_2;
  reg s_m_io4_en_2;
  reg s_m_io4_opendrain_2;
  reg s_m_io5_out_2;
  reg s_m_io5_en_2;
  reg s_m_io5_opendrain_2;
  reg s_m_io8_out_2;
  reg s_m_io9_out_2;
  reg s_m_io10_out_2;
  reg s_m_io11_out_2;
  reg s_m_io12_out_2;
  reg s_m_io13_out_2;
  reg s_m_io14_out_2;
  reg s_m_io15_out_2;
  wire s_command_bit_7;
  wire s_command_bit_6;
  wire s_command_bit_5;
  wire s_command_bit_4;
  wire s_command_bit_3;
  wire s_command_bit_2;
  wire s_command_bit_1;
  wire s_command_bit_0;
  wire s_command_bit_5_2;
  wire s_state_eq_load_low_and_command_valid;
  wire s_command_bit_5_3;
  wire s_command_bit_5_4;
  wire s_command_bit_4_2;
  wire s_command_bit_4_3;
  wire s_m_io4_out_mux2;
  wire s_command_bit_3_2;
  wire s_command_bit_3_3;
  wire s_m_io3_out_mux2_xor_toggleclockdelayed_mux2;
  wire s_command_bit_2_2;
  wire s_command_bit_2_3;
  wire s_m_io2_out_mux2;
  wire s_command_bit_1_2;
  wire s_command_bit_1_3;
  wire s_command_bit_0_mux3;
  wire s_command_bit_0_2;
  wire s_command_bit_0_3;
  wire s_m_io0_out_mux2;
  wire [2:0] s_const_xxx;
  wire [2:0] s_const_xxx_2;
  wire [16:0] s_clockdiv_mux1_cmdinc_rewired_mux1;
  wire [19:0] s_cmdinc_bitlength_mux2_rewired_mux1_cmdinc_rewired_mux1_cmdinc_rewired_mux1;
  wire s_command_bit_3_4;
  wire s_config_clockdelay_mux2;
  wire s_command_bit_0_neq_command_bit_2;
  wire s_command_bit_3_not;
  wire s_command_bit_0_not;
  wire s_config_shiftout_mux2;
  wire s_config_shiftin_mux2;
  wire s_command_bit_0_not_2;
  wire s_config_tmsoutmode_mux2;
  wire s_config_stopclockonlastbit_mux3;
  wire s_config_stopclockonsignal_mux3;
  wire s_config_stopclocksignal_mux3;
  wire s_command_bit_1_4;
  wire scl_counter0_out_m_last;
  wire n3167_o;
  wire n3168_o;
  wire n3169_o;
  wire n3172_o;
  wire n3174_o;
  wire n3175_o;
  wire n3176_o;
  wire [3:0] n3178_o;
  wire n3179_o;
  wire n3180_o;
  wire n3183_o;
  wire n3190_o;
  wire n3191_o;
  wire n3192_o;
  wire n3193_o;
  wire [3:0] n3195_o;
  wire [3:0] n3197_o;
  wire n3198_o;
  wire n3199_o;
  wire [3:0] n3201_o;
  wire [4:0] n3203_o;
  wire n3205_o;
  wire n3212_o;
  wire n3213_o;
  wire n3214_o;
  wire n3215_o;
  wire n3218_o;
  wire n3225_o;
  wire n3226_o;
  wire n3227_o;
  wire n3228_o;
  wire n3229_o;
  wire n3230_o;
  wire n3231_o;
  wire [7:0] n3234_o;
  wire n3235_o;
  wire n3236_o;
  wire n3239_o;
  wire n3240_o;
  wire n3241_o;
  wire n3242_o;
  wire [3:0] n3244_o;
  wire n3246_o;
  wire n3247_o;
  wire n3248_o;
  wire n3250_o;
  wire n3252_o;
  wire n3253_o;
  wire n3254_o;
  wire n3256_o;
  wire n3257_o;
  wire n3258_o;
  wire n3259_o;
  wire n3260_o;
  wire n3262_o;
  wire n3263_o;
  wire n3264_o;
  wire n3266_o;
  wire n3267_o;
  wire n3268_o;
  wire n3270_o;
  wire n3271_o;
  wire n3272_o;
  wire n3274_o;
  wire n3275_o;
  wire n3276_o;
  wire n3278_o;
  wire n3279_o;
  wire n3280_o;
  wire n3282_o;
  wire n3284_o;
  wire n3285_o;
  wire n3286_o;
  wire n3288_o;
  wire n3289_o;
  wire n3292_o;
  wire n3299_o;
  wire n3302_o;
  wire n3309_o;
  wire n3310_o;
  wire n3311_o;
  wire n3314_o;
  wire n3321_o;
  wire n3324_o;
  wire n3331_o;
  wire n3332_o;
  wire n3333_o;
  wire n3336_o;
  wire n3343_o;
  wire n3346_o;
  wire n3353_o;
  wire n3354_o;
  wire n3355_o;
  wire n3358_o;
  wire n3365_o;
  wire n3368_o;
  wire n3375_o;
  wire n3376_o;
  wire n3377_o;
  wire n3380_o;
  wire n3387_o;
  wire n3390_o;
  wire n3397_o;
  wire n3398_o;
  wire n3399_o;
  wire n3402_o;
  wire n3409_o;
  wire n3412_o;
  wire n3419_o;
  wire n3420_o;
  wire n3421_o;
  wire n3424_o;
  wire n3431_o;
  wire n3434_o;
  wire n3441_o;
  wire n3442_o;
  wire n3443_o;
  wire n3446_o;
  wire n3453_o;
  wire n3456_o;
  wire n3463_o;
  wire n3464_o;
  wire n3465_o;
  wire n3468_o;
  wire n3475_o;
  wire n3478_o;
  wire n3485_o;
  wire n3486_o;
  wire n3487_o;
  wire n3490_o;
  wire n3497_o;
  wire n3500_o;
  wire n3507_o;
  wire n3508_o;
  wire n3509_o;
  wire n3512_o;
  wire n3519_o;
  wire n3522_o;
  wire n3529_o;
  wire n3530_o;
  wire n3531_o;
  wire n3534_o;
  wire n3541_o;
  wire n3544_o;
  wire n3551_o;
  wire n3552_o;
  wire n3553_o;
  wire n3556_o;
  wire n3563_o;
  wire n3566_o;
  wire n3573_o;
  wire n3574_o;
  wire n3575_o;
  wire n3578_o;
  wire n3585_o;
  wire n3588_o;
  wire n3595_o;
  wire n3596_o;
  wire n3597_o;
  wire n3600_o;
  wire n3607_o;
  wire n3610_o;
  wire n3617_o;
  wire n3618_o;
  wire n3619_o;
  wire n3622_o;
  wire n3629_o;
  wire n3632_o;
  wire n3639_o;
  wire n3640_o;
  wire n3641_o;
  wire [8:0] n3643_o;
  wire [8:0] n3645_o;
  wire [8:0] n3646_o;
  wire n3648_o;
  wire n3649_o;
  wire n3650_o;
  wire n3651_o;
  wire n3653_o;
  wire n3654_o;
  wire n3656_o;
  wire n3658_o;
  wire n3660_o;
  wire n3661_o;
  wire n3662_o;
  wire [8:0] n3663_o;
  wire [7:0] n3664_o;
  wire [16:0] n3665_o;
  wire [16:0] n3666_o;
  wire n3669_o;
  wire n3676_o;
  wire n3677_o;
  wire n3679_o;
  wire n3686_o;
  wire n3687_o;
  wire n3688_o;
  wire n3689_o;
  wire n3690_o;
  wire n3691_o;
  wire n3692_o;
  wire n3694_o;
  wire n3695_o;
  wire n3696_o;
  wire n3697_o;
  wire [19:0] n3699_o;
  wire [19:0] n3700_o;
  wire n3702_o;
  wire n3703_o;
  wire n3704_o;
  wire [19:0] n3706_o;
  wire n3709_o;
  wire n3716_o;
  wire n3717_o;
  wire n3718_o;
  wire n3719_o;
  wire n3720_o;
  wire [2:0] n3723_o;
  wire n3724_o;
  wire [2:0] n3726_o;
  wire [2:0] n3727_o;
  wire [1:0] n3728_o;
  wire [2:0] n3729_o;
  wire [2:0] n3730_o;
  wire n3731_o;
  wire n3733_o;
  wire n3734_o;
  wire n3736_o;
  wire n3737_o;
  wire n3739_o;
  wire n3740_o;
  wire n3742_o;
  wire n3743_o;
  wire n3745_o;
  wire n3746_o;
  wire n3748_o;
  wire n3749_o;
  wire n3751_o;
  wire n3752_o;
  wire n3754_o;
  wire [7:0] n3755_o;
  reg n3757_o;
  wire n3758_o;
  wire n3760_o;
  wire n3762_o;
  wire n3763_o;
  wire n3764_o;
  wire n3765_o;
  wire n3766_o;
  wire n3767_o;
  wire n3768_o;
  wire n3769_o;
  wire n3770_o;
  wire n3771_o;
  wire n3772_o;
  wire n3773_o;
  wire n3774_o;
  wire n3775_o;
  wire n3778_o;
  wire n3785_o;
  wire n3786_o;
  wire n3787_o;
  wire n3788_o;
  wire n3789_o;
  wire n3790_o;
  wire n3791_o;
  wire n3792_o;
  wire n3793_o;
  wire n3794_o;
  wire n3795_o;
  wire n3796_o;
  wire n3797_o;
  wire n3798_o;
  wire n3799_o;
  wire n3801_o;
  wire n3803_o;
  wire n3804_o;
  wire n3805_o;
  wire [7:0] n3806_o;
  wire [16:0] n3807_o;
  wire [16:0] n3808_o;
  wire n3810_o;
  wire n3811_o;
  wire [10:0] n3812_o;
  wire [19:0] n3813_o;
  wire [19:0] n3814_o;
  wire n3816_o;
  wire n3817_o;
  wire n3819_o;
  wire n3820_o;
  wire n3821_o;
  wire [8:0] n3822_o;
  wire [7:0] n3823_o;
  wire [16:0] n3824_o;
  wire [2:0] n3825_o;
  wire [19:0] n3826_o;
  wire [19:0] n3827_o;
  wire n3829_o;
  wire n3830_o;
  wire n3832_o;
  wire n3833_o;
  wire n3834_o;
  wire [10:0] n3835_o;
  wire [19:0] n3836_o;
  wire [19:0] n3837_o;
  wire n3838_o;
  wire n3839_o;
  wire n3841_o;
  wire n3842_o;
  wire n3849_o;
  wire n3850_o;
  wire n3851_o;
  wire n3852_o;
  wire n3854_o;
  wire n3855_o;
  wire n3856_o;
  wire n3863_o;
  wire n3864_o;
  wire n3865_o;
  wire n3866_o;
  wire n3867_o;
  wire n3868_o;
  wire n3869_o;
  wire n3870_o;
  wire n3871_o;
  wire [7:0] n3873_o;
  wire [5:0] n3874_o;
  wire [6:0] n3875_o;
  wire n3876_o;
  wire [7:0] n3877_o;
  wire [4:0] n3878_o;
  wire [5:0] n3879_o;
  wire [1:0] n3880_o;
  wire [7:0] n3881_o;
  wire [3:0] n3882_o;
  wire [4:0] n3883_o;
  wire [2:0] n3884_o;
  wire [7:0] n3885_o;
  wire [2:0] n3886_o;
  wire [3:0] n3887_o;
  wire [3:0] n3888_o;
  wire [7:0] n3889_o;
  wire [1:0] n3890_o;
  wire [2:0] n3891_o;
  wire [4:0] n3892_o;
  wire [7:0] n3893_o;
  wire n3894_o;
  wire [1:0] n3896_o;
  wire [5:0] n3897_o;
  wire [7:0] n3898_o;
  wire [6:0] n3899_o;
  wire [5:0] n3900_o;
  wire n3903_o;
  wire n3910_o;
  wire [4:0] n3912_o;
  wire n3914_o;
  wire n3921_o;
  wire n3922_o;
  wire n3923_o;
  wire n3924_o;
  wire n3925_o;
  wire n3926_o;
  wire n3927_o;
  wire n3930_o;
  wire n3937_o;
  wire n3938_o;
  wire n3939_o;
  wire n3940_o;
  wire n3941_o;
  wire n3943_o;
  wire n3945_o;
  wire [4:0] n3946_o;
  wire n3948_o;
  wire n3949_o;
  wire n3950_o;
  wire n3951_o;
  wire n3952_o;
  wire n3953_o;
  wire n3954_o;
  wire n3955_o;
  wire n3956_o;
  wire n3957_o;
  wire n3959_o;
  wire n3960_o;
  wire n3961_o;
  wire n3962_o;
  wire n3963_o;
  wire [3:0] n3965_o;
  wire n3967_o;
  wire n3969_o;
  wire n3971_o;
  wire n3973_o;
  wire [4:0] n3974_o;
  wire n3976_o;
  wire n3977_o;
  wire n3978_o;
  wire n3979_o;
  wire n3980_o;
  wire n3981_o;
  wire n3982_o;
  wire n3983_o;
  wire n3984_o;
  wire n3985_o;
  wire n3986_o;
  wire n3987_o;
  wire n3988_o;
  wire n3989_o;
  wire n3990_o;
  wire n3991_o;
  wire n3993_o;
  wire n3994_o;
  wire n3995_o;
  wire n3996_o;
  wire n3997_o;
  wire n3998_o;
  wire n3999_o;
  wire n4000_o;
  wire n4002_o;
  wire n4004_o;
  wire n4006_o;
  wire n4008_o;
  wire [4:0] n4009_o;
  wire n4011_o;
  wire n4012_o;
  wire n4013_o;
  wire n4014_o;
  wire n4015_o;
  wire n4016_o;
  wire n4017_o;
  wire n4018_o;
  wire n4019_o;
  wire n4020_o;
  wire n4021_o;
  wire n4022_o;
  wire n4023_o;
  wire n4024_o;
  wire n4025_o;
  wire n4026_o;
  wire n4028_o;
  wire n4029_o;
  wire n4030_o;
  wire n4031_o;
  wire n4032_o;
  wire [3:0] n4034_o;
  wire n4037_o;
  wire n4044_o;
  wire n4047_o;
  wire n4054_o;
  wire n4057_o;
  wire n4064_o;
  wire n4067_o;
  wire n4074_o;
  wire n4077_o;
  wire n4084_o;
  wire [4:0] n4086_o;
  wire n4088_o;
  wire n4095_o;
  wire n4096_o;
  wire n4097_o;
  wire n4098_o;
  wire n4099_o;
  wire n4100_o;
  wire n4101_o;
  wire n4102_o;
  wire n4103_o;
  wire n4104_o;
  wire n4105_o;
  wire n4106_o;
  wire n4107_o;
  wire n4108_o;
  wire n4109_o;
  wire n4110_o;
  wire n4111_o;
  wire n4112_o;
  wire n4113_o;
  wire n4116_o;
  wire n4123_o;
  wire n4124_o;
  wire n4125_o;
  wire n4126_o;
  wire n4127_o;
  wire n4129_o;
  wire n4131_o;
  wire n4133_o;
  wire n4135_o;
  wire n4137_o;
  wire n4139_o;
  wire [4:0] n4140_o;
  wire n4142_o;
  wire n4143_o;
  wire n4144_o;
  wire n4145_o;
  wire n4146_o;
  wire n4147_o;
  wire n4148_o;
  wire n4149_o;
  wire n4150_o;
  wire n4151_o;
  wire n4152_o;
  wire n4153_o;
  wire n4154_o;
  wire n4155_o;
  wire n4156_o;
  wire n4157_o;
  wire n4158_o;
  wire n4159_o;
  wire n4160_o;
  wire n4161_o;
  wire n4162_o;
  wire n4163_o;
  wire n4165_o;
  wire n4166_o;
  wire n4167_o;
  wire n4168_o;
  wire n4169_o;
  wire [3:0] n4171_o;
  wire n4173_o;
  wire n4175_o;
  wire n4177_o;
  wire n4179_o;
  wire n4181_o;
  wire n4183_o;
  wire [4:0] n4184_o;
  wire n4186_o;
  wire n4187_o;
  wire n4188_o;
  wire n4189_o;
  wire n4190_o;
  wire n4191_o;
  wire n4192_o;
  wire n4193_o;
  wire n4194_o;
  wire n4195_o;
  wire n4196_o;
  wire n4197_o;
  wire n4198_o;
  wire n4199_o;
  wire n4200_o;
  wire n4201_o;
  wire n4202_o;
  wire n4203_o;
  wire n4204_o;
  wire n4205_o;
  wire n4206_o;
  wire n4207_o;
  wire n4209_o;
  wire n4210_o;
  wire n4211_o;
  wire n4212_o;
  wire n4213_o;
  wire [3:0] n4215_o;
  wire n4216_o;
  wire n4218_o;
  wire n4220_o;
  wire n4222_o;
  wire n4224_o;
  wire n4226_o;
  wire n4228_o;
  wire [4:0] n4229_o;
  wire n4231_o;
  wire n4232_o;
  wire n4233_o;
  wire n4234_o;
  wire n4235_o;
  wire n4236_o;
  wire n4237_o;
  wire n4238_o;
  wire n4239_o;
  wire n4240_o;
  wire n4241_o;
  wire n4242_o;
  wire n4243_o;
  wire n4244_o;
  wire n4245_o;
  wire n4246_o;
  wire n4247_o;
  wire n4248_o;
  wire n4249_o;
  wire n4250_o;
  wire n4251_o;
  wire n4252_o;
  wire n4254_o;
  wire n4255_o;
  wire n4256_o;
  wire n4257_o;
  wire n4258_o;
  wire n4259_o;
  wire [3:0] n4261_o;
  wire n4263_o;
  wire n4265_o;
  wire n4267_o;
  wire n4269_o;
  wire n4271_o;
  wire n4273_o;
  wire n4275_o;
  wire [4:0] n4276_o;
  wire n4278_o;
  wire n4279_o;
  wire n4280_o;
  wire n4281_o;
  wire n4282_o;
  wire n4283_o;
  wire n4284_o;
  wire n4285_o;
  wire n4286_o;
  wire n4287_o;
  wire n4288_o;
  wire n4289_o;
  wire n4290_o;
  wire n4291_o;
  wire n4292_o;
  wire n4293_o;
  wire n4294_o;
  wire n4295_o;
  wire n4296_o;
  wire n4297_o;
  wire n4298_o;
  wire n4299_o;
  wire n4300_o;
  wire n4301_o;
  wire n4302_o;
  wire n4304_o;
  wire n4305_o;
  wire n4306_o;
  wire n4307_o;
  wire n4308_o;
  wire n4310_o;
  wire n4312_o;
  wire n4314_o;
  wire n4316_o;
  wire n4318_o;
  wire n4320_o;
  wire n4322_o;
  wire n4324_o;
  wire [4:0] n4325_o;
  wire n4327_o;
  wire n4328_o;
  wire n4329_o;
  wire n4330_o;
  wire n4331_o;
  wire n4332_o;
  wire n4333_o;
  wire n4334_o;
  wire n4335_o;
  wire n4336_o;
  wire n4337_o;
  wire n4338_o;
  wire n4339_o;
  wire n4340_o;
  wire n4341_o;
  wire n4342_o;
  wire n4343_o;
  wire n4344_o;
  wire n4345_o;
  wire n4346_o;
  wire n4347_o;
  wire n4348_o;
  wire n4349_o;
  wire n4350_o;
  wire n4351_o;
  wire n4353_o;
  wire n4354_o;
  wire n4355_o;
  wire n4356_o;
  wire n4357_o;
  wire n4359_o;
  wire n4361_o;
  wire n4363_o;
  wire n4365_o;
  wire n4367_o;
  wire n4369_o;
  wire n4371_o;
  wire n4373_o;
  wire [4:0] n4374_o;
  wire n4376_o;
  wire n4377_o;
  wire n4378_o;
  wire n4379_o;
  wire n4380_o;
  wire n4381_o;
  wire n4382_o;
  wire n4383_o;
  wire n4384_o;
  wire n4385_o;
  wire n4386_o;
  wire n4387_o;
  wire n4388_o;
  wire n4389_o;
  wire n4390_o;
  wire n4391_o;
  wire n4392_o;
  wire n4393_o;
  wire n4394_o;
  wire n4395_o;
  wire n4396_o;
  wire n4397_o;
  wire n4398_o;
  wire n4399_o;
  wire n4400_o;
  wire n4402_o;
  wire n4403_o;
  wire n4404_o;
  wire n4405_o;
  wire n4406_o;
  wire n4407_o;
  wire n4408_o;
  wire n4409_o;
  wire n4411_o;
  wire n4413_o;
  wire n4415_o;
  wire n4417_o;
  wire n4419_o;
  wire n4421_o;
  wire n4423_o;
  wire [4:0] n4424_o;
  wire n4426_o;
  wire n4427_o;
  wire n4428_o;
  wire n4429_o;
  wire n4430_o;
  wire n4431_o;
  wire n4432_o;
  wire n4433_o;
  wire n4434_o;
  wire n4435_o;
  wire n4436_o;
  wire n4437_o;
  wire n4438_o;
  wire n4439_o;
  wire n4440_o;
  wire n4441_o;
  wire n4442_o;
  wire n4443_o;
  wire n4444_o;
  wire n4445_o;
  wire n4446_o;
  wire n4447_o;
  wire n4448_o;
  wire n4449_o;
  wire n4450_o;
  wire n4452_o;
  wire n4453_o;
  wire n4454_o;
  wire n4455_o;
  wire n4456_o;
  wire [3:0] n4458_o;
  wire n4460_o;
  wire n4462_o;
  wire n4464_o;
  wire n4466_o;
  wire n4468_o;
  wire n4470_o;
  wire n4472_o;
  wire n4474_o;
  wire [4:0] n4475_o;
  wire n4477_o;
  wire n4478_o;
  wire n4479_o;
  wire n4480_o;
  wire n4481_o;
  wire n4482_o;
  wire n4483_o;
  wire n4484_o;
  wire n4485_o;
  wire n4486_o;
  wire n4487_o;
  wire n4488_o;
  wire n4489_o;
  wire n4490_o;
  wire n4491_o;
  wire n4492_o;
  wire n4493_o;
  wire n4494_o;
  wire n4495_o;
  wire n4496_o;
  wire n4497_o;
  wire n4498_o;
  wire n4499_o;
  wire n4500_o;
  wire n4501_o;
  wire n4502_o;
  wire n4503_o;
  wire n4504_o;
  wire n4506_o;
  wire n4507_o;
  wire n4508_o;
  wire n4509_o;
  wire n4510_o;
  wire n4512_o;
  wire n4514_o;
  wire n4516_o;
  wire n4518_o;
  wire n4520_o;
  wire n4522_o;
  wire n4524_o;
  wire n4526_o;
  wire n4528_o;
  wire [4:0] n4529_o;
  wire n4531_o;
  wire n4532_o;
  wire n4533_o;
  wire n4534_o;
  wire n4535_o;
  wire n4536_o;
  wire n4537_o;
  wire n4538_o;
  wire n4539_o;
  wire n4540_o;
  wire n4541_o;
  wire n4542_o;
  wire n4543_o;
  wire n4544_o;
  wire n4545_o;
  wire n4546_o;
  wire n4547_o;
  wire n4548_o;
  wire n4549_o;
  wire n4550_o;
  wire n4551_o;
  wire n4552_o;
  wire n4553_o;
  wire n4554_o;
  wire n4555_o;
  wire n4556_o;
  wire n4557_o;
  wire n4558_o;
  wire n4560_o;
  wire n4561_o;
  wire n4562_o;
  wire n4563_o;
  wire n4564_o;
  wire n4566_o;
  wire n4568_o;
  wire n4570_o;
  wire n4572_o;
  wire n4574_o;
  wire n4576_o;
  wire n4578_o;
  wire n4580_o;
  wire n4582_o;
  wire [4:0] n4583_o;
  wire n4585_o;
  wire n4586_o;
  wire n4587_o;
  wire n4588_o;
  wire n4589_o;
  wire n4590_o;
  wire n4591_o;
  wire n4592_o;
  wire n4593_o;
  wire n4594_o;
  wire n4595_o;
  wire n4596_o;
  wire n4597_o;
  wire n4598_o;
  wire n4599_o;
  wire n4600_o;
  wire n4601_o;
  wire n4602_o;
  wire n4603_o;
  wire n4604_o;
  wire n4605_o;
  wire n4606_o;
  wire n4607_o;
  wire n4608_o;
  wire n4609_o;
  wire n4610_o;
  wire n4611_o;
  wire n4612_o;
  wire n4614_o;
  wire n4615_o;
  wire n4616_o;
  wire n4617_o;
  wire n4618_o;
  wire n4619_o;
  wire n4620_o;
  wire n4621_o;
  wire n4623_o;
  wire n4625_o;
  wire n4627_o;
  wire n4629_o;
  wire n4631_o;
  wire n4633_o;
  wire n4635_o;
  wire n4637_o;
  wire [4:0] n4638_o;
  wire n4640_o;
  wire n4641_o;
  wire n4642_o;
  wire n4643_o;
  wire n4644_o;
  wire n4645_o;
  wire n4646_o;
  wire n4647_o;
  wire n4648_o;
  wire n4649_o;
  wire n4650_o;
  wire n4651_o;
  wire n4652_o;
  wire n4653_o;
  wire n4654_o;
  wire n4655_o;
  wire n4656_o;
  wire n4657_o;
  wire n4658_o;
  wire n4659_o;
  wire n4660_o;
  wire n4661_o;
  wire n4662_o;
  wire n4663_o;
  wire n4664_o;
  wire n4665_o;
  wire n4666_o;
  wire n4667_o;
  wire n4669_o;
  wire n4670_o;
  wire n4671_o;
  wire n4672_o;
  wire n4673_o;
  wire [3:0] n4675_o;
  wire n4677_o;
  wire n4679_o;
  wire n4681_o;
  wire n4683_o;
  wire n4685_o;
  wire n4687_o;
  wire n4689_o;
  wire n4691_o;
  wire [4:0] n4692_o;
  wire n4694_o;
  wire n4695_o;
  wire n4696_o;
  wire n4697_o;
  wire n4698_o;
  wire n4699_o;
  wire n4700_o;
  wire n4701_o;
  wire n4702_o;
  wire n4703_o;
  wire n4704_o;
  wire n4705_o;
  wire n4706_o;
  wire n4707_o;
  wire n4708_o;
  wire n4709_o;
  wire n4710_o;
  wire n4711_o;
  wire n4712_o;
  wire n4713_o;
  wire n4714_o;
  wire n4715_o;
  wire n4716_o;
  wire n4717_o;
  wire n4718_o;
  wire n4719_o;
  wire n4720_o;
  wire n4721_o;
  wire n4723_o;
  wire n4724_o;
  wire n4725_o;
  wire n4726_o;
  wire n4727_o;
  wire [3:0] n4729_o;
  wire n4731_o;
  wire n4733_o;
  wire n4735_o;
  wire n4737_o;
  wire n4739_o;
  wire n4741_o;
  wire n4743_o;
  wire n4745_o;
  wire n4747_o;
  wire [4:0] n4748_o;
  wire n4750_o;
  wire n4751_o;
  wire n4752_o;
  wire n4753_o;
  wire n4754_o;
  wire n4755_o;
  wire n4756_o;
  wire n4757_o;
  wire n4758_o;
  wire n4759_o;
  wire n4760_o;
  wire n4761_o;
  wire n4762_o;
  wire n4763_o;
  wire n4764_o;
  wire n4765_o;
  wire n4766_o;
  wire n4767_o;
  wire n4768_o;
  wire n4769_o;
  wire n4770_o;
  wire n4771_o;
  wire n4772_o;
  wire n4773_o;
  wire n4774_o;
  wire n4775_o;
  wire n4776_o;
  wire n4777_o;
  wire n4778_o;
  wire n4779_o;
  wire n4780_o;
  wire n4782_o;
  wire n4783_o;
  wire n4784_o;
  wire n4785_o;
  wire n4786_o;
  wire [3:0] n4788_o;
  wire [1:0] n4789_o;
  wire n4791_o;
  wire n4793_o;
  wire n4795_o;
  wire n4797_o;
  wire n4799_o;
  wire n4801_o;
  wire n4803_o;
  wire n4805_o;
  wire n4807_o;
  wire n4809_o;
  wire [4:0] n4810_o;
  wire n4812_o;
  wire n4813_o;
  wire n4814_o;
  wire n4815_o;
  wire n4816_o;
  wire n4817_o;
  wire n4818_o;
  wire n4819_o;
  wire n4820_o;
  wire n4821_o;
  wire n4822_o;
  wire n4823_o;
  wire n4824_o;
  wire n4825_o;
  wire n4826_o;
  wire n4827_o;
  wire n4828_o;
  wire n4829_o;
  wire n4830_o;
  wire n4831_o;
  wire n4832_o;
  wire n4833_o;
  wire n4834_o;
  wire n4835_o;
  wire n4836_o;
  wire n4837_o;
  wire n4838_o;
  wire n4839_o;
  wire n4840_o;
  wire n4841_o;
  wire n4842_o;
  wire n4843_o;
  wire n4844_o;
  wire n4845_o;
  wire n4847_o;
  wire n4848_o;
  wire n4849_o;
  wire n4850_o;
  wire n4851_o;
  wire n4853_o;
  wire [1:0] n4855_o;
  wire n4857_o;
  wire n4864_o;
  wire n4867_o;
  wire n4874_o;
  wire n4877_o;
  wire n4884_o;
  wire n4887_o;
  wire n4894_o;
  wire n4897_o;
  wire n4904_o;
  wire n4907_o;
  wire n4914_o;
  wire n4917_o;
  wire n4924_o;
  wire n4927_o;
  wire n4934_o;
  wire n4937_o;
  wire n4944_o;
  wire n4947_o;
  wire n4954_o;
  wire [4:0] n4956_o;
  wire n4958_o;
  wire n4965_o;
  wire n4966_o;
  wire n4967_o;
  wire n4968_o;
  wire n4969_o;
  wire n4970_o;
  wire n4971_o;
  wire n4972_o;
  wire n4973_o;
  wire n4974_o;
  wire n4975_o;
  wire n4976_o;
  wire n4977_o;
  wire n4978_o;
  wire n4979_o;
  wire n4980_o;
  wire n4981_o;
  wire n4982_o;
  wire n4983_o;
  wire n4984_o;
  wire n4985_o;
  wire n4986_o;
  wire n4987_o;
  wire n4988_o;
  wire n4989_o;
  wire n4990_o;
  wire n4991_o;
  wire n4992_o;
  wire n4993_o;
  wire n4994_o;
  wire n4995_o;
  wire n4996_o;
  wire n4997_o;
  wire n4998_o;
  wire n5001_o;
  wire n5008_o;
  wire n5009_o;
  wire n5010_o;
  wire n5011_o;
  wire n5012_o;
  wire n5013_o;
  wire n5014_o;
  wire n5015_o;
  wire n5016_o;
  wire n5017_o;
  wire n5018_o;
  wire n5019_o;
  wire n5020_o;
  wire n5021_o;
  wire n5023_o;
  wire n5024_o;
  wire n5025_o;
  wire [1:0] n5026_o;
  wire n5028_o;
  wire n5030_o;
  wire n5032_o;
  wire n5034_o;
  wire n5036_o;
  wire n5038_o;
  wire n5040_o;
  wire n5042_o;
  wire n5044_o;
  wire n5046_o;
  wire [4:0] n5047_o;
  wire n5049_o;
  wire n5050_o;
  wire n5051_o;
  wire n5052_o;
  wire n5053_o;
  wire n5054_o;
  wire n5055_o;
  wire n5056_o;
  wire n5057_o;
  wire n5058_o;
  wire n5059_o;
  wire n5060_o;
  wire n5061_o;
  wire n5062_o;
  wire n5063_o;
  wire n5064_o;
  wire n5065_o;
  wire n5066_o;
  wire n5067_o;
  wire n5068_o;
  wire n5069_o;
  wire n5070_o;
  wire n5071_o;
  wire n5072_o;
  wire n5073_o;
  wire n5074_o;
  wire n5075_o;
  wire n5076_o;
  wire n5077_o;
  wire n5078_o;
  wire n5079_o;
  wire n5080_o;
  wire n5081_o;
  wire n5082_o;
  wire n5083_o;
  wire n5084_o;
  wire n5085_o;
  wire n5087_o;
  wire n5088_o;
  wire n5089_o;
  wire n5090_o;
  wire n5092_o;
  wire [1:0] n5093_o;
  wire n5095_o;
  wire n5097_o;
  wire n5099_o;
  wire n5101_o;
  wire n5103_o;
  wire n5105_o;
  wire n5107_o;
  wire n5109_o;
  wire n5111_o;
  wire n5113_o;
  wire [4:0] n5114_o;
  wire n5116_o;
  wire n5117_o;
  wire n5118_o;
  wire n5119_o;
  wire n5120_o;
  wire n5121_o;
  wire n5122_o;
  wire n5123_o;
  wire n5124_o;
  wire n5125_o;
  wire n5126_o;
  wire n5127_o;
  wire n5128_o;
  wire n5129_o;
  wire n5130_o;
  wire n5131_o;
  wire n5132_o;
  wire n5133_o;
  wire n5134_o;
  wire n5135_o;
  wire n5136_o;
  wire n5137_o;
  wire n5138_o;
  wire n5139_o;
  wire n5140_o;
  wire n5141_o;
  wire n5142_o;
  wire n5143_o;
  wire n5144_o;
  wire n5145_o;
  wire n5146_o;
  wire n5147_o;
  wire n5148_o;
  wire n5149_o;
  wire n5150_o;
  wire n5151_o;
  wire n5152_o;
  wire n5154_o;
  wire n5155_o;
  wire n5156_o;
  wire n5157_o;
  wire n5159_o;
  wire [1:0] n5160_o;
  wire n5162_o;
  wire n5164_o;
  wire n5166_o;
  wire n5168_o;
  wire n5170_o;
  wire n5172_o;
  wire n5174_o;
  wire n5176_o;
  wire n5178_o;
  wire n5180_o;
  wire [4:0] n5181_o;
  wire n5183_o;
  wire n5184_o;
  wire n5185_o;
  wire n5186_o;
  wire n5187_o;
  wire n5188_o;
  wire n5189_o;
  wire n5190_o;
  wire n5191_o;
  wire n5192_o;
  wire n5193_o;
  wire n5194_o;
  wire n5195_o;
  wire n5196_o;
  wire n5197_o;
  wire n5198_o;
  wire n5199_o;
  wire n5200_o;
  wire n5201_o;
  wire n5202_o;
  wire n5203_o;
  wire n5204_o;
  wire n5205_o;
  wire n5206_o;
  wire n5207_o;
  wire n5208_o;
  wire n5209_o;
  wire n5210_o;
  wire n5211_o;
  wire n5212_o;
  wire n5213_o;
  wire n5214_o;
  wire n5215_o;
  wire n5216_o;
  wire n5217_o;
  wire n5218_o;
  wire n5219_o;
  wire n5221_o;
  wire n5222_o;
  wire n5223_o;
  wire n5224_o;
  wire [3:0] n5226_o;
  wire n5228_o;
  wire n5229_o;
  wire n5231_o;
  wire n5233_o;
  wire n5234_o;
  wire n5236_o;
  wire n5238_o;
  wire n5239_o;
  wire [3:0] n5241_o;
  wire n5242_o;
  wire n5244_o;
  wire n5245_o;
  wire [3:0] n5247_o;
  wire n5249_o;
  wire n5251_o;
  wire n5252_o;
  wire n5253_o;
  wire n5254_o;
  wire n5255_o;
  wire n5257_o;
  wire n5259_o;
  wire n5260_o;
  wire n5261_o;
  wire n5262_o;
  wire n5263_o;
  wire n5265_o;
  wire n5267_o;
  wire n5268_o;
  wire n5269_o;
  wire n5270_o;
  wire n5271_o;
  wire n5272_o;
  wire n5273_o;
  wire n5275_o;
  wire n5276_o;
  wire n5278_o;
  wire n5280_o;
  wire n5281_o;
  wire [3:0] n5283_o;
  wire n5285_o;
  wire n5286_o;
  wire n5288_o;
  wire n5290_o;
  wire n5291_o;
  wire [3:0] n5293_o;
  wire n5295_o;
  wire n5296_o;
  wire n5298_o;
  wire n5300_o;
  wire n5301_o;
  wire [3:0] n5302_o;
  wire n5304_o;
  wire n5305_o;
  wire n5307_o;
  wire n5309_o;
  wire n5310_o;
  wire [3:0] n5312_o;
  wire n5314_o;
  wire n5315_o;
  wire n5317_o;
  wire n5319_o;
  wire n5320_o;
  wire [3:0] n5321_o;
  wire n5322_o;
  wire n5324_o;
  wire n5331_o;
  wire n5332_o;
  wire n5335_o;
  wire n5342_o;
  wire n5343_o;
  wire n5344_o;
  wire n5345_o;
  wire n5346_o;
  wire n5347_o;
  wire n5348_o;
  wire n5350_o;
  wire n5351_o;
  wire n5352_o;
  wire n5354_o;
  wire [3:0] n5356_o;
  wire n5357_o;
  wire n5358_o;
  wire n5361_o;
  wire n5362_o;
  wire n5363_o;
  wire [3:0] n5365_o;
  wire n5367_o;
  wire n5368_o;
  wire n5369_o;
  wire n5370_o;
  wire n5371_o;
  wire n5372_o;
  wire n5374_o;
  wire n5375_o;
  wire n5376_o;
  wire n5377_o;
  wire n5379_o;
  wire n5381_o;
  wire n5382_o;
  wire n5383_o;
  wire n5384_o;
  wire [3:0] n5386_o;
  wire [3:0] n5388_o;
  wire n5390_o;
  wire n5391_o;
  wire n5393_o;
  wire n5395_o;
  wire n5396_o;
  wire [3:0] n5398_o;
  wire n5399_o;
  wire n5400_o;
  wire n5401_o;
  wire n5402_o;
  wire n5403_o;
  wire n5404_o;
  wire n5406_o;
  wire n5407_o;
  wire n5408_o;
  wire n5409_o;
  wire n5411_o;
  wire n5412_o;
  wire n5413_o;
  wire n5414_o;
  wire [2:0] n5416_o;
  wire n5417_o;
  wire n5418_o;
  wire n5419_o;
  wire n5420_o;
  wire n5421_o;
  wire n5422_o;
  wire [6:0] n5423_o;
  wire [7:0] n5424_o;
  wire [7:0] n5425_o;
  wire n5426_o;
  wire n5427_o;
  wire n5428_o;
  wire n5429_o;
  wire n5431_o;
  wire n5432_o;
  wire n5433_o;
  wire n5434_o;
  wire n5436_o;
  wire n5437_o;
  wire n5438_o;
  wire n5439_o;
  wire [2:0] n5441_o;
  wire n5443_o;
  wire [3:0] n5445_o;
  wire n5447_o;
  wire n5448_o;
  wire n5450_o;
  wire n5452_o;
  wire n5453_o;
  wire [3:0] n5454_o;
  wire [6:0] n5455_o;
  wire [7:0] n5456_o;
  wire [7:0] n5457_o;
  wire n5458_o;
  wire n5459_o;
  wire n5460_o;
  wire [7:0] n5462_o;
  wire n5464_o;
  wire n5465_o;
  wire n5466_o;
  wire n5467_o;
  wire [6:0] n5468_o;
  wire [7:0] n5469_o;
  wire [7:0] n5470_o;
  wire n5472_o;
  wire n5473_o;
  wire n5474_o;
  wire n5475_o;
  wire [5:0] n5476_o;
  wire [6:0] n5477_o;
  wire n5478_o;
  wire [7:0] n5479_o;
  wire [7:0] n5480_o;
  wire n5482_o;
  wire n5483_o;
  wire n5484_o;
  wire n5485_o;
  wire [4:0] n5486_o;
  wire [5:0] n5487_o;
  wire [1:0] n5488_o;
  wire [7:0] n5489_o;
  wire [7:0] n5490_o;
  wire n5492_o;
  wire n5493_o;
  wire n5494_o;
  wire n5495_o;
  wire [3:0] n5496_o;
  wire [4:0] n5497_o;
  wire [2:0] n5498_o;
  wire [7:0] n5499_o;
  wire [7:0] n5500_o;
  wire n5502_o;
  wire n5503_o;
  wire n5504_o;
  wire n5505_o;
  wire [2:0] n5506_o;
  wire [3:0] n5507_o;
  wire [3:0] n5508_o;
  wire [7:0] n5509_o;
  wire [7:0] n5510_o;
  wire n5512_o;
  wire n5513_o;
  wire n5514_o;
  wire n5515_o;
  wire [1:0] n5516_o;
  wire [2:0] n5517_o;
  wire [4:0] n5518_o;
  wire [7:0] n5519_o;
  wire [7:0] n5520_o;
  wire n5522_o;
  wire n5523_o;
  wire n5524_o;
  wire n5525_o;
  wire n5526_o;
  wire [1:0] n5528_o;
  wire [5:0] n5529_o;
  wire [7:0] n5530_o;
  wire [7:0] n5531_o;
  wire n5533_o;
  wire n5534_o;
  wire n5535_o;
  wire n5536_o;
  wire [6:0] n5537_o;
  wire [7:0] n5539_o;
  wire [7:0] n5540_o;
  wire n5542_o;
  wire n5543_o;
  wire n5544_o;
  wire n5545_o;
  wire [6:0] n5546_o;
  wire [7:0] n5547_o;
  wire [7:0] n5548_o;
  wire n5550_o;
  wire n5551_o;
  wire n5552_o;
  wire n5553_o;
  wire [5:0] n5554_o;
  wire [6:0] n5555_o;
  wire n5556_o;
  wire [7:0] n5557_o;
  wire [7:0] n5558_o;
  wire n5560_o;
  wire n5561_o;
  wire n5562_o;
  wire n5563_o;
  wire [4:0] n5564_o;
  wire [5:0] n5565_o;
  wire [1:0] n5566_o;
  wire [7:0] n5567_o;
  wire [7:0] n5568_o;
  wire n5570_o;
  wire n5571_o;
  wire n5572_o;
  wire n5573_o;
  wire [3:0] n5574_o;
  wire [4:0] n5575_o;
  wire [2:0] n5576_o;
  wire [7:0] n5577_o;
  wire [7:0] n5578_o;
  wire n5580_o;
  wire n5581_o;
  wire n5582_o;
  wire n5583_o;
  wire [2:0] n5584_o;
  wire [3:0] n5585_o;
  wire [3:0] n5586_o;
  wire [7:0] n5587_o;
  wire [7:0] n5588_o;
  wire n5590_o;
  wire n5591_o;
  wire n5592_o;
  wire n5593_o;
  wire [1:0] n5594_o;
  wire [2:0] n5595_o;
  wire [4:0] n5596_o;
  wire [7:0] n5597_o;
  wire [7:0] n5598_o;
  wire n5600_o;
  wire n5601_o;
  wire n5602_o;
  wire n5603_o;
  wire n5604_o;
  wire [1:0] n5605_o;
  wire [5:0] n5606_o;
  wire [7:0] n5607_o;
  wire [7:0] n5608_o;
  wire n5610_o;
  wire n5611_o;
  wire n5612_o;
  wire n5613_o;
  wire [6:0] n5614_o;
  wire [7:0] n5615_o;
  wire [7:0] n5616_o;
  wire [6:0] n5617_o;
  wire [7:0] n5619_o;
  wire [7:0] n5620_o;
  wire [1:0] n5621_o;
  wire n5623_o;
  wire n5625_o;
  wire n5627_o;
  wire n5629_o;
  wire n5631_o;
  wire n5633_o;
  wire n5635_o;
  wire n5637_o;
  wire n5639_o;
  wire n5641_o;
  wire [4:0] n5642_o;
  wire n5644_o;
  wire n5645_o;
  wire n5646_o;
  wire n5647_o;
  wire n5648_o;
  wire n5649_o;
  wire n5650_o;
  wire n5651_o;
  wire n5652_o;
  wire n5653_o;
  wire n5654_o;
  wire n5655_o;
  wire n5656_o;
  wire n5657_o;
  wire n5658_o;
  wire n5659_o;
  wire n5660_o;
  wire n5661_o;
  wire n5662_o;
  wire n5663_o;
  wire n5664_o;
  wire n5665_o;
  wire n5666_o;
  wire n5667_o;
  wire n5668_o;
  wire n5669_o;
  wire n5670_o;
  wire n5671_o;
  wire n5672_o;
  wire n5673_o;
  wire n5674_o;
  wire n5675_o;
  wire n5676_o;
  wire n5677_o;
  wire n5678_o;
  wire n5679_o;
  wire n5680_o;
  wire n5682_o;
  wire n5683_o;
  wire n5684_o;
  wire n5685_o;
  wire [7:0] n5687_o;
  wire n5689_o;
  wire n5690_o;
  wire [7:0] n5691_o;
  wire [7:0] n5692_o;
  wire n5759_o;
  wire [2:0] scl_counter1_out_m_value;
  wire scl_counter1_out_const_0;
  wire [2:0] scl_counter1_out_const_xxx;
  wire [2:0] scl_counter2_out_m_value;
  wire scl_counter2_out_const_0;
  wire [2:0] scl_counter2_out_const_xxx;
  reg [3:0] n5898_q;
  reg [3:0] n5899_q;
  wire n5900_o;
  reg n5901_q;
  reg n5902_q;
  reg n5903_q;
  reg n5904_q;
  reg n5905_q;
  wire n5906_o;
  reg n5907_q;
  wire n5908_o;
  reg n5909_q;
  reg n5910_q;
  reg n5911_q;
  wire n5912_o;
  reg n5913_q;
  wire n5914_o;
  reg n5915_q;
  wire n5916_o;
  reg n5917_q;
  reg n5918_q;
  reg n5919_q;
  reg [19:0] n5920_q;
  reg [16:0] n5921_q;
  wire n5922_o;
  reg n5923_q;
  reg [7:0] n5924_q;
  reg n5925_q;
  wire n5926_o;
  reg n5927_q;
  wire n5928_o;
  reg n5929_q;
  reg n5930_q;
  wire n5931_o;
  reg n5932_q;
  wire n5933_o;
  reg n5934_q;
  reg n5935_q;
  wire n5936_o;
  reg n5937_q;
  wire n5938_o;
  reg n5939_q;
  reg n5940_q;
  wire n5941_o;
  reg n5942_q;
  wire n5943_o;
  reg n5944_q;
  reg n5945_q;
  wire n5946_o;
  reg n5947_q;
  wire n5948_o;
  reg n5949_q;
  wire n5950_o;
  reg n5951_q;
  wire n5952_o;
  reg n5953_q;
  wire n5954_o;
  reg n5955_q;
  wire n5956_o;
  reg n5957_q;
  wire n5958_o;
  reg n5959_q;
  wire n5960_o;
  reg n5961_q;
  wire n5962_o;
  reg n5963_q;
  wire n5964_o;
  reg n5965_q;
  wire n5966_o;
  reg n5967_q;
  wire n5968_o;
  reg n5969_q;
  wire n5970_o;
  reg n5971_q;
  assign out_const_0_mux13 = n5450_o;
  assign out_m_io0_out = s_m_io0_out_2;
  assign out_m_io0_en = s_m_io0_en_2;
  assign out_m_io0_opendrain = s_m_io0_opendrain_2;
  assign out_m_io1_out = s_m_io1_out_2;
  assign out_m_io1_en = s_m_io1_en_2;
  assign out_m_io1_opendrain = s_m_io1_opendrain_2;
  assign out_m_io2_out = s_m_io2_out_2;
  assign out_m_io2_en = s_m_io2_en_2;
  assign out_m_io2_opendrain = s_m_io2_opendrain_2;
  assign out_m_io3_out = s_m_io3_out_2;
  assign out_m_io3_en = s_m_io3_en_2;
  assign out_m_io3_opendrain = s_m_io3_opendrain_2;
  assign out_m_io4_out = s_m_io4_out_2;
  assign out_m_io4_en = s_m_io4_en_2;
  assign out_m_io4_opendrain = s_m_io4_opendrain_2;
  assign out_m_io5_out = s_m_io5_out_2;
  assign out_m_io5_en = s_m_io5_en_2;
  assign out_m_io5_opendrain = s_m_io5_opendrain_2;
  assign out_m_io8_out = s_m_io8_out_2;
  assign out_m_io9_out = s_m_io9_out_2;
  assign out_m_io10_out = s_m_io10_out_2;
  assign out_m_io11_out = s_m_io11_out_2;
  assign out_m_io12_out = s_m_io12_out_2;
  assign out_m_io13_out = s_m_io13_out_2;
  assign out_m_io14_out = s_m_io14_out_2;
  assign out_m_io15_out = s_m_io15_out_2;
  assign out_out_ready = in_unnamed;
  assign out_out_valid = n5431_o;
  assign out_out = n5692_o;
  /* find_the_damn_issue_sky130.vhd:1033:16  */
  assign s_followupstate_mux1 = n5454_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1034:16  */
  always @*
    s_state = n5898_q; // (isignal)
  initial
    s_state = 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1035:16  */
  assign s_clock_setup_mux3 = n4675_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1036:16  */
  always @*
    s_followupstate = n5899_q; // (isignal)
  initial
    s_followupstate = 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1037:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:1038:16  */
  assign s_tick = s_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:1039:16  */
  assign s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed = n3193_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1040:16  */
  assign s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed = n3229_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1041:16  */
  assign s_command_rewired_eq_const_10_and_command_rewired_eq_const_0_or_command_bit_7_not_not_not_not_and_state_eq_idle_and_command_valid_and_unnamed = n3941_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1042:16  */
  assign s_command_rewired_eq_const_110_and_unnamed_not_and_state_eq_idle_and_command_valid_and_unnamed = n4127_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1043:16  */
  assign s_config_targetpingroup = n5901_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1044:16  */
  assign s_config_stopclocksignal = n5902_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1045:16  */
  assign s_config_stopclockonsignal = n5903_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1046:16  */
  assign s_config_stopclockonlastbit = n5904_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1047:16  */
  assign s_config_tmsoutmode = n5905_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1048:16  */
  always @*
    s_config_idleclockstate = n5907_q; // (isignal)
  initial
    s_config_idleclockstate = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1049:16  */
  always @*
    s_config_dataloopback = n5909_q; // (isignal)
  initial
    s_config_dataloopback = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1050:16  */
  assign s_config_shiftin = n5910_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1051:16  */
  assign s_config_shiftout = n5911_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1052:16  */
  always @*
    s_config_clockthreephase = n5913_q; // (isignal)
  initial
    s_config_clockthreephase = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1053:16  */
  assign s_config_msbfirst = n5915_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1054:16  */
  assign s_config_captureedge = n5917_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1055:16  */
  assign s_config_clockdelay = n5918_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1056:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid = n3311_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1057:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_2 = n3333_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1058:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid = n3355_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1059:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_2 = n3377_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1060:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_3 = n3399_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1061:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_4 = n3421_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1062:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_5 = n3443_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1063:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_6 = n3465_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1064:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_7 = n3487_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1065:16  */
  assign s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_8 = n3509_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1066:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid = n3531_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1067:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_2 = n3553_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1068:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_3 = n3575_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1069:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_4 = n3597_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1070:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_5 = n3619_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1071:16  */
  assign s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_6 = n3641_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1072:16  */
  assign s_carryin_mux2 = n3656_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1073:16  */
  always @*
    s_carryin = n5919_q; // (isignal)
  initial
    s_carryin = 1'b1;
  /* find_the_damn_issue_sky130.vhd:1074:16  */
  assign s_bitlength = n5920_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:1075:16  */
  always @*
    s_clockdiv = n5921_q; // (isignal)
  initial
    s_clockdiv = 17'b00000000000000001;
  /* find_the_damn_issue_sky130.vhd:1076:16  */
  assign s_clockdiv_2 = s_clockdiv; // (signal)
  /* find_the_damn_issue_sky130.vhd:1077:16  */
  always @*
    s_toggleclockdelayed = n5923_q; // (isignal)
  initial
    s_toggleclockdelayed = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1078:16  */
  assign s_toggleclock = n5393_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1079:16  */
  assign s_setupedge = n5350_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1080:16  */
  assign s_captureedge = n5372_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1081:16  */
  assign s_m_value = scl_counter1_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:1082:16  */
  assign s_const_0 = scl_counter1_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:1083:16  */
  assign s_unnamed_16 = n5411_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1084:16  */
  assign s_unnamed_17 = n5416_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1085:16  */
  assign s_capturebuffer_mux1_unnamed_mux1_rewired_mux2 = n5462_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1086:16  */
  always @*
    s_capturebuffer = n5924_q; // (isignal)
  initial
    s_capturebuffer = 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:1087:16  */
  assign s_m_value_2 = scl_counter2_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:1088:16  */
  assign s_const_0_2 = scl_counter2_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:1089:16  */
  assign s_unnamed_18 = n5436_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1090:16  */
  assign s_unnamed_19 = n5441_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1091:16  */
  always @*
    s_m_io0_out_2 = n5925_q; // (isignal)
  initial
    s_m_io0_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1092:16  */
  always @*
    s_m_io0_en_2 = n5927_q; // (isignal)
  initial
    s_m_io0_en_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1093:16  */
  always @*
    s_m_io0_opendrain_2 = n5929_q; // (isignal)
  initial
    s_m_io0_opendrain_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1094:16  */
  always @*
    s_m_io1_out_2 = n5930_q; // (isignal)
  initial
    s_m_io1_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1095:16  */
  always @*
    s_m_io1_en_2 = n5932_q; // (isignal)
  initial
    s_m_io1_en_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1096:16  */
  always @*
    s_m_io1_opendrain_2 = n5934_q; // (isignal)
  initial
    s_m_io1_opendrain_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1097:16  */
  always @*
    s_m_io2_out_2 = n5935_q; // (isignal)
  initial
    s_m_io2_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1098:16  */
  always @*
    s_m_io2_en_2 = n5937_q; // (isignal)
  initial
    s_m_io2_en_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1099:16  */
  always @*
    s_m_io2_opendrain_2 = n5939_q; // (isignal)
  initial
    s_m_io2_opendrain_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1100:16  */
  always @*
    s_m_io3_out_2 = n5940_q; // (isignal)
  initial
    s_m_io3_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1101:16  */
  always @*
    s_m_io3_en_2 = n5942_q; // (isignal)
  initial
    s_m_io3_en_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1102:16  */
  always @*
    s_m_io3_opendrain_2 = n5944_q; // (isignal)
  initial
    s_m_io3_opendrain_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1103:16  */
  always @*
    s_m_io4_out_2 = n5945_q; // (isignal)
  initial
    s_m_io4_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1104:16  */
  always @*
    s_m_io4_en_2 = n5947_q; // (isignal)
  initial
    s_m_io4_en_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1105:16  */
  always @*
    s_m_io4_opendrain_2 = n5949_q; // (isignal)
  initial
    s_m_io4_opendrain_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1106:16  */
  always @*
    s_m_io5_out_2 = n5951_q; // (isignal)
  initial
    s_m_io5_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1107:16  */
  always @*
    s_m_io5_en_2 = n5953_q; // (isignal)
  initial
    s_m_io5_en_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1108:16  */
  always @*
    s_m_io5_opendrain_2 = n5955_q; // (isignal)
  initial
    s_m_io5_opendrain_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1109:16  */
  always @*
    s_m_io8_out_2 = n5957_q; // (isignal)
  initial
    s_m_io8_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1110:16  */
  always @*
    s_m_io9_out_2 = n5959_q; // (isignal)
  initial
    s_m_io9_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1111:16  */
  always @*
    s_m_io10_out_2 = n5961_q; // (isignal)
  initial
    s_m_io10_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1112:16  */
  always @*
    s_m_io11_out_2 = n5963_q; // (isignal)
  initial
    s_m_io11_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1113:16  */
  always @*
    s_m_io12_out_2 = n5965_q; // (isignal)
  initial
    s_m_io12_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1114:16  */
  always @*
    s_m_io13_out_2 = n5967_q; // (isignal)
  initial
    s_m_io13_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1115:16  */
  always @*
    s_m_io14_out_2 = n5969_q; // (isignal)
  initial
    s_m_io14_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1116:16  */
  always @*
    s_m_io15_out_2 = n5971_q; // (isignal)
  initial
    s_m_io15_out_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:1117:16  */
  assign s_command_bit_7 = n3767_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1118:16  */
  assign s_command_bit_6 = n3768_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1119:16  */
  assign s_command_bit_5 = n3769_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1120:16  */
  assign s_command_bit_4 = n3770_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1121:16  */
  assign s_command_bit_3 = n3771_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1122:16  */
  assign s_command_bit_2 = n3772_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1123:16  */
  assign s_command_bit_1 = n3773_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1124:16  */
  assign s_command_bit_0 = n3774_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1125:16  */
  assign s_command_bit_5_2 = n3775_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1126:16  */
  assign s_state_eq_load_low_and_command_valid = n3786_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1127:16  */
  assign s_command_bit_5_3 = n3787_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1128:16  */
  assign s_command_bit_5_4 = n3788_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1129:16  */
  assign s_command_bit_4_2 = n3789_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1130:16  */
  assign s_command_bit_4_3 = n3790_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1131:16  */
  assign s_m_io4_out_mux2 = n5421_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1132:16  */
  assign s_command_bit_3_2 = n3791_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1133:16  */
  assign s_command_bit_3_3 = n3792_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1134:16  */
  assign s_m_io3_out_mux2_xor_toggleclockdelayed_mux2 = n5401_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1135:16  */
  assign s_command_bit_2_2 = n3794_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1136:16  */
  assign s_command_bit_2_3 = n3795_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1137:16  */
  assign s_m_io2_out_mux2 = n5271_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1138:16  */
  assign s_command_bit_1_2 = n3796_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1139:16  */
  assign s_command_bit_1_3 = n3797_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1140:16  */
  assign s_command_bit_0_mux3 = n5420_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1141:16  */
  assign s_command_bit_0_2 = n3798_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1142:16  */
  assign s_command_bit_0_3 = n3799_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1143:16  */
  assign s_m_io0_out_mux2 = n5255_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1144:16  */
  assign s_const_xxx = scl_counter2_out_const_xxx; // (signal)
  /* find_the_damn_issue_sky130.vhd:1145:16  */
  assign s_const_xxx_2 = scl_counter1_out_const_xxx; // (signal)
  /* find_the_damn_issue_sky130.vhd:1146:16  */
  assign s_clockdiv_mux1_cmdinc_rewired_mux1 = n3808_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1147:16  */
  assign s_cmdinc_bitlength_mux2_rewired_mux1_cmdinc_rewired_mux1_cmdinc_rewired_mux1 = n3837_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1148:16  */
  assign s_command_bit_3_4 = n3838_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1149:16  */
  assign s_config_clockdelay_mux2 = n3852_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1150:16  */
  assign s_command_bit_0_neq_command_bit_2 = n3863_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1151:16  */
  assign s_command_bit_3_not = n3865_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1152:16  */
  assign s_command_bit_0_not = n3867_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1153:16  */
  assign s_config_shiftout_mux2 = n3260_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1154:16  */
  assign s_config_shiftin_mux2 = n3268_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1155:16  */
  assign s_command_bit_0_not_2 = n3869_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1156:16  */
  assign s_config_tmsoutmode_mux2 = n3276_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1157:16  */
  assign s_config_stopclockonlastbit_mux3 = n4512_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1158:16  */
  assign s_config_stopclockonsignal_mux3 = n4566_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1159:16  */
  assign s_config_stopclocksignal_mux3 = n4621_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1160:16  */
  assign s_command_bit_1_4 = n3870_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:1162:9  */
  scl_counter_13 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_clockdiv_2),
    .out_m_last(scl_counter0_out_m_last));
  /* find_the_damn_issue_sky130.vhd:1423:31  */
  assign n3167_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1423:41  */
  assign n3168_o = n3167_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1423:68  */
  assign n3169_o = n3168_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1423:17  */
  assign n3172_o = n3169_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1428:31  */
  assign n3174_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1428:41  */
  assign n3175_o = n3174_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1428:68  */
  assign n3176_o = n3175_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1428:17  */
  assign n3178_o = n3176_o ? 4'b0000 : s_followupstate;
  /* find_the_damn_issue_sky130.vhd:1433:104  */
  assign n3179_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1433:91  */
  assign n3180_o = ~n3179_o;
  /* find_the_damn_issue_sky130.vhd:1433:137  */
  assign n3183_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3190_o = n3183_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1433:147  */
  assign n3191_o = n3190_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1433:168  */
  assign n3192_o = n3191_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1433:109  */
  assign n3193_o = n3180_o & n3192_o;
  /* find_the_damn_issue_sky130.vhd:1434:17  */
  assign n3195_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? 4'b1001 : n3178_o;
  /* find_the_damn_issue_sky130.vhd:1439:17  */
  assign n3197_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? 4'b0111 : s_state;
  /* find_the_damn_issue_sky130.vhd:1444:30  */
  assign n3198_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1444:40  */
  assign n3199_o = n3198_o & s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:1444:17  */
  assign n3201_o = n3199_o ? 4'b0110 : n3197_o;
  /* find_the_damn_issue_sky130.vhd:1449:147  */
  assign n3203_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1449:160  */
  assign n3205_o = n3203_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3212_o = n3205_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1449:197  */
  assign n3213_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1449:184  */
  assign n3214_o = ~n3213_o;
  /* find_the_damn_issue_sky130.vhd:1449:178  */
  assign n3215_o = ~n3214_o;
  /* find_the_damn_issue_sky130.vhd:1449:231  */
  assign n3218_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3225_o = n3218_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1449:241  */
  assign n3226_o = n3225_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1449:262  */
  assign n3227_o = n3226_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1449:203  */
  assign n3228_o = n3215_o & n3227_o;
  /* find_the_damn_issue_sky130.vhd:1449:171  */
  assign n3229_o = n3212_o & n3228_o;
  /* find_the_damn_issue_sky130.vhd:1450:30  */
  assign n3230_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1450:40  */
  assign n3231_o = n3230_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:1450:17  */
  assign n3234_o = n3231_o ? 8'b00000000 : 8'bX;
  /* find_the_damn_issue_sky130.vhd:1455:30  */
  assign n3235_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1455:40  */
  assign n3236_o = n3235_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:1455:17  */
  assign n3239_o = n3236_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1460:36  */
  assign n3240_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1460:23  */
  assign n3241_o = ~n3240_o;
  /* find_the_damn_issue_sky130.vhd:1460:47  */
  assign n3242_o = n3241_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:1460:17  */
  assign n3244_o = n3242_o ? 4'b0010 : n3201_o;
  /* find_the_damn_issue_sky130.vhd:1466:31  */
  assign n3246_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1466:41  */
  assign n3247_o = n3246_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1466:68  */
  assign n3248_o = n3247_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1466:17  */
  assign n3250_o = n3248_o ? 1'b0 : s_config_clockdelay;
  /* find_the_damn_issue_sky130.vhd:1475:31  */
  assign n3252_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1475:41  */
  assign n3253_o = n3252_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1475:68  */
  assign n3254_o = n3253_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1475:17  */
  assign n3256_o = n3254_o ? 1'b0 : s_config_shiftout;
  /* find_the_damn_issue_sky130.vhd:1481:61  */
  assign n3257_o = in_command[4];
  /* find_the_damn_issue_sky130.vhd:1481:77  */
  assign n3258_o = in_command[6];
  /* find_the_damn_issue_sky130.vhd:1481:65  */
  assign n3259_o = n3257_o | n3258_o;
  /* find_the_damn_issue_sky130.vhd:1480:17  */
  assign n3260_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? n3259_o : n3256_o;
  /* find_the_damn_issue_sky130.vhd:1486:31  */
  assign n3262_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1486:41  */
  assign n3263_o = n3262_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1486:68  */
  assign n3264_o = n3263_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1486:17  */
  assign n3266_o = n3264_o ? 1'b0 : s_config_shiftin;
  /* find_the_damn_issue_sky130.vhd:1492:59  */
  assign n3267_o = in_command[5];
  /* find_the_damn_issue_sky130.vhd:1491:17  */
  assign n3268_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? n3267_o : n3266_o;
  /* find_the_damn_issue_sky130.vhd:1499:31  */
  assign n3270_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1499:41  */
  assign n3271_o = n3270_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1499:68  */
  assign n3272_o = n3271_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1499:17  */
  assign n3274_o = n3272_o ? 1'b0 : s_config_tmsoutmode;
  /* find_the_damn_issue_sky130.vhd:1505:62  */
  assign n3275_o = in_command[6];
  /* find_the_damn_issue_sky130.vhd:1504:17  */
  assign n3276_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? n3275_o : n3274_o;
  /* find_the_damn_issue_sky130.vhd:1510:31  */
  assign n3278_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1510:41  */
  assign n3279_o = n3278_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1510:68  */
  assign n3280_o = n3279_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1510:17  */
  assign n3282_o = n3280_o ? 1'b1 : s_config_stopclockonlastbit;
  /* find_the_damn_issue_sky130.vhd:1516:31  */
  assign n3284_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1516:41  */
  assign n3285_o = n3284_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1516:68  */
  assign n3286_o = n3285_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1516:17  */
  assign n3288_o = n3286_o ? 1'b0 : s_config_stopclockonsignal;
  /* find_the_damn_issue_sky130.vhd:1523:17  */
  assign n3289_o = s_config_dataloopback ? in_unnamed_3 : in_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:1528:115  */
  assign n3292_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3299_o = n3292_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1528:169  */
  assign n3302_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3309_o = n3302_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1528:186  */
  assign n3310_o = n3309_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1528:142  */
  assign n3311_o = n3299_o & n3310_o;
  /* find_the_damn_issue_sky130.vhd:1529:117  */
  assign n3314_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3321_o = n3314_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1529:171  */
  assign n3324_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3331_o = n3324_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1529:188  */
  assign n3332_o = n3331_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1529:144  */
  assign n3333_o = n3321_o & n3332_o;
  /* find_the_damn_issue_sky130.vhd:1530:115  */
  assign n3336_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3343_o = n3336_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1530:169  */
  assign n3346_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3353_o = n3346_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1530:186  */
  assign n3354_o = n3353_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1530:142  */
  assign n3355_o = n3343_o & n3354_o;
  /* find_the_damn_issue_sky130.vhd:1531:117  */
  assign n3358_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3365_o = n3358_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1531:171  */
  assign n3368_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3375_o = n3368_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1531:188  */
  assign n3376_o = n3375_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1531:144  */
  assign n3377_o = n3365_o & n3376_o;
  /* find_the_damn_issue_sky130.vhd:1532:117  */
  assign n3380_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3387_o = n3380_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1532:171  */
  assign n3390_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3397_o = n3390_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1532:188  */
  assign n3398_o = n3397_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1532:144  */
  assign n3399_o = n3387_o & n3398_o;
  /* find_the_damn_issue_sky130.vhd:1533:117  */
  assign n3402_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3409_o = n3402_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1533:171  */
  assign n3412_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3419_o = n3412_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1533:188  */
  assign n3420_o = n3419_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1533:144  */
  assign n3421_o = n3409_o & n3420_o;
  /* find_the_damn_issue_sky130.vhd:1534:117  */
  assign n3424_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3431_o = n3424_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1534:171  */
  assign n3434_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3441_o = n3434_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1534:188  */
  assign n3442_o = n3441_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1534:144  */
  assign n3443_o = n3431_o & n3442_o;
  /* find_the_damn_issue_sky130.vhd:1535:117  */
  assign n3446_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3453_o = n3446_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1535:171  */
  assign n3456_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3463_o = n3456_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1535:188  */
  assign n3464_o = n3463_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1535:144  */
  assign n3465_o = n3453_o & n3464_o;
  /* find_the_damn_issue_sky130.vhd:1536:117  */
  assign n3468_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3475_o = n3468_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1536:171  */
  assign n3478_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3485_o = n3478_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1536:188  */
  assign n3486_o = n3485_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1536:144  */
  assign n3487_o = n3475_o & n3486_o;
  /* find_the_damn_issue_sky130.vhd:1537:117  */
  assign n3490_o = 1'b1 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3497_o = n3490_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1537:171  */
  assign n3500_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3507_o = n3500_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1537:188  */
  assign n3508_o = n3507_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1537:144  */
  assign n3509_o = n3497_o & n3508_o;
  /* find_the_damn_issue_sky130.vhd:1538:114  */
  assign n3512_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3519_o = n3512_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1538:168  */
  assign n3522_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3529_o = n3522_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1538:184  */
  assign n3530_o = n3529_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1538:141  */
  assign n3531_o = n3519_o & n3530_o;
  /* find_the_damn_issue_sky130.vhd:1539:116  */
  assign n3534_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3541_o = n3534_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1539:170  */
  assign n3544_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3551_o = n3544_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1539:186  */
  assign n3552_o = n3551_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1539:143  */
  assign n3553_o = n3541_o & n3552_o;
  /* find_the_damn_issue_sky130.vhd:1540:116  */
  assign n3556_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3563_o = n3556_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1540:170  */
  assign n3566_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3573_o = n3566_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1540:186  */
  assign n3574_o = n3573_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1540:143  */
  assign n3575_o = n3563_o & n3574_o;
  /* find_the_damn_issue_sky130.vhd:1541:116  */
  assign n3578_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3585_o = n3578_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1541:170  */
  assign n3588_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3595_o = n3588_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1541:186  */
  assign n3596_o = n3595_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1541:143  */
  assign n3597_o = n3585_o & n3596_o;
  /* find_the_damn_issue_sky130.vhd:1542:116  */
  assign n3600_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3607_o = n3600_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1542:170  */
  assign n3610_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3617_o = n3610_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1542:186  */
  assign n3618_o = n3617_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1542:143  */
  assign n3619_o = n3607_o & n3618_o;
  /* find_the_damn_issue_sky130.vhd:1543:116  */
  assign n3622_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3629_o = n3622_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1543:170  */
  assign n3632_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3639_o = n3632_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1543:186  */
  assign n3640_o = n3639_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1543:143  */
  assign n3641_o = n3629_o & n3640_o;
  /* find_the_damn_issue_sky130.vhd:1545:35  */
  assign n3643_o = {1'b0, in_command};
  /* find_the_damn_issue_sky130.vhd:1545:62  */
  assign n3645_o = {8'b00000000, s_carryin};
  /* find_the_damn_issue_sky130.vhd:1545:48  */
  assign n3646_o = n3643_o + n3645_o;
  /* find_the_damn_issue_sky130.vhd:1546:30  */
  assign n3648_o = s_state == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:1546:45  */
  assign n3649_o = n3648_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1547:51  */
  assign n3650_o = n3646_o[8];
  /* find_the_damn_issue_sky130.vhd:1546:17  */
  assign n3651_o = n3649_o ? n3650_o : s_carryin;
  /* find_the_damn_issue_sky130.vhd:1551:30  */
  assign n3653_o = s_state == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:1551:46  */
  assign n3654_o = n3653_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1551:17  */
  assign n3656_o = n3654_o ? 1'b1 : n3651_o;
  /* find_the_damn_issue_sky130.vhd:1559:38  */
  assign n3658_o = s_followupstate == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1559:64  */
  assign n3660_o = s_state == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:1559:79  */
  assign n3661_o = n3660_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1559:50  */
  assign n3662_o = n3658_o & n3661_o;
  /* find_the_damn_issue_sky130.vhd:1560:57  */
  assign n3663_o = s_clockdiv_2[16:8];
  /* find_the_damn_issue_sky130.vhd:1560:81  */
  assign n3664_o = n3646_o[7:0];
  /* find_the_damn_issue_sky130.vhd:1560:71  */
  assign n3665_o = {n3663_o, n3664_o};
  /* find_the_damn_issue_sky130.vhd:1559:17  */
  assign n3666_o = n3662_o ? n3665_o : s_clockdiv_2;
  /* find_the_damn_issue_sky130.vhd:1564:91  */
  assign n3669_o = s_bitlength == 20'b00000000000000000001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3676_o = n3669_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1564:61  */
  assign n3677_o = s_config_stopclockonlastbit & n3676_o;
  /* find_the_damn_issue_sky130.vhd:1564:180  */
  assign n3679_o = in_unnamed_7 == s_config_stopclocksignal;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3686_o = n3679_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1564:149  */
  assign n3687_o = s_config_stopclockonsignal & n3686_o;
  /* find_the_damn_issue_sky130.vhd:1564:118  */
  assign n3688_o = n3677_o | n3687_o;
  /* find_the_damn_issue_sky130.vhd:1565:59  */
  assign n3689_o = ~in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1565:53  */
  assign n3690_o = s_config_shiftout & n3689_o;
  /* find_the_damn_issue_sky130.vhd:1566:59  */
  assign n3691_o = ~in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1566:53  */
  assign n3692_o = s_config_shiftin & n3691_o;
  /* find_the_damn_issue_sky130.vhd:1567:31  */
  assign n3694_o = s_state == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:1567:57  */
  assign n3695_o = ~n3692_o;
  /* find_the_damn_issue_sky130.vhd:1567:51  */
  assign n3696_o = n3694_o & n3695_o;
  /* find_the_damn_issue_sky130.vhd:1567:84  */
  assign n3697_o = n3696_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:1568:58  */
  assign n3699_o = s_bitlength - 20'b00000000000000000001;
  /* find_the_damn_issue_sky130.vhd:1567:17  */
  assign n3700_o = n3697_o ? n3699_o : s_bitlength;
  /* find_the_damn_issue_sky130.vhd:1572:31  */
  assign n3702_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1572:41  */
  assign n3703_o = n3702_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1572:68  */
  assign n3704_o = n3703_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1572:17  */
  assign n3706_o = n3704_o ? 20'b00000000000000000000 : n3700_o;
  /* find_the_damn_issue_sky130.vhd:1577:88  */
  assign n3709_o = s_state == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3716_o = n3709_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1577:114  */
  assign n3717_o = ~n3692_o;
  /* find_the_damn_issue_sky130.vhd:1577:108  */
  assign n3718_o = n3716_o & n3717_o;
  /* find_the_damn_issue_sky130.vhd:1577:135  */
  assign n3719_o = n3718_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:1577:60  */
  assign n3720_o = n3688_o & n3719_o;
  /* find_the_damn_issue_sky130.vhd:1579:17  */
  assign n3723_o = s_config_tmsoutmode ? 3'b110 : 3'b111;
  /* find_the_damn_issue_sky130.vhd:1585:77  */
  assign n3724_o = s_config_tmsoutmode & s_config_msbfirst;
  /* find_the_damn_issue_sky130.vhd:1585:54  */
  assign n3726_o = {2'b00, n3724_o};
  /* find_the_damn_issue_sky130.vhd:1585:46  */
  assign n3727_o = s_m_value + n3726_o;
  /* find_the_damn_issue_sky130.vhd:1585:125  */
  assign n3728_o = {s_config_msbfirst, s_config_msbfirst};
  /* find_the_damn_issue_sky130.vhd:1585:145  */
  assign n3729_o = {n3728_o, s_config_msbfirst};
  /* find_the_damn_issue_sky130.vhd:1585:102  */
  assign n3730_o = n3727_o ^ n3729_o;
  /* find_the_damn_issue_sky130.vhd:1587:72  */
  assign n3731_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1587:25  */
  assign n3733_o = n3730_o == 3'b000;
  /* find_the_damn_issue_sky130.vhd:1588:72  */
  assign n3734_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1588:25  */
  assign n3736_o = n3730_o == 3'b001;
  /* find_the_damn_issue_sky130.vhd:1589:72  */
  assign n3737_o = in_command[2];
  /* find_the_damn_issue_sky130.vhd:1589:25  */
  assign n3739_o = n3730_o == 3'b010;
  /* find_the_damn_issue_sky130.vhd:1590:72  */
  assign n3740_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1590:25  */
  assign n3742_o = n3730_o == 3'b011;
  /* find_the_damn_issue_sky130.vhd:1591:72  */
  assign n3743_o = in_command[4];
  /* find_the_damn_issue_sky130.vhd:1591:25  */
  assign n3745_o = n3730_o == 3'b100;
  /* find_the_damn_issue_sky130.vhd:1592:72  */
  assign n3746_o = in_command[5];
  /* find_the_damn_issue_sky130.vhd:1592:25  */
  assign n3748_o = n3730_o == 3'b101;
  /* find_the_damn_issue_sky130.vhd:1593:72  */
  assign n3749_o = in_command[6];
  /* find_the_damn_issue_sky130.vhd:1593:25  */
  assign n3751_o = n3730_o == 3'b110;
  /* find_the_damn_issue_sky130.vhd:1594:72  */
  assign n3752_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1594:25  */
  assign n3754_o = n3730_o == 3'b111;
  assign n3755_o = {n3754_o, n3751_o, n3748_o, n3745_o, n3742_o, n3739_o, n3736_o, n3733_o};
  /* find_the_damn_issue_sky130.vhd:1586:17  */
  always @*
    case (n3755_o)
      8'b10000000: n3757_o = n3752_o;
      8'b01000000: n3757_o = n3749_o;
      8'b00100000: n3757_o = n3746_o;
      8'b00010000: n3757_o = n3743_o;
      8'b00001000: n3757_o = n3740_o;
      8'b00000100: n3757_o = n3737_o;
      8'b00000010: n3757_o = n3734_o;
      8'b00000001: n3757_o = n3731_o;
      default: n3757_o = 1'bX;
    endcase
  /* find_the_damn_issue_sky130.vhd:1598:44  */
  assign n3758_o = ~s_config_msbfirst;
  /* find_the_damn_issue_sky130.vhd:1616:26  */
  assign n3760_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:1616:67  */
  assign n3762_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:1616:84  */
  assign n3763_o = n3762_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1616:53  */
  assign n3764_o = n3760_o & n3763_o;
  /* find_the_damn_issue_sky130.vhd:1617:54  */
  assign n3765_o = in_command[4];
  /* find_the_damn_issue_sky130.vhd:1616:17  */
  assign n3766_o = n3764_o ? n3765_o : s_m_io4_out_2;
  /* find_the_damn_issue_sky130.vhd:1645:45  */
  assign n3767_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1646:45  */
  assign n3768_o = in_command[6];
  /* find_the_damn_issue_sky130.vhd:1647:45  */
  assign n3769_o = in_command[5];
  /* find_the_damn_issue_sky130.vhd:1648:45  */
  assign n3770_o = in_command[4];
  /* find_the_damn_issue_sky130.vhd:1649:45  */
  assign n3771_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1650:45  */
  assign n3772_o = in_command[2];
  /* find_the_damn_issue_sky130.vhd:1651:45  */
  assign n3773_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1652:45  */
  assign n3774_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1653:47  */
  assign n3775_o = in_command[5];
  /* find_the_damn_issue_sky130.vhd:1654:81  */
  assign n3778_o = s_state == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3785_o = n3778_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1654:97  */
  assign n3786_o = n3785_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1655:47  */
  assign n3787_o = in_command[5];
  /* find_the_damn_issue_sky130.vhd:1656:47  */
  assign n3788_o = in_command[5];
  /* find_the_damn_issue_sky130.vhd:1657:47  */
  assign n3789_o = in_command[4];
  /* find_the_damn_issue_sky130.vhd:1658:47  */
  assign n3790_o = in_command[4];
  /* find_the_damn_issue_sky130.vhd:1659:47  */
  assign n3791_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1660:47  */
  assign n3792_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1661:17  */
  assign n3793_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_4 ? s_command_bit_3_3 : s_m_io3_en_2;
  /* find_the_damn_issue_sky130.vhd:1666:47  */
  assign n3794_o = in_command[2];
  /* find_the_damn_issue_sky130.vhd:1667:47  */
  assign n3795_o = in_command[2];
  /* find_the_damn_issue_sky130.vhd:1668:47  */
  assign n3796_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1669:47  */
  assign n3797_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1670:47  */
  assign n3798_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1671:47  */
  assign n3799_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1673:38  */
  assign n3801_o = s_followupstate == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1673:64  */
  assign n3803_o = s_state == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:1673:80  */
  assign n3804_o = n3803_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1673:50  */
  assign n3805_o = n3801_o & n3804_o;
  /* find_the_damn_issue_sky130.vhd:1674:93  */
  assign n3806_o = n3666_o[7:0];
  /* find_the_damn_issue_sky130.vhd:1674:74  */
  assign n3807_o = {n3646_o, n3806_o};
  /* find_the_damn_issue_sky130.vhd:1673:17  */
  assign n3808_o = n3805_o ? n3807_o : n3666_o;
  /* find_the_damn_issue_sky130.vhd:1680:30  */
  assign n3810_o = s_state == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:1680:46  */
  assign n3811_o = n3810_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1681:84  */
  assign n3812_o = n3706_o[19:9];
  /* find_the_damn_issue_sky130.vhd:1681:98  */
  assign n3813_o = {n3812_o, n3646_o};
  /* find_the_damn_issue_sky130.vhd:1680:17  */
  assign n3814_o = n3811_o ? n3813_o : n3706_o;
  /* find_the_damn_issue_sky130.vhd:1686:44  */
  assign n3816_o = s_followupstate == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1686:23  */
  assign n3817_o = ~n3816_o;
  /* find_the_damn_issue_sky130.vhd:1686:71  */
  assign n3819_o = s_state == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:1686:86  */
  assign n3820_o = n3819_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1686:57  */
  assign n3821_o = n3817_o & n3820_o;
  /* find_the_damn_issue_sky130.vhd:1687:124  */
  assign n3822_o = n3814_o[19:11];
  /* find_the_damn_issue_sky130.vhd:1687:149  */
  assign n3823_o = n3646_o[7:0];
  /* find_the_damn_issue_sky130.vhd:1687:139  */
  assign n3824_o = {n3822_o, n3823_o};
  /* find_the_damn_issue_sky130.vhd:1687:202  */
  assign n3825_o = n3814_o[2:0];
  /* find_the_damn_issue_sky130.vhd:1687:162  */
  assign n3826_o = {n3824_o, n3825_o};
  /* find_the_damn_issue_sky130.vhd:1686:17  */
  assign n3827_o = n3821_o ? n3826_o : n3814_o;
  /* find_the_damn_issue_sky130.vhd:1692:44  */
  assign n3829_o = s_followupstate == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1692:23  */
  assign n3830_o = ~n3829_o;
  /* find_the_damn_issue_sky130.vhd:1692:71  */
  assign n3832_o = s_state == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:1692:87  */
  assign n3833_o = n3832_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1692:57  */
  assign n3834_o = n3830_o & n3833_o;
  /* find_the_damn_issue_sky130.vhd:1693:175  */
  assign n3835_o = n3827_o[10:0];
  /* find_the_damn_issue_sky130.vhd:1693:115  */
  assign n3836_o = {n3646_o, n3835_o};
  /* find_the_damn_issue_sky130.vhd:1692:17  */
  assign n3837_o = n3834_o ? n3836_o : n3827_o;
  /* find_the_damn_issue_sky130.vhd:1698:47  */
  assign n3838_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1699:17  */
  assign n3839_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid ? s_command_bit_3_4 : s_config_idleclockstate;
  /* find_the_damn_issue_sky130.vhd:1705:77  */
  assign n3841_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1705:81  */
  assign n3842_o = n3841_o != n3839_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3849_o = n3842_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1705:120  */
  assign n3850_o = ~s_config_clockthreephase;
  /* find_the_damn_issue_sky130.vhd:1705:114  */
  assign n3851_o = n3849_o & n3850_o;
  /* find_the_damn_issue_sky130.vhd:1704:17  */
  assign n3852_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? n3851_o : n3250_o;
  /* find_the_damn_issue_sky130.vhd:1710:77  */
  assign n3854_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1710:93  */
  assign n3855_o = in_command[2];
  /* find_the_damn_issue_sky130.vhd:1710:81  */
  assign n3856_o = n3854_o != n3855_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3863_o = n3856_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1711:55  */
  assign n3864_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1711:42  */
  assign n3865_o = ~n3864_o;
  /* find_the_damn_issue_sky130.vhd:1712:55  */
  assign n3866_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1712:42  */
  assign n3867_o = ~n3866_o;
  /* find_the_damn_issue_sky130.vhd:1715:57  */
  assign n3868_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1715:44  */
  assign n3869_o = ~n3868_o;
  /* find_the_damn_issue_sky130.vhd:1717:47  */
  assign n3870_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1718:17  */
  assign n3871_o = s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed ? s_command_bit_1_4 : s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:1723:49  */
  assign n3873_o = {7'b0000000, in_unnamed_2};
  /* find_the_damn_issue_sky130.vhd:1724:72  */
  assign n3874_o = n3873_o[7:2];
  /* find_the_damn_issue_sky130.vhd:1724:85  */
  assign n3875_o = {n3874_o, in_unnamed_3};
  /* find_the_damn_issue_sky130.vhd:1724:119  */
  assign n3876_o = n3873_o[0];
  /* find_the_damn_issue_sky130.vhd:1724:100  */
  assign n3877_o = {n3875_o, n3876_o};
  /* find_the_damn_issue_sky130.vhd:1725:104  */
  assign n3878_o = n3877_o[7:3];
  /* find_the_damn_issue_sky130.vhd:1725:117  */
  assign n3879_o = {n3878_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:1725:167  */
  assign n3880_o = n3877_o[1:0];
  /* find_the_damn_issue_sky130.vhd:1725:132  */
  assign n3881_o = {n3879_o, n3880_o};
  /* find_the_damn_issue_sky130.vhd:1726:136  */
  assign n3882_o = n3881_o[7:4];
  /* find_the_damn_issue_sky130.vhd:1726:149  */
  assign n3883_o = {n3882_o, in_unnamed_5};
  /* find_the_damn_issue_sky130.vhd:1726:215  */
  assign n3884_o = n3881_o[2:0];
  /* find_the_damn_issue_sky130.vhd:1726:164  */
  assign n3885_o = {n3883_o, n3884_o};
  /* find_the_damn_issue_sky130.vhd:1727:168  */
  assign n3886_o = n3885_o[7:5];
  /* find_the_damn_issue_sky130.vhd:1727:181  */
  assign n3887_o = {n3886_o, in_unnamed_6};
  /* find_the_damn_issue_sky130.vhd:1727:263  */
  assign n3888_o = n3885_o[3:0];
  /* find_the_damn_issue_sky130.vhd:1727:196  */
  assign n3889_o = {n3887_o, n3888_o};
  /* find_the_damn_issue_sky130.vhd:1728:200  */
  assign n3890_o = n3889_o[7:6];
  /* find_the_damn_issue_sky130.vhd:1728:213  */
  assign n3891_o = {n3890_o, in_unnamed_7};
  /* find_the_damn_issue_sky130.vhd:1728:311  */
  assign n3892_o = n3889_o[4:0];
  /* find_the_damn_issue_sky130.vhd:1728:228  */
  assign n3893_o = {n3891_o, n3892_o};
  /* find_the_damn_issue_sky130.vhd:1729:224  */
  assign n3894_o = n3893_o[7];
  /* find_the_damn_issue_sky130.vhd:1729:237  */
  assign n3896_o = {n3894_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:1729:342  */
  assign n3897_o = n3893_o[5:0];
  /* find_the_damn_issue_sky130.vhd:1729:243  */
  assign n3898_o = {n3896_o, n3897_o};
  /* find_the_damn_issue_sky130.vhd:1730:47  */
  assign n3899_o = in_command[6:0];
  /* find_the_damn_issue_sky130.vhd:1731:49  */
  assign n3900_o = in_command[6:1];
  /* find_the_damn_issue_sky130.vhd:1732:197  */
  assign n3903_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3910_o = n3903_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1732:244  */
  assign n3912_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1732:257  */
  assign n3914_o = n3912_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3921_o = n3914_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1732:298  */
  assign n3922_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1732:285  */
  assign n3923_o = ~n3922_o;
  /* find_the_damn_issue_sky130.vhd:1732:279  */
  assign n3924_o = ~n3923_o;
  /* find_the_damn_issue_sky130.vhd:1732:273  */
  assign n3925_o = ~n3924_o;
  /* find_the_damn_issue_sky130.vhd:1732:268  */
  assign n3926_o = n3921_o | n3925_o;
  /* find_the_damn_issue_sky130.vhd:1732:216  */
  assign n3927_o = ~n3926_o;
  /* find_the_damn_issue_sky130.vhd:1732:335  */
  assign n3930_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n3937_o = n3930_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1732:345  */
  assign n3938_o = n3937_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1732:366  */
  assign n3939_o = n3938_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1732:307  */
  assign n3940_o = n3927_o & n3939_o;
  /* find_the_damn_issue_sky130.vhd:1732:209  */
  assign n3941_o = n3910_o & n3940_o;
  /* find_the_damn_issue_sky130.vhd:1733:40  */
  assign n3943_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1733:86  */
  assign n3945_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1733:124  */
  assign n3946_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1733:137  */
  assign n3948_o = n3946_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1733:178  */
  assign n3949_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1733:165  */
  assign n3950_o = ~n3949_o;
  /* find_the_damn_issue_sky130.vhd:1733:159  */
  assign n3951_o = ~n3950_o;
  /* find_the_damn_issue_sky130.vhd:1733:153  */
  assign n3952_o = ~n3951_o;
  /* find_the_damn_issue_sky130.vhd:1733:148  */
  assign n3953_o = n3948_o | n3952_o;
  /* find_the_damn_issue_sky130.vhd:1733:109  */
  assign n3954_o = ~n3953_o;
  /* find_the_damn_issue_sky130.vhd:1733:103  */
  assign n3955_o = ~n3954_o;
  /* find_the_damn_issue_sky130.vhd:1733:98  */
  assign n3956_o = n3945_o | n3955_o;
  /* find_the_damn_issue_sky130.vhd:1733:60  */
  assign n3957_o = ~n3956_o;
  /* find_the_damn_issue_sky130.vhd:1733:211  */
  assign n3959_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1733:221  */
  assign n3960_o = n3959_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1733:248  */
  assign n3961_o = n3960_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1733:196  */
  assign n3962_o = n3957_o & n3961_o;
  /* find_the_damn_issue_sky130.vhd:1733:53  */
  assign n3963_o = n3943_o & n3962_o;
  /* find_the_damn_issue_sky130.vhd:1733:17  */
  assign n3965_o = n3963_o ? 4'b0111 : n3244_o;
  /* find_the_damn_issue_sky130.vhd:1738:42  */
  assign n3967_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1738:85  */
  assign n3969_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1738:133  */
  assign n3971_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1738:183  */
  assign n3973_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1738:221  */
  assign n3974_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1738:234  */
  assign n3976_o = n3974_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1738:275  */
  assign n3977_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1738:262  */
  assign n3978_o = ~n3977_o;
  /* find_the_damn_issue_sky130.vhd:1738:256  */
  assign n3979_o = ~n3978_o;
  /* find_the_damn_issue_sky130.vhd:1738:250  */
  assign n3980_o = ~n3979_o;
  /* find_the_damn_issue_sky130.vhd:1738:245  */
  assign n3981_o = n3976_o | n3980_o;
  /* find_the_damn_issue_sky130.vhd:1738:206  */
  assign n3982_o = ~n3981_o;
  /* find_the_damn_issue_sky130.vhd:1738:200  */
  assign n3983_o = ~n3982_o;
  /* find_the_damn_issue_sky130.vhd:1738:195  */
  assign n3984_o = n3973_o | n3983_o;
  /* find_the_damn_issue_sky130.vhd:1738:157  */
  assign n3985_o = ~n3984_o;
  /* find_the_damn_issue_sky130.vhd:1738:151  */
  assign n3986_o = ~n3985_o;
  /* find_the_damn_issue_sky130.vhd:1738:146  */
  assign n3987_o = n3971_o | n3986_o;
  /* find_the_damn_issue_sky130.vhd:1738:109  */
  assign n3988_o = ~n3987_o;
  /* find_the_damn_issue_sky130.vhd:1738:103  */
  assign n3989_o = ~n3988_o;
  /* find_the_damn_issue_sky130.vhd:1738:98  */
  assign n3990_o = n3969_o | n3989_o;
  /* find_the_damn_issue_sky130.vhd:1738:61  */
  assign n3991_o = ~n3990_o;
  /* find_the_damn_issue_sky130.vhd:1738:314  */
  assign n3993_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1738:324  */
  assign n3994_o = n3993_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1738:351  */
  assign n3995_o = n3994_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1738:299  */
  assign n3996_o = n3991_o & n3995_o;
  /* find_the_damn_issue_sky130.vhd:1738:54  */
  assign n3997_o = n3967_o & n3996_o;
  /* find_the_damn_issue_sky130.vhd:1739:73  */
  assign n3998_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1739:60  */
  assign n3999_o = ~n3998_o;
  /* find_the_damn_issue_sky130.vhd:1738:17  */
  assign n4000_o = n3997_o ? n3999_o : s_config_stopclocksignal;
  /* find_the_damn_issue_sky130.vhd:1743:42  */
  assign n4002_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1743:85  */
  assign n4004_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1743:133  */
  assign n4006_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1743:183  */
  assign n4008_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1743:221  */
  assign n4009_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1743:234  */
  assign n4011_o = n4009_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1743:275  */
  assign n4012_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1743:262  */
  assign n4013_o = ~n4012_o;
  /* find_the_damn_issue_sky130.vhd:1743:256  */
  assign n4014_o = ~n4013_o;
  /* find_the_damn_issue_sky130.vhd:1743:250  */
  assign n4015_o = ~n4014_o;
  /* find_the_damn_issue_sky130.vhd:1743:245  */
  assign n4016_o = n4011_o | n4015_o;
  /* find_the_damn_issue_sky130.vhd:1743:206  */
  assign n4017_o = ~n4016_o;
  /* find_the_damn_issue_sky130.vhd:1743:200  */
  assign n4018_o = ~n4017_o;
  /* find_the_damn_issue_sky130.vhd:1743:195  */
  assign n4019_o = n4008_o | n4018_o;
  /* find_the_damn_issue_sky130.vhd:1743:157  */
  assign n4020_o = ~n4019_o;
  /* find_the_damn_issue_sky130.vhd:1743:151  */
  assign n4021_o = ~n4020_o;
  /* find_the_damn_issue_sky130.vhd:1743:146  */
  assign n4022_o = n4006_o | n4021_o;
  /* find_the_damn_issue_sky130.vhd:1743:109  */
  assign n4023_o = ~n4022_o;
  /* find_the_damn_issue_sky130.vhd:1743:103  */
  assign n4024_o = ~n4023_o;
  /* find_the_damn_issue_sky130.vhd:1743:98  */
  assign n4025_o = n4004_o | n4024_o;
  /* find_the_damn_issue_sky130.vhd:1743:61  */
  assign n4026_o = ~n4025_o;
  /* find_the_damn_issue_sky130.vhd:1743:314  */
  assign n4028_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1743:324  */
  assign n4029_o = n4028_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1743:351  */
  assign n4030_o = n4029_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1743:299  */
  assign n4031_o = n4026_o & n4030_o;
  /* find_the_damn_issue_sky130.vhd:1743:54  */
  assign n4032_o = n4002_o & n4031_o;
  /* find_the_damn_issue_sky130.vhd:1743:17  */
  assign n4034_o = n4032_o ? 4'b1100 : n3965_o;
  /* find_the_damn_issue_sky130.vhd:1748:150  */
  assign n4037_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4044_o = n4037_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1748:208  */
  assign n4047_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4054_o = n4047_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1748:268  */
  assign n4057_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4064_o = n4057_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1748:329  */
  assign n4067_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4074_o = n4067_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1748:392  */
  assign n4077_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4084_o = n4077_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1748:443  */
  assign n4086_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1748:456  */
  assign n4088_o = n4086_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4095_o = n4088_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1748:497  */
  assign n4096_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1748:484  */
  assign n4097_o = ~n4096_o;
  /* find_the_damn_issue_sky130.vhd:1748:478  */
  assign n4098_o = ~n4097_o;
  /* find_the_damn_issue_sky130.vhd:1748:472  */
  assign n4099_o = ~n4098_o;
  /* find_the_damn_issue_sky130.vhd:1748:467  */
  assign n4100_o = n4095_o | n4099_o;
  /* find_the_damn_issue_sky130.vhd:1748:415  */
  assign n4101_o = ~n4100_o;
  /* find_the_damn_issue_sky130.vhd:1748:409  */
  assign n4102_o = ~n4101_o;
  /* find_the_damn_issue_sky130.vhd:1748:404  */
  assign n4103_o = n4084_o | n4102_o;
  /* find_the_damn_issue_sky130.vhd:1748:353  */
  assign n4104_o = ~n4103_o;
  /* find_the_damn_issue_sky130.vhd:1748:347  */
  assign n4105_o = ~n4104_o;
  /* find_the_damn_issue_sky130.vhd:1748:342  */
  assign n4106_o = n4074_o | n4105_o;
  /* find_the_damn_issue_sky130.vhd:1748:292  */
  assign n4107_o = ~n4106_o;
  /* find_the_damn_issue_sky130.vhd:1748:286  */
  assign n4108_o = ~n4107_o;
  /* find_the_damn_issue_sky130.vhd:1748:281  */
  assign n4109_o = n4064_o | n4108_o;
  /* find_the_damn_issue_sky130.vhd:1748:231  */
  assign n4110_o = ~n4109_o;
  /* find_the_damn_issue_sky130.vhd:1748:225  */
  assign n4111_o = ~n4110_o;
  /* find_the_damn_issue_sky130.vhd:1748:220  */
  assign n4112_o = n4054_o | n4111_o;
  /* find_the_damn_issue_sky130.vhd:1748:169  */
  assign n4113_o = ~n4112_o;
  /* find_the_damn_issue_sky130.vhd:1748:546  */
  assign n4116_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4123_o = n4116_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1748:556  */
  assign n4124_o = n4123_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1748:577  */
  assign n4125_o = n4124_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1748:518  */
  assign n4126_o = n4113_o & n4125_o;
  /* find_the_damn_issue_sky130.vhd:1748:162  */
  assign n4127_o = n4044_o & n4126_o;
  /* find_the_damn_issue_sky130.vhd:1749:42  */
  assign n4129_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1749:87  */
  assign n4131_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1749:136  */
  assign n4133_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1749:183  */
  assign n4135_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1749:231  */
  assign n4137_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1749:281  */
  assign n4139_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1749:319  */
  assign n4140_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1749:332  */
  assign n4142_o = n4140_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1749:373  */
  assign n4143_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1749:360  */
  assign n4144_o = ~n4143_o;
  /* find_the_damn_issue_sky130.vhd:1749:354  */
  assign n4145_o = ~n4144_o;
  /* find_the_damn_issue_sky130.vhd:1749:348  */
  assign n4146_o = ~n4145_o;
  /* find_the_damn_issue_sky130.vhd:1749:343  */
  assign n4147_o = n4142_o | n4146_o;
  /* find_the_damn_issue_sky130.vhd:1749:304  */
  assign n4148_o = ~n4147_o;
  /* find_the_damn_issue_sky130.vhd:1749:298  */
  assign n4149_o = ~n4148_o;
  /* find_the_damn_issue_sky130.vhd:1749:293  */
  assign n4150_o = n4139_o | n4149_o;
  /* find_the_damn_issue_sky130.vhd:1749:255  */
  assign n4151_o = ~n4150_o;
  /* find_the_damn_issue_sky130.vhd:1749:249  */
  assign n4152_o = ~n4151_o;
  /* find_the_damn_issue_sky130.vhd:1749:244  */
  assign n4153_o = n4137_o | n4152_o;
  /* find_the_damn_issue_sky130.vhd:1749:207  */
  assign n4154_o = ~n4153_o;
  /* find_the_damn_issue_sky130.vhd:1749:201  */
  assign n4155_o = ~n4154_o;
  /* find_the_damn_issue_sky130.vhd:1749:196  */
  assign n4156_o = n4135_o | n4155_o;
  /* find_the_damn_issue_sky130.vhd:1749:159  */
  assign n4157_o = ~n4156_o;
  /* find_the_damn_issue_sky130.vhd:1749:153  */
  assign n4158_o = ~n4157_o;
  /* find_the_damn_issue_sky130.vhd:1749:148  */
  assign n4159_o = n4133_o | n4158_o;
  /* find_the_damn_issue_sky130.vhd:1749:110  */
  assign n4160_o = ~n4159_o;
  /* find_the_damn_issue_sky130.vhd:1749:104  */
  assign n4161_o = ~n4160_o;
  /* find_the_damn_issue_sky130.vhd:1749:99  */
  assign n4162_o = n4131_o | n4161_o;
  /* find_the_damn_issue_sky130.vhd:1749:61  */
  assign n4163_o = ~n4162_o;
  /* find_the_damn_issue_sky130.vhd:1749:418  */
  assign n4165_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1749:428  */
  assign n4166_o = n4165_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1749:455  */
  assign n4167_o = n4166_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1749:403  */
  assign n4168_o = n4163_o & n4167_o;
  /* find_the_damn_issue_sky130.vhd:1749:54  */
  assign n4169_o = n4129_o & n4168_o;
  /* find_the_damn_issue_sky130.vhd:1749:17  */
  assign n4171_o = n4169_o ? 4'b1001 : n3195_o;
  /* find_the_damn_issue_sky130.vhd:1754:42  */
  assign n4173_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1754:87  */
  assign n4175_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1754:136  */
  assign n4177_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1754:183  */
  assign n4179_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1754:231  */
  assign n4181_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1754:281  */
  assign n4183_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1754:319  */
  assign n4184_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1754:332  */
  assign n4186_o = n4184_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1754:373  */
  assign n4187_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1754:360  */
  assign n4188_o = ~n4187_o;
  /* find_the_damn_issue_sky130.vhd:1754:354  */
  assign n4189_o = ~n4188_o;
  /* find_the_damn_issue_sky130.vhd:1754:348  */
  assign n4190_o = ~n4189_o;
  /* find_the_damn_issue_sky130.vhd:1754:343  */
  assign n4191_o = n4186_o | n4190_o;
  /* find_the_damn_issue_sky130.vhd:1754:304  */
  assign n4192_o = ~n4191_o;
  /* find_the_damn_issue_sky130.vhd:1754:298  */
  assign n4193_o = ~n4192_o;
  /* find_the_damn_issue_sky130.vhd:1754:293  */
  assign n4194_o = n4183_o | n4193_o;
  /* find_the_damn_issue_sky130.vhd:1754:255  */
  assign n4195_o = ~n4194_o;
  /* find_the_damn_issue_sky130.vhd:1754:249  */
  assign n4196_o = ~n4195_o;
  /* find_the_damn_issue_sky130.vhd:1754:244  */
  assign n4197_o = n4181_o | n4196_o;
  /* find_the_damn_issue_sky130.vhd:1754:207  */
  assign n4198_o = ~n4197_o;
  /* find_the_damn_issue_sky130.vhd:1754:201  */
  assign n4199_o = ~n4198_o;
  /* find_the_damn_issue_sky130.vhd:1754:196  */
  assign n4200_o = n4179_o | n4199_o;
  /* find_the_damn_issue_sky130.vhd:1754:159  */
  assign n4201_o = ~n4200_o;
  /* find_the_damn_issue_sky130.vhd:1754:153  */
  assign n4202_o = ~n4201_o;
  /* find_the_damn_issue_sky130.vhd:1754:148  */
  assign n4203_o = n4177_o | n4202_o;
  /* find_the_damn_issue_sky130.vhd:1754:110  */
  assign n4204_o = ~n4203_o;
  /* find_the_damn_issue_sky130.vhd:1754:104  */
  assign n4205_o = ~n4204_o;
  /* find_the_damn_issue_sky130.vhd:1754:99  */
  assign n4206_o = n4175_o | n4205_o;
  /* find_the_damn_issue_sky130.vhd:1754:61  */
  assign n4207_o = ~n4206_o;
  /* find_the_damn_issue_sky130.vhd:1754:418  */
  assign n4209_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1754:428  */
  assign n4210_o = n4209_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1754:455  */
  assign n4211_o = n4210_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1754:403  */
  assign n4212_o = n4207_o & n4211_o;
  /* find_the_damn_issue_sky130.vhd:1754:54  */
  assign n4213_o = n4173_o & n4212_o;
  /* find_the_damn_issue_sky130.vhd:1754:17  */
  assign n4215_o = n4213_o ? 4'b0110 : n4034_o;
  /* find_the_damn_issue_sky130.vhd:1759:30  */
  assign n4216_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1759:66  */
  assign n4218_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1759:111  */
  assign n4220_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1759:160  */
  assign n4222_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1759:207  */
  assign n4224_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1759:255  */
  assign n4226_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1759:305  */
  assign n4228_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1759:343  */
  assign n4229_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1759:356  */
  assign n4231_o = n4229_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1759:397  */
  assign n4232_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1759:384  */
  assign n4233_o = ~n4232_o;
  /* find_the_damn_issue_sky130.vhd:1759:378  */
  assign n4234_o = ~n4233_o;
  /* find_the_damn_issue_sky130.vhd:1759:372  */
  assign n4235_o = ~n4234_o;
  /* find_the_damn_issue_sky130.vhd:1759:367  */
  assign n4236_o = n4231_o | n4235_o;
  /* find_the_damn_issue_sky130.vhd:1759:328  */
  assign n4237_o = ~n4236_o;
  /* find_the_damn_issue_sky130.vhd:1759:322  */
  assign n4238_o = ~n4237_o;
  /* find_the_damn_issue_sky130.vhd:1759:317  */
  assign n4239_o = n4228_o | n4238_o;
  /* find_the_damn_issue_sky130.vhd:1759:279  */
  assign n4240_o = ~n4239_o;
  /* find_the_damn_issue_sky130.vhd:1759:273  */
  assign n4241_o = ~n4240_o;
  /* find_the_damn_issue_sky130.vhd:1759:268  */
  assign n4242_o = n4226_o | n4241_o;
  /* find_the_damn_issue_sky130.vhd:1759:231  */
  assign n4243_o = ~n4242_o;
  /* find_the_damn_issue_sky130.vhd:1759:225  */
  assign n4244_o = ~n4243_o;
  /* find_the_damn_issue_sky130.vhd:1759:220  */
  assign n4245_o = n4224_o | n4244_o;
  /* find_the_damn_issue_sky130.vhd:1759:183  */
  assign n4246_o = ~n4245_o;
  /* find_the_damn_issue_sky130.vhd:1759:177  */
  assign n4247_o = ~n4246_o;
  /* find_the_damn_issue_sky130.vhd:1759:172  */
  assign n4248_o = n4222_o | n4247_o;
  /* find_the_damn_issue_sky130.vhd:1759:134  */
  assign n4249_o = ~n4248_o;
  /* find_the_damn_issue_sky130.vhd:1759:128  */
  assign n4250_o = ~n4249_o;
  /* find_the_damn_issue_sky130.vhd:1759:123  */
  assign n4251_o = n4220_o | n4250_o;
  /* find_the_damn_issue_sky130.vhd:1759:85  */
  assign n4252_o = ~n4251_o;
  /* find_the_damn_issue_sky130.vhd:1759:442  */
  assign n4254_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1759:452  */
  assign n4255_o = n4254_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1759:479  */
  assign n4256_o = n4255_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1759:427  */
  assign n4257_o = n4252_o & n4256_o;
  /* find_the_damn_issue_sky130.vhd:1759:78  */
  assign n4258_o = n4218_o & n4257_o;
  /* find_the_damn_issue_sky130.vhd:1759:40  */
  assign n4259_o = n4216_o & n4258_o;
  /* find_the_damn_issue_sky130.vhd:1759:17  */
  assign n4261_o = n4259_o ? 4'b0111 : n4215_o;
  /* find_the_damn_issue_sky130.vhd:1764:42  */
  assign n4263_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1764:87  */
  assign n4265_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1764:136  */
  assign n4267_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1764:185  */
  assign n4269_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1764:232  */
  assign n4271_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1764:280  */
  assign n4273_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1764:330  */
  assign n4275_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1764:368  */
  assign n4276_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1764:381  */
  assign n4278_o = n4276_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1764:422  */
  assign n4279_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1764:409  */
  assign n4280_o = ~n4279_o;
  /* find_the_damn_issue_sky130.vhd:1764:403  */
  assign n4281_o = ~n4280_o;
  /* find_the_damn_issue_sky130.vhd:1764:397  */
  assign n4282_o = ~n4281_o;
  /* find_the_damn_issue_sky130.vhd:1764:392  */
  assign n4283_o = n4278_o | n4282_o;
  /* find_the_damn_issue_sky130.vhd:1764:353  */
  assign n4284_o = ~n4283_o;
  /* find_the_damn_issue_sky130.vhd:1764:347  */
  assign n4285_o = ~n4284_o;
  /* find_the_damn_issue_sky130.vhd:1764:342  */
  assign n4286_o = n4275_o | n4285_o;
  /* find_the_damn_issue_sky130.vhd:1764:304  */
  assign n4287_o = ~n4286_o;
  /* find_the_damn_issue_sky130.vhd:1764:298  */
  assign n4288_o = ~n4287_o;
  /* find_the_damn_issue_sky130.vhd:1764:293  */
  assign n4289_o = n4273_o | n4288_o;
  /* find_the_damn_issue_sky130.vhd:1764:256  */
  assign n4290_o = ~n4289_o;
  /* find_the_damn_issue_sky130.vhd:1764:250  */
  assign n4291_o = ~n4290_o;
  /* find_the_damn_issue_sky130.vhd:1764:245  */
  assign n4292_o = n4271_o | n4291_o;
  /* find_the_damn_issue_sky130.vhd:1764:208  */
  assign n4293_o = ~n4292_o;
  /* find_the_damn_issue_sky130.vhd:1764:202  */
  assign n4294_o = ~n4293_o;
  /* find_the_damn_issue_sky130.vhd:1764:197  */
  assign n4295_o = n4269_o | n4294_o;
  /* find_the_damn_issue_sky130.vhd:1764:159  */
  assign n4296_o = ~n4295_o;
  /* find_the_damn_issue_sky130.vhd:1764:153  */
  assign n4297_o = ~n4296_o;
  /* find_the_damn_issue_sky130.vhd:1764:148  */
  assign n4298_o = n4267_o | n4297_o;
  /* find_the_damn_issue_sky130.vhd:1764:110  */
  assign n4299_o = ~n4298_o;
  /* find_the_damn_issue_sky130.vhd:1764:104  */
  assign n4300_o = ~n4299_o;
  /* find_the_damn_issue_sky130.vhd:1764:99  */
  assign n4301_o = n4265_o | n4300_o;
  /* find_the_damn_issue_sky130.vhd:1764:61  */
  assign n4302_o = ~n4301_o;
  /* find_the_damn_issue_sky130.vhd:1764:470  */
  assign n4304_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1764:480  */
  assign n4305_o = n4304_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1764:507  */
  assign n4306_o = n4305_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1764:455  */
  assign n4307_o = n4302_o & n4306_o;
  /* find_the_damn_issue_sky130.vhd:1764:54  */
  assign n4308_o = n4263_o & n4307_o;
  /* find_the_damn_issue_sky130.vhd:1764:17  */
  assign n4310_o = n4308_o ? 1'b0 : n3282_o;
  /* find_the_damn_issue_sky130.vhd:1769:42  */
  assign n4312_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1769:87  */
  assign n4314_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1769:136  */
  assign n4316_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1769:185  */
  assign n4318_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1769:232  */
  assign n4320_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1769:280  */
  assign n4322_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1769:330  */
  assign n4324_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1769:368  */
  assign n4325_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1769:381  */
  assign n4327_o = n4325_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1769:422  */
  assign n4328_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1769:409  */
  assign n4329_o = ~n4328_o;
  /* find_the_damn_issue_sky130.vhd:1769:403  */
  assign n4330_o = ~n4329_o;
  /* find_the_damn_issue_sky130.vhd:1769:397  */
  assign n4331_o = ~n4330_o;
  /* find_the_damn_issue_sky130.vhd:1769:392  */
  assign n4332_o = n4327_o | n4331_o;
  /* find_the_damn_issue_sky130.vhd:1769:353  */
  assign n4333_o = ~n4332_o;
  /* find_the_damn_issue_sky130.vhd:1769:347  */
  assign n4334_o = ~n4333_o;
  /* find_the_damn_issue_sky130.vhd:1769:342  */
  assign n4335_o = n4324_o | n4334_o;
  /* find_the_damn_issue_sky130.vhd:1769:304  */
  assign n4336_o = ~n4335_o;
  /* find_the_damn_issue_sky130.vhd:1769:298  */
  assign n4337_o = ~n4336_o;
  /* find_the_damn_issue_sky130.vhd:1769:293  */
  assign n4338_o = n4322_o | n4337_o;
  /* find_the_damn_issue_sky130.vhd:1769:256  */
  assign n4339_o = ~n4338_o;
  /* find_the_damn_issue_sky130.vhd:1769:250  */
  assign n4340_o = ~n4339_o;
  /* find_the_damn_issue_sky130.vhd:1769:245  */
  assign n4341_o = n4320_o | n4340_o;
  /* find_the_damn_issue_sky130.vhd:1769:208  */
  assign n4342_o = ~n4341_o;
  /* find_the_damn_issue_sky130.vhd:1769:202  */
  assign n4343_o = ~n4342_o;
  /* find_the_damn_issue_sky130.vhd:1769:197  */
  assign n4344_o = n4318_o | n4343_o;
  /* find_the_damn_issue_sky130.vhd:1769:159  */
  assign n4345_o = ~n4344_o;
  /* find_the_damn_issue_sky130.vhd:1769:153  */
  assign n4346_o = ~n4345_o;
  /* find_the_damn_issue_sky130.vhd:1769:148  */
  assign n4347_o = n4316_o | n4346_o;
  /* find_the_damn_issue_sky130.vhd:1769:110  */
  assign n4348_o = ~n4347_o;
  /* find_the_damn_issue_sky130.vhd:1769:104  */
  assign n4349_o = ~n4348_o;
  /* find_the_damn_issue_sky130.vhd:1769:99  */
  assign n4350_o = n4314_o | n4349_o;
  /* find_the_damn_issue_sky130.vhd:1769:61  */
  assign n4351_o = ~n4350_o;
  /* find_the_damn_issue_sky130.vhd:1769:470  */
  assign n4353_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1769:480  */
  assign n4354_o = n4353_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1769:507  */
  assign n4355_o = n4354_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1769:455  */
  assign n4356_o = n4351_o & n4355_o;
  /* find_the_damn_issue_sky130.vhd:1769:54  */
  assign n4357_o = n4312_o & n4356_o;
  /* find_the_damn_issue_sky130.vhd:1769:17  */
  assign n4359_o = n4357_o ? 1'b1 : n3288_o;
  /* find_the_damn_issue_sky130.vhd:1774:42  */
  assign n4361_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1774:87  */
  assign n4363_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1774:136  */
  assign n4365_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1774:185  */
  assign n4367_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1774:232  */
  assign n4369_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1774:280  */
  assign n4371_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1774:330  */
  assign n4373_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1774:368  */
  assign n4374_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1774:381  */
  assign n4376_o = n4374_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1774:422  */
  assign n4377_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1774:409  */
  assign n4378_o = ~n4377_o;
  /* find_the_damn_issue_sky130.vhd:1774:403  */
  assign n4379_o = ~n4378_o;
  /* find_the_damn_issue_sky130.vhd:1774:397  */
  assign n4380_o = ~n4379_o;
  /* find_the_damn_issue_sky130.vhd:1774:392  */
  assign n4381_o = n4376_o | n4380_o;
  /* find_the_damn_issue_sky130.vhd:1774:353  */
  assign n4382_o = ~n4381_o;
  /* find_the_damn_issue_sky130.vhd:1774:347  */
  assign n4383_o = ~n4382_o;
  /* find_the_damn_issue_sky130.vhd:1774:342  */
  assign n4384_o = n4373_o | n4383_o;
  /* find_the_damn_issue_sky130.vhd:1774:304  */
  assign n4385_o = ~n4384_o;
  /* find_the_damn_issue_sky130.vhd:1774:298  */
  assign n4386_o = ~n4385_o;
  /* find_the_damn_issue_sky130.vhd:1774:293  */
  assign n4387_o = n4371_o | n4386_o;
  /* find_the_damn_issue_sky130.vhd:1774:256  */
  assign n4388_o = ~n4387_o;
  /* find_the_damn_issue_sky130.vhd:1774:250  */
  assign n4389_o = ~n4388_o;
  /* find_the_damn_issue_sky130.vhd:1774:245  */
  assign n4390_o = n4369_o | n4389_o;
  /* find_the_damn_issue_sky130.vhd:1774:208  */
  assign n4391_o = ~n4390_o;
  /* find_the_damn_issue_sky130.vhd:1774:202  */
  assign n4392_o = ~n4391_o;
  /* find_the_damn_issue_sky130.vhd:1774:197  */
  assign n4393_o = n4367_o | n4392_o;
  /* find_the_damn_issue_sky130.vhd:1774:159  */
  assign n4394_o = ~n4393_o;
  /* find_the_damn_issue_sky130.vhd:1774:153  */
  assign n4395_o = ~n4394_o;
  /* find_the_damn_issue_sky130.vhd:1774:148  */
  assign n4396_o = n4365_o | n4395_o;
  /* find_the_damn_issue_sky130.vhd:1774:110  */
  assign n4397_o = ~n4396_o;
  /* find_the_damn_issue_sky130.vhd:1774:104  */
  assign n4398_o = ~n4397_o;
  /* find_the_damn_issue_sky130.vhd:1774:99  */
  assign n4399_o = n4363_o | n4398_o;
  /* find_the_damn_issue_sky130.vhd:1774:61  */
  assign n4400_o = ~n4399_o;
  /* find_the_damn_issue_sky130.vhd:1774:470  */
  assign n4402_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1774:480  */
  assign n4403_o = n4402_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1774:507  */
  assign n4404_o = n4403_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1774:455  */
  assign n4405_o = n4400_o & n4404_o;
  /* find_the_damn_issue_sky130.vhd:1774:54  */
  assign n4406_o = n4361_o & n4405_o;
  /* find_the_damn_issue_sky130.vhd:1775:73  */
  assign n4407_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1775:60  */
  assign n4408_o = ~n4407_o;
  /* find_the_damn_issue_sky130.vhd:1774:17  */
  assign n4409_o = n4406_o ? n4408_o : n4000_o;
  /* find_the_damn_issue_sky130.vhd:1779:42  */
  assign n4411_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1779:87  */
  assign n4413_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1779:136  */
  assign n4415_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1779:185  */
  assign n4417_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1779:232  */
  assign n4419_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1779:280  */
  assign n4421_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1779:330  */
  assign n4423_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1779:368  */
  assign n4424_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1779:381  */
  assign n4426_o = n4424_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1779:422  */
  assign n4427_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1779:409  */
  assign n4428_o = ~n4427_o;
  /* find_the_damn_issue_sky130.vhd:1779:403  */
  assign n4429_o = ~n4428_o;
  /* find_the_damn_issue_sky130.vhd:1779:397  */
  assign n4430_o = ~n4429_o;
  /* find_the_damn_issue_sky130.vhd:1779:392  */
  assign n4431_o = n4426_o | n4430_o;
  /* find_the_damn_issue_sky130.vhd:1779:353  */
  assign n4432_o = ~n4431_o;
  /* find_the_damn_issue_sky130.vhd:1779:347  */
  assign n4433_o = ~n4432_o;
  /* find_the_damn_issue_sky130.vhd:1779:342  */
  assign n4434_o = n4423_o | n4433_o;
  /* find_the_damn_issue_sky130.vhd:1779:304  */
  assign n4435_o = ~n4434_o;
  /* find_the_damn_issue_sky130.vhd:1779:298  */
  assign n4436_o = ~n4435_o;
  /* find_the_damn_issue_sky130.vhd:1779:293  */
  assign n4437_o = n4421_o | n4436_o;
  /* find_the_damn_issue_sky130.vhd:1779:256  */
  assign n4438_o = ~n4437_o;
  /* find_the_damn_issue_sky130.vhd:1779:250  */
  assign n4439_o = ~n4438_o;
  /* find_the_damn_issue_sky130.vhd:1779:245  */
  assign n4440_o = n4419_o | n4439_o;
  /* find_the_damn_issue_sky130.vhd:1779:208  */
  assign n4441_o = ~n4440_o;
  /* find_the_damn_issue_sky130.vhd:1779:202  */
  assign n4442_o = ~n4441_o;
  /* find_the_damn_issue_sky130.vhd:1779:197  */
  assign n4443_o = n4417_o | n4442_o;
  /* find_the_damn_issue_sky130.vhd:1779:159  */
  assign n4444_o = ~n4443_o;
  /* find_the_damn_issue_sky130.vhd:1779:153  */
  assign n4445_o = ~n4444_o;
  /* find_the_damn_issue_sky130.vhd:1779:148  */
  assign n4446_o = n4415_o | n4445_o;
  /* find_the_damn_issue_sky130.vhd:1779:110  */
  assign n4447_o = ~n4446_o;
  /* find_the_damn_issue_sky130.vhd:1779:104  */
  assign n4448_o = ~n4447_o;
  /* find_the_damn_issue_sky130.vhd:1779:99  */
  assign n4449_o = n4413_o | n4448_o;
  /* find_the_damn_issue_sky130.vhd:1779:61  */
  assign n4450_o = ~n4449_o;
  /* find_the_damn_issue_sky130.vhd:1779:470  */
  assign n4452_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1779:480  */
  assign n4453_o = n4452_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1779:507  */
  assign n4454_o = n4453_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1779:455  */
  assign n4455_o = n4450_o & n4454_o;
  /* find_the_damn_issue_sky130.vhd:1779:54  */
  assign n4456_o = n4411_o & n4455_o;
  /* find_the_damn_issue_sky130.vhd:1779:17  */
  assign n4458_o = n4456_o ? 4'b1001 : n4261_o;
  /* find_the_damn_issue_sky130.vhd:1784:42  */
  assign n4460_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1784:87  */
  assign n4462_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1784:136  */
  assign n4464_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1784:185  */
  assign n4466_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1784:234  */
  assign n4468_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1784:281  */
  assign n4470_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1784:329  */
  assign n4472_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1784:379  */
  assign n4474_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1784:417  */
  assign n4475_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1784:430  */
  assign n4477_o = n4475_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1784:471  */
  assign n4478_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1784:458  */
  assign n4479_o = ~n4478_o;
  /* find_the_damn_issue_sky130.vhd:1784:452  */
  assign n4480_o = ~n4479_o;
  /* find_the_damn_issue_sky130.vhd:1784:446  */
  assign n4481_o = ~n4480_o;
  /* find_the_damn_issue_sky130.vhd:1784:441  */
  assign n4482_o = n4477_o | n4481_o;
  /* find_the_damn_issue_sky130.vhd:1784:402  */
  assign n4483_o = ~n4482_o;
  /* find_the_damn_issue_sky130.vhd:1784:396  */
  assign n4484_o = ~n4483_o;
  /* find_the_damn_issue_sky130.vhd:1784:391  */
  assign n4485_o = n4474_o | n4484_o;
  /* find_the_damn_issue_sky130.vhd:1784:353  */
  assign n4486_o = ~n4485_o;
  /* find_the_damn_issue_sky130.vhd:1784:347  */
  assign n4487_o = ~n4486_o;
  /* find_the_damn_issue_sky130.vhd:1784:342  */
  assign n4488_o = n4472_o | n4487_o;
  /* find_the_damn_issue_sky130.vhd:1784:305  */
  assign n4489_o = ~n4488_o;
  /* find_the_damn_issue_sky130.vhd:1784:299  */
  assign n4490_o = ~n4489_o;
  /* find_the_damn_issue_sky130.vhd:1784:294  */
  assign n4491_o = n4470_o | n4490_o;
  /* find_the_damn_issue_sky130.vhd:1784:257  */
  assign n4492_o = ~n4491_o;
  /* find_the_damn_issue_sky130.vhd:1784:251  */
  assign n4493_o = ~n4492_o;
  /* find_the_damn_issue_sky130.vhd:1784:246  */
  assign n4494_o = n4468_o | n4493_o;
  /* find_the_damn_issue_sky130.vhd:1784:208  */
  assign n4495_o = ~n4494_o;
  /* find_the_damn_issue_sky130.vhd:1784:202  */
  assign n4496_o = ~n4495_o;
  /* find_the_damn_issue_sky130.vhd:1784:197  */
  assign n4497_o = n4466_o | n4496_o;
  /* find_the_damn_issue_sky130.vhd:1784:159  */
  assign n4498_o = ~n4497_o;
  /* find_the_damn_issue_sky130.vhd:1784:153  */
  assign n4499_o = ~n4498_o;
  /* find_the_damn_issue_sky130.vhd:1784:148  */
  assign n4500_o = n4464_o | n4499_o;
  /* find_the_damn_issue_sky130.vhd:1784:110  */
  assign n4501_o = ~n4500_o;
  /* find_the_damn_issue_sky130.vhd:1784:104  */
  assign n4502_o = ~n4501_o;
  /* find_the_damn_issue_sky130.vhd:1784:99  */
  assign n4503_o = n4462_o | n4502_o;
  /* find_the_damn_issue_sky130.vhd:1784:61  */
  assign n4504_o = ~n4503_o;
  /* find_the_damn_issue_sky130.vhd:1784:522  */
  assign n4506_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1784:532  */
  assign n4507_o = n4506_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1784:559  */
  assign n4508_o = n4507_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1784:507  */
  assign n4509_o = n4504_o & n4508_o;
  /* find_the_damn_issue_sky130.vhd:1784:54  */
  assign n4510_o = n4460_o & n4509_o;
  /* find_the_damn_issue_sky130.vhd:1784:17  */
  assign n4512_o = n4510_o ? 1'b1 : n4310_o;
  /* find_the_damn_issue_sky130.vhd:1789:42  */
  assign n4514_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1789:87  */
  assign n4516_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1789:136  */
  assign n4518_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1789:185  */
  assign n4520_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1789:234  */
  assign n4522_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1789:281  */
  assign n4524_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1789:329  */
  assign n4526_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1789:379  */
  assign n4528_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1789:417  */
  assign n4529_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1789:430  */
  assign n4531_o = n4529_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1789:471  */
  assign n4532_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1789:458  */
  assign n4533_o = ~n4532_o;
  /* find_the_damn_issue_sky130.vhd:1789:452  */
  assign n4534_o = ~n4533_o;
  /* find_the_damn_issue_sky130.vhd:1789:446  */
  assign n4535_o = ~n4534_o;
  /* find_the_damn_issue_sky130.vhd:1789:441  */
  assign n4536_o = n4531_o | n4535_o;
  /* find_the_damn_issue_sky130.vhd:1789:402  */
  assign n4537_o = ~n4536_o;
  /* find_the_damn_issue_sky130.vhd:1789:396  */
  assign n4538_o = ~n4537_o;
  /* find_the_damn_issue_sky130.vhd:1789:391  */
  assign n4539_o = n4528_o | n4538_o;
  /* find_the_damn_issue_sky130.vhd:1789:353  */
  assign n4540_o = ~n4539_o;
  /* find_the_damn_issue_sky130.vhd:1789:347  */
  assign n4541_o = ~n4540_o;
  /* find_the_damn_issue_sky130.vhd:1789:342  */
  assign n4542_o = n4526_o | n4541_o;
  /* find_the_damn_issue_sky130.vhd:1789:305  */
  assign n4543_o = ~n4542_o;
  /* find_the_damn_issue_sky130.vhd:1789:299  */
  assign n4544_o = ~n4543_o;
  /* find_the_damn_issue_sky130.vhd:1789:294  */
  assign n4545_o = n4524_o | n4544_o;
  /* find_the_damn_issue_sky130.vhd:1789:257  */
  assign n4546_o = ~n4545_o;
  /* find_the_damn_issue_sky130.vhd:1789:251  */
  assign n4547_o = ~n4546_o;
  /* find_the_damn_issue_sky130.vhd:1789:246  */
  assign n4548_o = n4522_o | n4547_o;
  /* find_the_damn_issue_sky130.vhd:1789:208  */
  assign n4549_o = ~n4548_o;
  /* find_the_damn_issue_sky130.vhd:1789:202  */
  assign n4550_o = ~n4549_o;
  /* find_the_damn_issue_sky130.vhd:1789:197  */
  assign n4551_o = n4520_o | n4550_o;
  /* find_the_damn_issue_sky130.vhd:1789:159  */
  assign n4552_o = ~n4551_o;
  /* find_the_damn_issue_sky130.vhd:1789:153  */
  assign n4553_o = ~n4552_o;
  /* find_the_damn_issue_sky130.vhd:1789:148  */
  assign n4554_o = n4518_o | n4553_o;
  /* find_the_damn_issue_sky130.vhd:1789:110  */
  assign n4555_o = ~n4554_o;
  /* find_the_damn_issue_sky130.vhd:1789:104  */
  assign n4556_o = ~n4555_o;
  /* find_the_damn_issue_sky130.vhd:1789:99  */
  assign n4557_o = n4516_o | n4556_o;
  /* find_the_damn_issue_sky130.vhd:1789:61  */
  assign n4558_o = ~n4557_o;
  /* find_the_damn_issue_sky130.vhd:1789:522  */
  assign n4560_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1789:532  */
  assign n4561_o = n4560_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1789:559  */
  assign n4562_o = n4561_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1789:507  */
  assign n4563_o = n4558_o & n4562_o;
  /* find_the_damn_issue_sky130.vhd:1789:54  */
  assign n4564_o = n4514_o & n4563_o;
  /* find_the_damn_issue_sky130.vhd:1789:17  */
  assign n4566_o = n4564_o ? 1'b1 : n4359_o;
  /* find_the_damn_issue_sky130.vhd:1794:42  */
  assign n4568_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1794:87  */
  assign n4570_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1794:136  */
  assign n4572_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1794:185  */
  assign n4574_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1794:234  */
  assign n4576_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1794:281  */
  assign n4578_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1794:329  */
  assign n4580_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1794:379  */
  assign n4582_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1794:417  */
  assign n4583_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1794:430  */
  assign n4585_o = n4583_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1794:471  */
  assign n4586_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1794:458  */
  assign n4587_o = ~n4586_o;
  /* find_the_damn_issue_sky130.vhd:1794:452  */
  assign n4588_o = ~n4587_o;
  /* find_the_damn_issue_sky130.vhd:1794:446  */
  assign n4589_o = ~n4588_o;
  /* find_the_damn_issue_sky130.vhd:1794:441  */
  assign n4590_o = n4585_o | n4589_o;
  /* find_the_damn_issue_sky130.vhd:1794:402  */
  assign n4591_o = ~n4590_o;
  /* find_the_damn_issue_sky130.vhd:1794:396  */
  assign n4592_o = ~n4591_o;
  /* find_the_damn_issue_sky130.vhd:1794:391  */
  assign n4593_o = n4582_o | n4592_o;
  /* find_the_damn_issue_sky130.vhd:1794:353  */
  assign n4594_o = ~n4593_o;
  /* find_the_damn_issue_sky130.vhd:1794:347  */
  assign n4595_o = ~n4594_o;
  /* find_the_damn_issue_sky130.vhd:1794:342  */
  assign n4596_o = n4580_o | n4595_o;
  /* find_the_damn_issue_sky130.vhd:1794:305  */
  assign n4597_o = ~n4596_o;
  /* find_the_damn_issue_sky130.vhd:1794:299  */
  assign n4598_o = ~n4597_o;
  /* find_the_damn_issue_sky130.vhd:1794:294  */
  assign n4599_o = n4578_o | n4598_o;
  /* find_the_damn_issue_sky130.vhd:1794:257  */
  assign n4600_o = ~n4599_o;
  /* find_the_damn_issue_sky130.vhd:1794:251  */
  assign n4601_o = ~n4600_o;
  /* find_the_damn_issue_sky130.vhd:1794:246  */
  assign n4602_o = n4576_o | n4601_o;
  /* find_the_damn_issue_sky130.vhd:1794:208  */
  assign n4603_o = ~n4602_o;
  /* find_the_damn_issue_sky130.vhd:1794:202  */
  assign n4604_o = ~n4603_o;
  /* find_the_damn_issue_sky130.vhd:1794:197  */
  assign n4605_o = n4574_o | n4604_o;
  /* find_the_damn_issue_sky130.vhd:1794:159  */
  assign n4606_o = ~n4605_o;
  /* find_the_damn_issue_sky130.vhd:1794:153  */
  assign n4607_o = ~n4606_o;
  /* find_the_damn_issue_sky130.vhd:1794:148  */
  assign n4608_o = n4572_o | n4607_o;
  /* find_the_damn_issue_sky130.vhd:1794:110  */
  assign n4609_o = ~n4608_o;
  /* find_the_damn_issue_sky130.vhd:1794:104  */
  assign n4610_o = ~n4609_o;
  /* find_the_damn_issue_sky130.vhd:1794:99  */
  assign n4611_o = n4570_o | n4610_o;
  /* find_the_damn_issue_sky130.vhd:1794:61  */
  assign n4612_o = ~n4611_o;
  /* find_the_damn_issue_sky130.vhd:1794:522  */
  assign n4614_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1794:532  */
  assign n4615_o = n4614_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1794:559  */
  assign n4616_o = n4615_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1794:507  */
  assign n4617_o = n4612_o & n4616_o;
  /* find_the_damn_issue_sky130.vhd:1794:54  */
  assign n4618_o = n4568_o & n4617_o;
  /* find_the_damn_issue_sky130.vhd:1795:73  */
  assign n4619_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1795:60  */
  assign n4620_o = ~n4619_o;
  /* find_the_damn_issue_sky130.vhd:1794:17  */
  assign n4621_o = n4618_o ? n4620_o : n4409_o;
  /* find_the_damn_issue_sky130.vhd:1799:42  */
  assign n4623_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1799:87  */
  assign n4625_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1799:136  */
  assign n4627_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1799:185  */
  assign n4629_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1799:234  */
  assign n4631_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1799:281  */
  assign n4633_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1799:329  */
  assign n4635_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1799:379  */
  assign n4637_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1799:417  */
  assign n4638_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1799:430  */
  assign n4640_o = n4638_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1799:471  */
  assign n4641_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1799:458  */
  assign n4642_o = ~n4641_o;
  /* find_the_damn_issue_sky130.vhd:1799:452  */
  assign n4643_o = ~n4642_o;
  /* find_the_damn_issue_sky130.vhd:1799:446  */
  assign n4644_o = ~n4643_o;
  /* find_the_damn_issue_sky130.vhd:1799:441  */
  assign n4645_o = n4640_o | n4644_o;
  /* find_the_damn_issue_sky130.vhd:1799:402  */
  assign n4646_o = ~n4645_o;
  /* find_the_damn_issue_sky130.vhd:1799:396  */
  assign n4647_o = ~n4646_o;
  /* find_the_damn_issue_sky130.vhd:1799:391  */
  assign n4648_o = n4637_o | n4647_o;
  /* find_the_damn_issue_sky130.vhd:1799:353  */
  assign n4649_o = ~n4648_o;
  /* find_the_damn_issue_sky130.vhd:1799:347  */
  assign n4650_o = ~n4649_o;
  /* find_the_damn_issue_sky130.vhd:1799:342  */
  assign n4651_o = n4635_o | n4650_o;
  /* find_the_damn_issue_sky130.vhd:1799:305  */
  assign n4652_o = ~n4651_o;
  /* find_the_damn_issue_sky130.vhd:1799:299  */
  assign n4653_o = ~n4652_o;
  /* find_the_damn_issue_sky130.vhd:1799:294  */
  assign n4654_o = n4633_o | n4653_o;
  /* find_the_damn_issue_sky130.vhd:1799:257  */
  assign n4655_o = ~n4654_o;
  /* find_the_damn_issue_sky130.vhd:1799:251  */
  assign n4656_o = ~n4655_o;
  /* find_the_damn_issue_sky130.vhd:1799:246  */
  assign n4657_o = n4631_o | n4656_o;
  /* find_the_damn_issue_sky130.vhd:1799:208  */
  assign n4658_o = ~n4657_o;
  /* find_the_damn_issue_sky130.vhd:1799:202  */
  assign n4659_o = ~n4658_o;
  /* find_the_damn_issue_sky130.vhd:1799:197  */
  assign n4660_o = n4629_o | n4659_o;
  /* find_the_damn_issue_sky130.vhd:1799:159  */
  assign n4661_o = ~n4660_o;
  /* find_the_damn_issue_sky130.vhd:1799:153  */
  assign n4662_o = ~n4661_o;
  /* find_the_damn_issue_sky130.vhd:1799:148  */
  assign n4663_o = n4627_o | n4662_o;
  /* find_the_damn_issue_sky130.vhd:1799:110  */
  assign n4664_o = ~n4663_o;
  /* find_the_damn_issue_sky130.vhd:1799:104  */
  assign n4665_o = ~n4664_o;
  /* find_the_damn_issue_sky130.vhd:1799:99  */
  assign n4666_o = n4625_o | n4665_o;
  /* find_the_damn_issue_sky130.vhd:1799:61  */
  assign n4667_o = ~n4666_o;
  /* find_the_damn_issue_sky130.vhd:1799:522  */
  assign n4669_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1799:532  */
  assign n4670_o = n4669_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1799:559  */
  assign n4671_o = n4670_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1799:507  */
  assign n4672_o = n4667_o & n4671_o;
  /* find_the_damn_issue_sky130.vhd:1799:54  */
  assign n4673_o = n4623_o & n4672_o;
  /* find_the_damn_issue_sky130.vhd:1799:17  */
  assign n4675_o = n4673_o ? 4'b1001 : n4171_o;
  /* find_the_damn_issue_sky130.vhd:1806:42  */
  assign n4677_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1806:87  */
  assign n4679_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1806:136  */
  assign n4681_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1806:185  */
  assign n4683_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1806:234  */
  assign n4685_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1806:281  */
  assign n4687_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1806:329  */
  assign n4689_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1806:379  */
  assign n4691_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1806:417  */
  assign n4692_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1806:430  */
  assign n4694_o = n4692_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1806:471  */
  assign n4695_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1806:458  */
  assign n4696_o = ~n4695_o;
  /* find_the_damn_issue_sky130.vhd:1806:452  */
  assign n4697_o = ~n4696_o;
  /* find_the_damn_issue_sky130.vhd:1806:446  */
  assign n4698_o = ~n4697_o;
  /* find_the_damn_issue_sky130.vhd:1806:441  */
  assign n4699_o = n4694_o | n4698_o;
  /* find_the_damn_issue_sky130.vhd:1806:402  */
  assign n4700_o = ~n4699_o;
  /* find_the_damn_issue_sky130.vhd:1806:396  */
  assign n4701_o = ~n4700_o;
  /* find_the_damn_issue_sky130.vhd:1806:391  */
  assign n4702_o = n4691_o | n4701_o;
  /* find_the_damn_issue_sky130.vhd:1806:353  */
  assign n4703_o = ~n4702_o;
  /* find_the_damn_issue_sky130.vhd:1806:347  */
  assign n4704_o = ~n4703_o;
  /* find_the_damn_issue_sky130.vhd:1806:342  */
  assign n4705_o = n4689_o | n4704_o;
  /* find_the_damn_issue_sky130.vhd:1806:305  */
  assign n4706_o = ~n4705_o;
  /* find_the_damn_issue_sky130.vhd:1806:299  */
  assign n4707_o = ~n4706_o;
  /* find_the_damn_issue_sky130.vhd:1806:294  */
  assign n4708_o = n4687_o | n4707_o;
  /* find_the_damn_issue_sky130.vhd:1806:257  */
  assign n4709_o = ~n4708_o;
  /* find_the_damn_issue_sky130.vhd:1806:251  */
  assign n4710_o = ~n4709_o;
  /* find_the_damn_issue_sky130.vhd:1806:246  */
  assign n4711_o = n4685_o | n4710_o;
  /* find_the_damn_issue_sky130.vhd:1806:208  */
  assign n4712_o = ~n4711_o;
  /* find_the_damn_issue_sky130.vhd:1806:202  */
  assign n4713_o = ~n4712_o;
  /* find_the_damn_issue_sky130.vhd:1806:197  */
  assign n4714_o = n4683_o | n4713_o;
  /* find_the_damn_issue_sky130.vhd:1806:159  */
  assign n4715_o = ~n4714_o;
  /* find_the_damn_issue_sky130.vhd:1806:153  */
  assign n4716_o = ~n4715_o;
  /* find_the_damn_issue_sky130.vhd:1806:148  */
  assign n4717_o = n4681_o | n4716_o;
  /* find_the_damn_issue_sky130.vhd:1806:110  */
  assign n4718_o = ~n4717_o;
  /* find_the_damn_issue_sky130.vhd:1806:104  */
  assign n4719_o = ~n4718_o;
  /* find_the_damn_issue_sky130.vhd:1806:99  */
  assign n4720_o = n4679_o | n4719_o;
  /* find_the_damn_issue_sky130.vhd:1806:61  */
  assign n4721_o = ~n4720_o;
  /* find_the_damn_issue_sky130.vhd:1806:522  */
  assign n4723_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1806:532  */
  assign n4724_o = n4723_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1806:559  */
  assign n4725_o = n4724_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1806:507  */
  assign n4726_o = n4721_o & n4725_o;
  /* find_the_damn_issue_sky130.vhd:1806:54  */
  assign n4727_o = n4677_o & n4726_o;
  /* find_the_damn_issue_sky130.vhd:1806:17  */
  assign n4729_o = n4727_o ? 4'b0111 : n4458_o;
  /* find_the_damn_issue_sky130.vhd:1811:40  */
  assign n4731_o = n3899_o == 7'b0011110;
  /* find_the_damn_issue_sky130.vhd:1811:86  */
  assign n4733_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1811:135  */
  assign n4735_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1811:184  */
  assign n4737_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1811:233  */
  assign n4739_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1811:282  */
  assign n4741_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1811:329  */
  assign n4743_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1811:377  */
  assign n4745_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1811:427  */
  assign n4747_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1811:465  */
  assign n4748_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1811:478  */
  assign n4750_o = n4748_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1811:519  */
  assign n4751_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1811:506  */
  assign n4752_o = ~n4751_o;
  /* find_the_damn_issue_sky130.vhd:1811:500  */
  assign n4753_o = ~n4752_o;
  /* find_the_damn_issue_sky130.vhd:1811:494  */
  assign n4754_o = ~n4753_o;
  /* find_the_damn_issue_sky130.vhd:1811:489  */
  assign n4755_o = n4750_o | n4754_o;
  /* find_the_damn_issue_sky130.vhd:1811:450  */
  assign n4756_o = ~n4755_o;
  /* find_the_damn_issue_sky130.vhd:1811:444  */
  assign n4757_o = ~n4756_o;
  /* find_the_damn_issue_sky130.vhd:1811:439  */
  assign n4758_o = n4747_o | n4757_o;
  /* find_the_damn_issue_sky130.vhd:1811:401  */
  assign n4759_o = ~n4758_o;
  /* find_the_damn_issue_sky130.vhd:1811:395  */
  assign n4760_o = ~n4759_o;
  /* find_the_damn_issue_sky130.vhd:1811:390  */
  assign n4761_o = n4745_o | n4760_o;
  /* find_the_damn_issue_sky130.vhd:1811:353  */
  assign n4762_o = ~n4761_o;
  /* find_the_damn_issue_sky130.vhd:1811:347  */
  assign n4763_o = ~n4762_o;
  /* find_the_damn_issue_sky130.vhd:1811:342  */
  assign n4764_o = n4743_o | n4763_o;
  /* find_the_damn_issue_sky130.vhd:1811:305  */
  assign n4765_o = ~n4764_o;
  /* find_the_damn_issue_sky130.vhd:1811:299  */
  assign n4766_o = ~n4765_o;
  /* find_the_damn_issue_sky130.vhd:1811:294  */
  assign n4767_o = n4741_o | n4766_o;
  /* find_the_damn_issue_sky130.vhd:1811:256  */
  assign n4768_o = ~n4767_o;
  /* find_the_damn_issue_sky130.vhd:1811:250  */
  assign n4769_o = ~n4768_o;
  /* find_the_damn_issue_sky130.vhd:1811:245  */
  assign n4770_o = n4739_o | n4769_o;
  /* find_the_damn_issue_sky130.vhd:1811:207  */
  assign n4771_o = ~n4770_o;
  /* find_the_damn_issue_sky130.vhd:1811:201  */
  assign n4772_o = ~n4771_o;
  /* find_the_damn_issue_sky130.vhd:1811:196  */
  assign n4773_o = n4737_o | n4772_o;
  /* find_the_damn_issue_sky130.vhd:1811:158  */
  assign n4774_o = ~n4773_o;
  /* find_the_damn_issue_sky130.vhd:1811:152  */
  assign n4775_o = ~n4774_o;
  /* find_the_damn_issue_sky130.vhd:1811:147  */
  assign n4776_o = n4735_o | n4775_o;
  /* find_the_damn_issue_sky130.vhd:1811:109  */
  assign n4777_o = ~n4776_o;
  /* find_the_damn_issue_sky130.vhd:1811:103  */
  assign n4778_o = ~n4777_o;
  /* find_the_damn_issue_sky130.vhd:1811:98  */
  assign n4779_o = n4733_o | n4778_o;
  /* find_the_damn_issue_sky130.vhd:1811:60  */
  assign n4780_o = ~n4779_o;
  /* find_the_damn_issue_sky130.vhd:1811:573  */
  assign n4782_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1811:583  */
  assign n4783_o = n4782_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1811:610  */
  assign n4784_o = n4783_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1811:558  */
  assign n4785_o = n4780_o & n4784_o;
  /* find_the_damn_issue_sky130.vhd:1811:53  */
  assign n4786_o = n4731_o & n4785_o;
  /* find_the_damn_issue_sky130.vhd:1811:17  */
  assign n4788_o = n4786_o ? 4'b0100 : n4729_o;
  /* find_the_damn_issue_sky130.vhd:1816:31  */
  assign n4789_o = in_command[6:5];
  /* find_the_damn_issue_sky130.vhd:1816:44  */
  assign n4791_o = n4789_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:1816:83  */
  assign n4793_o = n3899_o == 7'b0011110;
  /* find_the_damn_issue_sky130.vhd:1816:133  */
  assign n4795_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1816:182  */
  assign n4797_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1816:231  */
  assign n4799_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1816:280  */
  assign n4801_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1816:329  */
  assign n4803_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1816:376  */
  assign n4805_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1816:424  */
  assign n4807_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1816:474  */
  assign n4809_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1816:512  */
  assign n4810_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1816:525  */
  assign n4812_o = n4810_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1816:566  */
  assign n4813_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1816:553  */
  assign n4814_o = ~n4813_o;
  /* find_the_damn_issue_sky130.vhd:1816:547  */
  assign n4815_o = ~n4814_o;
  /* find_the_damn_issue_sky130.vhd:1816:541  */
  assign n4816_o = ~n4815_o;
  /* find_the_damn_issue_sky130.vhd:1816:536  */
  assign n4817_o = n4812_o | n4816_o;
  /* find_the_damn_issue_sky130.vhd:1816:497  */
  assign n4818_o = ~n4817_o;
  /* find_the_damn_issue_sky130.vhd:1816:491  */
  assign n4819_o = ~n4818_o;
  /* find_the_damn_issue_sky130.vhd:1816:486  */
  assign n4820_o = n4809_o | n4819_o;
  /* find_the_damn_issue_sky130.vhd:1816:448  */
  assign n4821_o = ~n4820_o;
  /* find_the_damn_issue_sky130.vhd:1816:442  */
  assign n4822_o = ~n4821_o;
  /* find_the_damn_issue_sky130.vhd:1816:437  */
  assign n4823_o = n4807_o | n4822_o;
  /* find_the_damn_issue_sky130.vhd:1816:400  */
  assign n4824_o = ~n4823_o;
  /* find_the_damn_issue_sky130.vhd:1816:394  */
  assign n4825_o = ~n4824_o;
  /* find_the_damn_issue_sky130.vhd:1816:389  */
  assign n4826_o = n4805_o | n4825_o;
  /* find_the_damn_issue_sky130.vhd:1816:352  */
  assign n4827_o = ~n4826_o;
  /* find_the_damn_issue_sky130.vhd:1816:346  */
  assign n4828_o = ~n4827_o;
  /* find_the_damn_issue_sky130.vhd:1816:341  */
  assign n4829_o = n4803_o | n4828_o;
  /* find_the_damn_issue_sky130.vhd:1816:303  */
  assign n4830_o = ~n4829_o;
  /* find_the_damn_issue_sky130.vhd:1816:297  */
  assign n4831_o = ~n4830_o;
  /* find_the_damn_issue_sky130.vhd:1816:292  */
  assign n4832_o = n4801_o | n4831_o;
  /* find_the_damn_issue_sky130.vhd:1816:254  */
  assign n4833_o = ~n4832_o;
  /* find_the_damn_issue_sky130.vhd:1816:248  */
  assign n4834_o = ~n4833_o;
  /* find_the_damn_issue_sky130.vhd:1816:243  */
  assign n4835_o = n4799_o | n4834_o;
  /* find_the_damn_issue_sky130.vhd:1816:205  */
  assign n4836_o = ~n4835_o;
  /* find_the_damn_issue_sky130.vhd:1816:199  */
  assign n4837_o = ~n4836_o;
  /* find_the_damn_issue_sky130.vhd:1816:194  */
  assign n4838_o = n4797_o | n4837_o;
  /* find_the_damn_issue_sky130.vhd:1816:156  */
  assign n4839_o = ~n4838_o;
  /* find_the_damn_issue_sky130.vhd:1816:150  */
  assign n4840_o = ~n4839_o;
  /* find_the_damn_issue_sky130.vhd:1816:145  */
  assign n4841_o = n4795_o | n4840_o;
  /* find_the_damn_issue_sky130.vhd:1816:107  */
  assign n4842_o = ~n4841_o;
  /* find_the_damn_issue_sky130.vhd:1816:101  */
  assign n4843_o = ~n4842_o;
  /* find_the_damn_issue_sky130.vhd:1816:96  */
  assign n4844_o = n4793_o | n4843_o;
  /* find_the_damn_issue_sky130.vhd:1816:59  */
  assign n4845_o = ~n4844_o;
  /* find_the_damn_issue_sky130.vhd:1816:623  */
  assign n4847_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1816:633  */
  assign n4848_o = n4847_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1816:660  */
  assign n4849_o = n4848_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1816:608  */
  assign n4850_o = n4845_o & n4849_o;
  /* find_the_damn_issue_sky130.vhd:1816:52  */
  assign n4851_o = n4791_o & n4850_o;
  /* find_the_damn_issue_sky130.vhd:1816:17  */
  assign n4853_o = n4851_o ? 1'b0 : n3172_o;
  /* find_the_damn_issue_sky130.vhd:1821:80  */
  assign n4855_o = in_command[6:5];
  /* find_the_damn_issue_sky130.vhd:1821:93  */
  assign n4857_o = n4855_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4864_o = n4857_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:145  */
  assign n4867_o = n3899_o == 7'b0011110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4874_o = n4867_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:208  */
  assign n4877_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4884_o = n4877_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:270  */
  assign n4887_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4894_o = n4887_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:332  */
  assign n4897_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4904_o = n4897_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:394  */
  assign n4907_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4914_o = n4907_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:456  */
  assign n4917_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4924_o = n4917_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:516  */
  assign n4927_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4934_o = n4927_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:577  */
  assign n4937_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4944_o = n4937_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:640  */
  assign n4947_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4954_o = n4947_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:691  */
  assign n4956_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1821:704  */
  assign n4958_o = n4956_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n4965_o = n4958_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:745  */
  assign n4966_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1821:732  */
  assign n4967_o = ~n4966_o;
  /* find_the_damn_issue_sky130.vhd:1821:726  */
  assign n4968_o = ~n4967_o;
  /* find_the_damn_issue_sky130.vhd:1821:720  */
  assign n4969_o = ~n4968_o;
  /* find_the_damn_issue_sky130.vhd:1821:715  */
  assign n4970_o = n4965_o | n4969_o;
  /* find_the_damn_issue_sky130.vhd:1821:663  */
  assign n4971_o = ~n4970_o;
  /* find_the_damn_issue_sky130.vhd:1821:657  */
  assign n4972_o = ~n4971_o;
  /* find_the_damn_issue_sky130.vhd:1821:652  */
  assign n4973_o = n4954_o | n4972_o;
  /* find_the_damn_issue_sky130.vhd:1821:601  */
  assign n4974_o = ~n4973_o;
  /* find_the_damn_issue_sky130.vhd:1821:595  */
  assign n4975_o = ~n4974_o;
  /* find_the_damn_issue_sky130.vhd:1821:590  */
  assign n4976_o = n4944_o | n4975_o;
  /* find_the_damn_issue_sky130.vhd:1821:540  */
  assign n4977_o = ~n4976_o;
  /* find_the_damn_issue_sky130.vhd:1821:534  */
  assign n4978_o = ~n4977_o;
  /* find_the_damn_issue_sky130.vhd:1821:529  */
  assign n4979_o = n4934_o | n4978_o;
  /* find_the_damn_issue_sky130.vhd:1821:479  */
  assign n4980_o = ~n4979_o;
  /* find_the_damn_issue_sky130.vhd:1821:473  */
  assign n4981_o = ~n4980_o;
  /* find_the_damn_issue_sky130.vhd:1821:468  */
  assign n4982_o = n4924_o | n4981_o;
  /* find_the_damn_issue_sky130.vhd:1821:417  */
  assign n4983_o = ~n4982_o;
  /* find_the_damn_issue_sky130.vhd:1821:411  */
  assign n4984_o = ~n4983_o;
  /* find_the_damn_issue_sky130.vhd:1821:406  */
  assign n4985_o = n4914_o | n4984_o;
  /* find_the_damn_issue_sky130.vhd:1821:355  */
  assign n4986_o = ~n4985_o;
  /* find_the_damn_issue_sky130.vhd:1821:349  */
  assign n4987_o = ~n4986_o;
  /* find_the_damn_issue_sky130.vhd:1821:344  */
  assign n4988_o = n4904_o | n4987_o;
  /* find_the_damn_issue_sky130.vhd:1821:293  */
  assign n4989_o = ~n4988_o;
  /* find_the_damn_issue_sky130.vhd:1821:287  */
  assign n4990_o = ~n4989_o;
  /* find_the_damn_issue_sky130.vhd:1821:282  */
  assign n4991_o = n4894_o | n4990_o;
  /* find_the_damn_issue_sky130.vhd:1821:231  */
  assign n4992_o = ~n4991_o;
  /* find_the_damn_issue_sky130.vhd:1821:225  */
  assign n4993_o = ~n4992_o;
  /* find_the_damn_issue_sky130.vhd:1821:220  */
  assign n4994_o = n4884_o | n4993_o;
  /* find_the_damn_issue_sky130.vhd:1821:169  */
  assign n4995_o = ~n4994_o;
  /* find_the_damn_issue_sky130.vhd:1821:163  */
  assign n4996_o = ~n4995_o;
  /* find_the_damn_issue_sky130.vhd:1821:158  */
  assign n4997_o = n4874_o | n4996_o;
  /* find_the_damn_issue_sky130.vhd:1821:108  */
  assign n4998_o = ~n4997_o;
  /* find_the_damn_issue_sky130.vhd:1821:809  */
  assign n5001_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n5008_o = n5001_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1821:819  */
  assign n5009_o = n5008_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1821:840  */
  assign n5010_o = n5009_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1821:781  */
  assign n5011_o = n4998_o & n5010_o;
  /* find_the_damn_issue_sky130.vhd:1821:101  */
  assign n5012_o = n4864_o & n5011_o;
  /* find_the_damn_issue_sky130.vhd:1821:52  */
  assign n5013_o = s_tick & n5012_o;
  /* find_the_damn_issue_sky130.vhd:1823:54  */
  assign n5014_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1822:17  */
  assign n5015_o = n5013_o ? n5014_o : s_m_io0_out_2;
  /* find_the_damn_issue_sky130.vhd:1828:54  */
  assign n5016_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1827:17  */
  assign n5017_o = n5013_o ? n5016_o : s_m_io1_out_2;
  /* find_the_damn_issue_sky130.vhd:1833:54  */
  assign n5018_o = in_command[2];
  /* find_the_damn_issue_sky130.vhd:1832:17  */
  assign n5019_o = n5013_o ? n5018_o : s_m_io2_out_2;
  /* find_the_damn_issue_sky130.vhd:1838:54  */
  assign n5020_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1837:17  */
  assign n5021_o = n5013_o ? n5020_o : s_m_io3_out_2;
  /* find_the_damn_issue_sky130.vhd:1842:17  */
  assign n5023_o = n5013_o ? 1'b1 : n4853_o;
  /* find_the_damn_issue_sky130.vhd:1848:58  */
  assign n5024_o = in_command[4];
  /* find_the_damn_issue_sky130.vhd:1847:17  */
  assign n5025_o = n5013_o ? n5024_o : n3239_o;
  /* find_the_damn_issue_sky130.vhd:1852:38  */
  assign n5026_o = in_command[6:5];
  /* find_the_damn_issue_sky130.vhd:1852:51  */
  assign n5028_o = n5026_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:1852:94  */
  assign n5030_o = n3899_o == 7'b0011110;
  /* find_the_damn_issue_sky130.vhd:1852:144  */
  assign n5032_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1852:193  */
  assign n5034_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1852:242  */
  assign n5036_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1852:291  */
  assign n5038_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1852:340  */
  assign n5040_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1852:387  */
  assign n5042_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1852:435  */
  assign n5044_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1852:485  */
  assign n5046_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1852:523  */
  assign n5047_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1852:536  */
  assign n5049_o = n5047_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1852:577  */
  assign n5050_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1852:564  */
  assign n5051_o = ~n5050_o;
  /* find_the_damn_issue_sky130.vhd:1852:558  */
  assign n5052_o = ~n5051_o;
  /* find_the_damn_issue_sky130.vhd:1852:552  */
  assign n5053_o = ~n5052_o;
  /* find_the_damn_issue_sky130.vhd:1852:547  */
  assign n5054_o = n5049_o | n5053_o;
  /* find_the_damn_issue_sky130.vhd:1852:508  */
  assign n5055_o = ~n5054_o;
  /* find_the_damn_issue_sky130.vhd:1852:502  */
  assign n5056_o = ~n5055_o;
  /* find_the_damn_issue_sky130.vhd:1852:497  */
  assign n5057_o = n5046_o | n5056_o;
  /* find_the_damn_issue_sky130.vhd:1852:459  */
  assign n5058_o = ~n5057_o;
  /* find_the_damn_issue_sky130.vhd:1852:453  */
  assign n5059_o = ~n5058_o;
  /* find_the_damn_issue_sky130.vhd:1852:448  */
  assign n5060_o = n5044_o | n5059_o;
  /* find_the_damn_issue_sky130.vhd:1852:411  */
  assign n5061_o = ~n5060_o;
  /* find_the_damn_issue_sky130.vhd:1852:405  */
  assign n5062_o = ~n5061_o;
  /* find_the_damn_issue_sky130.vhd:1852:400  */
  assign n5063_o = n5042_o | n5062_o;
  /* find_the_damn_issue_sky130.vhd:1852:363  */
  assign n5064_o = ~n5063_o;
  /* find_the_damn_issue_sky130.vhd:1852:357  */
  assign n5065_o = ~n5064_o;
  /* find_the_damn_issue_sky130.vhd:1852:352  */
  assign n5066_o = n5040_o | n5065_o;
  /* find_the_damn_issue_sky130.vhd:1852:314  */
  assign n5067_o = ~n5066_o;
  /* find_the_damn_issue_sky130.vhd:1852:308  */
  assign n5068_o = ~n5067_o;
  /* find_the_damn_issue_sky130.vhd:1852:303  */
  assign n5069_o = n5038_o | n5068_o;
  /* find_the_damn_issue_sky130.vhd:1852:265  */
  assign n5070_o = ~n5069_o;
  /* find_the_damn_issue_sky130.vhd:1852:259  */
  assign n5071_o = ~n5070_o;
  /* find_the_damn_issue_sky130.vhd:1852:254  */
  assign n5072_o = n5036_o | n5071_o;
  /* find_the_damn_issue_sky130.vhd:1852:216  */
  assign n5073_o = ~n5072_o;
  /* find_the_damn_issue_sky130.vhd:1852:210  */
  assign n5074_o = ~n5073_o;
  /* find_the_damn_issue_sky130.vhd:1852:205  */
  assign n5075_o = n5034_o | n5074_o;
  /* find_the_damn_issue_sky130.vhd:1852:167  */
  assign n5076_o = ~n5075_o;
  /* find_the_damn_issue_sky130.vhd:1852:161  */
  assign n5077_o = ~n5076_o;
  /* find_the_damn_issue_sky130.vhd:1852:156  */
  assign n5078_o = n5032_o | n5077_o;
  /* find_the_damn_issue_sky130.vhd:1852:118  */
  assign n5079_o = ~n5078_o;
  /* find_the_damn_issue_sky130.vhd:1852:112  */
  assign n5080_o = ~n5079_o;
  /* find_the_damn_issue_sky130.vhd:1852:107  */
  assign n5081_o = n5030_o | n5080_o;
  /* find_the_damn_issue_sky130.vhd:1852:70  */
  assign n5082_o = ~n5081_o;
  /* find_the_damn_issue_sky130.vhd:1852:64  */
  assign n5083_o = ~n5082_o;
  /* find_the_damn_issue_sky130.vhd:1852:59  */
  assign n5084_o = n5028_o | n5083_o;
  /* find_the_damn_issue_sky130.vhd:1852:23  */
  assign n5085_o = ~n5084_o;
  /* find_the_damn_issue_sky130.vhd:1852:637  */
  assign n5087_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1852:647  */
  assign n5088_o = n5087_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1852:674  */
  assign n5089_o = n5088_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1852:622  */
  assign n5090_o = n5085_o & n5089_o;
  /* find_the_damn_issue_sky130.vhd:1852:17  */
  assign n5092_o = n5090_o ? 1'b1 : n5025_o;
  /* find_the_damn_issue_sky130.vhd:1857:38  */
  assign n5093_o = in_command[6:5];
  /* find_the_damn_issue_sky130.vhd:1857:51  */
  assign n5095_o = n5093_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:1857:94  */
  assign n5097_o = n3899_o == 7'b0011110;
  /* find_the_damn_issue_sky130.vhd:1857:144  */
  assign n5099_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1857:193  */
  assign n5101_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1857:242  */
  assign n5103_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1857:291  */
  assign n5105_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1857:340  */
  assign n5107_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1857:387  */
  assign n5109_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1857:435  */
  assign n5111_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1857:485  */
  assign n5113_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1857:523  */
  assign n5114_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1857:536  */
  assign n5116_o = n5114_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1857:577  */
  assign n5117_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1857:564  */
  assign n5118_o = ~n5117_o;
  /* find_the_damn_issue_sky130.vhd:1857:558  */
  assign n5119_o = ~n5118_o;
  /* find_the_damn_issue_sky130.vhd:1857:552  */
  assign n5120_o = ~n5119_o;
  /* find_the_damn_issue_sky130.vhd:1857:547  */
  assign n5121_o = n5116_o | n5120_o;
  /* find_the_damn_issue_sky130.vhd:1857:508  */
  assign n5122_o = ~n5121_o;
  /* find_the_damn_issue_sky130.vhd:1857:502  */
  assign n5123_o = ~n5122_o;
  /* find_the_damn_issue_sky130.vhd:1857:497  */
  assign n5124_o = n5113_o | n5123_o;
  /* find_the_damn_issue_sky130.vhd:1857:459  */
  assign n5125_o = ~n5124_o;
  /* find_the_damn_issue_sky130.vhd:1857:453  */
  assign n5126_o = ~n5125_o;
  /* find_the_damn_issue_sky130.vhd:1857:448  */
  assign n5127_o = n5111_o | n5126_o;
  /* find_the_damn_issue_sky130.vhd:1857:411  */
  assign n5128_o = ~n5127_o;
  /* find_the_damn_issue_sky130.vhd:1857:405  */
  assign n5129_o = ~n5128_o;
  /* find_the_damn_issue_sky130.vhd:1857:400  */
  assign n5130_o = n5109_o | n5129_o;
  /* find_the_damn_issue_sky130.vhd:1857:363  */
  assign n5131_o = ~n5130_o;
  /* find_the_damn_issue_sky130.vhd:1857:357  */
  assign n5132_o = ~n5131_o;
  /* find_the_damn_issue_sky130.vhd:1857:352  */
  assign n5133_o = n5107_o | n5132_o;
  /* find_the_damn_issue_sky130.vhd:1857:314  */
  assign n5134_o = ~n5133_o;
  /* find_the_damn_issue_sky130.vhd:1857:308  */
  assign n5135_o = ~n5134_o;
  /* find_the_damn_issue_sky130.vhd:1857:303  */
  assign n5136_o = n5105_o | n5135_o;
  /* find_the_damn_issue_sky130.vhd:1857:265  */
  assign n5137_o = ~n5136_o;
  /* find_the_damn_issue_sky130.vhd:1857:259  */
  assign n5138_o = ~n5137_o;
  /* find_the_damn_issue_sky130.vhd:1857:254  */
  assign n5139_o = n5103_o | n5138_o;
  /* find_the_damn_issue_sky130.vhd:1857:216  */
  assign n5140_o = ~n5139_o;
  /* find_the_damn_issue_sky130.vhd:1857:210  */
  assign n5141_o = ~n5140_o;
  /* find_the_damn_issue_sky130.vhd:1857:205  */
  assign n5142_o = n5101_o | n5141_o;
  /* find_the_damn_issue_sky130.vhd:1857:167  */
  assign n5143_o = ~n5142_o;
  /* find_the_damn_issue_sky130.vhd:1857:161  */
  assign n5144_o = ~n5143_o;
  /* find_the_damn_issue_sky130.vhd:1857:156  */
  assign n5145_o = n5099_o | n5144_o;
  /* find_the_damn_issue_sky130.vhd:1857:118  */
  assign n5146_o = ~n5145_o;
  /* find_the_damn_issue_sky130.vhd:1857:112  */
  assign n5147_o = ~n5146_o;
  /* find_the_damn_issue_sky130.vhd:1857:107  */
  assign n5148_o = n5097_o | n5147_o;
  /* find_the_damn_issue_sky130.vhd:1857:70  */
  assign n5149_o = ~n5148_o;
  /* find_the_damn_issue_sky130.vhd:1857:64  */
  assign n5150_o = ~n5149_o;
  /* find_the_damn_issue_sky130.vhd:1857:59  */
  assign n5151_o = n5095_o | n5150_o;
  /* find_the_damn_issue_sky130.vhd:1857:23  */
  assign n5152_o = ~n5151_o;
  /* find_the_damn_issue_sky130.vhd:1857:637  */
  assign n5154_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1857:647  */
  assign n5155_o = n5154_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1857:674  */
  assign n5156_o = n5155_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1857:622  */
  assign n5157_o = n5152_o & n5156_o;
  /* find_the_damn_issue_sky130.vhd:1857:17  */
  assign n5159_o = n5157_o ? 1'b0 : n5023_o;
  /* find_the_damn_issue_sky130.vhd:1862:38  */
  assign n5160_o = in_command[6:5];
  /* find_the_damn_issue_sky130.vhd:1862:51  */
  assign n5162_o = n5160_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:1862:94  */
  assign n5164_o = n3899_o == 7'b0011110;
  /* find_the_damn_issue_sky130.vhd:1862:144  */
  assign n5166_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:1862:193  */
  assign n5168_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:1862:242  */
  assign n5170_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:1862:291  */
  assign n5172_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:1862:340  */
  assign n5174_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:1862:387  */
  assign n5176_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:1862:435  */
  assign n5178_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:1862:485  */
  assign n5180_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:1862:523  */
  assign n5181_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:1862:536  */
  assign n5183_o = n5181_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:1862:577  */
  assign n5184_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:1862:564  */
  assign n5185_o = ~n5184_o;
  /* find_the_damn_issue_sky130.vhd:1862:558  */
  assign n5186_o = ~n5185_o;
  /* find_the_damn_issue_sky130.vhd:1862:552  */
  assign n5187_o = ~n5186_o;
  /* find_the_damn_issue_sky130.vhd:1862:547  */
  assign n5188_o = n5183_o | n5187_o;
  /* find_the_damn_issue_sky130.vhd:1862:508  */
  assign n5189_o = ~n5188_o;
  /* find_the_damn_issue_sky130.vhd:1862:502  */
  assign n5190_o = ~n5189_o;
  /* find_the_damn_issue_sky130.vhd:1862:497  */
  assign n5191_o = n5180_o | n5190_o;
  /* find_the_damn_issue_sky130.vhd:1862:459  */
  assign n5192_o = ~n5191_o;
  /* find_the_damn_issue_sky130.vhd:1862:453  */
  assign n5193_o = ~n5192_o;
  /* find_the_damn_issue_sky130.vhd:1862:448  */
  assign n5194_o = n5178_o | n5193_o;
  /* find_the_damn_issue_sky130.vhd:1862:411  */
  assign n5195_o = ~n5194_o;
  /* find_the_damn_issue_sky130.vhd:1862:405  */
  assign n5196_o = ~n5195_o;
  /* find_the_damn_issue_sky130.vhd:1862:400  */
  assign n5197_o = n5176_o | n5196_o;
  /* find_the_damn_issue_sky130.vhd:1862:363  */
  assign n5198_o = ~n5197_o;
  /* find_the_damn_issue_sky130.vhd:1862:357  */
  assign n5199_o = ~n5198_o;
  /* find_the_damn_issue_sky130.vhd:1862:352  */
  assign n5200_o = n5174_o | n5199_o;
  /* find_the_damn_issue_sky130.vhd:1862:314  */
  assign n5201_o = ~n5200_o;
  /* find_the_damn_issue_sky130.vhd:1862:308  */
  assign n5202_o = ~n5201_o;
  /* find_the_damn_issue_sky130.vhd:1862:303  */
  assign n5203_o = n5172_o | n5202_o;
  /* find_the_damn_issue_sky130.vhd:1862:265  */
  assign n5204_o = ~n5203_o;
  /* find_the_damn_issue_sky130.vhd:1862:259  */
  assign n5205_o = ~n5204_o;
  /* find_the_damn_issue_sky130.vhd:1862:254  */
  assign n5206_o = n5170_o | n5205_o;
  /* find_the_damn_issue_sky130.vhd:1862:216  */
  assign n5207_o = ~n5206_o;
  /* find_the_damn_issue_sky130.vhd:1862:210  */
  assign n5208_o = ~n5207_o;
  /* find_the_damn_issue_sky130.vhd:1862:205  */
  assign n5209_o = n5168_o | n5208_o;
  /* find_the_damn_issue_sky130.vhd:1862:167  */
  assign n5210_o = ~n5209_o;
  /* find_the_damn_issue_sky130.vhd:1862:161  */
  assign n5211_o = ~n5210_o;
  /* find_the_damn_issue_sky130.vhd:1862:156  */
  assign n5212_o = n5166_o | n5211_o;
  /* find_the_damn_issue_sky130.vhd:1862:118  */
  assign n5213_o = ~n5212_o;
  /* find_the_damn_issue_sky130.vhd:1862:112  */
  assign n5214_o = ~n5213_o;
  /* find_the_damn_issue_sky130.vhd:1862:107  */
  assign n5215_o = n5164_o | n5214_o;
  /* find_the_damn_issue_sky130.vhd:1862:70  */
  assign n5216_o = ~n5215_o;
  /* find_the_damn_issue_sky130.vhd:1862:64  */
  assign n5217_o = ~n5216_o;
  /* find_the_damn_issue_sky130.vhd:1862:59  */
  assign n5218_o = n5162_o | n5217_o;
  /* find_the_damn_issue_sky130.vhd:1862:23  */
  assign n5219_o = ~n5218_o;
  /* find_the_damn_issue_sky130.vhd:1862:637  */
  assign n5221_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:1862:647  */
  assign n5222_o = n5221_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1862:674  */
  assign n5223_o = n5222_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1862:622  */
  assign n5224_o = n5219_o & n5223_o;
  /* find_the_damn_issue_sky130.vhd:1862:17  */
  assign n5226_o = n5224_o ? 4'b0001 : n4788_o;
  /* find_the_damn_issue_sky130.vhd:1867:30  */
  assign n5228_o = s_state == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:1867:45  */
  assign n5229_o = n5228_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1867:17  */
  assign n5231_o = n5229_o ? 1'b1 : n5092_o;
  /* find_the_damn_issue_sky130.vhd:1872:30  */
  assign n5233_o = s_state == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:1872:45  */
  assign n5234_o = n5233_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1872:17  */
  assign n5236_o = n5234_o ? 1'b1 : n5159_o;
  /* find_the_damn_issue_sky130.vhd:1877:30  */
  assign n5238_o = s_state == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:1877:45  */
  assign n5239_o = n5238_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:1877:17  */
  assign n5241_o = n5239_o ? 4'b0000 : n5226_o;
  /* find_the_damn_issue_sky130.vhd:1882:35  */
  assign n5242_o = in_unnamed_7 == s_config_stopclocksignal;
  /* find_the_damn_issue_sky130.vhd:1882:76  */
  assign n5244_o = s_state == 4'b1100;
  /* find_the_damn_issue_sky130.vhd:1882:63  */
  assign n5245_o = n5242_o & n5244_o;
  /* find_the_damn_issue_sky130.vhd:1882:17  */
  assign n5247_o = n5245_o ? 4'b0000 : n5241_o;
  /* find_the_damn_issue_sky130.vhd:1887:26  */
  assign n5249_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:1887:67  */
  assign n5251_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:1887:84  */
  assign n5252_o = n5251_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1887:53  */
  assign n5253_o = n5249_o & n5252_o;
  /* find_the_damn_issue_sky130.vhd:1888:54  */
  assign n5254_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:1887:17  */
  assign n5255_o = n5253_o ? n5254_o : n5015_o;
  /* find_the_damn_issue_sky130.vhd:1892:26  */
  assign n5257_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:1892:67  */
  assign n5259_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:1892:84  */
  assign n5260_o = n5259_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1892:53  */
  assign n5261_o = n5257_o & n5260_o;
  /* find_the_damn_issue_sky130.vhd:1893:54  */
  assign n5262_o = in_command[1];
  /* find_the_damn_issue_sky130.vhd:1892:17  */
  assign n5263_o = n5261_o ? n5262_o : n5017_o;
  /* find_the_damn_issue_sky130.vhd:1897:26  */
  assign n5265_o = 1'b0 == s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:1897:67  */
  assign n5267_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:1897:84  */
  assign n5268_o = n5267_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1897:53  */
  assign n5269_o = n5265_o & n5268_o;
  /* find_the_damn_issue_sky130.vhd:1898:54  */
  assign n5270_o = in_command[2];
  /* find_the_damn_issue_sky130.vhd:1897:17  */
  assign n5271_o = n5269_o ? n5270_o : n5019_o;
  /* find_the_damn_issue_sky130.vhd:1903:54  */
  assign n5272_o = in_command[3];
  /* find_the_damn_issue_sky130.vhd:1902:17  */
  assign n5273_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid ? n5272_o : n5021_o;
  /* find_the_damn_issue_sky130.vhd:1907:30  */
  assign n5275_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:1907:47  */
  assign n5276_o = n5275_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1907:17  */
  assign n5278_o = n5276_o ? 1'b1 : n5236_o;
  /* find_the_damn_issue_sky130.vhd:1912:30  */
  assign n5280_o = s_state == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:1912:47  */
  assign n5281_o = n5280_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1912:17  */
  assign n5283_o = n5281_o ? 4'b0011 : n5247_o;
  /* find_the_damn_issue_sky130.vhd:1917:30  */
  assign n5285_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:1917:46  */
  assign n5286_o = n5285_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1917:17  */
  assign n5288_o = n5286_o ? 1'b1 : n5278_o;
  /* find_the_damn_issue_sky130.vhd:1922:30  */
  assign n5290_o = s_state == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:1922:46  */
  assign n5291_o = n5290_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1922:17  */
  assign n5293_o = n5291_o ? 4'b0000 : n5283_o;
  /* find_the_damn_issue_sky130.vhd:1927:30  */
  assign n5295_o = s_state == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:1927:46  */
  assign n5296_o = n5295_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1927:17  */
  assign n5298_o = n5296_o ? 1'b1 : n5288_o;
  /* find_the_damn_issue_sky130.vhd:1932:30  */
  assign n5300_o = s_state == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:1932:46  */
  assign n5301_o = n5300_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1932:17  */
  assign n5302_o = n5301_o ? s_followupstate : n5293_o;
  /* find_the_damn_issue_sky130.vhd:1937:30  */
  assign n5304_o = s_state == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:1937:45  */
  assign n5305_o = n5304_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1937:17  */
  assign n5307_o = n5305_o ? 1'b1 : n5298_o;
  /* find_the_damn_issue_sky130.vhd:1942:30  */
  assign n5309_o = s_state == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:1942:45  */
  assign n5310_o = n5309_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1942:17  */
  assign n5312_o = n5310_o ? 4'b1000 : n5302_o;
  /* find_the_damn_issue_sky130.vhd:1947:30  */
  assign n5314_o = s_state == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:1947:46  */
  assign n5315_o = n5314_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1947:17  */
  assign n5317_o = n5315_o ? 1'b1 : n5307_o;
  /* find_the_damn_issue_sky130.vhd:1952:30  */
  assign n5319_o = s_state == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:1952:46  */
  assign n5320_o = n5319_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:1952:17  */
  assign n5321_o = n5320_o ? s_followupstate : n5312_o;
  /* find_the_damn_issue_sky130.vhd:1957:40  */
  assign n5322_o = ~n3793_o;
  /* find_the_damn_issue_sky130.vhd:1957:100  */
  assign n5324_o = n5273_o == in_unnamed_5;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n5331_o = n5324_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1957:66  */
  assign n5332_o = n5322_o | n5331_o;
  /* find_the_damn_issue_sky130.vhd:1958:101  */
  assign n5335_o = s_state == 4'b1001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n5342_o = n5335_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1958:126  */
  assign n5343_o = ~n3690_o;
  /* find_the_damn_issue_sky130.vhd:1958:120  */
  assign n5344_o = n5342_o & n5343_o;
  /* find_the_damn_issue_sky130.vhd:1958:152  */
  assign n5345_o = ~n3692_o;
  /* find_the_damn_issue_sky130.vhd:1958:146  */
  assign n5346_o = n5344_o & n5345_o;
  /* find_the_damn_issue_sky130.vhd:1958:173  */
  assign n5347_o = n5346_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:1958:72  */
  assign n5348_o = n5332_o & n5347_o;
  /* find_the_damn_issue_sky130.vhd:1959:17  */
  assign n5350_o = n5348_o ? s_config_shiftout : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1965:101  */
  assign n5351_o = ~s_config_captureedge;
  /* find_the_damn_issue_sky130.vhd:1965:95  */
  assign n5352_o = s_config_shiftin & n5351_o;
  /* find_the_damn_issue_sky130.vhd:1964:17  */
  assign n5354_o = n5348_o ? n5352_o : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1969:17  */
  assign n5356_o = n5348_o ? 4'b1011 : n5321_o;
  /* find_the_damn_issue_sky130.vhd:1974:23  */
  assign n5357_o = ~s_config_clockthreephase;
  /* find_the_damn_issue_sky130.vhd:1974:59  */
  assign n5358_o = n5357_o & n5348_o;
  /* find_the_damn_issue_sky130.vhd:1974:17  */
  assign n5361_o = n5358_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:1979:23  */
  assign n5362_o = ~s_config_clockthreephase;
  /* find_the_damn_issue_sky130.vhd:1979:59  */
  assign n5363_o = n5362_o & n5348_o;
  /* find_the_damn_issue_sky130.vhd:1979:17  */
  assign n5365_o = n5363_o ? 4'b1010 : n5356_o;
  /* find_the_damn_issue_sky130.vhd:1984:31  */
  assign n5367_o = s_state == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:1984:57  */
  assign n5368_o = ~n3692_o;
  /* find_the_damn_issue_sky130.vhd:1984:51  */
  assign n5369_o = n5367_o & n5368_o;
  /* find_the_damn_issue_sky130.vhd:1984:84  */
  assign n5370_o = n5369_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:1985:60  */
  assign n5371_o = s_config_shiftin & s_config_captureedge;
  /* find_the_damn_issue_sky130.vhd:1984:17  */
  assign n5372_o = n5370_o ? n5371_o : n5354_o;
  /* find_the_damn_issue_sky130.vhd:1989:31  */
  assign n5374_o = s_state == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:1989:57  */
  assign n5375_o = ~n3692_o;
  /* find_the_damn_issue_sky130.vhd:1989:51  */
  assign n5376_o = n5374_o & n5375_o;
  /* find_the_damn_issue_sky130.vhd:1989:84  */
  assign n5377_o = n5376_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:1989:17  */
  assign n5379_o = n5377_o ? 1'b1 : n5361_o;
  /* find_the_damn_issue_sky130.vhd:1994:31  */
  assign n5381_o = s_state == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:1994:57  */
  assign n5382_o = ~n3692_o;
  /* find_the_damn_issue_sky130.vhd:1994:51  */
  assign n5383_o = n5381_o & n5382_o;
  /* find_the_damn_issue_sky130.vhd:1994:84  */
  assign n5384_o = n5383_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:1994:17  */
  assign n5386_o = n5384_o ? 4'b1001 : n5365_o;
  /* find_the_damn_issue_sky130.vhd:1999:17  */
  assign n5388_o = n3720_o ? 4'b0000 : n5386_o;
  /* find_the_damn_issue_sky130.vhd:2004:30  */
  assign n5390_o = s_state == 4'b1011;
  /* find_the_damn_issue_sky130.vhd:2004:48  */
  assign n5391_o = n5390_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:2004:17  */
  assign n5393_o = n5391_o ? 1'b1 : n5379_o;
  /* find_the_damn_issue_sky130.vhd:2009:30  */
  assign n5395_o = s_state == 4'b1011;
  /* find_the_damn_issue_sky130.vhd:2009:48  */
  assign n5396_o = n5395_o & s_tick;
  /* find_the_damn_issue_sky130.vhd:2009:17  */
  assign n5398_o = n5396_o ? 4'b1010 : n5388_o;
  /* find_the_damn_issue_sky130.vhd:2015:17  */
  assign n5399_o = s_config_clockdelay ? s_toggleclockdelayed : s_toggleclock;
  /* find_the_damn_issue_sky130.vhd:2021:91  */
  assign n5400_o = n5273_o ^ n5399_o;
  /* find_the_damn_issue_sky130.vhd:2020:17  */
  assign n5401_o = s_tick ? n5400_o : n5273_o;
  /* find_the_damn_issue_sky130.vhd:2027:53  */
  assign n5402_o = s_m_value == n3723_o;
  /* find_the_damn_issue_sky130.vhd:2027:39  */
  assign n5403_o = n3688_o | n5402_o;
  /* find_the_damn_issue_sky130.vhd:2027:74  */
  assign n5404_o = n5403_o & s_setupedge;
  /* find_the_damn_issue_sky130.vhd:2027:17  */
  assign n5406_o = n5404_o ? 1'b1 : n5317_o;
  /* find_the_damn_issue_sky130.vhd:2032:53  */
  assign n5407_o = s_m_value == n3723_o;
  /* find_the_damn_issue_sky130.vhd:2032:39  */
  assign n5408_o = n3688_o | n5407_o;
  /* find_the_damn_issue_sky130.vhd:2032:74  */
  assign n5409_o = n5408_o & s_setupedge;
  /* find_the_damn_issue_sky130.vhd:2032:17  */
  assign n5411_o = n5409_o ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:2037:53  */
  assign n5412_o = s_m_value == n3723_o;
  /* find_the_damn_issue_sky130.vhd:2037:39  */
  assign n5413_o = n3688_o | n5412_o;
  /* find_the_damn_issue_sky130.vhd:2037:74  */
  assign n5414_o = n5413_o & s_setupedge;
  /* find_the_damn_issue_sky130.vhd:2037:17  */
  assign n5416_o = n5414_o ? 3'b000 : s_const_xxx_2;
  /* find_the_damn_issue_sky130.vhd:2042:17  */
  assign n5417_o = s_setupedge ? n3757_o : n5263_o;
  /* find_the_damn_issue_sky130.vhd:2047:78  */
  assign n5418_o = s_config_tmsoutmode & s_setupedge;
  /* find_the_damn_issue_sky130.vhd:2049:58  */
  assign n5419_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:2048:17  */
  assign n5420_o = n5418_o ? n5419_o : n5417_o;
  /* find_the_damn_issue_sky130.vhd:2053:17  */
  assign n5421_o = n5418_o ? n3757_o : n3766_o;
  /* find_the_damn_issue_sky130.vhd:2058:74  */
  assign n5422_o = s_config_msbfirst & s_captureedge;
  /* find_the_damn_issue_sky130.vhd:2060:65  */
  assign n5423_o = s_capturebuffer[6:0];
  /* find_the_damn_issue_sky130.vhd:2060:78  */
  assign n5424_o = {n5423_o, n3289_o};
  /* find_the_damn_issue_sky130.vhd:2059:17  */
  assign n5425_o = n5422_o ? n5424_o : s_capturebuffer;
  /* find_the_damn_issue_sky130.vhd:2064:82  */
  assign n5426_o = n3758_o & s_captureedge;
  /* find_the_damn_issue_sky130.vhd:2065:55  */
  assign n5427_o = s_m_value_2 == n3723_o;
  /* find_the_damn_issue_sky130.vhd:2065:39  */
  assign n5428_o = n3688_o | n5427_o;
  /* find_the_damn_issue_sky130.vhd:2065:76  */
  assign n5429_o = n5428_o & s_captureedge;
  /* find_the_damn_issue_sky130.vhd:2065:17  */
  assign n5431_o = n5429_o ? 1'b1 : n5231_o;
  /* find_the_damn_issue_sky130.vhd:2070:55  */
  assign n5432_o = s_m_value_2 == n3723_o;
  /* find_the_damn_issue_sky130.vhd:2070:39  */
  assign n5433_o = n3688_o | n5432_o;
  /* find_the_damn_issue_sky130.vhd:2070:76  */
  assign n5434_o = n5433_o & s_captureedge;
  /* find_the_damn_issue_sky130.vhd:2070:17  */
  assign n5436_o = n5434_o ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:2075:55  */
  assign n5437_o = s_m_value_2 == n3723_o;
  /* find_the_damn_issue_sky130.vhd:2075:39  */
  assign n5438_o = n3688_o | n5437_o;
  /* find_the_damn_issue_sky130.vhd:2075:76  */
  assign n5439_o = n5438_o & s_captureedge;
  /* find_the_damn_issue_sky130.vhd:2075:17  */
  assign n5441_o = n5439_o ? 3'b000 : s_const_xxx;
  /* find_the_damn_issue_sky130.vhd:2080:17  */
  assign n5443_o = s_state_eq_load_low_and_command_valid ? 1'b1 : n5406_o;
  /* find_the_damn_issue_sky130.vhd:2085:17  */
  assign n5445_o = s_state_eq_load_low_and_command_valid ? 4'b0101 : n5398_o;
  /* find_the_damn_issue_sky130.vhd:2090:30  */
  assign n5447_o = s_state == 4'b0101;
  /* find_the_damn_issue_sky130.vhd:2090:47  */
  assign n5448_o = n5447_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:2090:17  */
  assign n5450_o = n5448_o ? 1'b1 : n5443_o;
  /* find_the_damn_issue_sky130.vhd:2095:30  */
  assign n5452_o = s_state == 4'b0101;
  /* find_the_damn_issue_sky130.vhd:2095:47  */
  assign n5453_o = n5452_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:2095:17  */
  assign n5454_o = n5453_o ? s_followupstate : n5445_o;
  /* find_the_damn_issue_sky130.vhd:2110:115  */
  assign n5455_o = n5425_o[7:1];
  /* find_the_damn_issue_sky130.vhd:2110:91  */
  assign n5456_o = {n3289_o, n5455_o};
  /* find_the_damn_issue_sky130.vhd:2109:17  */
  assign n5457_o = n5426_o ? n5456_o : n5425_o;
  /* find_the_damn_issue_sky130.vhd:2115:55  */
  assign n5458_o = s_m_value_2 == n3723_o;
  /* find_the_damn_issue_sky130.vhd:2115:39  */
  assign n5459_o = n3688_o | n5458_o;
  /* find_the_damn_issue_sky130.vhd:2115:76  */
  assign n5460_o = n5459_o & s_captureedge;
  /* find_the_damn_issue_sky130.vhd:2115:17  */
  assign n5462_o = n5460_o ? 8'b00000000 : n5457_o;
  /* find_the_damn_issue_sky130.vhd:2126:26  */
  assign n5464_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2126:74  */
  assign n5465_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2126:84  */
  assign n5466_o = n5465_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2126:60  */
  assign n5467_o = n5464_o & n5466_o;
  /* find_the_damn_issue_sky130.vhd:2127:81  */
  assign n5468_o = n3234_o[7:1];
  /* find_the_damn_issue_sky130.vhd:2127:94  */
  assign n5469_o = {n5468_o, in_unnamed_2};
  /* find_the_damn_issue_sky130.vhd:2126:17  */
  assign n5470_o = n5467_o ? n5469_o : n3234_o;
  /* find_the_damn_issue_sky130.vhd:2132:26  */
  assign n5472_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2132:74  */
  assign n5473_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2132:84  */
  assign n5474_o = n5473_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2132:60  */
  assign n5475_o = n5472_o & n5474_o;
  /* find_the_damn_issue_sky130.vhd:2133:123  */
  assign n5476_o = n5470_o[7:2];
  /* find_the_damn_issue_sky130.vhd:2133:136  */
  assign n5477_o = {n5476_o, in_unnamed_3};
  /* find_the_damn_issue_sky130.vhd:2133:190  */
  assign n5478_o = n5470_o[0];
  /* find_the_damn_issue_sky130.vhd:2133:151  */
  assign n5479_o = {n5477_o, n5478_o};
  /* find_the_damn_issue_sky130.vhd:2132:17  */
  assign n5480_o = n5475_o ? n5479_o : n5470_o;
  /* find_the_damn_issue_sky130.vhd:2138:26  */
  assign n5482_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2138:74  */
  assign n5483_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2138:84  */
  assign n5484_o = n5483_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2138:60  */
  assign n5485_o = n5482_o & n5484_o;
  /* find_the_damn_issue_sky130.vhd:2139:165  */
  assign n5486_o = n5480_o[7:3];
  /* find_the_damn_issue_sky130.vhd:2139:178  */
  assign n5487_o = {n5486_o, in_unnamed_4};
  /* find_the_damn_issue_sky130.vhd:2139:253  */
  assign n5488_o = n5480_o[1:0];
  /* find_the_damn_issue_sky130.vhd:2139:193  */
  assign n5489_o = {n5487_o, n5488_o};
  /* find_the_damn_issue_sky130.vhd:2138:17  */
  assign n5490_o = n5485_o ? n5489_o : n5480_o;
  /* find_the_damn_issue_sky130.vhd:2144:26  */
  assign n5492_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2144:74  */
  assign n5493_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2144:84  */
  assign n5494_o = n5493_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2144:60  */
  assign n5495_o = n5492_o & n5494_o;
  /* find_the_damn_issue_sky130.vhd:2145:207  */
  assign n5496_o = n5490_o[7:4];
  /* find_the_damn_issue_sky130.vhd:2145:220  */
  assign n5497_o = {n5496_o, in_unnamed_5};
  /* find_the_damn_issue_sky130.vhd:2145:316  */
  assign n5498_o = n5490_o[2:0];
  /* find_the_damn_issue_sky130.vhd:2145:235  */
  assign n5499_o = {n5497_o, n5498_o};
  /* find_the_damn_issue_sky130.vhd:2144:17  */
  assign n5500_o = n5495_o ? n5499_o : n5490_o;
  /* find_the_damn_issue_sky130.vhd:2150:26  */
  assign n5502_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2150:74  */
  assign n5503_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2150:84  */
  assign n5504_o = n5503_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2150:60  */
  assign n5505_o = n5502_o & n5504_o;
  /* find_the_damn_issue_sky130.vhd:2151:249  */
  assign n5506_o = n5500_o[7:5];
  /* find_the_damn_issue_sky130.vhd:2151:262  */
  assign n5507_o = {n5506_o, in_unnamed_6};
  /* find_the_damn_issue_sky130.vhd:2151:379  */
  assign n5508_o = n5500_o[3:0];
  /* find_the_damn_issue_sky130.vhd:2151:277  */
  assign n5509_o = {n5507_o, n5508_o};
  /* find_the_damn_issue_sky130.vhd:2150:17  */
  assign n5510_o = n5505_o ? n5509_o : n5500_o;
  /* find_the_damn_issue_sky130.vhd:2156:26  */
  assign n5512_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2156:74  */
  assign n5513_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2156:84  */
  assign n5514_o = n5513_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2156:60  */
  assign n5515_o = n5512_o & n5514_o;
  /* find_the_damn_issue_sky130.vhd:2157:291  */
  assign n5516_o = n5510_o[7:6];
  /* find_the_damn_issue_sky130.vhd:2157:304  */
  assign n5517_o = {n5516_o, in_unnamed_7};
  /* find_the_damn_issue_sky130.vhd:2157:442  */
  assign n5518_o = n5510_o[4:0];
  /* find_the_damn_issue_sky130.vhd:2157:319  */
  assign n5519_o = {n5517_o, n5518_o};
  /* find_the_damn_issue_sky130.vhd:2156:17  */
  assign n5520_o = n5515_o ? n5519_o : n5510_o;
  /* find_the_damn_issue_sky130.vhd:2162:26  */
  assign n5522_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2162:74  */
  assign n5523_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2162:84  */
  assign n5524_o = n5523_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2162:60  */
  assign n5525_o = n5522_o & n5524_o;
  /* find_the_damn_issue_sky130.vhd:2163:325  */
  assign n5526_o = n5520_o[7];
  /* find_the_damn_issue_sky130.vhd:2163:338  */
  assign n5528_o = {n5526_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:2163:488  */
  assign n5529_o = n5520_o[5:0];
  /* find_the_damn_issue_sky130.vhd:2163:344  */
  assign n5530_o = {n5528_o, n5529_o};
  /* find_the_damn_issue_sky130.vhd:2162:17  */
  assign n5531_o = n5525_o ? n5530_o : n5520_o;
  /* find_the_damn_issue_sky130.vhd:2168:26  */
  assign n5533_o = 1'b0 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2168:74  */
  assign n5534_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2168:84  */
  assign n5535_o = n5534_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2168:60  */
  assign n5536_o = n5533_o & n5535_o;
  /* find_the_damn_issue_sky130.vhd:2169:357  */
  assign n5537_o = n5531_o[6:0];
  /* find_the_damn_issue_sky130.vhd:2169:200  */
  assign n5539_o = {1'b0, n5537_o};
  /* find_the_damn_issue_sky130.vhd:2168:17  */
  assign n5540_o = n5536_o ? n5539_o : n5531_o;
  /* find_the_damn_issue_sky130.vhd:2174:26  */
  assign n5542_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2174:74  */
  assign n5543_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2174:84  */
  assign n5544_o = n5543_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2174:60  */
  assign n5545_o = n5542_o & n5544_o;
  /* find_the_damn_issue_sky130.vhd:2175:385  */
  assign n5546_o = n5540_o[7:1];
  /* find_the_damn_issue_sky130.vhd:2175:398  */
  assign n5547_o = {n5546_o, in_unnamed_8};
  /* find_the_damn_issue_sky130.vhd:2174:17  */
  assign n5548_o = n5545_o ? n5547_o : n5540_o;
  /* find_the_damn_issue_sky130.vhd:2180:26  */
  assign n5550_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2180:74  */
  assign n5551_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2180:84  */
  assign n5552_o = n5551_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2180:60  */
  assign n5553_o = n5550_o & n5552_o;
  /* find_the_damn_issue_sky130.vhd:2181:406  */
  assign n5554_o = n5548_o[7:2];
  /* find_the_damn_issue_sky130.vhd:2181:419  */
  assign n5555_o = {n5554_o, in_unnamed_9};
  /* find_the_damn_issue_sky130.vhd:2181:625  */
  assign n5556_o = n5548_o[0];
  /* find_the_damn_issue_sky130.vhd:2181:434  */
  assign n5557_o = {n5555_o, n5556_o};
  /* find_the_damn_issue_sky130.vhd:2180:17  */
  assign n5558_o = n5553_o ? n5557_o : n5548_o;
  /* find_the_damn_issue_sky130.vhd:2186:26  */
  assign n5560_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2186:74  */
  assign n5561_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2186:84  */
  assign n5562_o = n5561_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2186:60  */
  assign n5563_o = n5560_o & n5562_o;
  /* find_the_damn_issue_sky130.vhd:2187:406  */
  assign n5564_o = n5558_o[7:3];
  /* find_the_damn_issue_sky130.vhd:2187:419  */
  assign n5565_o = {n5564_o, in_unnamed_10};
  /* find_the_damn_issue_sky130.vhd:2187:626  */
  assign n5566_o = n5558_o[1:0];
  /* find_the_damn_issue_sky130.vhd:2187:435  */
  assign n5567_o = {n5565_o, n5566_o};
  /* find_the_damn_issue_sky130.vhd:2186:17  */
  assign n5568_o = n5563_o ? n5567_o : n5558_o;
  /* find_the_damn_issue_sky130.vhd:2192:26  */
  assign n5570_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2192:74  */
  assign n5571_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2192:84  */
  assign n5572_o = n5571_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2192:60  */
  assign n5573_o = n5570_o & n5572_o;
  /* find_the_damn_issue_sky130.vhd:2193:406  */
  assign n5574_o = n5568_o[7:4];
  /* find_the_damn_issue_sky130.vhd:2193:419  */
  assign n5575_o = {n5574_o, in_unnamed_11};
  /* find_the_damn_issue_sky130.vhd:2193:626  */
  assign n5576_o = n5568_o[2:0];
  /* find_the_damn_issue_sky130.vhd:2193:435  */
  assign n5577_o = {n5575_o, n5576_o};
  /* find_the_damn_issue_sky130.vhd:2192:17  */
  assign n5578_o = n5573_o ? n5577_o : n5568_o;
  /* find_the_damn_issue_sky130.vhd:2198:26  */
  assign n5580_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2198:74  */
  assign n5581_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2198:84  */
  assign n5582_o = n5581_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2198:60  */
  assign n5583_o = n5580_o & n5582_o;
  /* find_the_damn_issue_sky130.vhd:2199:406  */
  assign n5584_o = n5578_o[7:5];
  /* find_the_damn_issue_sky130.vhd:2199:419  */
  assign n5585_o = {n5584_o, in_unnamed_12};
  /* find_the_damn_issue_sky130.vhd:2199:626  */
  assign n5586_o = n5578_o[3:0];
  /* find_the_damn_issue_sky130.vhd:2199:435  */
  assign n5587_o = {n5585_o, n5586_o};
  /* find_the_damn_issue_sky130.vhd:2198:17  */
  assign n5588_o = n5583_o ? n5587_o : n5578_o;
  /* find_the_damn_issue_sky130.vhd:2204:26  */
  assign n5590_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2204:74  */
  assign n5591_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2204:84  */
  assign n5592_o = n5591_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2204:60  */
  assign n5593_o = n5590_o & n5592_o;
  /* find_the_damn_issue_sky130.vhd:2205:406  */
  assign n5594_o = n5588_o[7:6];
  /* find_the_damn_issue_sky130.vhd:2205:419  */
  assign n5595_o = {n5594_o, in_unnamed_13};
  /* find_the_damn_issue_sky130.vhd:2205:626  */
  assign n5596_o = n5588_o[4:0];
  /* find_the_damn_issue_sky130.vhd:2205:435  */
  assign n5597_o = {n5595_o, n5596_o};
  /* find_the_damn_issue_sky130.vhd:2204:17  */
  assign n5598_o = n5593_o ? n5597_o : n5588_o;
  /* find_the_damn_issue_sky130.vhd:2210:26  */
  assign n5600_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2210:74  */
  assign n5601_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2210:84  */
  assign n5602_o = n5601_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2210:60  */
  assign n5603_o = n5600_o & n5602_o;
  /* find_the_damn_issue_sky130.vhd:2211:406  */
  assign n5604_o = n5598_o[7];
  /* find_the_damn_issue_sky130.vhd:2211:419  */
  assign n5605_o = {n5604_o, in_unnamed_14};
  /* find_the_damn_issue_sky130.vhd:2211:626  */
  assign n5606_o = n5598_o[5:0];
  /* find_the_damn_issue_sky130.vhd:2211:435  */
  assign n5607_o = {n5605_o, n5606_o};
  /* find_the_damn_issue_sky130.vhd:2210:17  */
  assign n5608_o = n5603_o ? n5607_o : n5598_o;
  /* find_the_damn_issue_sky130.vhd:2216:26  */
  assign n5610_o = 1'b1 == n3871_o;
  /* find_the_damn_issue_sky130.vhd:2216:74  */
  assign n5611_o = in_command[0];
  /* find_the_damn_issue_sky130.vhd:2216:84  */
  assign n5612_o = n5611_o & s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed;
  /* find_the_damn_issue_sky130.vhd:2216:60  */
  assign n5613_o = n5610_o & n5612_o;
  /* find_the_damn_issue_sky130.vhd:2217:422  */
  assign n5614_o = n5608_o[6:0];
  /* find_the_damn_issue_sky130.vhd:2217:231  */
  assign n5615_o = {in_unnamed_15, n5614_o};
  /* find_the_damn_issue_sky130.vhd:2216:17  */
  assign n5616_o = n5613_o ? n5615_o : n5608_o;
  /* find_the_damn_issue_sky130.vhd:2222:328  */
  assign n5617_o = n3898_o[6:0];
  /* find_the_damn_issue_sky130.vhd:2222:221  */
  assign n5619_o = {1'b0, n5617_o};
  /* find_the_damn_issue_sky130.vhd:2221:17  */
  assign n5620_o = n5013_o ? n5619_o : n5616_o;
  /* find_the_damn_issue_sky130.vhd:2226:38  */
  assign n5621_o = in_command[6:5];
  /* find_the_damn_issue_sky130.vhd:2226:51  */
  assign n5623_o = n5621_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:2226:94  */
  assign n5625_o = n3899_o == 7'b0011110;
  /* find_the_damn_issue_sky130.vhd:2226:144  */
  assign n5627_o = n3900_o == 6'b001110;
  /* find_the_damn_issue_sky130.vhd:2226:193  */
  assign n5629_o = n3900_o == 6'b001010;
  /* find_the_damn_issue_sky130.vhd:2226:242  */
  assign n5631_o = n3900_o == 6'b000111;
  /* find_the_damn_issue_sky130.vhd:2226:291  */
  assign n5633_o = n3900_o == 6'b000110;
  /* find_the_damn_issue_sky130.vhd:2226:340  */
  assign n5635_o = n3900_o == 6'b000100;
  /* find_the_damn_issue_sky130.vhd:2226:387  */
  assign n5637_o = n3899_o == 7'b0000111;
  /* find_the_damn_issue_sky130.vhd:2226:435  */
  assign n5639_o = n3899_o == 7'b0000110;
  /* find_the_damn_issue_sky130.vhd:2226:485  */
  assign n5641_o = n3900_o == 6'b000010;
  /* find_the_damn_issue_sky130.vhd:2226:523  */
  assign n5642_o = in_command[6:2];
  /* find_the_damn_issue_sky130.vhd:2226:536  */
  assign n5644_o = n5642_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:2226:577  */
  assign n5645_o = in_command[7];
  /* find_the_damn_issue_sky130.vhd:2226:564  */
  assign n5646_o = ~n5645_o;
  /* find_the_damn_issue_sky130.vhd:2226:558  */
  assign n5647_o = ~n5646_o;
  /* find_the_damn_issue_sky130.vhd:2226:552  */
  assign n5648_o = ~n5647_o;
  /* find_the_damn_issue_sky130.vhd:2226:547  */
  assign n5649_o = n5644_o | n5648_o;
  /* find_the_damn_issue_sky130.vhd:2226:508  */
  assign n5650_o = ~n5649_o;
  /* find_the_damn_issue_sky130.vhd:2226:502  */
  assign n5651_o = ~n5650_o;
  /* find_the_damn_issue_sky130.vhd:2226:497  */
  assign n5652_o = n5641_o | n5651_o;
  /* find_the_damn_issue_sky130.vhd:2226:459  */
  assign n5653_o = ~n5652_o;
  /* find_the_damn_issue_sky130.vhd:2226:453  */
  assign n5654_o = ~n5653_o;
  /* find_the_damn_issue_sky130.vhd:2226:448  */
  assign n5655_o = n5639_o | n5654_o;
  /* find_the_damn_issue_sky130.vhd:2226:411  */
  assign n5656_o = ~n5655_o;
  /* find_the_damn_issue_sky130.vhd:2226:405  */
  assign n5657_o = ~n5656_o;
  /* find_the_damn_issue_sky130.vhd:2226:400  */
  assign n5658_o = n5637_o | n5657_o;
  /* find_the_damn_issue_sky130.vhd:2226:363  */
  assign n5659_o = ~n5658_o;
  /* find_the_damn_issue_sky130.vhd:2226:357  */
  assign n5660_o = ~n5659_o;
  /* find_the_damn_issue_sky130.vhd:2226:352  */
  assign n5661_o = n5635_o | n5660_o;
  /* find_the_damn_issue_sky130.vhd:2226:314  */
  assign n5662_o = ~n5661_o;
  /* find_the_damn_issue_sky130.vhd:2226:308  */
  assign n5663_o = ~n5662_o;
  /* find_the_damn_issue_sky130.vhd:2226:303  */
  assign n5664_o = n5633_o | n5663_o;
  /* find_the_damn_issue_sky130.vhd:2226:265  */
  assign n5665_o = ~n5664_o;
  /* find_the_damn_issue_sky130.vhd:2226:259  */
  assign n5666_o = ~n5665_o;
  /* find_the_damn_issue_sky130.vhd:2226:254  */
  assign n5667_o = n5631_o | n5666_o;
  /* find_the_damn_issue_sky130.vhd:2226:216  */
  assign n5668_o = ~n5667_o;
  /* find_the_damn_issue_sky130.vhd:2226:210  */
  assign n5669_o = ~n5668_o;
  /* find_the_damn_issue_sky130.vhd:2226:205  */
  assign n5670_o = n5629_o | n5669_o;
  /* find_the_damn_issue_sky130.vhd:2226:167  */
  assign n5671_o = ~n5670_o;
  /* find_the_damn_issue_sky130.vhd:2226:161  */
  assign n5672_o = ~n5671_o;
  /* find_the_damn_issue_sky130.vhd:2226:156  */
  assign n5673_o = n5627_o | n5672_o;
  /* find_the_damn_issue_sky130.vhd:2226:118  */
  assign n5674_o = ~n5673_o;
  /* find_the_damn_issue_sky130.vhd:2226:112  */
  assign n5675_o = ~n5674_o;
  /* find_the_damn_issue_sky130.vhd:2226:107  */
  assign n5676_o = n5625_o | n5675_o;
  /* find_the_damn_issue_sky130.vhd:2226:70  */
  assign n5677_o = ~n5676_o;
  /* find_the_damn_issue_sky130.vhd:2226:64  */
  assign n5678_o = ~n5677_o;
  /* find_the_damn_issue_sky130.vhd:2226:59  */
  assign n5679_o = n5623_o | n5678_o;
  /* find_the_damn_issue_sky130.vhd:2226:23  */
  assign n5680_o = ~n5679_o;
  /* find_the_damn_issue_sky130.vhd:2226:637  */
  assign n5682_o = s_state == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:2226:647  */
  assign n5683_o = n5682_o & in_command_valid;
  /* find_the_damn_issue_sky130.vhd:2226:674  */
  assign n5684_o = n5683_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:2226:622  */
  assign n5685_o = n5680_o & n5684_o;
  /* find_the_damn_issue_sky130.vhd:2226:17  */
  assign n5687_o = n5685_o ? 8'b11111010 : n5620_o;
  /* find_the_damn_issue_sky130.vhd:2231:30  */
  assign n5689_o = s_state == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:2231:45  */
  assign n5690_o = n5689_o & in_unnamed;
  /* find_the_damn_issue_sky130.vhd:2231:17  */
  assign n5691_o = n5690_o ? in_command : n5687_o;
  /* find_the_damn_issue_sky130.vhd:2236:17  */
  assign n5692_o = s_captureedge ? n5457_o : n5691_o;
  /* find_the_damn_issue_sky130.vhd:2269:27  */
  assign n5759_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:2394:9  */
  scl_counter_14 scl_counter1 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_setupedge),
    .in_unnamed_2(s_unnamed_16),
    .in_unnamed_3(s_unnamed_17),
    .out_m_value(scl_counter1_out_m_value),
    .out_const_0(scl_counter1_out_const_0),
    .out_const_xxx(scl_counter1_out_const_xxx));
  /* find_the_damn_issue_sky130.vhd:2404:9  */
  scl_counter_15 scl_counter2 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_captureedge),
    .in_unnamed_2(s_unnamed_18),
    .in_unnamed_3(s_unnamed_19),
    .out_m_value(scl_counter2_out_m_value),
    .out_const_0(scl_counter2_out_const_0),
    .out_const_xxx(scl_counter2_out_const_xxx));
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5898_q <= 4'b0000;
    else
      n5898_q <= s_followupstate_mux1;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5899_q <= 4'b0000;
    else
      n5899_q <= s_clock_setup_mux3;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  assign n5900_o = s_command_rewired_eq_const_0_and_command_bit_7_not_not_and_state_eq_idle_and_command_valid_and_unnamed ? s_command_bit_1_4 : s_config_targetpingroup;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5901_q <= n5900_o;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5902_q <= s_config_stopclocksignal_mux3;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5903_q <= s_config_stopclockonsignal_mux3;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5904_q <= s_config_stopclockonlastbit_mux3;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5905_q <= s_config_tmsoutmode_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5906_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid ? s_command_bit_3_4 : s_config_idleclockstate;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5907_q <= 1'b0;
    else
      n5907_q <= n5906_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5908_o = s_command_rewired_eq_const_10_and_command_rewired_eq_const_0_or_command_bit_7_not_not_not_not_and_state_eq_idle_and_command_valid_and_unnamed ? s_command_bit_0_not_2 : s_config_dataloopback;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5909_q <= 1'b0;
    else
      n5909_q <= n5908_o;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5910_q <= s_config_shiftin_mux2;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5911_q <= s_config_shiftout_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5912_o = s_command_rewired_eq_const_110_and_unnamed_not_and_state_eq_idle_and_command_valid_and_unnamed ? s_command_bit_0_not : s_config_clockthreephase;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5913_q <= 1'b0;
    else
      n5913_q <= n5912_o;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  assign n5914_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? s_command_bit_3_not : s_config_msbfirst;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5915_q <= n5914_o;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  assign n5916_o = s_command_bit_7_not_and_state_eq_idle_and_command_valid_and_unnamed ? s_command_bit_0_neq_command_bit_2 : s_config_captureedge;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5917_q <= n5916_o;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5918_q <= s_config_clockdelay_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5919_q <= 1'b1;
    else
      n5919_q <= s_carryin_mux2;
  /* find_the_damn_issue_sky130.vhd:2246:17  */
  always @(posedge clk)
    n5920_q <= s_cmdinc_bitlength_mux2_rewired_mux1_cmdinc_rewired_mux1_cmdinc_rewired_mux1;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5921_q <= 17'b00000000000000001;
    else
      n5921_q <= s_clockdiv_mux1_cmdinc_rewired_mux1;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5922_o = s_tick ? s_toggleclock : s_toggleclockdelayed;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5923_q <= 1'b0;
    else
      n5923_q <= n5922_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5924_q <= 8'b00000000;
    else
      n5924_q <= s_capturebuffer_mux1_unnamed_mux1_rewired_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5925_q <= 1'b0;
    else
      n5925_q <= s_m_io0_out_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5926_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid ? s_command_bit_0_3 : s_m_io0_en_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5927_q <= 1'b0;
    else
      n5927_q <= n5926_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5928_o = s_state_eq_load_low_and_command_valid ? s_command_bit_0_2 : s_m_io0_opendrain_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5929_q <= 1'b0;
    else
      n5929_q <= n5928_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5930_q <= 1'b0;
    else
      n5930_q <= s_command_bit_0_mux3;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5931_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_2 ? s_command_bit_1_3 : s_m_io1_en_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5932_q <= 1'b0;
    else
      n5932_q <= n5931_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5933_o = s_state_eq_load_low_and_command_valid ? s_command_bit_1_2 : s_m_io1_opendrain_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5934_q <= 1'b0;
    else
      n5934_q <= n5933_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5935_q <= 1'b0;
    else
      n5935_q <= s_m_io2_out_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5936_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_3 ? s_command_bit_2_3 : s_m_io2_en_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5937_q <= 1'b0;
    else
      n5937_q <= n5936_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5938_o = s_state_eq_load_low_and_command_valid ? s_command_bit_2_2 : s_m_io2_opendrain_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5939_q <= 1'b0;
    else
      n5939_q <= n5938_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5940_q <= 1'b0;
    else
      n5940_q <= s_m_io3_out_mux2_xor_toggleclockdelayed_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5941_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_4 ? s_command_bit_3_3 : s_m_io3_en_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5942_q <= 1'b0;
    else
      n5942_q <= n5941_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5943_o = s_state_eq_load_low_and_command_valid ? s_command_bit_3_2 : s_m_io3_opendrain_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5944_q <= 1'b0;
    else
      n5944_q <= n5943_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5945_q <= 1'b0;
    else
      n5945_q <= s_m_io4_out_mux2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5946_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_5 ? s_command_bit_4_3 : s_m_io4_en_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5947_q <= 1'b0;
    else
      n5947_q <= n5946_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5948_o = s_state_eq_load_low_and_command_valid ? s_command_bit_4_2 : s_m_io4_opendrain_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5949_q <= 1'b0;
    else
      n5949_q <= n5948_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5950_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_2 ? s_command_bit_5_4 : s_m_io5_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5951_q <= 1'b0;
    else
      n5951_q <= n5950_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5952_o = s_const_0_eq_config_targetpingroup_and_state_eq_write_en_and_command_valid_6 ? s_command_bit_5_3 : s_m_io5_en_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5953_q <= 1'b0;
    else
      n5953_q <= n5952_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5954_o = s_state_eq_load_low_and_command_valid ? s_command_bit_5_2 : s_m_io5_opendrain_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5955_q <= 1'b0;
    else
      n5955_q <= n5954_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5956_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid ? s_command_bit_0 : s_m_io8_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5957_q <= 1'b0;
    else
      n5957_q <= n5956_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5958_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_2 ? s_command_bit_1 : s_m_io9_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5959_q <= 1'b0;
    else
      n5959_q <= n5958_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5960_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_3 ? s_command_bit_2 : s_m_io10_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5961_q <= 1'b0;
    else
      n5961_q <= n5960_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5962_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_4 ? s_command_bit_3 : s_m_io11_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5963_q <= 1'b0;
    else
      n5963_q <= n5962_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5964_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_5 ? s_command_bit_4 : s_m_io12_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5965_q <= 1'b0;
    else
      n5965_q <= n5964_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5966_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_6 ? s_command_bit_5 : s_m_io13_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5967_q <= 1'b0;
    else
      n5967_q <= n5966_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5968_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_7 ? s_command_bit_6 : s_m_io14_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5969_q <= 1'b0;
    else
      n5969_q <= n5968_o;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  assign n5970_o = s_const_1_eq_config_targetpingroup_and_state_eq_write_out_and_command_valid_8 ? s_command_bit_7 : s_m_io15_out_2;
  /* find_the_damn_issue_sky130.vhd:2305:17  */
  always @(posedge clk or posedge n5759_o)
    if (n5759_o)
      n5971_q <= 1'b0;
    else
      n5971_q <= n5970_o;
endmodule

module scl_uarttx
  (input  clk,
   input  rst_n,
   input  [23:0] in_baudrate,
   input  in_data_ready,
   input  in_data_valid,
   input  [7:0] in_data,
   output out_baud_and_m_last,
   output out_out);
  wire s_out_2;
  wire [3:0] s_m_value;
  wire s_m_last;
  wire s_const_0;
  wire s_const_0_2;
  wire s_unnamed;
  wire s_unnamed_2;
  wire [3:0] s_unnamed_3;
  wire [3:0] s_const_x;
  wire scl_baudrategenerator0_out_out;
  wire n2835_o;
  wire n2837_o;
  wire n2839_o;
  wire n2840_o;
  wire n2841_o;
  wire n2843_o;
  wire n2845_o;
  wire n2846_o;
  wire n2847_o;
  wire [3:0] n2849_o;
  wire n2850_o;
  wire n2852_o;
  wire n2855_o;
  wire [2:0] n2856_o;
  wire n2857_o;
  wire n2859_o;
  wire n2860_o;
  wire n2862_o;
  wire n2863_o;
  wire n2865_o;
  wire n2866_o;
  wire n2868_o;
  wire n2869_o;
  wire n2871_o;
  wire n2872_o;
  wire n2874_o;
  wire n2875_o;
  wire n2877_o;
  wire n2878_o;
  wire n2880_o;
  wire [7:0] n2881_o;
  reg n2883_o;
  wire n2884_o;
  wire n2885_o;
  wire [3:0] scl_counter0_out_m_value;
  wire scl_counter0_out_m_last;
  wire scl_counter0_out_const_0;
  wire scl_counter0_out_const_0_2;
  wire [3:0] scl_counter0_out_const_x;
  assign out_baud_and_m_last = n2850_o;
  assign out_out = n2885_o;
  /* find_the_damn_issue_sky130.vhd:2583:16  */
  assign s_out_2 = scl_baudrategenerator0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:2584:16  */
  assign s_m_value = scl_counter0_out_m_value; // (signal)
  /* find_the_damn_issue_sky130.vhd:2585:16  */
  assign s_m_last = scl_counter0_out_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:2586:16  */
  assign s_const_0 = scl_counter0_out_const_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:2587:16  */
  assign s_const_0_2 = scl_counter0_out_const_0_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:2588:16  */
  assign s_unnamed = n2837_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2589:16  */
  assign s_unnamed_2 = n2843_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2590:16  */
  assign s_unnamed_3 = n2849_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2591:16  */
  assign s_const_x = scl_counter0_out_const_x; // (signal)
  /* find_the_damn_issue_sky130.vhd:2593:9  */
  scl_baudrategenerator scl_baudrategenerator0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_baudrate(in_baudrate),
    .out_out(scl_baudrategenerator0_out_out));
  /* find_the_damn_issue_sky130.vhd:2612:40  */
  assign n2835_o = in_data_valid & s_out_2;
  /* find_the_damn_issue_sky130.vhd:2612:17  */
  assign n2837_o = n2835_o ? 1'b1 : s_const_0_2;
  /* find_the_damn_issue_sky130.vhd:2617:32  */
  assign n2839_o = s_m_value == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:2617:66  */
  assign n2840_o = in_data_valid & s_out_2;
  /* find_the_damn_issue_sky130.vhd:2617:42  */
  assign n2841_o = n2839_o & n2840_o;
  /* find_the_damn_issue_sky130.vhd:2617:17  */
  assign n2843_o = n2841_o ? 1'b1 : s_const_0;
  /* find_the_damn_issue_sky130.vhd:2622:32  */
  assign n2845_o = s_m_value == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:2622:66  */
  assign n2846_o = in_data_valid & s_out_2;
  /* find_the_damn_issue_sky130.vhd:2622:42  */
  assign n2847_o = n2845_o & n2846_o;
  /* find_the_damn_issue_sky130.vhd:2622:17  */
  assign n2849_o = n2847_o ? 4'b0110 : s_const_x;
  /* find_the_damn_issue_sky130.vhd:2627:48  */
  assign n2850_o = s_out_2 & s_m_last;
  /* find_the_damn_issue_sky130.vhd:2628:31  */
  assign n2852_o = s_m_value == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:2628:17  */
  assign n2855_o = n2852_o ? 1'b0 : 1'b1;
  /* find_the_damn_issue_sky130.vhd:2633:31  */
  assign n2856_o = s_m_value[2:0];
  /* find_the_damn_issue_sky130.vhd:2634:66  */
  assign n2857_o = in_data[0];
  /* find_the_damn_issue_sky130.vhd:2634:25  */
  assign n2859_o = n2856_o == 3'b000;
  /* find_the_damn_issue_sky130.vhd:2635:66  */
  assign n2860_o = in_data[1];
  /* find_the_damn_issue_sky130.vhd:2635:25  */
  assign n2862_o = n2856_o == 3'b001;
  /* find_the_damn_issue_sky130.vhd:2636:66  */
  assign n2863_o = in_data[2];
  /* find_the_damn_issue_sky130.vhd:2636:25  */
  assign n2865_o = n2856_o == 3'b010;
  /* find_the_damn_issue_sky130.vhd:2637:66  */
  assign n2866_o = in_data[3];
  /* find_the_damn_issue_sky130.vhd:2637:25  */
  assign n2868_o = n2856_o == 3'b011;
  /* find_the_damn_issue_sky130.vhd:2638:66  */
  assign n2869_o = in_data[4];
  /* find_the_damn_issue_sky130.vhd:2638:25  */
  assign n2871_o = n2856_o == 3'b100;
  /* find_the_damn_issue_sky130.vhd:2639:66  */
  assign n2872_o = in_data[5];
  /* find_the_damn_issue_sky130.vhd:2639:25  */
  assign n2874_o = n2856_o == 3'b101;
  /* find_the_damn_issue_sky130.vhd:2640:66  */
  assign n2875_o = in_data[6];
  /* find_the_damn_issue_sky130.vhd:2640:25  */
  assign n2877_o = n2856_o == 3'b110;
  /* find_the_damn_issue_sky130.vhd:2641:66  */
  assign n2878_o = in_data[7];
  /* find_the_damn_issue_sky130.vhd:2641:25  */
  assign n2880_o = n2856_o == 3'b111;
  assign n2881_o = {n2880_o, n2877_o, n2874_o, n2871_o, n2868_o, n2865_o, n2862_o, n2859_o};
  /* find_the_damn_issue_sky130.vhd:2633:17  */
  always @*
    case (n2881_o)
      8'b10000000: n2883_o = n2878_o;
      8'b01000000: n2883_o = n2875_o;
      8'b00100000: n2883_o = n2872_o;
      8'b00010000: n2883_o = n2869_o;
      8'b00001000: n2883_o = n2866_o;
      8'b00000100: n2883_o = n2863_o;
      8'b00000010: n2883_o = n2860_o;
      8'b00000001: n2883_o = n2857_o;
      default: n2883_o = 1'bX;
    endcase
  /* find_the_damn_issue_sky130.vhd:2644:29  */
  assign n2884_o = s_m_value[3];
  /* find_the_damn_issue_sky130.vhd:2644:17  */
  assign n2885_o = n2884_o ? n2883_o : n2855_o;
  /* find_the_damn_issue_sky130.vhd:2652:9  */
  scl_counter_12 scl_counter0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed),
    .in_unnamed_2(s_unnamed_2),
    .in_unnamed_3(s_unnamed_3),
    .out_m_value(scl_counter0_out_m_value),
    .out_m_last(scl_counter0_out_m_last),
    .out_const_0(scl_counter0_out_const_0),
    .out_const_0_2(scl_counter0_out_const_0_2),
    .out_const_x(scl_counter0_out_const_x));
endmodule

module scl_streamdemux
  (input  in_m_in_valid,
   input  [7:0] in_m_in,
   input  in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   output out_out_0_ready,
   output out_out_0_valid,
   output [7:0] out_out_0,
   output out_m_in_ready_mux2,
   output out_out_1_ready,
   output out_out_1_valid,
   output [7:0] out_out_1);
  wire n2806_o;
  wire n2808_o;
  wire n2810_o;
  wire n2812_o;
  wire n2814_o;
  wire n2816_o;
  wire n2818_o;
  wire n2819_o;
  assign out_out_0_ready = in_unnamed_2;
  assign out_out_0_valid = n2808_o;
  assign out_out_0 = in_m_in;
  assign out_m_in_ready_mux2 = n2819_o;
  assign out_out_1_ready = in_unnamed_3;
  assign out_out_1_valid = n2816_o;
  assign out_out_1 = in_m_in;
  /* find_the_damn_issue_sky130.vhd:2719:25  */
  assign n2806_o = 1'b0 == in_unnamed;
  /* find_the_damn_issue_sky130.vhd:2719:17  */
  assign n2808_o = n2806_o ? in_m_in_valid : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2724:25  */
  assign n2810_o = 1'b0 == in_unnamed;
  /* find_the_damn_issue_sky130.vhd:2724:17  */
  assign n2812_o = n2810_o ? in_unnamed_2 : 1'b1;
  /* find_the_damn_issue_sky130.vhd:2730:25  */
  assign n2814_o = 1'b1 == in_unnamed;
  /* find_the_damn_issue_sky130.vhd:2730:17  */
  assign n2816_o = n2814_o ? in_m_in_valid : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2735:25  */
  assign n2818_o = 1'b1 == in_unnamed;
  /* find_the_damn_issue_sky130.vhd:2735:17  */
  assign n2819_o = n2818_o ? in_unnamed_3 : n2812_o;
endmodule

module scl_fifo
  (input  clk,
   input  rst_n,
   input  in_m_pushvalid,
   input  [7:0] in_m_pushdata_data,
   input  [3:0] in_m_pushdata_endpoint,
   input  in_m_pushcommit,
   input  in_m_pushrollack,
   input  [4:0] in_m_pushcutoff,
   input  in_m_popvalid,
   output [7:0] out_m_peekdata_data,
   output out_m_pushfull,
   output out_m_popempty);
  wire s_m_pushvalid_2;
  wire s_m_pushcommit_2;
  wire [4:0] s_putcheckpoint_mux1_minus_m_pushcutoff_mux1;
  reg [4:0] s_put;
  wire [3:0] s_unnamed;
  wire [11:0] s_unnamed_2;
  reg [4:0] s_putcheckpoint;
  reg s_m_pushfull_2;
  wire [4:0] s_pushput;
  wire s_m_popvalid_2;
  reg [4:0] s_get;
  wire [3:0] s_get_mux1_rewired;
  reg s_m_popempty_2;
  wire [4:0] s_popget;
  reg [4:0] s_pushget;
  reg [4:0] s_popput;
  wire [11:0] s_unnamed_3;
  wire s_popput_bit_4_eq_get_mux1_bit_4_and_popput_rewired_eq_get_mux1_rewired;
  wire [4:0] s_get_plus_const_1;
  wire s_unnamed_4;
  wire [4:0] s_putcheckpoint_mux1_minus_m_pushcutoff;
  wire [11:0] scl_memory0_out_unnamed_5;
  wire [7:0] n2688_o;
  wire [3:0] n2689_o;
  wire [11:0] n2690_o;
  wire [4:0] n2692_o;
  wire [4:0] n2693_o;
  wire [4:0] n2694_o;
  wire [4:0] n2696_o;
  wire [4:0] n2697_o;
  wire [3:0] n2698_o;
  wire n2700_o;
  wire n2701_o;
  wire n2702_o;
  wire n2709_o;
  wire [3:0] n2711_o;
  wire n2712_o;
  wire n2719_o;
  wire n2720_o;
  wire [4:0] n2721_o;
  wire [4:0] n2722_o;
  wire [4:0] n2723_o;
  wire n2725_o;
  wire n2726_o;
  wire n2727_o;
  wire n2734_o;
  wire [3:0] n2736_o;
  wire [3:0] n2737_o;
  wire n2738_o;
  wire n2745_o;
  wire n2746_o;
  wire n2755_o;
  reg [4:0] n2781_q;
  wire [4:0] n2782_o;
  reg [4:0] n2783_q;
  reg n2784_q;
  wire [4:0] n2785_o;
  reg [4:0] n2786_q;
  reg n2787_q;
  reg [4:0] n2788_q;
  reg [4:0] n2789_q;
  assign out_m_peekdata_data = n2688_o;
  assign out_m_pushfull = s_m_pushfull_2;
  assign out_m_popempty = s_m_popempty_2;
  /* find_the_damn_issue_sky130.vhd:2879:16  */
  assign s_m_pushvalid_2 = in_m_pushvalid; // (signal)
  /* find_the_damn_issue_sky130.vhd:2880:16  */
  assign s_m_pushcommit_2 = in_m_pushcommit; // (signal)
  /* find_the_damn_issue_sky130.vhd:2881:16  */
  assign s_putcheckpoint_mux1_minus_m_pushcutoff_mux1 = n2722_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2882:16  */
  always @*
    s_put = n2781_q; // (isignal)
  initial
    s_put = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:2883:16  */
  assign s_unnamed = n2689_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2884:16  */
  assign s_unnamed_2 = n2690_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2885:16  */
  always @*
    s_putcheckpoint = n2783_q; // (isignal)
  initial
    s_putcheckpoint = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:2886:16  */
  always @*
    s_m_pushfull_2 = n2784_q; // (isignal)
  initial
    s_m_pushfull_2 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:2887:16  */
  assign s_pushput = n2723_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2888:16  */
  assign s_m_popvalid_2 = in_m_popvalid; // (signal)
  /* find_the_damn_issue_sky130.vhd:2889:16  */
  always @*
    s_get = n2786_q; // (isignal)
  initial
    s_get = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:2890:16  */
  assign s_get_mux1_rewired = n2698_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2891:16  */
  always @*
    s_m_popempty_2 = n2787_q; // (isignal)
  initial
    s_m_popempty_2 = 1'b1;
  /* find_the_damn_issue_sky130.vhd:2892:16  */
  assign s_popget = n2697_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2893:16  */
  always @*
    s_pushget = n2788_q; // (isignal)
  initial
    s_pushget = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:2894:16  */
  always @*
    s_popput = n2789_q; // (isignal)
  initial
    s_popput = 5'b00000;
  /* find_the_damn_issue_sky130.vhd:2895:16  */
  assign s_unnamed_3 = scl_memory0_out_unnamed_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:2896:16  */
  assign s_popput_bit_4_eq_get_mux1_bit_4_and_popput_rewired_eq_get_mux1_rewired = n2720_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2897:16  */
  assign s_get_plus_const_1 = n2696_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2898:16  */
  assign s_unnamed_4 = n2746_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2899:16  */
  assign s_putcheckpoint_mux1_minus_m_pushcutoff = n2721_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:2901:9  */
  scl_memory_2 scl_memory0 (
    .clk(clk),
    .in_unnamed(s_m_pushvalid_2),
    .in_unnamed_2(s_unnamed),
    .in_unnamed_3(s_unnamed_2),
    .in_unnamed_4(s_get_mux1_rewired),
    .out_unnamed_5(scl_memory0_out_unnamed_5));
  /* find_the_damn_issue_sky130.vhd:2930:51  */
  assign n2688_o = s_unnamed_3[7:0];
  /* find_the_damn_issue_sky130.vhd:2940:35  */
  assign n2689_o = s_put[3:0];
  /* find_the_damn_issue_sky130.vhd:2941:55  */
  assign n2690_o = {in_m_pushdata_endpoint, in_m_pushdata_data};
  /* find_the_damn_issue_sky130.vhd:2943:46  */
  assign n2692_o = s_put + 5'b00001;
  /* find_the_damn_issue_sky130.vhd:2942:17  */
  assign n2693_o = s_m_pushvalid_2 ? n2692_o : s_put;
  /* find_the_damn_issue_sky130.vhd:2948:17  */
  assign n2694_o = in_m_pushrollack ? s_putcheckpoint : n2693_o;
  /* find_the_damn_issue_sky130.vhd:2957:46  */
  assign n2696_o = s_get + 5'b00001;
  /* find_the_damn_issue_sky130.vhd:2958:17  */
  assign n2697_o = s_m_popvalid_2 ? s_get_plus_const_1 : s_get;
  /* find_the_damn_issue_sky130.vhd:2965:51  */
  assign n2698_o = n2697_o[3:0];
  /* find_the_damn_issue_sky130.vhd:2966:115  */
  assign n2700_o = s_popput[4];
  /* find_the_damn_issue_sky130.vhd:2966:133  */
  assign n2701_o = n2697_o[4];
  /* find_the_damn_issue_sky130.vhd:2966:119  */
  assign n2702_o = n2700_o == n2701_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2709_o = n2702_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2966:164  */
  assign n2711_o = s_popput[3:0];
  /* find_the_damn_issue_sky130.vhd:2966:177  */
  assign n2712_o = n2711_o == s_get_mux1_rewired;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2719_o = n2712_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2966:138  */
  assign n2720_o = n2709_o & n2719_o;
  /* find_the_damn_issue_sky130.vhd:2968:84  */
  assign n2721_o = n2694_o - in_m_pushcutoff;
  /* find_the_damn_issue_sky130.vhd:2969:17  */
  assign n2722_o = s_m_pushcommit_2 ? s_putcheckpoint_mux1_minus_m_pushcutoff : n2694_o;
  /* find_the_damn_issue_sky130.vhd:2975:17  */
  assign n2723_o = s_m_pushcommit_2 ? s_putcheckpoint_mux1_minus_m_pushcutoff : s_putcheckpoint;
  /* find_the_damn_issue_sky130.vhd:2982:93  */
  assign n2725_o = n2722_o[4];
  /* find_the_damn_issue_sky130.vhd:2982:109  */
  assign n2726_o = s_pushget[4];
  /* find_the_damn_issue_sky130.vhd:2982:97  */
  assign n2727_o = n2725_o != n2726_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2734_o = n2727_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2982:178  */
  assign n2736_o = n2722_o[3:0];
  /* find_the_damn_issue_sky130.vhd:2982:202  */
  assign n2737_o = s_pushget[3:0];
  /* find_the_damn_issue_sky130.vhd:2982:191  */
  assign n2738_o = n2736_o == n2737_o;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2745_o = n2738_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:2982:114  */
  assign n2746_o = n2734_o & n2745_o;
  /* find_the_damn_issue_sky130.vhd:2987:27  */
  assign n2755_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  always @(posedge clk or posedge n2755_o)
    if (n2755_o)
      n2781_q <= 5'b00000;
    else
      n2781_q <= s_putcheckpoint_mux1_minus_m_pushcutoff_mux1;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  assign n2782_o = s_m_pushcommit_2 ? s_putcheckpoint_mux1_minus_m_pushcutoff : s_putcheckpoint;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  always @(posedge clk or posedge n2755_o)
    if (n2755_o)
      n2783_q <= 5'b00000;
    else
      n2783_q <= n2782_o;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  always @(posedge clk or posedge n2755_o)
    if (n2755_o)
      n2784_q <= 1'b0;
    else
      n2784_q <= s_unnamed_4;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  assign n2785_o = s_m_popvalid_2 ? s_get_plus_const_1 : s_get;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  always @(posedge clk or posedge n2755_o)
    if (n2755_o)
      n2786_q <= 5'b00000;
    else
      n2786_q <= n2785_o;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  always @(posedge clk or posedge n2755_o)
    if (n2755_o)
      n2787_q <= 1'b1;
    else
      n2787_q <= s_popput_bit_4_eq_get_mux1_bit_4_and_popput_rewired_eq_get_mux1_rewired;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  always @(posedge clk or posedge n2755_o)
    if (n2755_o)
      n2788_q <= 5'b00000;
    else
      n2788_q <= s_popget;
  /* find_the_damn_issue_sky130.vhd:2995:17  */
  always @(posedge clk or posedge n2755_o)
    if (n2755_o)
      n2789_q <= 5'b00000;
    else
      n2789_q <= s_pushput;
endmodule

module usbfunction
  (input  clk,
   input  rst_n,
   input  [1:0] in_unnamed,
   input  in_unnamed_2,
   input  in_unnamed_3,
   input  in_unnamed_4,
   input  [7:0] in_unnamed_5,
   input  in_unnamed_6,
   input  in_unnamed_7,
   input  in_unnamed_8,
   input  in_unnamed_9,
   input  in_unnamed_10,
   input  in_unnamed_11,
   input  in_unnamed_12,
   input  in_unnamed_13,
   input  [7:0] in_unnamed_14,
   input  [7:0] in_unnamed_15,
   input  [7:0] in_unnamed_16,
   input  in_unnamed_17,
   input  in_unnamed_18,
   input  in_unnamed_19,
   input  [23:0] in_unnamed_20,
   input  in_unnamed_21,
   input  [7:0] in_unnamed_22,
   input  [3:0] in_unnamed_23,
   input  in_unnamed_24,
   input  [4:0] in_unnamed_25,
   input  in_unnamed_26,
   input  in_unnamed_27,
   input  [7:0] in_unnamed_28,
   input  [3:0] in_unnamed_29,
   input  in_unnamed_30,
   input  in_unnamed_31,
   output out_m_phy_tx_valid_2,
   output [7:0] out_m_phy_tx_data_2,
   output [1:0] out_m_status_linestate,
   output out_m_status_rxactive,
   output out_m_out,
   output out_m_match_delayed1,
   output out_m_phy_tx_ready,
   output out_unnamed_mux1,
   output out_unnamed_mux1_2,
   output out_firstdatabit_mux2,
   output out_in_valid_and_unnamed_mux2,
   output out_unnamed_mux1_3,
   output out_set_line_coding_mux1,
   output out_unnamed_32,
   output out_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop,
   output [23:0] out_m_packetdata_2_rewired_mux1,
   output out_unnamed_mux2,
   output out_unnamed_not_mux1,
   output [7:0] out_unnamed_mux1_4,
   output [3:0] out_unnamed_mux1_5,
   output out_const_0_mux1,
   output out_unnamed_mux2_2,
   output [4:0] out_const_10_mux1,
   output out_unnamed_not_mux1_2,
   output out_unnamed_mux2_3,
   output out_const_0_mux1_2,
   output out_m_packetdata_2_bit_16,
   output out_m_packetdata_2_bit_17,
   output [23:0] out_m_packetdata_2_rewired,
   output out_unnamed_mux2_4,
   output out_m_packetdata_2_bit_17_mux1,
   output out_m_packetdata_2_bit_16_mux1,
   output [7:0] out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired,
   output [7:0] out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired);
  wire [3:0] s_m_senddatastate_mux8;
  wire [6:0] s_m_address_2;
  wire [3:0] s_m_configuration_2;
  wire s_unnamed_not_mux1_3;
  wire s_m_rx_eop_2;
  wire s_m_rxreadyerror_2;
  wire [1:0] s_m_sendhandshake_mux19;
  wire [6:0] s_m_newaddress_2;
  wire s_m_status_sessend;
  wire s_m_rx_valid;
  wire s_m_rx_sop;
  wire s_m_rx_eop;
  wire s_m_rx_error;
  wire [7:0] s_m_rx_data;
  wire s_m_phy_rx_error;
  reg s_m_phy_rx_eop;
  wire [7:0] s_m_phy_rx_data;
  wire s_m_phy_rx_sop;
  reg s_m_phy_rx_valid;
  wire s_m_rxstatus_sessend;
  wire [1:0] s_m_rxstatus_linestate;
  reg [3:0] s_m_state;
  wire [3:0] s_m_state_2;
  wire s_m_phy_rx_valid_2;
  wire s_m_phy_rx_eop_2;
  wire s_m_phy_rx_error_2;
  wire [7:0] s_m_phy_rx_data_2;
  wire [1:0] s_m_rxstatus_linestate_2;
  wire s_m_rxstatus_sessend_2;
  wire [7:0] s_m_descaddressactive_mux1;
  wire [7:0] s_m_descdata;
  reg [1:0] s_m_sendhandshake;
  wire s_send_mux2;
  reg s_handshakestate;
  wire s_ackexpected_mux3;
  reg s_ackexpected;
  reg s_incompletetransfer;
  reg [3:0] s_m_packetlentxlimit;
  wire [3:0] s_m_endpoint;
  wire [15:0] s_m_endpointmask;
  wire s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  wire [3:0] s_m_endpoint_mux1;
  wire [3:0] s_m_senddatastate;
  reg [6:0] s_m_newaddress;
  reg [3:0] s_m_configuration;
  wire [3:0] s_m_configuration_3;
  reg [15:0] s_m_nextoutdatapid;
  wire [7:0] s_m_descaddressactive;
  wire [7:0] s_m_desclengthactive;
  wire [7:0] s_m_descaddress;
  wire [7:0] s_m_desclength;
  wire s_m_tx_commit;
  wire s_m_tx_rollback;
  wire s_m_tx_valid_and_m_tx_endpoint_eq_m_endpoint_mux1_and_m_packetlen_2_eq_m_packetlentxlimit_not_not_and_m_state_eq_senddata;
  wire s_m_tx_ready;
  wire s_unnamed_33;
  wire [7:0] s_unnamed_34;
  wire [3:0] s_unnamed_35;
  wire [15:0] s_m_nextindatapid;
  wire [3:0] s_m_pid;
  wire [3:0] s_m_packetlen;
  wire [63:0] s_m_packetdata;
  wire s_m_rxreadyerror;
  wire s_unnamed_36;
  wire s_m_rx_valid_2;
  wire [3:0] s_m_rx_endpoint;
  wire [7:0] s_m_rx_data_2;
  wire s_m_rx_eop_3;
  wire s_m_rx_error_2;
  reg [6:0] s_m_address;
  wire s_unnamed_not_mux1_4;
  wire s_tx_valid;
  wire [3:0] s_tx_endpoint;
  wire [7:0] s_tx_data;
  wire [1:0] s_unnamed_37;
  wire s_unnamed_38;
  wire s_unnamed_39;
  wire s_unnamed_40;
  wire [7:0] s_unnamed_41;
  wire s_unnamed_42;
  wire s_unnamed_43;
  wire s_unnamed_44;
  wire s_unnamed_45;
  wire s_unnamed_46;
  wire s_unnamed_47;
  wire s_unnamed_48;
  wire [7:0] s_unnamed_49;
  wire [7:0] s_unnamed_50;
  wire [7:0] s_unnamed_51;
  wire s_unnamed_52;
  wire s_unnamed_53;
  wire s_unnamed_54;
  wire [4:0] s_unnamed_55;
  wire s_unnamed_56;
  wire [3:0] s_unnamed_57;
  wire [7:0] s_unnamed_58;
  wire s_unnamed_59;
  wire s_unnamed_60;
  wire [6:0] s_unnamed_mux2_5;
  wire [63:0] s_m_packetdata_2_rewired_m_phy_rx_data_rewired;
  wire s_m_phy_rx_valid_and_m_packetlen_lt_const_8;
  wire [3:0] s_m_packetlen_2_mux3;
  wire [3:0] s_m_pid_2_mux2;
  wire [15:0] s_m_nextindatapid_2_mux2_rewired_mux1_xor_m_endpointmask_mux2;
  wire s_m_packetlen_2_eq_m_packetlentxlimit;
  wire [7:0] s_m_desclengthactive_mux11;
  wire [7:0] s_m_descaddressactive_mux9;
  wire [7:0] s_m_desclengthactive_mux2;
  wire [7:0] s_m_descaddressactive_mux2;
  wire [15:0] s_m_nextoutdatapid_2_xor_m_endpointmask_mux2_rewired_mux2_rewired_mux1;
  wire [3:0] s_m_packetdata_2_rewired_mux1_2;
  wire [6:0] s_m_packetdata_2_rewired_mux1_3;
  wire [3:0] s_unnamed_mux1_6;
  wire [6:0] s_unnamed_mux1_7;
  wire [3:0] s_m_senddatastate_2_mux2;
  wire [6:0] s_unnamed_mux1_8;
  wire [15:0] s_unnamed_m_packetdata_2_rewired_eq_const_15_rewired;
  wire [3:0] s_m_packetdata_2_rewired_2;
  wire [3:0] s_m_packetlentxlimit_mux2;
  wire [1:0] scl_usbgpiophy0_out_m_status_linestate;
  wire scl_usbgpiophy0_out_m_status_sessend;
  wire scl_usbgpiophy0_out_m_status_rxactive;
  wire scl_usbgpiophy0_out_m_out;
  wire scl_usbgpiophy0_out_m_match_delayed1;
  wire scl_usbgpiophy0_out_m_rx_valid;
  wire scl_usbgpiophy0_out_m_rx_sop;
  wire scl_usbgpiophy0_out_m_rx_eop;
  wire scl_usbgpiophy0_out_m_rx_error;
  wire [7:0] scl_usbgpiophy0_out_m_rx_data;
  wire scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1;
  wire scl_usbgpiophy0_out_unnamed_mux1;
  wire scl_usbgpiophy0_out_unnamed_mux1_2;
  wire scl_usbgpiophy0_out_firstdatabit_mux2;
  wire scl_usbgpiophy0_out_in_valid_and_unnamed_mux2;
  wire scl_usbgpiophy0_out_unnamed_mux1_3;
  wire [7:0] scl_usbgpiophy0_out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired;
  wire [7:0] scl_usbgpiophy0_out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired;
  wire n615_o;
  wire n617_o;
  wire n618_o;
  wire n620_o;
  wire n622_o;
  wire [7:0] n625_o;
  wire n627_o;
  wire n629_o;
  wire n630_o;
  wire [7:0] n632_o;
  wire n634_o;
  wire n636_o;
  wire n637_o;
  wire [7:0] n639_o;
  wire n641_o;
  wire n644_o;
  wire n647_o;
  wire n654_o;
  wire n655_o;
  wire [1:0] n657_o;
  wire n659_o;
  wire n661_o;
  wire n662_o;
  wire n663_o;
  wire n664_o;
  wire [6:0] n665_o;
  wire n667_o;
  wire n668_o;
  wire n669_o;
  wire n670_o;
  wire n673_o;
  wire n675_o;
  wire n676_o;
  wire n677_o;
  wire n678_o;
  wire n679_o;
  wire n682_o;
  wire n683_o;
  wire n684_o;
  wire n686_o;
  wire n689_o;
  wire n696_o;
  wire n697_o;
  wire n700_o;
  wire n707_o;
  wire n709_o;
  wire [7:0] n711_o;
  wire n712_o;
  wire n715_o;
  wire n722_o;
  wire n723_o;
  wire n726_o;
  wire n733_o;
  wire n734_o;
  wire n737_o;
  wire n744_o;
  wire n745_o;
  wire n746_o;
  wire [3:0] n747_o;
  wire [3:0] n748_o;
  wire [3:0] n750_o;
  wire n752_o;
  wire n754_o;
  wire n755_o;
  wire n757_o;
  wire n758_o;
  wire n760_o;
  wire n763_o;
  wire n770_o;
  wire n773_o;
  wire n780_o;
  wire n781_o;
  wire n784_o;
  wire n791_o;
  wire n792_o;
  wire n793_o;
  wire [7:0] n795_o;
  wire [7:0] n796_o;
  wire n798_o;
  wire n799_o;
  wire n800_o;
  wire n801_o;
  wire [7:0] n802_o;
  wire [7:0] n804_o;
  wire [7:0] n805_o;
  wire n807_o;
  wire n808_o;
  wire n809_o;
  wire n810_o;
  wire [7:0] n811_o;
  wire n812_o;
  wire n814_o;
  wire n815_o;
  wire n816_o;
  wire [7:0] n818_o;
  wire n820_o;
  wire n822_o;
  wire n823_o;
  wire n824_o;
  wire n826_o;
  wire n827_o;
  wire n829_o;
  wire [7:0] n830_o;
  wire [7:0] n831_o;
  wire [15:0] n832_o;
  wire [15:0] n833_o;
  wire [15:0] n834_o;
  wire [7:0] n835_o;
  wire n836_o;
  wire n837_o;
  wire [23:0] n838_o;
  wire n841_o;
  wire n848_o;
  wire n849_o;
  wire [55:0] n850_o;
  wire [63:0] n852_o;
  wire [55:0] n853_o;
  wire [63:0] n854_o;
  wire [1:0] n855_o;
  wire n858_o;
  wire n865_o;
  wire n866_o;
  wire n869_o;
  wire n876_o;
  wire n877_o;
  wire n878_o;
  wire n879_o;
  wire [23:0] n880_o;
  wire n882_o;
  wire n884_o;
  wire n886_o;
  wire n887_o;
  wire n888_o;
  wire n890_o;
  wire n892_o;
  wire n899_o;
  wire [1:0] n900_o;
  wire n902_o;
  wire n904_o;
  wire n905_o;
  wire n907_o;
  wire n908_o;
  wire n909_o;
  wire n910_o;
  wire n911_o;
  wire [7:0] n913_o;
  wire n915_o;
  wire n917_o;
  wire n918_o;
  wire n920_o;
  wire n921_o;
  wire n922_o;
  wire n923_o;
  wire n924_o;
  wire [7:0] n926_o;
  wire n928_o;
  wire n930_o;
  wire [4:0] n931_o;
  wire n933_o;
  wire n935_o;
  wire n936_o;
  wire n938_o;
  wire n939_o;
  wire n940_o;
  wire n941_o;
  wire n942_o;
  wire n943_o;
  wire n944_o;
  wire [7:0] n946_o;
  wire n948_o;
  wire n950_o;
  wire [4:0] n951_o;
  wire n953_o;
  wire n955_o;
  wire n956_o;
  wire n958_o;
  wire n959_o;
  wire n960_o;
  wire n961_o;
  wire n962_o;
  wire n963_o;
  wire n964_o;
  wire [7:0] n966_o;
  wire n968_o;
  wire n970_o;
  wire [4:0] n971_o;
  wire n973_o;
  wire n975_o;
  wire n976_o;
  wire n978_o;
  wire n979_o;
  wire n980_o;
  wire n981_o;
  wire n982_o;
  wire n983_o;
  wire n984_o;
  wire [7:0] n986_o;
  wire n988_o;
  wire n990_o;
  wire [4:0] n991_o;
  wire n993_o;
  wire n995_o;
  wire n996_o;
  wire n998_o;
  wire n999_o;
  wire n1000_o;
  wire n1001_o;
  wire n1002_o;
  wire n1003_o;
  wire n1004_o;
  wire [7:0] n1006_o;
  wire n1008_o;
  wire n1010_o;
  wire [4:0] n1011_o;
  wire n1013_o;
  wire n1015_o;
  wire n1016_o;
  wire n1018_o;
  wire n1019_o;
  wire n1020_o;
  wire n1021_o;
  wire n1022_o;
  wire n1023_o;
  wire n1024_o;
  wire [7:0] n1026_o;
  wire n1028_o;
  wire n1030_o;
  wire [4:0] n1031_o;
  wire n1033_o;
  wire n1035_o;
  wire n1036_o;
  wire n1038_o;
  wire n1039_o;
  wire n1040_o;
  wire n1041_o;
  wire n1042_o;
  wire n1043_o;
  wire n1044_o;
  wire [7:0] n1046_o;
  wire n1048_o;
  wire n1050_o;
  wire [4:0] n1051_o;
  wire n1053_o;
  wire n1055_o;
  wire n1056_o;
  wire n1058_o;
  wire n1059_o;
  wire n1060_o;
  wire n1061_o;
  wire n1062_o;
  wire n1063_o;
  wire n1064_o;
  wire [7:0] n1066_o;
  wire n1068_o;
  wire n1070_o;
  wire [4:0] n1071_o;
  wire n1073_o;
  wire n1075_o;
  wire n1076_o;
  wire n1078_o;
  wire n1079_o;
  wire n1080_o;
  wire n1081_o;
  wire n1082_o;
  wire n1083_o;
  wire n1084_o;
  wire [7:0] n1086_o;
  wire n1088_o;
  wire n1090_o;
  wire [4:0] n1091_o;
  wire n1093_o;
  wire n1095_o;
  wire n1096_o;
  wire n1098_o;
  wire n1099_o;
  wire n1100_o;
  wire n1101_o;
  wire n1102_o;
  wire n1103_o;
  wire n1104_o;
  wire [7:0] n1106_o;
  wire n1108_o;
  wire n1110_o;
  wire [4:0] n1111_o;
  wire n1113_o;
  wire n1115_o;
  wire n1116_o;
  wire n1118_o;
  wire n1119_o;
  wire n1120_o;
  wire n1121_o;
  wire n1122_o;
  wire n1123_o;
  wire n1124_o;
  wire [7:0] n1126_o;
  wire n1128_o;
  wire [4:0] n1129_o;
  wire n1131_o;
  wire n1133_o;
  wire n1134_o;
  wire n1136_o;
  wire n1137_o;
  wire n1138_o;
  wire n1139_o;
  wire n1140_o;
  wire n1141_o;
  wire [6:0] n1142_o;
  wire [6:0] n1143_o;
  wire n1145_o;
  wire [4:0] n1146_o;
  wire n1148_o;
  wire n1150_o;
  wire n1151_o;
  wire n1153_o;
  wire n1154_o;
  wire n1155_o;
  wire n1156_o;
  wire n1157_o;
  wire n1158_o;
  wire [7:0] n1160_o;
  wire [7:0] n1161_o;
  wire n1163_o;
  wire [4:0] n1164_o;
  wire n1166_o;
  wire n1168_o;
  wire n1169_o;
  wire n1171_o;
  wire n1172_o;
  wire n1173_o;
  wire n1174_o;
  wire n1175_o;
  wire n1176_o;
  wire [7:0] n1178_o;
  wire n1180_o;
  wire n1182_o;
  wire [4:0] n1183_o;
  wire n1185_o;
  wire n1187_o;
  wire n1188_o;
  wire n1190_o;
  wire n1191_o;
  wire n1192_o;
  wire n1193_o;
  wire n1194_o;
  wire n1195_o;
  wire n1196_o;
  wire n1199_o;
  wire n1202_o;
  wire n1209_o;
  wire [4:0] n1211_o;
  wire n1213_o;
  wire n1220_o;
  wire n1223_o;
  wire n1230_o;
  wire n1231_o;
  wire n1234_o;
  wire n1241_o;
  wire n1242_o;
  wire n1243_o;
  wire n1244_o;
  wire n1245_o;
  wire n1246_o;
  wire n1247_o;
  wire [3:0] n1248_o;
  wire [3:0] n1249_o;
  wire n1251_o;
  wire n1252_o;
  wire n1254_o;
  wire n1255_o;
  wire n1256_o;
  wire n1257_o;
  wire n1259_o;
  wire n1261_o;
  wire n1263_o;
  wire n1264_o;
  wire n1266_o;
  wire n1267_o;
  wire n1269_o;
  wire n1270_o;
  wire n1272_o;
  wire n1273_o;
  wire n1274_o;
  wire n1275_o;
  wire n1276_o;
  wire n1278_o;
  wire n1280_o;
  wire n1282_o;
  wire n1283_o;
  wire n1285_o;
  wire n1286_o;
  wire n1288_o;
  wire n1289_o;
  wire n1291_o;
  wire n1292_o;
  wire n1293_o;
  wire n1294_o;
  wire n1295_o;
  wire n1298_o;
  wire n1301_o;
  wire n1308_o;
  wire n1311_o;
  wire n1318_o;
  wire n1319_o;
  wire n1322_o;
  wire n1329_o;
  wire n1330_o;
  wire n1333_o;
  wire n1340_o;
  wire n1341_o;
  wire n1344_o;
  wire n1351_o;
  wire n1352_o;
  wire n1353_o;
  wire n1354_o;
  wire n1355_o;
  wire n1356_o;
  wire n1357_o;
  wire n1359_o;
  wire n1361_o;
  wire n1363_o;
  wire n1364_o;
  wire n1366_o;
  wire n1367_o;
  wire n1368_o;
  wire n1369_o;
  wire n1370_o;
  wire n1373_o;
  wire n1375_o;
  wire n1377_o;
  wire n1378_o;
  wire n1380_o;
  wire n1381_o;
  wire n1383_o;
  wire n1384_o;
  wire n1386_o;
  wire n1387_o;
  wire n1388_o;
  wire n1389_o;
  wire n1390_o;
  wire n1392_o;
  wire n1393_o;
  wire n1396_o;
  wire n1403_o;
  wire n1404_o;
  wire n1407_o;
  wire n1414_o;
  wire n1415_o;
  wire n1416_o;
  wire n1417_o;
  wire n1418_o;
  wire [15:0] n1420_o;
  wire n1421_o;
  wire n1422_o;
  wire n1424_o;
  wire n1425_o;
  wire n1426_o;
  wire n1427_o;
  wire [7:0] n1428_o;
  wire [7:0] n1429_o;
  wire [3:0] n1430_o;
  wire [1:0] n1431_o;
  wire [6:0] n1433_o;
  wire n1434_o;
  wire n1441_o;
  wire n1444_o;
  wire n1451_o;
  wire n1452_o;
  wire n1455_o;
  wire n1462_o;
  wire n1463_o;
  wire n1464_o;
  wire n1467_o;
  wire n1474_o;
  wire n1475_o;
  wire n1476_o;
  wire n1477_o;
  wire n1478_o;
  wire [3:0] n1479_o;
  wire [3:0] n1480_o;
  wire n1482_o;
  wire n1484_o;
  wire n1485_o;
  wire n1486_o;
  wire [3:0] n1488_o;
  wire n1490_o;
  wire n1492_o;
  wire n1493_o;
  wire n1494_o;
  wire [14:0] n1495_o;
  wire [15:0] n1497_o;
  wire [15:0] n1498_o;
  wire n1500_o;
  wire n1502_o;
  wire n1503_o;
  wire n1504_o;
  wire [3:0] n1506_o;
  wire n1508_o;
  wire n1510_o;
  wire n1511_o;
  wire n1512_o;
  wire [3:0] n1514_o;
  wire n1516_o;
  wire n1518_o;
  wire n1519_o;
  wire n1520_o;
  wire [3:0] n1522_o;
  wire n1523_o;
  wire n1524_o;
  wire n1525_o;
  wire n1527_o;
  wire n1529_o;
  wire n1530_o;
  wire n1531_o;
  wire n1532_o;
  wire n1533_o;
  wire [3:0] n1535_o;
  wire n1536_o;
  wire n1537_o;
  wire n1538_o;
  wire n1540_o;
  wire n1542_o;
  wire n1543_o;
  wire n1544_o;
  wire n1545_o;
  wire n1546_o;
  wire [3:0] n1548_o;
  wire n1549_o;
  wire n1550_o;
  wire n1551_o;
  wire n1552_o;
  wire n1554_o;
  wire n1556_o;
  wire n1557_o;
  wire n1558_o;
  wire n1559_o;
  wire n1560_o;
  wire [1:0] n1562_o;
  wire n1564_o;
  wire n1566_o;
  wire n1567_o;
  wire n1568_o;
  wire n1569_o;
  wire [3:0] n1571_o;
  wire [3:0] n1573_o;
  wire n1574_o;
  wire n1576_o;
  wire n1577_o;
  wire n1578_o;
  wire [1:0] n1580_o;
  wire n1582_o;
  wire n1584_o;
  wire n1585_o;
  wire n1587_o;
  wire n1588_o;
  wire n1589_o;
  wire n1590_o;
  wire n1591_o;
  wire [1:0] n1593_o;
  wire n1595_o;
  wire n1597_o;
  wire n1598_o;
  wire n1600_o;
  wire n1601_o;
  wire n1602_o;
  wire n1603_o;
  wire n1604_o;
  wire [1:0] n1606_o;
  wire n1608_o;
  wire n1610_o;
  wire n1612_o;
  wire n1613_o;
  wire n1615_o;
  wire n1616_o;
  wire n1617_o;
  wire n1618_o;
  wire n1619_o;
  wire n1620_o;
  wire [1:0] n1622_o;
  wire n1624_o;
  wire n1626_o;
  wire [4:0] n1627_o;
  wire n1629_o;
  wire n1631_o;
  wire n1632_o;
  wire n1634_o;
  wire n1635_o;
  wire n1636_o;
  wire n1637_o;
  wire n1638_o;
  wire n1639_o;
  wire n1640_o;
  wire [1:0] n1642_o;
  wire n1644_o;
  wire n1646_o;
  wire [4:0] n1647_o;
  wire n1649_o;
  wire n1651_o;
  wire n1652_o;
  wire n1654_o;
  wire n1655_o;
  wire n1656_o;
  wire n1657_o;
  wire n1658_o;
  wire n1659_o;
  wire n1660_o;
  wire [1:0] n1662_o;
  wire n1664_o;
  wire n1666_o;
  wire [4:0] n1667_o;
  wire n1669_o;
  wire n1671_o;
  wire n1672_o;
  wire n1674_o;
  wire n1675_o;
  wire n1676_o;
  wire n1677_o;
  wire n1678_o;
  wire n1679_o;
  wire n1680_o;
  wire [1:0] n1682_o;
  wire n1684_o;
  wire n1686_o;
  wire [4:0] n1687_o;
  wire n1689_o;
  wire n1691_o;
  wire n1692_o;
  wire n1694_o;
  wire n1695_o;
  wire n1696_o;
  wire n1697_o;
  wire n1698_o;
  wire n1699_o;
  wire n1700_o;
  wire [1:0] n1702_o;
  wire n1704_o;
  wire n1706_o;
  wire [4:0] n1707_o;
  wire n1709_o;
  wire n1711_o;
  wire n1712_o;
  wire n1714_o;
  wire n1715_o;
  wire n1716_o;
  wire n1717_o;
  wire n1718_o;
  wire n1719_o;
  wire n1720_o;
  wire [1:0] n1722_o;
  wire n1724_o;
  wire [4:0] n1725_o;
  wire n1727_o;
  wire n1729_o;
  wire n1730_o;
  wire n1732_o;
  wire n1733_o;
  wire n1734_o;
  wire n1735_o;
  wire n1736_o;
  wire n1737_o;
  wire [1:0] n1739_o;
  wire n1741_o;
  wire [4:0] n1742_o;
  wire n1744_o;
  wire n1746_o;
  wire n1747_o;
  wire n1749_o;
  wire n1750_o;
  wire n1751_o;
  wire n1752_o;
  wire n1753_o;
  wire n1754_o;
  wire [1:0] n1756_o;
  wire [1:0] n1758_o;
  wire [1:0] n1760_o;
  wire [3:0] n1761_o;
  wire n1763_o;
  wire n1765_o;
  wire n1766_o;
  wire n1767_o;
  wire n1769_o;
  wire n1770_o;
  wire [3:0] n1772_o;
  wire n1773_o;
  wire n1774_o;
  wire n1775_o;
  wire n1776_o;
  wire n1778_o;
  wire n1779_o;
  wire n1781_o;
  wire n1782_o;
  wire n1783_o;
  wire n1784_o;
  wire n1785_o;
  wire n1787_o;
  wire n1788_o;
  wire n1790_o;
  wire n1792_o;
  wire n1799_o;
  wire n1800_o;
  wire n1801_o;
  wire n1802_o;
  wire n1803_o;
  wire n1806_o;
  wire n1813_o;
  wire n1814_o;
  wire [3:0] n1815_o;
  wire n1817_o;
  wire n1819_o;
  wire n1820_o;
  wire n1821_o;
  wire n1822_o;
  wire n1823_o;
  wire [3:0] n1825_o;
  wire n1827_o;
  wire [3:0] n1829_o;
  wire [1:0] n1831_o;
  wire n1832_o;
  wire n1833_o;
  wire n1834_o;
  wire n1835_o;
  wire [1:0] n1837_o;
  wire n1838_o;
  wire n1839_o;
  wire n1840_o;
  wire n1841_o;
  wire n1842_o;
  wire [1:0] n1844_o;
  wire n1845_o;
  wire n1847_o;
  wire n1848_o;
  wire n1849_o;
  wire [1:0] n1851_o;
  wire n1853_o;
  wire n1854_o;
  wire n1855_o;
  wire n1856_o;
  wire [3:0] n1858_o;
  wire [3:0] n1859_o;
  wire n1860_o;
  wire [3:0] n1862_o;
  wire n1864_o;
  wire [3:0] n1866_o;
  wire [14:0] n1867_o;
  wire [15:0] n1869_o;
  wire n1871_o;
  wire [13:0] n1872_o;
  wire [14:0] n1874_o;
  wire n1875_o;
  wire [15:0] n1876_o;
  wire n1878_o;
  wire [12:0] n1879_o;
  wire [13:0] n1881_o;
  wire [1:0] n1882_o;
  wire [15:0] n1883_o;
  wire n1885_o;
  wire [11:0] n1886_o;
  wire [12:0] n1888_o;
  wire [2:0] n1889_o;
  wire [15:0] n1890_o;
  wire n1892_o;
  wire [10:0] n1893_o;
  wire [11:0] n1895_o;
  wire [3:0] n1896_o;
  wire [15:0] n1897_o;
  wire n1899_o;
  wire [9:0] n1900_o;
  wire [10:0] n1902_o;
  wire [4:0] n1903_o;
  wire [15:0] n1904_o;
  wire n1906_o;
  wire [8:0] n1907_o;
  wire [9:0] n1909_o;
  wire [5:0] n1910_o;
  wire [15:0] n1911_o;
  wire n1913_o;
  wire [7:0] n1914_o;
  wire [8:0] n1916_o;
  wire [6:0] n1917_o;
  wire [15:0] n1918_o;
  wire n1920_o;
  wire [6:0] n1921_o;
  wire [7:0] n1923_o;
  wire [7:0] n1924_o;
  wire [15:0] n1925_o;
  wire n1927_o;
  wire [5:0] n1928_o;
  wire [6:0] n1930_o;
  wire [8:0] n1931_o;
  wire [15:0] n1932_o;
  wire n1934_o;
  wire [4:0] n1935_o;
  wire [5:0] n1937_o;
  wire [9:0] n1938_o;
  wire [15:0] n1939_o;
  wire n1941_o;
  wire [3:0] n1942_o;
  wire [4:0] n1944_o;
  wire [10:0] n1945_o;
  wire [15:0] n1946_o;
  wire n1948_o;
  wire [2:0] n1949_o;
  wire [3:0] n1951_o;
  wire [11:0] n1952_o;
  wire [15:0] n1953_o;
  wire n1955_o;
  wire [1:0] n1956_o;
  wire [2:0] n1958_o;
  wire [12:0] n1959_o;
  wire [15:0] n1960_o;
  wire n1962_o;
  wire n1963_o;
  wire [1:0] n1965_o;
  wire [13:0] n1966_o;
  wire [15:0] n1967_o;
  wire n1969_o;
  wire [14:0] n1970_o;
  wire [15:0] n1972_o;
  wire n1974_o;
  wire [15:0] n1975_o;
  reg [15:0] n1977_o;
  wire n1978_o;
  wire n1980_o;
  wire n1982_o;
  wire n1984_o;
  wire n1985_o;
  wire n1987_o;
  wire n1988_o;
  wire n1989_o;
  wire n1990_o;
  wire n1991_o;
  wire n1992_o;
  wire n1993_o;
  wire [15:0] n1994_o;
  wire n1995_o;
  wire [15:0] n1997_o;
  wire [15:0] n1998_o;
  wire n1999_o;
  wire n2001_o;
  wire n2002_o;
  wire n2004_o;
  wire n2005_o;
  wire n2007_o;
  wire n2008_o;
  wire n2010_o;
  wire n2011_o;
  wire n2013_o;
  wire n2014_o;
  wire n2016_o;
  wire n2017_o;
  wire n2019_o;
  wire n2020_o;
  wire n2022_o;
  wire n2023_o;
  wire n2025_o;
  wire n2026_o;
  wire n2028_o;
  wire n2029_o;
  wire n2031_o;
  wire n2032_o;
  wire n2034_o;
  wire n2035_o;
  wire n2037_o;
  wire n2038_o;
  wire n2040_o;
  wire n2041_o;
  wire n2043_o;
  wire n2044_o;
  wire n2046_o;
  wire [15:0] n2047_o;
  reg n2049_o;
  wire [1:0] n2051_o;
  wire [3:0] n2053_o;
  wire [3:0] n2054_o;
  wire [7:0] n2055_o;
  wire n2056_o;
  wire n2057_o;
  wire n2059_o;
  wire n2060_o;
  wire n2061_o;
  wire [3:0] n2063_o;
  wire n2064_o;
  wire n2065_o;
  wire [1:0] n2067_o;
  wire [3:0] n2069_o;
  wire [3:0] n2070_o;
  wire [7:0] n2071_o;
  wire n2072_o;
  wire [3:0] n2073_o;
  wire [7:0] n2074_o;
  wire n2075_o;
  wire n2076_o;
  wire n2077_o;
  wire n2079_o;
  wire n2080_o;
  wire n2081_o;
  wire n2082_o;
  wire [3:0] n2084_o;
  wire [3:0] n2086_o;
  wire [3:0] n2088_o;
  wire [3:0] n2090_o;
  wire n2092_o;
  wire [7:0] n2093_o;
  wire n2095_o;
  wire [7:0] n2096_o;
  wire n2099_o;
  wire n2106_o;
  wire [15:0] n2108_o;
  wire [13:0] n2109_o;
  wire n2112_o;
  wire n2119_o;
  wire [14:0] n2120_o;
  wire n2121_o;
  wire [15:0] n2122_o;
  wire [12:0] n2123_o;
  wire n2126_o;
  wire n2133_o;
  wire [13:0] n2134_o;
  wire [1:0] n2135_o;
  wire [15:0] n2136_o;
  wire [11:0] n2137_o;
  wire n2140_o;
  wire n2147_o;
  wire [12:0] n2148_o;
  wire [2:0] n2149_o;
  wire [15:0] n2150_o;
  wire [10:0] n2151_o;
  wire n2154_o;
  wire n2161_o;
  wire [11:0] n2162_o;
  wire [3:0] n2163_o;
  wire [15:0] n2164_o;
  wire [9:0] n2165_o;
  wire n2168_o;
  wire n2175_o;
  wire [10:0] n2176_o;
  wire [4:0] n2177_o;
  wire [15:0] n2178_o;
  wire [8:0] n2179_o;
  wire n2182_o;
  wire n2189_o;
  wire [9:0] n2190_o;
  wire [5:0] n2191_o;
  wire [15:0] n2192_o;
  wire [7:0] n2193_o;
  wire n2196_o;
  wire n2203_o;
  wire [8:0] n2204_o;
  wire [6:0] n2205_o;
  wire [15:0] n2206_o;
  wire [6:0] n2207_o;
  wire n2210_o;
  wire n2217_o;
  wire [7:0] n2218_o;
  wire [7:0] n2219_o;
  wire [15:0] n2220_o;
  wire [5:0] n2221_o;
  wire n2224_o;
  wire n2231_o;
  wire [6:0] n2232_o;
  wire [8:0] n2233_o;
  wire [15:0] n2234_o;
  wire [4:0] n2235_o;
  wire n2238_o;
  wire n2245_o;
  wire [5:0] n2246_o;
  wire [9:0] n2247_o;
  wire [15:0] n2248_o;
  wire [3:0] n2249_o;
  wire n2252_o;
  wire n2259_o;
  wire [4:0] n2260_o;
  wire [10:0] n2261_o;
  wire [15:0] n2262_o;
  wire [2:0] n2263_o;
  wire n2266_o;
  wire n2273_o;
  wire [3:0] n2274_o;
  wire [11:0] n2275_o;
  wire [15:0] n2276_o;
  wire [1:0] n2277_o;
  wire n2280_o;
  wire n2287_o;
  wire [2:0] n2288_o;
  wire [12:0] n2289_o;
  wire [15:0] n2290_o;
  wire n2291_o;
  wire n2294_o;
  wire n2301_o;
  wire [1:0] n2302_o;
  wire [13:0] n2303_o;
  wire [15:0] n2304_o;
  wire n2307_o;
  wire n2314_o;
  wire [14:0] n2315_o;
  wire [15:0] n2316_o;
  wire [15:0] n2317_o;
  wire n2319_o;
  wire n2320_o;
  wire n2321_o;
  wire n2322_o;
  wire [15:0] n2323_o;
  wire [15:0] n2324_o;
  wire n2325_o;
  wire n2326_o;
  wire n2327_o;
  wire n2328_o;
  wire [15:0] n2329_o;
  wire [15:0] n2330_o;
  wire n2332_o;
  wire n2334_o;
  wire n2335_o;
  wire n2336_o;
  wire [14:0] n2337_o;
  wire [15:0] n2339_o;
  wire [15:0] n2340_o;
  wire [14:0] n2341_o;
  wire [15:0] n2343_o;
  wire n2345_o;
  wire [13:0] n2346_o;
  wire [14:0] n2348_o;
  wire n2349_o;
  wire [15:0] n2350_o;
  wire n2352_o;
  wire [12:0] n2353_o;
  wire [13:0] n2355_o;
  wire [1:0] n2356_o;
  wire [15:0] n2357_o;
  wire n2359_o;
  wire [11:0] n2360_o;
  wire [12:0] n2362_o;
  wire [2:0] n2363_o;
  wire [15:0] n2364_o;
  wire n2366_o;
  wire [10:0] n2367_o;
  wire [11:0] n2369_o;
  wire [3:0] n2370_o;
  wire [15:0] n2371_o;
  wire n2373_o;
  wire [9:0] n2374_o;
  wire [10:0] n2376_o;
  wire [4:0] n2377_o;
  wire [15:0] n2378_o;
  wire n2380_o;
  wire [8:0] n2381_o;
  wire [9:0] n2383_o;
  wire [5:0] n2384_o;
  wire [15:0] n2385_o;
  wire n2387_o;
  wire [7:0] n2388_o;
  wire [8:0] n2390_o;
  wire [6:0] n2391_o;
  wire [15:0] n2392_o;
  wire n2394_o;
  wire [6:0] n2395_o;
  wire [7:0] n2397_o;
  wire [7:0] n2398_o;
  wire [15:0] n2399_o;
  wire n2401_o;
  wire [5:0] n2402_o;
  wire [6:0] n2404_o;
  wire [8:0] n2405_o;
  wire [15:0] n2406_o;
  wire n2408_o;
  wire [4:0] n2409_o;
  wire [5:0] n2411_o;
  wire [9:0] n2412_o;
  wire [15:0] n2413_o;
  wire n2415_o;
  wire [3:0] n2416_o;
  wire [4:0] n2418_o;
  wire [10:0] n2419_o;
  wire [15:0] n2420_o;
  wire n2422_o;
  wire [2:0] n2423_o;
  wire [3:0] n2425_o;
  wire [11:0] n2426_o;
  wire [15:0] n2427_o;
  wire n2429_o;
  wire [1:0] n2430_o;
  wire [2:0] n2432_o;
  wire [12:0] n2433_o;
  wire [15:0] n2434_o;
  wire n2436_o;
  wire n2437_o;
  wire [1:0] n2439_o;
  wire [13:0] n2440_o;
  wire [15:0] n2441_o;
  wire n2443_o;
  wire [14:0] n2444_o;
  wire [15:0] n2446_o;
  wire n2448_o;
  wire [15:0] n2449_o;
  reg [15:0] n2451_o;
  wire n2452_o;
  wire n2453_o;
  wire n2455_o;
  wire n2457_o;
  wire n2459_o;
  wire n2460_o;
  wire n2462_o;
  wire n2463_o;
  wire n2464_o;
  wire n2465_o;
  wire n2466_o;
  wire n2467_o;
  wire n2468_o;
  wire [15:0] n2469_o;
  wire n2470_o;
  wire [15:0] n2472_o;
  wire [15:0] n2473_o;
  wire [15:0] n2474_o;
  wire n2476_o;
  wire n2477_o;
  wire [7:0] n2479_o;
  wire n2481_o;
  wire n2483_o;
  wire n2484_o;
  wire n2486_o;
  wire n2487_o;
  wire [7:0] n2488_o;
  wire n2489_o;
  wire n2490_o;
  wire n2491_o;
  wire n2492_o;
  wire n2494_o;
  wire n2495_o;
  wire [7:0] n2496_o;
  wire n2561_o;
  wire [3:0] functionreset0_out_unnamed_mux1;
  wire [6:0] functionreset0_out_unnamed_mux1_2;
  wire [6:0] functionreset0_out_unnamed_mux1_3;
  wire [7:0] scl_memory0_out_unnamed_2;
  wire rxstream0_out_m_rxreadyerror;
  wire rxstream0_out_const_1;
  wire rxstream0_out_m_rx_valid;
  wire [3:0] rxstream0_out_m_rx_endpoint_2;
  wire [7:0] rxstream0_out_m_rx_data_2;
  wire rxstream0_out_m_rx_eop;
  wire rxstream0_out_m_rx_error;
  wire rxfifointerface0_out_unnamed_not_mux1;
  wire rxfifointerface0_out_unnamed_not_mux1_2;
  wire [7:0] rxfifointerface0_out_unnamed_mux1;
  wire [3:0] rxfifointerface0_out_unnamed_mux1_2;
  wire rxfifointerface0_out_const_0_mux1;
  wire rxfifointerface0_out_unnamed_mux2;
  wire [4:0] rxfifointerface0_out_const_10_mux1;
  wire txfifointerface0_out_unnamed_not_mux1;
  wire txfifointerface0_out_unnamed_mux2;
  wire txfifointerface0_out_const_0_mux1;
  wire txfifointerface0_out_tx_ready_2;
  wire txfifointerface0_out_tx_valid;
  wire [3:0] txfifointerface0_out_tx_endpoint;
  wire [7:0] txfifointerface0_out_tx_data;
  wire txfifointerface0_out_unnamed_mux2_2;
  reg n2627_q;
  reg n2628_q;
  reg [7:0] n2629_q;
  reg n2630_q;
  reg n2631_q;
  reg n2632_q;
  reg [1:0] n2633_q;
  reg [3:0] n2634_q;
  reg [1:0] n2635_q;
  reg n2636_q;
  reg n2637_q;
  wire n2638_o;
  reg n2639_q;
  reg [3:0] n2640_q;
  wire [3:0] n2641_o;
  reg [3:0] n2642_q;
  wire [15:0] n2643_o;
  reg [15:0] n2644_q;
  reg [3:0] n2645_q;
  reg [6:0] n2646_q;
  reg [3:0] n2647_q;
  reg [15:0] n2648_q;
  reg [7:0] n2649_q;
  reg [7:0] n2650_q;
  reg [7:0] n2651_q;
  reg [7:0] n2652_q;
  reg [15:0] n2653_q;
  reg [3:0] n2654_q;
  reg [3:0] n2655_q;
  wire [63:0] n2656_o;
  reg [63:0] n2657_q;
  reg [6:0] n2658_q;
  assign out_m_phy_tx_valid_2 = n1790_o;
  assign out_m_phy_tx_data_2 = n2496_o;
  assign out_m_status_linestate = scl_usbgpiophy0_out_m_status_linestate;
  assign out_m_status_rxactive = scl_usbgpiophy0_out_m_status_rxactive;
  assign out_m_out = scl_usbgpiophy0_out_m_out;
  assign out_m_match_delayed1 = scl_usbgpiophy0_out_m_match_delayed1;
  assign out_m_phy_tx_ready = scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1;
  assign out_unnamed_mux1 = scl_usbgpiophy0_out_unnamed_mux1;
  assign out_unnamed_mux1_2 = scl_usbgpiophy0_out_unnamed_mux1_2;
  assign out_firstdatabit_mux2 = scl_usbgpiophy0_out_firstdatabit_mux2;
  assign out_in_valid_and_unnamed_mux2 = scl_usbgpiophy0_out_in_valid_and_unnamed_mux2;
  assign out_unnamed_mux1_3 = scl_usbgpiophy0_out_unnamed_mux1_3;
  assign out_set_line_coding_mux1 = n1278_o;
  assign out_unnamed_32 = n1355_o;
  assign out_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop = n879_o;
  assign out_m_packetdata_2_rewired_mux1 = n880_o;
  assign out_unnamed_mux2 = n890_o;
  assign out_unnamed_not_mux1 = rxfifointerface0_out_unnamed_not_mux1_2;
  assign out_unnamed_mux1_4 = rxfifointerface0_out_unnamed_mux1;
  assign out_unnamed_mux1_5 = rxfifointerface0_out_unnamed_mux1_2;
  assign out_const_0_mux1 = rxfifointerface0_out_const_0_mux1;
  assign out_unnamed_mux2_2 = rxfifointerface0_out_unnamed_mux2;
  assign out_const_10_mux1 = rxfifointerface0_out_const_10_mux1;
  assign out_unnamed_not_mux1_2 = txfifointerface0_out_unnamed_not_mux1;
  assign out_unnamed_mux2_3 = txfifointerface0_out_unnamed_mux2;
  assign out_const_0_mux1_2 = txfifointerface0_out_const_0_mux1;
  assign out_m_packetdata_2_bit_16 = n836_o;
  assign out_m_packetdata_2_bit_17 = n837_o;
  assign out_m_packetdata_2_rewired = n838_o;
  assign out_unnamed_mux2_4 = txfifointerface0_out_unnamed_mux2_2;
  assign out_m_packetdata_2_bit_17_mux1 = n1357_o;
  assign out_m_packetdata_2_bit_16_mux1 = n1356_o;
  assign out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired = scl_usbgpiophy0_out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired;
  assign out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired = scl_usbgpiophy0_out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired;
  /* find_the_damn_issue_sky130.vhd:10067:16  */
  assign s_m_senddatastate_mux8 = n2090_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10068:16  */
  assign s_m_address_2 = s_m_address; // (signal)
  /* find_the_damn_issue_sky130.vhd:10069:16  */
  assign s_m_configuration_2 = s_m_configuration_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:10070:16  */
  assign s_unnamed_not_mux1_3 = s_unnamed_not_mux1_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:10071:16  */
  assign s_m_rx_eop_2 = s_m_rx_eop_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:10072:16  */
  assign s_m_rxreadyerror_2 = s_m_rxreadyerror; // (signal)
  /* find_the_damn_issue_sky130.vhd:10073:16  */
  assign s_m_sendhandshake_mux19 = n1851_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10074:16  */
  assign s_m_newaddress_2 = s_m_newaddress; // (signal)
  /* find_the_damn_issue_sky130.vhd:10075:16  */
  assign s_m_status_sessend = scl_usbgpiophy0_out_m_status_sessend; // (signal)
  /* find_the_damn_issue_sky130.vhd:10076:16  */
  assign s_m_rx_valid = scl_usbgpiophy0_out_m_rx_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:10077:16  */
  assign s_m_rx_sop = scl_usbgpiophy0_out_m_rx_sop; // (signal)
  /* find_the_damn_issue_sky130.vhd:10078:16  */
  assign s_m_rx_eop = scl_usbgpiophy0_out_m_rx_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:10079:16  */
  assign s_m_rx_error = scl_usbgpiophy0_out_m_rx_error; // (signal)
  /* find_the_damn_issue_sky130.vhd:10080:16  */
  assign s_m_rx_data = scl_usbgpiophy0_out_m_rx_data; // (signal)
  /* find_the_damn_issue_sky130.vhd:10081:16  */
  assign s_m_phy_rx_error = n2627_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10082:16  */
  always @*
    s_m_phy_rx_eop = n2628_q; // (isignal)
  initial
    s_m_phy_rx_eop = 1'b0;
  /* find_the_damn_issue_sky130.vhd:10083:16  */
  assign s_m_phy_rx_data = n2629_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10084:16  */
  assign s_m_phy_rx_sop = n2630_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10085:16  */
  always @*
    s_m_phy_rx_valid = n2631_q; // (isignal)
  initial
    s_m_phy_rx_valid = 1'b0;
  /* find_the_damn_issue_sky130.vhd:10086:16  */
  assign s_m_rxstatus_sessend = n2632_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10087:16  */
  assign s_m_rxstatus_linestate = n2633_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10088:16  */
  always @*
    s_m_state = n2634_q; // (isignal)
  initial
    s_m_state = 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10089:16  */
  assign s_m_state_2 = s_m_state; // (signal)
  /* find_the_damn_issue_sky130.vhd:10090:16  */
  assign s_m_phy_rx_valid_2 = s_m_phy_rx_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:10091:16  */
  assign s_m_phy_rx_eop_2 = s_m_phy_rx_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:10092:16  */
  assign s_m_phy_rx_error_2 = s_m_phy_rx_error; // (signal)
  /* find_the_damn_issue_sky130.vhd:10093:16  */
  assign s_m_phy_rx_data_2 = s_m_phy_rx_data; // (signal)
  /* find_the_damn_issue_sky130.vhd:10094:16  */
  assign s_m_rxstatus_linestate_2 = s_m_rxstatus_linestate; // (signal)
  /* find_the_damn_issue_sky130.vhd:10095:16  */
  assign s_m_rxstatus_sessend_2 = s_m_rxstatus_sessend; // (signal)
  /* find_the_damn_issue_sky130.vhd:10096:16  */
  assign s_m_descaddressactive_mux1 = n796_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10097:16  */
  assign s_m_descdata = scl_memory0_out_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:10098:16  */
  always @*
    s_m_sendhandshake = n2635_q; // (isignal)
  initial
    s_m_sendhandshake = 2'b00;
  /* find_the_damn_issue_sky130.vhd:10099:16  */
  assign s_send_mux2 = n659_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10100:16  */
  always @*
    s_handshakestate = n2636_q; // (isignal)
  initial
    s_handshakestate = 1'b0;
  /* find_the_damn_issue_sky130.vhd:10101:16  */
  assign s_ackexpected_mux3 = n1827_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10102:16  */
  always @*
    s_ackexpected = n2637_q; // (isignal)
  initial
    s_ackexpected = 1'b0;
  /* find_the_damn_issue_sky130.vhd:10103:16  */
  always @*
    s_incompletetransfer = n2639_q; // (isignal)
  initial
    s_incompletetransfer = 1'b0;
  /* find_the_damn_issue_sky130.vhd:10104:16  */
  always @*
    s_m_packetlentxlimit = n2640_q; // (isignal)
  initial
    s_m_packetlentxlimit = 4'b1000;
  /* find_the_damn_issue_sky130.vhd:10105:16  */
  assign s_m_endpoint = n2642_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10106:16  */
  assign s_m_endpointmask = n2644_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10107:16  */
  assign s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken = n1478_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10108:16  */
  assign s_m_endpoint_mux1 = n1480_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10109:16  */
  assign s_m_senddatastate = n2645_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10110:16  */
  always @*
    s_m_newaddress = n2646_q; // (isignal)
  initial
    s_m_newaddress = 7'b0000000;
  /* find_the_damn_issue_sky130.vhd:10111:16  */
  always @*
    s_m_configuration = n2647_q; // (isignal)
  initial
    s_m_configuration = 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10112:16  */
  assign s_m_configuration_3 = s_m_configuration; // (signal)
  /* find_the_damn_issue_sky130.vhd:10113:16  */
  always @*
    s_m_nextoutdatapid = n2648_q; // (isignal)
  initial
    s_m_nextoutdatapid = 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:10114:16  */
  assign s_m_descaddressactive = n2649_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10115:16  */
  assign s_m_desclengthactive = n2650_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10116:16  */
  assign s_m_descaddress = n2651_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10117:16  */
  assign s_m_desclength = n2652_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10118:16  */
  assign s_m_tx_commit = n673_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10119:16  */
  assign s_m_tx_rollback = n682_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10120:16  */
  assign s_m_tx_valid_and_m_tx_endpoint_eq_m_endpoint_mux1_and_m_packetlen_2_eq_m_packetlentxlimit_not_not_and_m_state_eq_senddata = n1814_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10121:16  */
  assign s_m_tx_ready = n1781_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10122:16  */
  assign s_unnamed_33 = 1'b0; // (signal)
  /* find_the_damn_issue_sky130.vhd:10123:16  */
  assign s_unnamed_34 = 8'bX; // (signal)
  /* find_the_damn_issue_sky130.vhd:10124:16  */
  assign s_unnamed_35 = 4'bX; // (signal)
  /* find_the_damn_issue_sky130.vhd:10125:16  */
  assign s_m_nextindatapid = n2653_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10126:16  */
  assign s_m_pid = n2654_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10127:16  */
  assign s_m_packetlen = n2655_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10128:16  */
  assign s_m_packetdata = n2657_q; // (signal)
  /* find_the_damn_issue_sky130.vhd:10129:16  */
  assign s_m_rxreadyerror = rxstream0_out_m_rxreadyerror; // (signal)
  /* find_the_damn_issue_sky130.vhd:10130:16  */
  assign s_unnamed_36 = rxstream0_out_const_1; // (signal)
  /* find_the_damn_issue_sky130.vhd:10131:16  */
  assign s_m_rx_valid_2 = rxstream0_out_m_rx_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:10132:16  */
  assign s_m_rx_endpoint = rxstream0_out_m_rx_endpoint_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:10133:16  */
  assign s_m_rx_data_2 = rxstream0_out_m_rx_data_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:10134:16  */
  assign s_m_rx_eop_3 = rxstream0_out_m_rx_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:10135:16  */
  assign s_m_rx_error_2 = rxstream0_out_m_rx_error; // (signal)
  /* find_the_damn_issue_sky130.vhd:10136:16  */
  always @*
    s_m_address = n2658_q; // (isignal)
  initial
    s_m_address = 7'b0000000;
  /* find_the_damn_issue_sky130.vhd:10137:16  */
  assign s_unnamed_not_mux1_4 = rxfifointerface0_out_unnamed_not_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:10139:16  */
  assign s_tx_valid = txfifointerface0_out_tx_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:10140:16  */
  assign s_tx_endpoint = txfifointerface0_out_tx_endpoint; // (signal)
  /* find_the_damn_issue_sky130.vhd:10141:16  */
  assign s_tx_data = txfifointerface0_out_tx_data; // (signal)
  /* find_the_damn_issue_sky130.vhd:10142:16  */
  assign s_unnamed_37 = in_unnamed; // (signal)
  /* find_the_damn_issue_sky130.vhd:10143:16  */
  assign s_unnamed_38 = in_unnamed_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:10144:16  */
  assign s_unnamed_39 = in_unnamed_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:10145:16  */
  assign s_unnamed_40 = in_unnamed_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:10146:16  */
  assign s_unnamed_41 = in_unnamed_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:10147:16  */
  assign s_unnamed_42 = in_unnamed_6; // (signal)
  /* find_the_damn_issue_sky130.vhd:10148:16  */
  assign s_unnamed_43 = in_unnamed_7; // (signal)
  /* find_the_damn_issue_sky130.vhd:10149:16  */
  assign s_unnamed_44 = in_unnamed_8; // (signal)
  /* find_the_damn_issue_sky130.vhd:10150:16  */
  assign s_unnamed_45 = in_unnamed_9; // (signal)
  /* find_the_damn_issue_sky130.vhd:10151:16  */
  assign s_unnamed_46 = in_unnamed_10; // (signal)
  /* find_the_damn_issue_sky130.vhd:10152:16  */
  assign s_unnamed_47 = in_unnamed_11; // (signal)
  /* find_the_damn_issue_sky130.vhd:10153:16  */
  assign s_unnamed_48 = in_unnamed_12; // (signal)
  /* find_the_damn_issue_sky130.vhd:10154:16  */
  assign s_unnamed_49 = in_unnamed_14; // (signal)
  /* find_the_damn_issue_sky130.vhd:10155:16  */
  assign s_unnamed_50 = in_unnamed_15; // (signal)
  /* find_the_damn_issue_sky130.vhd:10156:16  */
  assign s_unnamed_51 = in_unnamed_16; // (signal)
  /* find_the_damn_issue_sky130.vhd:10157:16  */
  assign s_unnamed_52 = in_unnamed_30; // (signal)
  /* find_the_damn_issue_sky130.vhd:10158:16  */
  assign s_unnamed_53 = in_unnamed_27; // (signal)
  /* find_the_damn_issue_sky130.vhd:10159:16  */
  assign s_unnamed_54 = in_unnamed_31; // (signal)
  /* find_the_damn_issue_sky130.vhd:10160:16  */
  assign s_unnamed_55 = in_unnamed_25; // (signal)
  /* find_the_damn_issue_sky130.vhd:10161:16  */
  assign s_unnamed_56 = in_unnamed_24; // (signal)
  /* find_the_damn_issue_sky130.vhd:10162:16  */
  assign s_unnamed_57 = in_unnamed_23; // (signal)
  /* find_the_damn_issue_sky130.vhd:10163:16  */
  assign s_unnamed_58 = in_unnamed_22; // (signal)
  /* find_the_damn_issue_sky130.vhd:10164:16  */
  assign s_unnamed_59 = in_unnamed_21; // (signal)
  /* find_the_damn_issue_sky130.vhd:10165:16  */
  assign s_unnamed_60 = in_unnamed_26; // (signal)
  /* find_the_damn_issue_sky130.vhd:10166:16  */
  assign s_unnamed_mux2_5 = n665_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10167:16  */
  assign s_m_packetdata_2_rewired_m_phy_rx_data_rewired = n854_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10168:16  */
  assign s_m_phy_rx_valid_and_m_packetlen_lt_const_8 = n849_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10169:16  */
  assign s_m_packetlen_2_mux3 = n1866_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10170:16  */
  assign s_m_pid_2_mux2 = n750_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10171:16  */
  assign s_m_nextindatapid_2_mux2_rewired_mux1_xor_m_endpointmask_mux2 = n2330_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10172:16  */
  assign s_m_packetlen_2_eq_m_packetlentxlimit = n899_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10173:16  */
  assign s_m_desclengthactive_mux11 = n1429_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10174:16  */
  assign s_m_descaddressactive_mux9 = n1161_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10175:16  */
  assign s_m_desclengthactive_mux2 = n2096_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10176:16  */
  assign s_m_descaddressactive_mux2 = n2093_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10177:16  */
  assign s_m_nextoutdatapid_2_xor_m_endpointmask_mux2_rewired_mux2_rewired_mux1 = n2473_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10178:16  */
  assign s_m_packetdata_2_rewired_mux1_2 = n1249_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10179:16  */
  assign s_m_packetdata_2_rewired_mux1_3 = n1143_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10180:16  */
  assign s_unnamed_mux1_6 = functionreset0_out_unnamed_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:10181:16  */
  assign s_unnamed_mux1_7 = functionreset0_out_unnamed_mux1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:10182:16  */
  assign s_m_senddatastate_2_mux2 = n1535_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10183:16  */
  assign s_unnamed_mux1_8 = functionreset0_out_unnamed_mux1_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:10184:16  */
  assign s_unnamed_m_packetdata_2_rewired_eq_const_15_rewired = n2316_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10185:16  */
  assign s_m_packetdata_2_rewired_2 = n1479_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10186:16  */
  assign s_m_packetlentxlimit_mux2 = n1825_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:10188:9  */
  scl_usbgpiophy scl_usbgpiophy0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_unnamed_37),
    .in_unnamed_2(s_unnamed_38),
    .in_m_tx_ready(s_unnamed_39),
    .in_m_tx_valid(s_unnamed_40),
    .in_m_tx_data(s_unnamed_41),
    .in_m_crcen(s_unnamed_42),
    .in_m_crcin(s_unnamed_43),
    .in_m_crcout(s_unnamed_44),
    .in_m_crcmatch(s_unnamed_45),
    .in_m_crcreset(s_unnamed_46),
    .in_m_crcshiftout(s_unnamed_47),
    .in_unnamed_3(s_unnamed_48),
    .in_unnamed_4(s_unnamed_49),
    .in_unnamed_5(s_unnamed_50),
    .in_unnamed_6(s_unnamed_51),
    .out_m_status_linestate(scl_usbgpiophy0_out_m_status_linestate),
    .out_m_status_sessend(scl_usbgpiophy0_out_m_status_sessend),
    .out_m_status_rxactive(scl_usbgpiophy0_out_m_status_rxactive),
    .out_m_out(scl_usbgpiophy0_out_m_out),
    .out_m_match_delayed1(scl_usbgpiophy0_out_m_match_delayed1),
    .out_m_rx_valid(scl_usbgpiophy0_out_m_rx_valid),
    .out_m_rx_sop(scl_usbgpiophy0_out_m_rx_sop),
    .out_m_rx_eop(scl_usbgpiophy0_out_m_rx_eop),
    .out_m_rx_error(scl_usbgpiophy0_out_m_rx_error),
    .out_m_rx_data(scl_usbgpiophy0_out_m_rx_data),
    .out_unnamed_or_in_valid_mux1_delayed1_not_mux1(scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1),
    .out_unnamed_mux1(scl_usbgpiophy0_out_unnamed_mux1),
    .out_unnamed_mux1_2(scl_usbgpiophy0_out_unnamed_mux1_2),
    .out_firstdatabit_mux2(scl_usbgpiophy0_out_firstdatabit_mux2),
    .out_in_valid_and_unnamed_mux2(scl_usbgpiophy0_out_in_valid_and_unnamed_mux2),
    .out_unnamed_mux1_3(scl_usbgpiophy0_out_unnamed_mux1_3),
    .out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired(scl_usbgpiophy0_out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired),
    .out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired(scl_usbgpiophy0_out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired));
  /* find_the_damn_issue_sky130.vhd:10472:40  */
  assign n615_o = s_m_sendhandshake != 2'b00;
  /* find_the_damn_issue_sky130.vhd:10472:71  */
  assign n617_o = s_handshakestate == 1'b0;
  /* find_the_damn_issue_sky130.vhd:10472:49  */
  assign n618_o = n615_o & n617_o;
  /* find_the_damn_issue_sky130.vhd:10472:17  */
  assign n620_o = n618_o ? 1'b1 : s_handshakestate;
  /* find_the_damn_issue_sky130.vhd:10477:38  */
  assign n622_o = s_handshakestate == 1'b1;
  /* find_the_damn_issue_sky130.vhd:10477:17  */
  assign n625_o = n622_o ? 8'b11010010 : 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:10482:40  */
  assign n627_o = s_m_sendhandshake == 2'b10;
  /* find_the_damn_issue_sky130.vhd:10482:70  */
  assign n629_o = s_handshakestate == 1'b1;
  /* find_the_damn_issue_sky130.vhd:10482:48  */
  assign n630_o = n627_o & n629_o;
  /* find_the_damn_issue_sky130.vhd:10482:17  */
  assign n632_o = n630_o ? 8'b01011010 : n625_o;
  /* find_the_damn_issue_sky130.vhd:10487:40  */
  assign n634_o = s_m_sendhandshake == 2'b11;
  /* find_the_damn_issue_sky130.vhd:10487:70  */
  assign n636_o = s_handshakestate == 1'b1;
  /* find_the_damn_issue_sky130.vhd:10487:48  */
  assign n637_o = n634_o & n636_o;
  /* find_the_damn_issue_sky130.vhd:10487:17  */
  assign n639_o = n637_o ? 8'b00011110 : n632_o;
  /* find_the_damn_issue_sky130.vhd:10492:38  */
  assign n641_o = s_handshakestate == 1'b1;
  /* find_the_damn_issue_sky130.vhd:10492:17  */
  assign n644_o = n641_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10497:107  */
  assign n647_o = s_handshakestate == 1'b1;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n654_o = n647_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10497:72  */
  assign n655_o = scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1 & n654_o;
  /* find_the_damn_issue_sky130.vhd:10498:17  */
  assign n657_o = n655_o ? 2'b00 : s_m_sendhandshake;
  /* find_the_damn_issue_sky130.vhd:10503:17  */
  assign n659_o = n655_o ? 1'b0 : n620_o;
  /* find_the_damn_issue_sky130.vhd:10512:40  */
  assign n661_o = s_m_phy_rx_data_2 == 8'b11010010;
  /* find_the_damn_issue_sky130.vhd:10512:80  */
  assign n662_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10512:106  */
  assign n663_o = n662_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:10512:54  */
  assign n664_o = n661_o & n663_o;
  /* find_the_damn_issue_sky130.vhd:10512:17  */
  assign n665_o = n664_o ? s_unnamed_mux1_7 : s_unnamed_mux1_8;
  /* find_the_damn_issue_sky130.vhd:10517:40  */
  assign n667_o = s_m_phy_rx_data_2 == 8'b11010010;
  /* find_the_damn_issue_sky130.vhd:10517:80  */
  assign n668_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10517:106  */
  assign n669_o = n668_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:10517:54  */
  assign n670_o = n667_o & n669_o;
  /* find_the_damn_issue_sky130.vhd:10517:17  */
  assign n673_o = n670_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10522:46  */
  assign n675_o = s_m_phy_rx_data_2 == 8'b11010010;
  /* find_the_damn_issue_sky130.vhd:10522:23  */
  assign n676_o = ~n675_o;
  /* find_the_damn_issue_sky130.vhd:10522:87  */
  assign n677_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10522:113  */
  assign n678_o = n677_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:10522:61  */
  assign n679_o = n676_o & n678_o;
  /* find_the_damn_issue_sky130.vhd:10522:17  */
  assign n682_o = n679_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10527:42  */
  assign n683_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10527:68  */
  assign n684_o = n683_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:10527:17  */
  assign n686_o = n684_o ? 1'b0 : s_ackexpected;
  /* find_the_damn_issue_sky130.vhd:10536:100  */
  assign n689_o = s_m_state_2 == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n696_o = n689_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10536:70  */
  assign n697_o = s_m_phy_rx_eop_2 & n696_o;
  /* find_the_damn_issue_sky130.vhd:10541:72  */
  assign n700_o = s_m_state_2 == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n707_o = n700_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10542:17  */
  assign n709_o = n707_o ? 1'b1 : n644_o;
  /* find_the_damn_issue_sky130.vhd:10547:17  */
  assign n711_o = n707_o ? 8'b11000011 : n639_o;
  /* find_the_damn_issue_sky130.vhd:10552:74  */
  assign n712_o = scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1 & n707_o;
  /* find_the_damn_issue_sky130.vhd:10565:102  */
  assign n715_o = s_m_state_2 == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n722_o = n715_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10565:72  */
  assign n723_o = s_m_phy_rx_eop_2 & n722_o;
  /* find_the_damn_issue_sky130.vhd:10566:102  */
  assign n726_o = s_m_state_2 == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n733_o = n726_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10566:72  */
  assign n734_o = s_m_phy_rx_eop_2 & n733_o;
  /* find_the_damn_issue_sky130.vhd:10570:102  */
  assign n737_o = s_m_state_2 == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n744_o = n737_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10570:72  */
  assign n745_o = s_m_phy_rx_eop_2 & n744_o;
  /* find_the_damn_issue_sky130.vhd:10575:46  */
  assign n746_o = s_m_phy_rx_valid_2 & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10576:60  */
  assign n747_o = s_m_phy_rx_data_2[3:0];
  /* find_the_damn_issue_sky130.vhd:10575:17  */
  assign n748_o = n746_o ? n747_o : s_m_pid;
  /* find_the_damn_issue_sky130.vhd:10580:17  */
  assign n750_o = s_m_phy_rx_eop_2 ? 4'b0000 : n748_o;
  /* find_the_damn_issue_sky130.vhd:10587:44  */
  assign n752_o = s_m_desclengthactive != 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:10587:80  */
  assign n754_o = s_m_packetlen != 4'b1000;
  /* find_the_damn_issue_sky130.vhd:10587:59  */
  assign n755_o = n752_o & n754_o;
  /* find_the_damn_issue_sky130.vhd:10587:109  */
  assign n757_o = s_m_state_2 == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:10587:92  */
  assign n758_o = n755_o & n757_o;
  /* find_the_damn_issue_sky130.vhd:10587:17  */
  assign n760_o = n758_o ? 1'b1 : n709_o;
  /* find_the_damn_issue_sky130.vhd:10592:115  */
  assign n763_o = s_m_desclengthactive != 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n770_o = n763_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10592:164  */
  assign n773_o = s_m_packetlen != 4'b1000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n780_o = n773_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10592:130  */
  assign n781_o = n770_o & n780_o;
  /* find_the_damn_issue_sky130.vhd:10592:206  */
  assign n784_o = s_m_state_2 == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n791_o = n784_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10592:176  */
  assign n792_o = n781_o & n791_o;
  /* find_the_damn_issue_sky130.vhd:10592:74  */
  assign n793_o = scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1 & n792_o;
  /* find_the_damn_issue_sky130.vhd:10594:78  */
  assign n795_o = s_m_descaddressactive + 8'b00000001;
  /* find_the_damn_issue_sky130.vhd:10593:17  */
  assign n796_o = n793_o ? n795_o : s_m_descaddressactive;
  /* find_the_damn_issue_sky130.vhd:10599:40  */
  assign n798_o = s_m_phy_rx_data_2 == 8'b11010010;
  /* find_the_damn_issue_sky130.vhd:10599:80  */
  assign n799_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10599:106  */
  assign n800_o = n799_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:10599:54  */
  assign n801_o = n798_o & n800_o;
  /* find_the_damn_issue_sky130.vhd:10599:17  */
  assign n802_o = n801_o ? s_m_descaddressactive_mux1 : s_m_descaddress;
  /* find_the_damn_issue_sky130.vhd:10605:78  */
  assign n804_o = s_m_desclengthactive - 8'b00000001;
  /* find_the_damn_issue_sky130.vhd:10604:17  */
  assign n805_o = n793_o ? n804_o : s_m_desclengthactive;
  /* find_the_damn_issue_sky130.vhd:10610:40  */
  assign n807_o = s_m_phy_rx_data_2 == 8'b11010010;
  /* find_the_damn_issue_sky130.vhd:10610:80  */
  assign n808_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10610:106  */
  assign n809_o = n808_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:10610:54  */
  assign n810_o = n807_o & n809_o;
  /* find_the_damn_issue_sky130.vhd:10610:17  */
  assign n811_o = n810_o ? n805_o : s_m_desclength;
  /* find_the_damn_issue_sky130.vhd:10615:24  */
  assign n812_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10615:69  */
  assign n814_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10615:54  */
  assign n815_o = n812_o & n814_o;
  /* find_the_damn_issue_sky130.vhd:10615:80  */
  assign n816_o = n815_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10615:17  */
  assign n818_o = n816_o ? 8'b00000000 : n811_o;
  /* find_the_damn_issue_sky130.vhd:10620:50  */
  assign n820_o = s_m_desclengthactive != 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:10620:86  */
  assign n822_o = s_m_packetlen != 4'b1000;
  /* find_the_damn_issue_sky130.vhd:10620:65  */
  assign n823_o = n820_o & n822_o;
  /* find_the_damn_issue_sky130.vhd:10620:23  */
  assign n824_o = ~n823_o;
  /* find_the_damn_issue_sky130.vhd:10620:116  */
  assign n826_o = s_m_state_2 == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:10620:99  */
  assign n827_o = n824_o & n826_o;
  /* find_the_damn_issue_sky130.vhd:10620:17  */
  assign n829_o = n827_o ? 1'b1 : n686_o;
  /* find_the_damn_issue_sky130.vhd:10627:56  */
  assign n830_o = s_m_packetdata[7:0];
  /* find_the_damn_issue_sky130.vhd:10628:52  */
  assign n831_o = s_m_packetdata[15:8];
  /* find_the_damn_issue_sky130.vhd:10629:51  */
  assign n832_o = s_m_packetdata[31:16];
  /* find_the_damn_issue_sky130.vhd:10630:51  */
  assign n833_o = s_m_packetdata[47:32];
  /* find_the_damn_issue_sky130.vhd:10631:52  */
  assign n834_o = s_m_packetdata[63:48];
  /* find_the_damn_issue_sky130.vhd:10632:45  */
  assign n835_o = s_m_packetdata[47:40];
  /* find_the_damn_issue_sky130.vhd:10659:62  */
  assign n836_o = s_m_packetdata[16];
  /* find_the_damn_issue_sky130.vhd:10660:62  */
  assign n837_o = s_m_packetdata[17];
  /* find_the_damn_issue_sky130.vhd:10661:63  */
  assign n838_o = s_m_packetdata[23:0];
  /* find_the_damn_issue_sky130.vhd:10663:116  */
  assign n841_o = $unsigned(s_m_packetlen) < $unsigned(4'b1000);
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n848_o = n841_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10663:84  */
  assign n849_o = s_m_phy_rx_valid_2 & n848_o;
  /* find_the_damn_issue_sky130.vhd:10664:75  */
  assign n850_o = s_m_packetdata[63:8];
  /* find_the_damn_issue_sky130.vhd:10664:57  */
  assign n852_o = {8'b00000000, n850_o};
  /* find_the_damn_issue_sky130.vhd:10665:112  */
  assign n853_o = n852_o[55:0];
  /* find_the_damn_issue_sky130.vhd:10665:86  */
  assign n854_o = {s_m_phy_rx_data_2, n853_o};
  /* find_the_damn_issue_sky130.vhd:10667:47  */
  assign n855_o = s_m_pid[1:0];
  /* find_the_damn_issue_sky130.vhd:10668:169  */
  assign n858_o = in_unnamed_17 == 1'b1;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n865_o = n858_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10668:200  */
  assign n866_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10668:260  */
  assign n869_o = n855_o == 2'b11;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n876_o = n869_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10668:224  */
  assign n877_o = n866_o & n876_o;
  /* find_the_damn_issue_sky130.vhd:10668:269  */
  assign n878_o = n877_o & n745_o;
  /* find_the_damn_issue_sky130.vhd:10668:192  */
  assign n879_o = n865_o & n878_o;
  /* find_the_damn_issue_sky130.vhd:10669:17  */
  assign n880_o = n879_o ? n838_o : in_unnamed_20;
  /* find_the_damn_issue_sky130.vhd:10674:17  */
  assign n882_o = n879_o ? 1'b0 : in_unnamed_13;
  /* find_the_damn_issue_sky130.vhd:10679:55  */
  assign n884_o = n880_o == 24'b000000001110000100000000;
  /* find_the_damn_issue_sky130.vhd:10679:99  */
  assign n886_o = n835_o == 8'b00000010;
  /* find_the_damn_issue_sky130.vhd:10679:85  */
  assign n887_o = n884_o & n886_o;
  /* find_the_damn_issue_sky130.vhd:10679:114  */
  assign n888_o = n887_o & n879_o;
  /* find_the_damn_issue_sky130.vhd:10679:17  */
  assign n890_o = n888_o ? 1'b1 : n882_o;
  /* find_the_damn_issue_sky130.vhd:10684:88  */
  assign n892_o = s_m_packetlen == s_m_packetlentxlimit;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n899_o = n892_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10685:63  */
  assign n900_o = s_m_packetdata[6:5];
  /* find_the_damn_issue_sky130.vhd:10686:38  */
  assign n902_o = n831_o == 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:10686:85  */
  assign n904_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10686:101  */
  assign n905_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10686:146  */
  assign n907_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10686:131  */
  assign n908_o = n905_o & n907_o;
  /* find_the_damn_issue_sky130.vhd:10686:157  */
  assign n909_o = n908_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10686:93  */
  assign n910_o = n904_o & n909_o;
  /* find_the_damn_issue_sky130.vhd:10686:52  */
  assign n911_o = n902_o & n910_o;
  /* find_the_damn_issue_sky130.vhd:10686:17  */
  assign n913_o = n911_o ? 8'b00001110 : n802_o;
  /* find_the_damn_issue_sky130.vhd:10691:38  */
  assign n915_o = n831_o == 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:10691:85  */
  assign n917_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10691:101  */
  assign n918_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10691:146  */
  assign n920_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10691:131  */
  assign n921_o = n918_o & n920_o;
  /* find_the_damn_issue_sky130.vhd:10691:157  */
  assign n922_o = n921_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10691:93  */
  assign n923_o = n917_o & n922_o;
  /* find_the_damn_issue_sky130.vhd:10691:52  */
  assign n924_o = n915_o & n923_o;
  /* find_the_damn_issue_sky130.vhd:10691:17  */
  assign n926_o = n924_o ? 8'b00000010 : n818_o;
  /* find_the_damn_issue_sky130.vhd:10696:37  */
  assign n928_o = n832_o == 16'b0000000100000000;
  /* find_the_damn_issue_sky130.vhd:10696:81  */
  assign n930_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10696:117  */
  assign n931_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10696:130  */
  assign n933_o = n931_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10696:174  */
  assign n935_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10696:190  */
  assign n936_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10696:235  */
  assign n938_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10696:220  */
  assign n939_o = n936_o & n938_o;
  /* find_the_damn_issue_sky130.vhd:10696:246  */
  assign n940_o = n939_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10696:182  */
  assign n941_o = n935_o & n940_o;
  /* find_the_damn_issue_sky130.vhd:10696:141  */
  assign n942_o = n933_o & n941_o;
  /* find_the_damn_issue_sky130.vhd:10696:95  */
  assign n943_o = n930_o & n942_o;
  /* find_the_damn_issue_sky130.vhd:10696:59  */
  assign n944_o = n928_o & n943_o;
  /* find_the_damn_issue_sky130.vhd:10696:17  */
  assign n946_o = n944_o ? 8'b00010000 : n913_o;
  /* find_the_damn_issue_sky130.vhd:10701:37  */
  assign n948_o = n832_o == 16'b0000000100000000;
  /* find_the_damn_issue_sky130.vhd:10701:81  */
  assign n950_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10701:117  */
  assign n951_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10701:130  */
  assign n953_o = n951_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10701:174  */
  assign n955_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10701:190  */
  assign n956_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10701:235  */
  assign n958_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10701:220  */
  assign n959_o = n956_o & n958_o;
  /* find_the_damn_issue_sky130.vhd:10701:246  */
  assign n960_o = n959_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10701:182  */
  assign n961_o = n955_o & n960_o;
  /* find_the_damn_issue_sky130.vhd:10701:141  */
  assign n962_o = n953_o & n961_o;
  /* find_the_damn_issue_sky130.vhd:10701:95  */
  assign n963_o = n950_o & n962_o;
  /* find_the_damn_issue_sky130.vhd:10701:59  */
  assign n964_o = n948_o & n963_o;
  /* find_the_damn_issue_sky130.vhd:10701:17  */
  assign n966_o = n964_o ? 8'b00010010 : n926_o;
  /* find_the_damn_issue_sky130.vhd:10706:37  */
  assign n968_o = n832_o == 16'b0000001000000000;
  /* find_the_damn_issue_sky130.vhd:10706:81  */
  assign n970_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10706:117  */
  assign n971_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10706:130  */
  assign n973_o = n971_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10706:174  */
  assign n975_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10706:190  */
  assign n976_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10706:235  */
  assign n978_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10706:220  */
  assign n979_o = n976_o & n978_o;
  /* find_the_damn_issue_sky130.vhd:10706:246  */
  assign n980_o = n979_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10706:182  */
  assign n981_o = n975_o & n980_o;
  /* find_the_damn_issue_sky130.vhd:10706:141  */
  assign n982_o = n973_o & n981_o;
  /* find_the_damn_issue_sky130.vhd:10706:95  */
  assign n983_o = n970_o & n982_o;
  /* find_the_damn_issue_sky130.vhd:10706:59  */
  assign n984_o = n968_o & n983_o;
  /* find_the_damn_issue_sky130.vhd:10706:17  */
  assign n986_o = n984_o ? 8'b00100010 : n946_o;
  /* find_the_damn_issue_sky130.vhd:10711:37  */
  assign n988_o = n832_o == 16'b0000001000000000;
  /* find_the_damn_issue_sky130.vhd:10711:81  */
  assign n990_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10711:117  */
  assign n991_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10711:130  */
  assign n993_o = n991_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10711:174  */
  assign n995_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10711:190  */
  assign n996_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10711:235  */
  assign n998_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10711:220  */
  assign n999_o = n996_o & n998_o;
  /* find_the_damn_issue_sky130.vhd:10711:246  */
  assign n1000_o = n999_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10711:182  */
  assign n1001_o = n995_o & n1000_o;
  /* find_the_damn_issue_sky130.vhd:10711:141  */
  assign n1002_o = n993_o & n1001_o;
  /* find_the_damn_issue_sky130.vhd:10711:95  */
  assign n1003_o = n990_o & n1002_o;
  /* find_the_damn_issue_sky130.vhd:10711:59  */
  assign n1004_o = n988_o & n1003_o;
  /* find_the_damn_issue_sky130.vhd:10711:17  */
  assign n1006_o = n1004_o ? 8'b01000011 : n966_o;
  /* find_the_damn_issue_sky130.vhd:10716:37  */
  assign n1008_o = n832_o == 16'b0000001100000000;
  /* find_the_damn_issue_sky130.vhd:10716:81  */
  assign n1010_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10716:117  */
  assign n1011_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10716:130  */
  assign n1013_o = n1011_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10716:174  */
  assign n1015_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10716:190  */
  assign n1016_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10716:235  */
  assign n1018_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10716:220  */
  assign n1019_o = n1016_o & n1018_o;
  /* find_the_damn_issue_sky130.vhd:10716:246  */
  assign n1020_o = n1019_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10716:182  */
  assign n1021_o = n1015_o & n1020_o;
  /* find_the_damn_issue_sky130.vhd:10716:141  */
  assign n1022_o = n1013_o & n1021_o;
  /* find_the_damn_issue_sky130.vhd:10716:95  */
  assign n1023_o = n1010_o & n1022_o;
  /* find_the_damn_issue_sky130.vhd:10716:59  */
  assign n1024_o = n1008_o & n1023_o;
  /* find_the_damn_issue_sky130.vhd:10716:17  */
  assign n1026_o = n1024_o ? 8'b01100101 : n986_o;
  /* find_the_damn_issue_sky130.vhd:10721:37  */
  assign n1028_o = n832_o == 16'b0000001100000000;
  /* find_the_damn_issue_sky130.vhd:10721:81  */
  assign n1030_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10721:117  */
  assign n1031_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10721:130  */
  assign n1033_o = n1031_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10721:174  */
  assign n1035_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10721:190  */
  assign n1036_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10721:235  */
  assign n1038_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10721:220  */
  assign n1039_o = n1036_o & n1038_o;
  /* find_the_damn_issue_sky130.vhd:10721:246  */
  assign n1040_o = n1039_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10721:182  */
  assign n1041_o = n1035_o & n1040_o;
  /* find_the_damn_issue_sky130.vhd:10721:141  */
  assign n1042_o = n1033_o & n1041_o;
  /* find_the_damn_issue_sky130.vhd:10721:95  */
  assign n1043_o = n1030_o & n1042_o;
  /* find_the_damn_issue_sky130.vhd:10721:59  */
  assign n1044_o = n1028_o & n1043_o;
  /* find_the_damn_issue_sky130.vhd:10721:17  */
  assign n1046_o = n1044_o ? 8'b00000100 : n1006_o;
  /* find_the_damn_issue_sky130.vhd:10726:37  */
  assign n1048_o = n832_o == 16'b0000001100000001;
  /* find_the_damn_issue_sky130.vhd:10726:81  */
  assign n1050_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10726:117  */
  assign n1051_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10726:130  */
  assign n1053_o = n1051_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10726:174  */
  assign n1055_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10726:190  */
  assign n1056_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10726:235  */
  assign n1058_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10726:220  */
  assign n1059_o = n1056_o & n1058_o;
  /* find_the_damn_issue_sky130.vhd:10726:246  */
  assign n1060_o = n1059_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10726:182  */
  assign n1061_o = n1055_o & n1060_o;
  /* find_the_damn_issue_sky130.vhd:10726:141  */
  assign n1062_o = n1053_o & n1061_o;
  /* find_the_damn_issue_sky130.vhd:10726:95  */
  assign n1063_o = n1050_o & n1062_o;
  /* find_the_damn_issue_sky130.vhd:10726:59  */
  assign n1064_o = n1048_o & n1063_o;
  /* find_the_damn_issue_sky130.vhd:10726:17  */
  assign n1066_o = n1064_o ? 8'b01101001 : n1026_o;
  /* find_the_damn_issue_sky130.vhd:10731:37  */
  assign n1068_o = n832_o == 16'b0000001100000001;
  /* find_the_damn_issue_sky130.vhd:10731:81  */
  assign n1070_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10731:117  */
  assign n1071_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10731:130  */
  assign n1073_o = n1071_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10731:174  */
  assign n1075_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10731:190  */
  assign n1076_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10731:235  */
  assign n1078_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10731:220  */
  assign n1079_o = n1076_o & n1078_o;
  /* find_the_damn_issue_sky130.vhd:10731:246  */
  assign n1080_o = n1079_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10731:182  */
  assign n1081_o = n1075_o & n1080_o;
  /* find_the_damn_issue_sky130.vhd:10731:141  */
  assign n1082_o = n1073_o & n1081_o;
  /* find_the_damn_issue_sky130.vhd:10731:95  */
  assign n1083_o = n1070_o & n1082_o;
  /* find_the_damn_issue_sky130.vhd:10731:59  */
  assign n1084_o = n1068_o & n1083_o;
  /* find_the_damn_issue_sky130.vhd:10731:17  */
  assign n1086_o = n1084_o ? 8'b00010010 : n1046_o;
  /* find_the_damn_issue_sky130.vhd:10736:37  */
  assign n1088_o = n832_o == 16'b0000001100000010;
  /* find_the_damn_issue_sky130.vhd:10736:81  */
  assign n1090_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10736:117  */
  assign n1091_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10736:130  */
  assign n1093_o = n1091_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10736:174  */
  assign n1095_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10736:190  */
  assign n1096_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10736:235  */
  assign n1098_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10736:220  */
  assign n1099_o = n1096_o & n1098_o;
  /* find_the_damn_issue_sky130.vhd:10736:246  */
  assign n1100_o = n1099_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10736:182  */
  assign n1101_o = n1095_o & n1100_o;
  /* find_the_damn_issue_sky130.vhd:10736:141  */
  assign n1102_o = n1093_o & n1101_o;
  /* find_the_damn_issue_sky130.vhd:10736:95  */
  assign n1103_o = n1090_o & n1102_o;
  /* find_the_damn_issue_sky130.vhd:10736:59  */
  assign n1104_o = n1088_o & n1103_o;
  /* find_the_damn_issue_sky130.vhd:10736:17  */
  assign n1106_o = n1104_o ? 8'b01111011 : n1066_o;
  /* find_the_damn_issue_sky130.vhd:10741:37  */
  assign n1108_o = n832_o == 16'b0000001100000010;
  /* find_the_damn_issue_sky130.vhd:10741:81  */
  assign n1110_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10741:117  */
  assign n1111_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10741:130  */
  assign n1113_o = n1111_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10741:174  */
  assign n1115_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10741:190  */
  assign n1116_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10741:235  */
  assign n1118_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10741:220  */
  assign n1119_o = n1116_o & n1118_o;
  /* find_the_damn_issue_sky130.vhd:10741:246  */
  assign n1120_o = n1119_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10741:182  */
  assign n1121_o = n1115_o & n1120_o;
  /* find_the_damn_issue_sky130.vhd:10741:141  */
  assign n1122_o = n1113_o & n1121_o;
  /* find_the_damn_issue_sky130.vhd:10741:95  */
  assign n1123_o = n1110_o & n1122_o;
  /* find_the_damn_issue_sky130.vhd:10741:59  */
  assign n1124_o = n1108_o & n1123_o;
  /* find_the_damn_issue_sky130.vhd:10741:17  */
  assign n1126_o = n1124_o ? 8'b00100010 : n1086_o;
  /* find_the_damn_issue_sky130.vhd:10746:38  */
  assign n1128_o = n831_o == 8'b00000101;
  /* find_the_damn_issue_sky130.vhd:10746:74  */
  assign n1129_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10746:87  */
  assign n1131_o = n1129_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10746:131  */
  assign n1133_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10746:147  */
  assign n1134_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10746:192  */
  assign n1136_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10746:177  */
  assign n1137_o = n1134_o & n1136_o;
  /* find_the_damn_issue_sky130.vhd:10746:203  */
  assign n1138_o = n1137_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10746:139  */
  assign n1139_o = n1133_o & n1138_o;
  /* find_the_damn_issue_sky130.vhd:10746:98  */
  assign n1140_o = n1131_o & n1139_o;
  /* find_the_damn_issue_sky130.vhd:10746:52  */
  assign n1141_o = n1128_o & n1140_o;
  /* find_the_damn_issue_sky130.vhd:10747:74  */
  assign n1142_o = s_m_packetdata[22:16];
  /* find_the_damn_issue_sky130.vhd:10746:17  */
  assign n1143_o = n1141_o ? n1142_o : s_unnamed_mux1_7;
  /* find_the_damn_issue_sky130.vhd:10751:38  */
  assign n1145_o = n831_o == 8'b00001000;
  /* find_the_damn_issue_sky130.vhd:10751:74  */
  assign n1146_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10751:87  */
  assign n1148_o = n1146_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10751:131  */
  assign n1150_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10751:147  */
  assign n1151_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10751:192  */
  assign n1153_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10751:177  */
  assign n1154_o = n1151_o & n1153_o;
  /* find_the_damn_issue_sky130.vhd:10751:203  */
  assign n1155_o = n1154_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10751:139  */
  assign n1156_o = n1150_o & n1155_o;
  /* find_the_damn_issue_sky130.vhd:10751:98  */
  assign n1157_o = n1148_o & n1156_o;
  /* find_the_damn_issue_sky130.vhd:10751:52  */
  assign n1158_o = n1145_o & n1157_o;
  /* find_the_damn_issue_sky130.vhd:10752:63  */
  assign n1160_o = {4'b0000, s_unnamed_mux1_6};
  /* find_the_damn_issue_sky130.vhd:10751:17  */
  assign n1161_o = n1158_o ? n1160_o : n1106_o;
  /* find_the_damn_issue_sky130.vhd:10756:38  */
  assign n1163_o = n831_o == 8'b00001000;
  /* find_the_damn_issue_sky130.vhd:10756:74  */
  assign n1164_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10756:87  */
  assign n1166_o = n1164_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10756:131  */
  assign n1168_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10756:147  */
  assign n1169_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10756:192  */
  assign n1171_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10756:177  */
  assign n1172_o = n1169_o & n1171_o;
  /* find_the_damn_issue_sky130.vhd:10756:203  */
  assign n1173_o = n1172_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10756:139  */
  assign n1174_o = n1168_o & n1173_o;
  /* find_the_damn_issue_sky130.vhd:10756:98  */
  assign n1175_o = n1166_o & n1174_o;
  /* find_the_damn_issue_sky130.vhd:10756:52  */
  assign n1176_o = n1163_o & n1175_o;
  /* find_the_damn_issue_sky130.vhd:10756:17  */
  assign n1178_o = n1176_o ? 8'b00000001 : n1126_o;
  /* find_the_damn_issue_sky130.vhd:10761:41  */
  assign n1180_o = 16'b0000000000000001 == n832_o;
  /* find_the_damn_issue_sky130.vhd:10761:81  */
  assign n1182_o = n831_o == 8'b00001001;
  /* find_the_damn_issue_sky130.vhd:10761:117  */
  assign n1183_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10761:130  */
  assign n1185_o = n1183_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10761:174  */
  assign n1187_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10761:190  */
  assign n1188_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10761:235  */
  assign n1190_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10761:220  */
  assign n1191_o = n1188_o & n1190_o;
  /* find_the_damn_issue_sky130.vhd:10761:246  */
  assign n1192_o = n1191_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10761:182  */
  assign n1193_o = n1187_o & n1192_o;
  /* find_the_damn_issue_sky130.vhd:10761:141  */
  assign n1194_o = n1185_o & n1193_o;
  /* find_the_damn_issue_sky130.vhd:10761:95  */
  assign n1195_o = n1182_o & n1194_o;
  /* find_the_damn_issue_sky130.vhd:10761:59  */
  assign n1196_o = n1180_o & n1195_o;
  /* find_the_damn_issue_sky130.vhd:10761:17  */
  assign n1199_o = n1196_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10767:103  */
  assign n1202_o = n831_o == 8'b00001001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1209_o = n1202_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10767:152  */
  assign n1211_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10767:165  */
  assign n1213_o = n1211_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1220_o = n1213_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10767:222  */
  assign n1223_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1230_o = n1223_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10767:238  */
  assign n1231_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10767:290  */
  assign n1234_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1241_o = n1234_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10767:262  */
  assign n1242_o = n1231_o & n1241_o;
  /* find_the_damn_issue_sky130.vhd:10767:301  */
  assign n1243_o = n1242_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10767:230  */
  assign n1244_o = n1230_o & n1243_o;
  /* find_the_damn_issue_sky130.vhd:10767:176  */
  assign n1245_o = n1220_o & n1244_o;
  /* find_the_damn_issue_sky130.vhd:10767:117  */
  assign n1246_o = n1209_o & n1245_o;
  /* find_the_damn_issue_sky130.vhd:10767:68  */
  assign n1247_o = n1199_o & n1246_o;
  /* find_the_damn_issue_sky130.vhd:10769:76  */
  assign n1248_o = s_m_packetdata[19:16];
  /* find_the_damn_issue_sky130.vhd:10768:17  */
  assign n1249_o = n1247_o ? n1248_o : s_unnamed_mux1_6;
  /* find_the_damn_issue_sky130.vhd:10773:49  */
  assign n1251_o = n900_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:10773:65  */
  assign n1252_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10773:110  */
  assign n1254_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10773:95  */
  assign n1255_o = n1252_o & n1254_o;
  /* find_the_damn_issue_sky130.vhd:10773:121  */
  assign n1256_o = n1255_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10773:57  */
  assign n1257_o = n1251_o & n1256_o;
  /* find_the_damn_issue_sky130.vhd:10773:17  */
  assign n1259_o = n1257_o ? 1'b0 : in_unnamed_17;
  /* find_the_damn_issue_sky130.vhd:10778:40  */
  assign n1261_o = n831_o == 8'b00100000;
  /* find_the_damn_issue_sky130.vhd:10778:79  */
  assign n1263_o = n830_o == 8'b00100001;
  /* find_the_damn_issue_sky130.vhd:10778:54  */
  assign n1264_o = n1261_o & n1263_o;
  /* find_the_damn_issue_sky130.vhd:10778:114  */
  assign n1266_o = n833_o == 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:10778:94  */
  assign n1267_o = n1264_o & n1266_o;
  /* find_the_damn_issue_sky130.vhd:10778:170  */
  assign n1269_o = n900_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:10778:186  */
  assign n1270_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10778:231  */
  assign n1272_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10778:216  */
  assign n1273_o = n1270_o & n1272_o;
  /* find_the_damn_issue_sky130.vhd:10778:242  */
  assign n1274_o = n1273_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10778:178  */
  assign n1275_o = n1269_o & n1274_o;
  /* find_the_damn_issue_sky130.vhd:10778:137  */
  assign n1276_o = n1267_o & n1275_o;
  /* find_the_damn_issue_sky130.vhd:10778:17  */
  assign n1278_o = n1276_o ? 1'b1 : n1259_o;
  /* find_the_damn_issue_sky130.vhd:10783:40  */
  assign n1280_o = n831_o == 8'b00100000;
  /* find_the_damn_issue_sky130.vhd:10783:79  */
  assign n1282_o = n830_o == 8'b00100001;
  /* find_the_damn_issue_sky130.vhd:10783:54  */
  assign n1283_o = n1280_o & n1282_o;
  /* find_the_damn_issue_sky130.vhd:10783:114  */
  assign n1285_o = n833_o == 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:10783:94  */
  assign n1286_o = n1283_o & n1285_o;
  /* find_the_damn_issue_sky130.vhd:10783:170  */
  assign n1288_o = n900_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:10783:186  */
  assign n1289_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10783:231  */
  assign n1291_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10783:216  */
  assign n1292_o = n1289_o & n1291_o;
  /* find_the_damn_issue_sky130.vhd:10783:242  */
  assign n1293_o = n1292_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10783:178  */
  assign n1294_o = n1288_o & n1293_o;
  /* find_the_damn_issue_sky130.vhd:10783:137  */
  assign n1295_o = n1286_o & n1294_o;
  /* find_the_damn_issue_sky130.vhd:10783:17  */
  assign n1298_o = n1295_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10788:68  */
  assign n1301_o = n831_o == 8'b00100010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1308_o = n1301_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10788:120  */
  assign n1311_o = n830_o == 8'b00100001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1318_o = n1311_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10788:82  */
  assign n1319_o = n1308_o & n1318_o;
  /* find_the_damn_issue_sky130.vhd:10788:168  */
  assign n1322_o = n833_o == 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1329_o = n1322_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10788:135  */
  assign n1330_o = n1319_o & n1329_o;
  /* find_the_damn_issue_sky130.vhd:10788:237  */
  assign n1333_o = n900_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1340_o = n1333_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10788:253  */
  assign n1341_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10788:305  */
  assign n1344_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1351_o = n1344_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10788:277  */
  assign n1352_o = n1341_o & n1351_o;
  /* find_the_damn_issue_sky130.vhd:10788:316  */
  assign n1353_o = n1352_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10788:245  */
  assign n1354_o = n1340_o & n1353_o;
  /* find_the_damn_issue_sky130.vhd:10788:191  */
  assign n1355_o = n1330_o & n1354_o;
  /* find_the_damn_issue_sky130.vhd:10789:17  */
  assign n1356_o = n1355_o ? n836_o : in_unnamed_18;
  /* find_the_damn_issue_sky130.vhd:10794:17  */
  assign n1357_o = n1355_o ? n837_o : in_unnamed_19;
  /* find_the_damn_issue_sky130.vhd:10799:17  */
  assign n1359_o = n1355_o ? 1'b1 : n1298_o;
  /* find_the_damn_issue_sky130.vhd:10804:38  */
  assign n1361_o = n831_o == 8'b00100000;
  /* find_the_damn_issue_sky130.vhd:10804:85  */
  assign n1363_o = n900_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:10804:101  */
  assign n1364_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10804:146  */
  assign n1366_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10804:131  */
  assign n1367_o = n1364_o & n1366_o;
  /* find_the_damn_issue_sky130.vhd:10804:157  */
  assign n1368_o = n1367_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10804:93  */
  assign n1369_o = n1363_o & n1368_o;
  /* find_the_damn_issue_sky130.vhd:10804:52  */
  assign n1370_o = n1361_o & n1369_o;
  /* find_the_damn_issue_sky130.vhd:10804:17  */
  assign n1373_o = n1370_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10809:40  */
  assign n1375_o = n831_o == 8'b00100010;
  /* find_the_damn_issue_sky130.vhd:10809:79  */
  assign n1377_o = n830_o == 8'b00100001;
  /* find_the_damn_issue_sky130.vhd:10809:54  */
  assign n1378_o = n1375_o & n1377_o;
  /* find_the_damn_issue_sky130.vhd:10809:114  */
  assign n1380_o = n833_o == 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:10809:94  */
  assign n1381_o = n1378_o & n1380_o;
  /* find_the_damn_issue_sky130.vhd:10809:170  */
  assign n1383_o = n900_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:10809:186  */
  assign n1384_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10809:231  */
  assign n1386_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10809:216  */
  assign n1387_o = n1384_o & n1386_o;
  /* find_the_damn_issue_sky130.vhd:10809:242  */
  assign n1388_o = n1387_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10809:178  */
  assign n1389_o = n1383_o & n1388_o;
  /* find_the_damn_issue_sky130.vhd:10809:137  */
  assign n1390_o = n1381_o & n1389_o;
  /* find_the_damn_issue_sky130.vhd:10809:17  */
  assign n1392_o = n1390_o ? 1'b1 : n1373_o;
  /* find_the_damn_issue_sky130.vhd:10814:47  */
  assign n1393_o = n1359_o | n1392_o;
  /* find_the_damn_issue_sky130.vhd:10815:106  */
  assign n1396_o = n900_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1403_o = n1396_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10815:122  */
  assign n1404_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10815:174  */
  assign n1407_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1414_o = n1407_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10815:146  */
  assign n1415_o = n1404_o & n1414_o;
  /* find_the_damn_issue_sky130.vhd:10815:185  */
  assign n1416_o = n1415_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10815:114  */
  assign n1417_o = n1403_o & n1416_o;
  /* find_the_damn_issue_sky130.vhd:10815:60  */
  assign n1418_o = n1393_o & n1417_o;
  /* find_the_damn_issue_sky130.vhd:10822:34  */
  assign n1420_o = {8'b00000000, n1178_o};
  /* find_the_damn_issue_sky130.vhd:10822:66  */
  assign n1421_o = $unsigned(n1420_o) > $unsigned(n834_o);
  /* find_the_damn_issue_sky130.vhd:10822:93  */
  assign n1422_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10822:138  */
  assign n1424_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10822:123  */
  assign n1425_o = n1422_o & n1424_o;
  /* find_the_damn_issue_sky130.vhd:10822:149  */
  assign n1426_o = n1425_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10822:85  */
  assign n1427_o = n1421_o & n1426_o;
  /* find_the_damn_issue_sky130.vhd:10823:71  */
  assign n1428_o = s_m_packetdata[55:48];
  /* find_the_damn_issue_sky130.vhd:10822:17  */
  assign n1429_o = n1427_o ? n1428_o : n1178_o;
  /* find_the_damn_issue_sky130.vhd:10828:63  */
  assign n1430_o = s_m_packetdata[35:32];
  /* find_the_damn_issue_sky130.vhd:10829:49  */
  assign n1431_o = s_m_pid[3:2];
  /* find_the_damn_issue_sky130.vhd:10830:226  */
  assign n1433_o = s_m_packetdata[54:48];
  /* find_the_damn_issue_sky130.vhd:10830:241  */
  assign n1434_o = n1433_o == s_unnamed_mux2_5;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1441_o = n1434_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10830:306  */
  assign n1444_o = n1431_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1451_o = n1444_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10830:268  */
  assign n1452_o = ~n1451_o;
  /* find_the_damn_issue_sky130.vhd:10830:352  */
  assign n1455_o = n855_o == 2'b01;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1462_o = n1455_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10830:389  */
  assign n1463_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10830:383  */
  assign n1464_o = s_m_phy_rx_eop_2 & n1463_o;
  /* find_the_damn_issue_sky130.vhd:10830:444  */
  assign n1467_o = s_m_state_2 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1474_o = n1467_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10830:414  */
  assign n1475_o = n1464_o & n1474_o;
  /* find_the_damn_issue_sky130.vhd:10830:360  */
  assign n1476_o = n1462_o & n1475_o;
  /* find_the_damn_issue_sky130.vhd:10830:315  */
  assign n1477_o = n1452_o & n1476_o;
  /* find_the_damn_issue_sky130.vhd:10830:261  */
  assign n1478_o = n1441_o & n1477_o;
  /* find_the_damn_issue_sky130.vhd:10831:63  */
  assign n1479_o = s_m_packetdata[58:55];
  /* find_the_damn_issue_sky130.vhd:10832:17  */
  assign n1480_o = s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken ? s_m_packetdata_2_rewired_2 : s_m_endpoint;
  /* find_the_damn_issue_sky130.vhd:10838:42  */
  assign n1482_o = n1431_o == 2'b11;
  /* find_the_damn_issue_sky130.vhd:10838:74  */
  assign n1484_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10838:84  */
  assign n1485_o = n1484_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10838:50  */
  assign n1486_o = n1482_o & n1485_o;
  /* find_the_damn_issue_sky130.vhd:10838:17  */
  assign n1488_o = n1486_o ? 4'b0001 : s_m_state;
  /* find_the_damn_issue_sky130.vhd:10843:42  */
  assign n1490_o = n1431_o == 2'b11;
  /* find_the_damn_issue_sky130.vhd:10843:74  */
  assign n1492_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10843:84  */
  assign n1493_o = n1492_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10843:50  */
  assign n1494_o = n1490_o & n1493_o;
  /* find_the_damn_issue_sky130.vhd:10844:73  */
  assign n1495_o = s_m_nextindatapid[15:1];
  /* find_the_damn_issue_sky130.vhd:10844:87  */
  assign n1497_o = {n1495_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:10843:17  */
  assign n1498_o = n1494_o ? n1497_o : s_m_nextindatapid;
  /* find_the_damn_issue_sky130.vhd:10848:42  */
  assign n1500_o = n1431_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:10848:74  */
  assign n1502_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10848:84  */
  assign n1503_o = n1502_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10848:50  */
  assign n1504_o = n1500_o & n1503_o;
  /* find_the_damn_issue_sky130.vhd:10848:17  */
  assign n1506_o = n1504_o ? 4'b0100 : n1488_o;
  /* find_the_damn_issue_sky130.vhd:10853:42  */
  assign n1508_o = n1431_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:10853:74  */
  assign n1510_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10853:84  */
  assign n1511_o = n1510_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10853:50  */
  assign n1512_o = n1508_o & n1511_o;
  /* find_the_damn_issue_sky130.vhd:10853:17  */
  assign n1514_o = n1512_o ? 4'b0010 : s_m_senddatastate;
  /* find_the_damn_issue_sky130.vhd:10858:42  */
  assign n1516_o = n1431_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10858:74  */
  assign n1518_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10858:84  */
  assign n1519_o = n1518_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10858:50  */
  assign n1520_o = n1516_o & n1519_o;
  /* find_the_damn_issue_sky130.vhd:10858:17  */
  assign n1522_o = n1520_o ? 4'b0011 : n1506_o;
  /* find_the_damn_issue_sky130.vhd:10863:91  */
  assign n1523_o = s_tx_endpoint == s_m_endpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:10863:70  */
  assign n1524_o = s_tx_valid & n1523_o;
  /* find_the_damn_issue_sky130.vhd:10863:49  */
  assign n1525_o = s_incompletetransfer | n1524_o;
  /* find_the_damn_issue_sky130.vhd:10863:140  */
  assign n1527_o = n1431_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:10863:178  */
  assign n1529_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10863:155  */
  assign n1530_o = ~n1529_o;
  /* find_the_damn_issue_sky130.vhd:10863:189  */
  assign n1531_o = n1530_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10863:148  */
  assign n1532_o = n1527_o & n1531_o;
  /* find_the_damn_issue_sky130.vhd:10863:114  */
  assign n1533_o = n1525_o & n1532_o;
  /* find_the_damn_issue_sky130.vhd:10863:17  */
  assign n1535_o = n1533_o ? 4'b0110 : n1514_o;
  /* find_the_damn_issue_sky130.vhd:10868:91  */
  assign n1536_o = s_tx_endpoint == s_m_endpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:10868:70  */
  assign n1537_o = s_tx_valid & n1536_o;
  /* find_the_damn_issue_sky130.vhd:10868:49  */
  assign n1538_o = s_incompletetransfer | n1537_o;
  /* find_the_damn_issue_sky130.vhd:10868:140  */
  assign n1540_o = n1431_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:10868:178  */
  assign n1542_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10868:155  */
  assign n1543_o = ~n1542_o;
  /* find_the_damn_issue_sky130.vhd:10868:189  */
  assign n1544_o = n1543_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10868:148  */
  assign n1545_o = n1540_o & n1544_o;
  /* find_the_damn_issue_sky130.vhd:10868:114  */
  assign n1546_o = n1538_o & n1545_o;
  /* find_the_damn_issue_sky130.vhd:10868:17  */
  assign n1548_o = n1546_o ? 4'b0100 : n1522_o;
  /* find_the_damn_issue_sky130.vhd:10873:97  */
  assign n1549_o = s_tx_endpoint == s_m_endpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:10873:76  */
  assign n1550_o = s_tx_valid & n1549_o;
  /* find_the_damn_issue_sky130.vhd:10873:55  */
  assign n1551_o = s_incompletetransfer | n1550_o;
  /* find_the_damn_issue_sky130.vhd:10873:23  */
  assign n1552_o = ~n1551_o;
  /* find_the_damn_issue_sky130.vhd:10873:147  */
  assign n1554_o = n1431_o == 2'b10;
  /* find_the_damn_issue_sky130.vhd:10873:185  */
  assign n1556_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10873:162  */
  assign n1557_o = ~n1556_o;
  /* find_the_damn_issue_sky130.vhd:10873:196  */
  assign n1558_o = n1557_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10873:155  */
  assign n1559_o = n1554_o & n1558_o;
  /* find_the_damn_issue_sky130.vhd:10873:121  */
  assign n1560_o = n1552_o & n1559_o;
  /* find_the_damn_issue_sky130.vhd:10873:17  */
  assign n1562_o = n1560_o ? 2'b10 : n657_o;
  /* find_the_damn_issue_sky130.vhd:10878:42  */
  assign n1564_o = n1431_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10878:80  */
  assign n1566_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10878:57  */
  assign n1567_o = ~n1566_o;
  /* find_the_damn_issue_sky130.vhd:10878:91  */
  assign n1568_o = n1567_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:10878:50  */
  assign n1569_o = n1564_o & n1568_o;
  /* find_the_damn_issue_sky130.vhd:10878:17  */
  assign n1571_o = n1569_o ? 4'b0111 : n1548_o;
  /* find_the_damn_issue_sky130.vhd:10883:17  */
  assign n1573_o = n697_o ? 4'b0000 : n1571_o;
  /* find_the_damn_issue_sky130.vhd:10888:24  */
  assign n1574_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10888:69  */
  assign n1576_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10888:54  */
  assign n1577_o = n1574_o & n1576_o;
  /* find_the_damn_issue_sky130.vhd:10888:80  */
  assign n1578_o = n1577_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10888:17  */
  assign n1580_o = n1578_o ? 2'b11 : n1562_o;
  /* find_the_damn_issue_sky130.vhd:10893:38  */
  assign n1582_o = n831_o == 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:10893:85  */
  assign n1584_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10893:101  */
  assign n1585_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10893:146  */
  assign n1587_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10893:131  */
  assign n1588_o = n1585_o & n1587_o;
  /* find_the_damn_issue_sky130.vhd:10893:157  */
  assign n1589_o = n1588_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10893:93  */
  assign n1590_o = n1584_o & n1589_o;
  /* find_the_damn_issue_sky130.vhd:10893:52  */
  assign n1591_o = n1582_o & n1590_o;
  /* find_the_damn_issue_sky130.vhd:10893:17  */
  assign n1593_o = n1591_o ? 2'b01 : n1580_o;
  /* find_the_damn_issue_sky130.vhd:10898:38  */
  assign n1595_o = n831_o == 8'b00000001;
  /* find_the_damn_issue_sky130.vhd:10898:85  */
  assign n1597_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10898:101  */
  assign n1598_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10898:146  */
  assign n1600_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10898:131  */
  assign n1601_o = n1598_o & n1600_o;
  /* find_the_damn_issue_sky130.vhd:10898:157  */
  assign n1602_o = n1601_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10898:93  */
  assign n1603_o = n1597_o & n1602_o;
  /* find_the_damn_issue_sky130.vhd:10898:52  */
  assign n1604_o = n1595_o & n1603_o;
  /* find_the_damn_issue_sky130.vhd:10898:17  */
  assign n1606_o = n1604_o ? 2'b01 : n1593_o;
  /* find_the_damn_issue_sky130.vhd:10903:37  */
  assign n1608_o = n832_o == 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:10903:81  */
  assign n1610_o = n831_o == 8'b00000011;
  /* find_the_damn_issue_sky130.vhd:10903:128  */
  assign n1612_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10903:144  */
  assign n1613_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10903:189  */
  assign n1615_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10903:174  */
  assign n1616_o = n1613_o & n1615_o;
  /* find_the_damn_issue_sky130.vhd:10903:200  */
  assign n1617_o = n1616_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10903:136  */
  assign n1618_o = n1612_o & n1617_o;
  /* find_the_damn_issue_sky130.vhd:10903:95  */
  assign n1619_o = n1610_o & n1618_o;
  /* find_the_damn_issue_sky130.vhd:10903:59  */
  assign n1620_o = n1608_o & n1619_o;
  /* find_the_damn_issue_sky130.vhd:10903:17  */
  assign n1622_o = n1620_o ? 2'b01 : n1606_o;
  /* find_the_damn_issue_sky130.vhd:10908:37  */
  assign n1624_o = n832_o == 16'b0000000100000000;
  /* find_the_damn_issue_sky130.vhd:10908:81  */
  assign n1626_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10908:117  */
  assign n1627_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10908:130  */
  assign n1629_o = n1627_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10908:174  */
  assign n1631_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10908:190  */
  assign n1632_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10908:235  */
  assign n1634_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10908:220  */
  assign n1635_o = n1632_o & n1634_o;
  /* find_the_damn_issue_sky130.vhd:10908:246  */
  assign n1636_o = n1635_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10908:182  */
  assign n1637_o = n1631_o & n1636_o;
  /* find_the_damn_issue_sky130.vhd:10908:141  */
  assign n1638_o = n1629_o & n1637_o;
  /* find_the_damn_issue_sky130.vhd:10908:95  */
  assign n1639_o = n1626_o & n1638_o;
  /* find_the_damn_issue_sky130.vhd:10908:59  */
  assign n1640_o = n1624_o & n1639_o;
  /* find_the_damn_issue_sky130.vhd:10908:17  */
  assign n1642_o = n1640_o ? 2'b01 : n1622_o;
  /* find_the_damn_issue_sky130.vhd:10913:37  */
  assign n1644_o = n832_o == 16'b0000001000000000;
  /* find_the_damn_issue_sky130.vhd:10913:81  */
  assign n1646_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10913:117  */
  assign n1647_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10913:130  */
  assign n1649_o = n1647_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10913:174  */
  assign n1651_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10913:190  */
  assign n1652_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10913:235  */
  assign n1654_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10913:220  */
  assign n1655_o = n1652_o & n1654_o;
  /* find_the_damn_issue_sky130.vhd:10913:246  */
  assign n1656_o = n1655_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10913:182  */
  assign n1657_o = n1651_o & n1656_o;
  /* find_the_damn_issue_sky130.vhd:10913:141  */
  assign n1658_o = n1649_o & n1657_o;
  /* find_the_damn_issue_sky130.vhd:10913:95  */
  assign n1659_o = n1646_o & n1658_o;
  /* find_the_damn_issue_sky130.vhd:10913:59  */
  assign n1660_o = n1644_o & n1659_o;
  /* find_the_damn_issue_sky130.vhd:10913:17  */
  assign n1662_o = n1660_o ? 2'b01 : n1642_o;
  /* find_the_damn_issue_sky130.vhd:10918:37  */
  assign n1664_o = n832_o == 16'b0000001100000000;
  /* find_the_damn_issue_sky130.vhd:10918:81  */
  assign n1666_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10918:117  */
  assign n1667_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10918:130  */
  assign n1669_o = n1667_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10918:174  */
  assign n1671_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10918:190  */
  assign n1672_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10918:235  */
  assign n1674_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10918:220  */
  assign n1675_o = n1672_o & n1674_o;
  /* find_the_damn_issue_sky130.vhd:10918:246  */
  assign n1676_o = n1675_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10918:182  */
  assign n1677_o = n1671_o & n1676_o;
  /* find_the_damn_issue_sky130.vhd:10918:141  */
  assign n1678_o = n1669_o & n1677_o;
  /* find_the_damn_issue_sky130.vhd:10918:95  */
  assign n1679_o = n1666_o & n1678_o;
  /* find_the_damn_issue_sky130.vhd:10918:59  */
  assign n1680_o = n1664_o & n1679_o;
  /* find_the_damn_issue_sky130.vhd:10918:17  */
  assign n1682_o = n1680_o ? 2'b01 : n1662_o;
  /* find_the_damn_issue_sky130.vhd:10923:37  */
  assign n1684_o = n832_o == 16'b0000001100000001;
  /* find_the_damn_issue_sky130.vhd:10923:81  */
  assign n1686_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10923:117  */
  assign n1687_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10923:130  */
  assign n1689_o = n1687_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10923:174  */
  assign n1691_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10923:190  */
  assign n1692_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10923:235  */
  assign n1694_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10923:220  */
  assign n1695_o = n1692_o & n1694_o;
  /* find_the_damn_issue_sky130.vhd:10923:246  */
  assign n1696_o = n1695_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10923:182  */
  assign n1697_o = n1691_o & n1696_o;
  /* find_the_damn_issue_sky130.vhd:10923:141  */
  assign n1698_o = n1689_o & n1697_o;
  /* find_the_damn_issue_sky130.vhd:10923:95  */
  assign n1699_o = n1686_o & n1698_o;
  /* find_the_damn_issue_sky130.vhd:10923:59  */
  assign n1700_o = n1684_o & n1699_o;
  /* find_the_damn_issue_sky130.vhd:10923:17  */
  assign n1702_o = n1700_o ? 2'b01 : n1682_o;
  /* find_the_damn_issue_sky130.vhd:10928:37  */
  assign n1704_o = n832_o == 16'b0000001100000010;
  /* find_the_damn_issue_sky130.vhd:10928:81  */
  assign n1706_o = n831_o == 8'b00000110;
  /* find_the_damn_issue_sky130.vhd:10928:117  */
  assign n1707_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10928:130  */
  assign n1709_o = n1707_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10928:174  */
  assign n1711_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10928:190  */
  assign n1712_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10928:235  */
  assign n1714_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10928:220  */
  assign n1715_o = n1712_o & n1714_o;
  /* find_the_damn_issue_sky130.vhd:10928:246  */
  assign n1716_o = n1715_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10928:182  */
  assign n1717_o = n1711_o & n1716_o;
  /* find_the_damn_issue_sky130.vhd:10928:141  */
  assign n1718_o = n1709_o & n1717_o;
  /* find_the_damn_issue_sky130.vhd:10928:95  */
  assign n1719_o = n1706_o & n1718_o;
  /* find_the_damn_issue_sky130.vhd:10928:59  */
  assign n1720_o = n1704_o & n1719_o;
  /* find_the_damn_issue_sky130.vhd:10928:17  */
  assign n1722_o = n1720_o ? 2'b01 : n1702_o;
  /* find_the_damn_issue_sky130.vhd:10933:38  */
  assign n1724_o = n831_o == 8'b00000101;
  /* find_the_damn_issue_sky130.vhd:10933:74  */
  assign n1725_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10933:87  */
  assign n1727_o = n1725_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10933:131  */
  assign n1729_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10933:147  */
  assign n1730_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10933:192  */
  assign n1732_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10933:177  */
  assign n1733_o = n1730_o & n1732_o;
  /* find_the_damn_issue_sky130.vhd:10933:203  */
  assign n1734_o = n1733_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10933:139  */
  assign n1735_o = n1729_o & n1734_o;
  /* find_the_damn_issue_sky130.vhd:10933:98  */
  assign n1736_o = n1727_o & n1735_o;
  /* find_the_damn_issue_sky130.vhd:10933:52  */
  assign n1737_o = n1724_o & n1736_o;
  /* find_the_damn_issue_sky130.vhd:10933:17  */
  assign n1739_o = n1737_o ? 2'b01 : n1722_o;
  /* find_the_damn_issue_sky130.vhd:10938:38  */
  assign n1741_o = n831_o == 8'b00001000;
  /* find_the_damn_issue_sky130.vhd:10938:74  */
  assign n1742_o = s_m_packetdata[4:0];
  /* find_the_damn_issue_sky130.vhd:10938:87  */
  assign n1744_o = n1742_o == 5'b00000;
  /* find_the_damn_issue_sky130.vhd:10938:131  */
  assign n1746_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:10938:147  */
  assign n1747_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:10938:192  */
  assign n1749_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:10938:177  */
  assign n1750_o = n1747_o & n1749_o;
  /* find_the_damn_issue_sky130.vhd:10938:203  */
  assign n1751_o = n1750_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:10938:139  */
  assign n1752_o = n1746_o & n1751_o;
  /* find_the_damn_issue_sky130.vhd:10938:98  */
  assign n1753_o = n1744_o & n1752_o;
  /* find_the_damn_issue_sky130.vhd:10938:52  */
  assign n1754_o = n1741_o & n1753_o;
  /* find_the_damn_issue_sky130.vhd:10938:17  */
  assign n1756_o = n1754_o ? 2'b01 : n1739_o;
  /* find_the_damn_issue_sky130.vhd:10943:17  */
  assign n1758_o = n1247_o ? 2'b01 : n1756_o;
  /* find_the_damn_issue_sky130.vhd:10948:17  */
  assign n1760_o = n1418_o ? 2'b01 : n1758_o;
  /* find_the_damn_issue_sky130.vhd:10953:17  */
  assign n1761_o = n712_o ? s_m_senddatastate : n1573_o;
  /* find_the_damn_issue_sky130.vhd:10958:50  */
  assign n1763_o = s_m_desclengthactive != 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:10958:86  */
  assign n1765_o = s_m_packetlen != 4'b1000;
  /* find_the_damn_issue_sky130.vhd:10958:65  */
  assign n1766_o = n1763_o & n1765_o;
  /* find_the_damn_issue_sky130.vhd:10958:23  */
  assign n1767_o = ~n1766_o;
  /* find_the_damn_issue_sky130.vhd:10958:116  */
  assign n1769_o = s_m_state_2 == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:10958:99  */
  assign n1770_o = n1767_o & n1769_o;
  /* find_the_damn_issue_sky130.vhd:10958:17  */
  assign n1772_o = n1770_o ? 4'b0000 : n1761_o;
  /* find_the_damn_issue_sky130.vhd:10963:63  */
  assign n1773_o = s_tx_endpoint == s_m_endpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:10963:42  */
  assign n1774_o = s_tx_valid & n1773_o;
  /* find_the_damn_issue_sky130.vhd:10963:91  */
  assign n1775_o = ~s_m_packetlen_2_eq_m_packetlentxlimit;
  /* find_the_damn_issue_sky130.vhd:10963:85  */
  assign n1776_o = n1774_o & n1775_o;
  /* find_the_damn_issue_sky130.vhd:10963:158  */
  assign n1778_o = s_m_state_2 == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:10963:141  */
  assign n1779_o = n1776_o & n1778_o;
  /* find_the_damn_issue_sky130.vhd:10963:17  */
  assign n1781_o = n1779_o ? scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10968:63  */
  assign n1782_o = s_tx_endpoint == s_m_endpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:10968:42  */
  assign n1783_o = s_tx_valid & n1782_o;
  /* find_the_damn_issue_sky130.vhd:10968:91  */
  assign n1784_o = ~s_m_packetlen_2_eq_m_packetlentxlimit;
  /* find_the_damn_issue_sky130.vhd:10968:85  */
  assign n1785_o = n1783_o & n1784_o;
  /* find_the_damn_issue_sky130.vhd:10968:158  */
  assign n1787_o = s_m_state_2 == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:10968:141  */
  assign n1788_o = n1785_o & n1787_o;
  /* find_the_damn_issue_sky130.vhd:10968:17  */
  assign n1790_o = n1788_o ? 1'b1 : n760_o;
  /* find_the_damn_issue_sky130.vhd:10973:198  */
  assign n1792_o = s_tx_endpoint == s_m_endpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1799_o = n1792_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10973:164  */
  assign n1800_o = s_tx_valid & n1799_o;
  /* find_the_damn_issue_sky130.vhd:10973:226  */
  assign n1801_o = ~s_m_packetlen_2_eq_m_packetlentxlimit;
  /* find_the_damn_issue_sky130.vhd:10973:220  */
  assign n1802_o = n1800_o & n1801_o;
  /* find_the_damn_issue_sky130.vhd:10973:145  */
  assign n1803_o = ~n1802_o;
  /* find_the_damn_issue_sky130.vhd:10973:301  */
  assign n1806_o = s_m_state_2 == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n1813_o = n1806_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:10973:271  */
  assign n1814_o = n1803_o & n1813_o;
  /* find_the_damn_issue_sky130.vhd:10974:17  */
  assign n1815_o = s_m_tx_valid_and_m_tx_endpoint_eq_m_endpoint_mux1_and_m_packetlen_2_eq_m_packetlentxlimit_not_not_and_m_state_eq_senddata ? s_m_packetlen : s_m_packetlentxlimit;
  /* find_the_damn_issue_sky130.vhd:10979:40  */
  assign n1817_o = s_m_endpoint_mux1 != 4'b0000;
  /* find_the_damn_issue_sky130.vhd:10979:75  */
  assign n1819_o = s_m_phy_rx_data_2 == 8'b11010010;
  /* find_the_damn_issue_sky130.vhd:10979:115  */
  assign n1820_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:10979:141  */
  assign n1821_o = n1820_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:10979:89  */
  assign n1822_o = n1819_o & n1821_o;
  /* find_the_damn_issue_sky130.vhd:10979:51  */
  assign n1823_o = n1817_o & n1822_o;
  /* find_the_damn_issue_sky130.vhd:10979:17  */
  assign n1825_o = n1823_o ? 4'b1000 : n1815_o;
  /* find_the_damn_issue_sky130.vhd:10984:17  */
  assign n1827_o = s_m_tx_valid_and_m_tx_endpoint_eq_m_endpoint_mux1_and_m_packetlen_2_eq_m_packetlentxlimit_not_not_and_m_state_eq_senddata ? 1'b1 : n829_o;
  /* find_the_damn_issue_sky130.vhd:10990:17  */
  assign n1829_o = s_m_tx_valid_and_m_tx_endpoint_eq_m_endpoint_mux1_and_m_packetlen_2_eq_m_packetlentxlimit_not_not_and_m_state_eq_senddata ? 4'b0000 : n1772_o;
  /* find_the_damn_issue_sky130.vhd:10995:17  */
  assign n1831_o = n723_o ? 2'b01 : n1760_o;
  /* find_the_damn_issue_sky130.vhd:11000:23  */
  assign n1832_o = ~s_m_rxreadyerror_2;
  /* find_the_damn_issue_sky130.vhd:11000:60  */
  assign n1833_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:11000:90  */
  assign n1834_o = n1833_o & n734_o;
  /* find_the_damn_issue_sky130.vhd:11000:53  */
  assign n1835_o = n1832_o & n1834_o;
  /* find_the_damn_issue_sky130.vhd:11000:17  */
  assign n1837_o = n1835_o ? 2'b01 : n1831_o;
  /* find_the_damn_issue_sky130.vhd:11005:29  */
  assign n1838_o = ~s_m_rxreadyerror_2;
  /* find_the_damn_issue_sky130.vhd:11005:23  */
  assign n1839_o = ~n1838_o;
  /* find_the_damn_issue_sky130.vhd:11005:67  */
  assign n1840_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:11005:97  */
  assign n1841_o = n1840_o & n734_o;
  /* find_the_damn_issue_sky130.vhd:11005:60  */
  assign n1842_o = n1839_o & n1841_o;
  /* find_the_damn_issue_sky130.vhd:11005:17  */
  assign n1844_o = n1842_o ? 2'b10 : n1837_o;
  /* find_the_damn_issue_sky130.vhd:11011:24  */
  assign n1845_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:11011:77  */
  assign n1847_o = n855_o == 2'b11;
  /* find_the_damn_issue_sky130.vhd:11011:54  */
  assign n1848_o = n1845_o & n1847_o;
  /* find_the_damn_issue_sky130.vhd:11011:86  */
  assign n1849_o = n1848_o & n745_o;
  /* find_the_damn_issue_sky130.vhd:11011:17  */
  assign n1851_o = n1849_o ? 2'b01 : n1844_o;
  /* find_the_damn_issue_sky130.vhd:11017:38  */
  assign n1853_o = s_m_packetlen != 4'b1111;
  /* find_the_damn_issue_sky130.vhd:11017:108  */
  assign n1854_o = n1790_o & scl_usbgpiophy0_out_unnamed_or_in_valid_mux1_delayed1_not_mux1;
  /* find_the_damn_issue_sky130.vhd:11017:79  */
  assign n1855_o = s_m_phy_rx_valid_2 | n1854_o;
  /* find_the_damn_issue_sky130.vhd:11017:49  */
  assign n1856_o = n1853_o & n1855_o;
  /* find_the_damn_issue_sky130.vhd:11018:66  */
  assign n1858_o = s_m_packetlen + 4'b0001;
  /* find_the_damn_issue_sky130.vhd:11017:17  */
  assign n1859_o = n1856_o ? n1858_o : s_m_packetlen;
  /* find_the_damn_issue_sky130.vhd:11022:46  */
  assign n1860_o = s_m_phy_rx_valid_2 & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:11022:17  */
  assign n1862_o = n1860_o ? 4'b0000 : n1859_o;
  /* find_the_damn_issue_sky130.vhd:11027:33  */
  assign n1864_o = s_m_state_2 == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:11027:17  */
  assign n1866_o = n1864_o ? 4'b0000 : n1862_o;
  /* find_the_damn_issue_sky130.vhd:11038:108  */
  assign n1867_o = n1498_o[15:1];
  /* find_the_damn_issue_sky130.vhd:11038:122  */
  assign n1869_o = {n1867_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11038:25  */
  assign n1871_o = n1430_o == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:11039:108  */
  assign n1872_o = n1498_o[15:2];
  /* find_the_damn_issue_sky130.vhd:11039:122  */
  assign n1874_o = {n1872_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11039:156  */
  assign n1875_o = n1498_o[0];
  /* find_the_damn_issue_sky130.vhd:11039:128  */
  assign n1876_o = {n1874_o, n1875_o};
  /* find_the_damn_issue_sky130.vhd:11039:25  */
  assign n1878_o = n1430_o == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:11040:108  */
  assign n1879_o = n1498_o[15:3];
  /* find_the_damn_issue_sky130.vhd:11040:122  */
  assign n1881_o = {n1879_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11040:156  */
  assign n1882_o = n1498_o[1:0];
  /* find_the_damn_issue_sky130.vhd:11040:128  */
  assign n1883_o = {n1881_o, n1882_o};
  /* find_the_damn_issue_sky130.vhd:11040:25  */
  assign n1885_o = n1430_o == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:11041:108  */
  assign n1886_o = n1498_o[15:4];
  /* find_the_damn_issue_sky130.vhd:11041:122  */
  assign n1888_o = {n1886_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11041:156  */
  assign n1889_o = n1498_o[2:0];
  /* find_the_damn_issue_sky130.vhd:11041:128  */
  assign n1890_o = {n1888_o, n1889_o};
  /* find_the_damn_issue_sky130.vhd:11041:25  */
  assign n1892_o = n1430_o == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:11042:108  */
  assign n1893_o = n1498_o[15:5];
  /* find_the_damn_issue_sky130.vhd:11042:122  */
  assign n1895_o = {n1893_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11042:156  */
  assign n1896_o = n1498_o[3:0];
  /* find_the_damn_issue_sky130.vhd:11042:128  */
  assign n1897_o = {n1895_o, n1896_o};
  /* find_the_damn_issue_sky130.vhd:11042:25  */
  assign n1899_o = n1430_o == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:11043:108  */
  assign n1900_o = n1498_o[15:6];
  /* find_the_damn_issue_sky130.vhd:11043:122  */
  assign n1902_o = {n1900_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11043:156  */
  assign n1903_o = n1498_o[4:0];
  /* find_the_damn_issue_sky130.vhd:11043:128  */
  assign n1904_o = {n1902_o, n1903_o};
  /* find_the_damn_issue_sky130.vhd:11043:25  */
  assign n1906_o = n1430_o == 4'b0101;
  /* find_the_damn_issue_sky130.vhd:11044:108  */
  assign n1907_o = n1498_o[15:7];
  /* find_the_damn_issue_sky130.vhd:11044:122  */
  assign n1909_o = {n1907_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11044:156  */
  assign n1910_o = n1498_o[5:0];
  /* find_the_damn_issue_sky130.vhd:11044:128  */
  assign n1911_o = {n1909_o, n1910_o};
  /* find_the_damn_issue_sky130.vhd:11044:25  */
  assign n1913_o = n1430_o == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:11045:108  */
  assign n1914_o = n1498_o[15:8];
  /* find_the_damn_issue_sky130.vhd:11045:122  */
  assign n1916_o = {n1914_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11045:156  */
  assign n1917_o = n1498_o[6:0];
  /* find_the_damn_issue_sky130.vhd:11045:128  */
  assign n1918_o = {n1916_o, n1917_o};
  /* find_the_damn_issue_sky130.vhd:11045:25  */
  assign n1920_o = n1430_o == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:11046:108  */
  assign n1921_o = n1498_o[15:9];
  /* find_the_damn_issue_sky130.vhd:11046:122  */
  assign n1923_o = {n1921_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11046:156  */
  assign n1924_o = n1498_o[7:0];
  /* find_the_damn_issue_sky130.vhd:11046:128  */
  assign n1925_o = {n1923_o, n1924_o};
  /* find_the_damn_issue_sky130.vhd:11046:25  */
  assign n1927_o = n1430_o == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:11047:108  */
  assign n1928_o = n1498_o[15:10];
  /* find_the_damn_issue_sky130.vhd:11047:123  */
  assign n1930_o = {n1928_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11047:157  */
  assign n1931_o = n1498_o[8:0];
  /* find_the_damn_issue_sky130.vhd:11047:129  */
  assign n1932_o = {n1930_o, n1931_o};
  /* find_the_damn_issue_sky130.vhd:11047:25  */
  assign n1934_o = n1430_o == 4'b1001;
  /* find_the_damn_issue_sky130.vhd:11048:108  */
  assign n1935_o = n1498_o[15:11];
  /* find_the_damn_issue_sky130.vhd:11048:123  */
  assign n1937_o = {n1935_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11048:157  */
  assign n1938_o = n1498_o[9:0];
  /* find_the_damn_issue_sky130.vhd:11048:129  */
  assign n1939_o = {n1937_o, n1938_o};
  /* find_the_damn_issue_sky130.vhd:11048:25  */
  assign n1941_o = n1430_o == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:11049:108  */
  assign n1942_o = n1498_o[15:12];
  /* find_the_damn_issue_sky130.vhd:11049:123  */
  assign n1944_o = {n1942_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11049:157  */
  assign n1945_o = n1498_o[10:0];
  /* find_the_damn_issue_sky130.vhd:11049:129  */
  assign n1946_o = {n1944_o, n1945_o};
  /* find_the_damn_issue_sky130.vhd:11049:25  */
  assign n1948_o = n1430_o == 4'b1011;
  /* find_the_damn_issue_sky130.vhd:11050:108  */
  assign n1949_o = n1498_o[15:13];
  /* find_the_damn_issue_sky130.vhd:11050:123  */
  assign n1951_o = {n1949_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11050:157  */
  assign n1952_o = n1498_o[11:0];
  /* find_the_damn_issue_sky130.vhd:11050:129  */
  assign n1953_o = {n1951_o, n1952_o};
  /* find_the_damn_issue_sky130.vhd:11050:25  */
  assign n1955_o = n1430_o == 4'b1100;
  /* find_the_damn_issue_sky130.vhd:11051:108  */
  assign n1956_o = n1498_o[15:14];
  /* find_the_damn_issue_sky130.vhd:11051:123  */
  assign n1958_o = {n1956_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11051:157  */
  assign n1959_o = n1498_o[12:0];
  /* find_the_damn_issue_sky130.vhd:11051:129  */
  assign n1960_o = {n1958_o, n1959_o};
  /* find_the_damn_issue_sky130.vhd:11051:25  */
  assign n1962_o = n1430_o == 4'b1101;
  /* find_the_damn_issue_sky130.vhd:11052:108  */
  assign n1963_o = n1498_o[15];
  /* find_the_damn_issue_sky130.vhd:11052:123  */
  assign n1965_o = {n1963_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11052:157  */
  assign n1966_o = n1498_o[13:0];
  /* find_the_damn_issue_sky130.vhd:11052:129  */
  assign n1967_o = {n1965_o, n1966_o};
  /* find_the_damn_issue_sky130.vhd:11052:25  */
  assign n1969_o = n1430_o == 4'b1110;
  /* find_the_damn_issue_sky130.vhd:11053:114  */
  assign n1970_o = n1498_o[14:0];
  /* find_the_damn_issue_sky130.vhd:11053:86  */
  assign n1972_o = {1'b0, n1970_o};
  /* find_the_damn_issue_sky130.vhd:11053:25  */
  assign n1974_o = n1430_o == 4'b1111;
  assign n1975_o = {n1974_o, n1969_o, n1962_o, n1955_o, n1948_o, n1941_o, n1934_o, n1927_o, n1920_o, n1913_o, n1906_o, n1899_o, n1892_o, n1885_o, n1878_o, n1871_o};
  /* find_the_damn_issue_sky130.vhd:11037:17  */
  always @*
    case (n1975_o)
      16'b1000000000000000: n1977_o = n1972_o;
      16'b0100000000000000: n1977_o = n1967_o;
      16'b0010000000000000: n1977_o = n1960_o;
      16'b0001000000000000: n1977_o = n1953_o;
      16'b0000100000000000: n1977_o = n1946_o;
      16'b0000010000000000: n1977_o = n1939_o;
      16'b0000001000000000: n1977_o = n1932_o;
      16'b0000000100000000: n1977_o = n1925_o;
      16'b0000000010000000: n1977_o = n1918_o;
      16'b0000000001000000: n1977_o = n1911_o;
      16'b0000000000100000: n1977_o = n1904_o;
      16'b0000000000010000: n1977_o = n1897_o;
      16'b0000000000001000: n1977_o = n1890_o;
      16'b0000000000000100: n1977_o = n1883_o;
      16'b0000000000000010: n1977_o = n1876_o;
      16'b0000000000000001: n1977_o = n1869_o;
      default: n1977_o = 16'bX;
    endcase
  /* find_the_damn_issue_sky130.vhd:11056:37  */
  assign n1978_o = s_m_packetdata[39];
  /* find_the_damn_issue_sky130.vhd:11056:69  */
  assign n1980_o = n832_o == 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:11056:113  */
  assign n1982_o = n831_o == 8'b00000001;
  /* find_the_damn_issue_sky130.vhd:11056:160  */
  assign n1984_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:11056:176  */
  assign n1985_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:11056:221  */
  assign n1987_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:11056:206  */
  assign n1988_o = n1985_o & n1987_o;
  /* find_the_damn_issue_sky130.vhd:11056:232  */
  assign n1989_o = n1988_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:11056:168  */
  assign n1990_o = n1984_o & n1989_o;
  /* find_the_damn_issue_sky130.vhd:11056:127  */
  assign n1991_o = n1982_o & n1990_o;
  /* find_the_damn_issue_sky130.vhd:11056:91  */
  assign n1992_o = n1980_o & n1991_o;
  /* find_the_damn_issue_sky130.vhd:11056:48  */
  assign n1993_o = n1978_o & n1992_o;
  /* find_the_damn_issue_sky130.vhd:11056:17  */
  assign n1994_o = n1993_o ? n1977_o : n1498_o;
  /* find_the_damn_issue_sky130.vhd:11063:113  */
  assign n1995_o = n1994_o[0];
  /* find_the_damn_issue_sky130.vhd:11063:85  */
  assign n1997_o = {15'b000000000000000, n1995_o};
  /* find_the_damn_issue_sky130.vhd:11062:17  */
  assign n1998_o = n1247_o ? n1997_o : n1994_o;
  /* find_the_damn_issue_sky130.vhd:11069:132  */
  assign n1999_o = n1998_o[0];
  /* find_the_damn_issue_sky130.vhd:11069:25  */
  assign n2001_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:11070:132  */
  assign n2002_o = n1998_o[1];
  /* find_the_damn_issue_sky130.vhd:11070:25  */
  assign n2004_o = s_m_endpoint_mux1 == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:11071:132  */
  assign n2005_o = n1998_o[2];
  /* find_the_damn_issue_sky130.vhd:11071:25  */
  assign n2007_o = s_m_endpoint_mux1 == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:11072:132  */
  assign n2008_o = n1998_o[3];
  /* find_the_damn_issue_sky130.vhd:11072:25  */
  assign n2010_o = s_m_endpoint_mux1 == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:11073:132  */
  assign n2011_o = n1998_o[4];
  /* find_the_damn_issue_sky130.vhd:11073:25  */
  assign n2013_o = s_m_endpoint_mux1 == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:11074:132  */
  assign n2014_o = n1998_o[5];
  /* find_the_damn_issue_sky130.vhd:11074:25  */
  assign n2016_o = s_m_endpoint_mux1 == 4'b0101;
  /* find_the_damn_issue_sky130.vhd:11075:132  */
  assign n2017_o = n1998_o[6];
  /* find_the_damn_issue_sky130.vhd:11075:25  */
  assign n2019_o = s_m_endpoint_mux1 == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:11076:132  */
  assign n2020_o = n1998_o[7];
  /* find_the_damn_issue_sky130.vhd:11076:25  */
  assign n2022_o = s_m_endpoint_mux1 == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:11077:132  */
  assign n2023_o = n1998_o[8];
  /* find_the_damn_issue_sky130.vhd:11077:25  */
  assign n2025_o = s_m_endpoint_mux1 == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:11078:132  */
  assign n2026_o = n1998_o[9];
  /* find_the_damn_issue_sky130.vhd:11078:25  */
  assign n2028_o = s_m_endpoint_mux1 == 4'b1001;
  /* find_the_damn_issue_sky130.vhd:11079:132  */
  assign n2029_o = n1998_o[10];
  /* find_the_damn_issue_sky130.vhd:11079:25  */
  assign n2031_o = s_m_endpoint_mux1 == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:11080:132  */
  assign n2032_o = n1998_o[11];
  /* find_the_damn_issue_sky130.vhd:11080:25  */
  assign n2034_o = s_m_endpoint_mux1 == 4'b1011;
  /* find_the_damn_issue_sky130.vhd:11081:132  */
  assign n2035_o = n1998_o[12];
  /* find_the_damn_issue_sky130.vhd:11081:25  */
  assign n2037_o = s_m_endpoint_mux1 == 4'b1100;
  /* find_the_damn_issue_sky130.vhd:11082:132  */
  assign n2038_o = n1998_o[13];
  /* find_the_damn_issue_sky130.vhd:11082:25  */
  assign n2040_o = s_m_endpoint_mux1 == 4'b1101;
  /* find_the_damn_issue_sky130.vhd:11083:132  */
  assign n2041_o = n1998_o[14];
  /* find_the_damn_issue_sky130.vhd:11083:25  */
  assign n2043_o = s_m_endpoint_mux1 == 4'b1110;
  /* find_the_damn_issue_sky130.vhd:11084:132  */
  assign n2044_o = n1998_o[15];
  /* find_the_damn_issue_sky130.vhd:11084:25  */
  assign n2046_o = s_m_endpoint_mux1 == 4'b1111;
  assign n2047_o = {n2046_o, n2043_o, n2040_o, n2037_o, n2034_o, n2031_o, n2028_o, n2025_o, n2022_o, n2019_o, n2016_o, n2013_o, n2010_o, n2007_o, n2004_o, n2001_o};
  /* find_the_damn_issue_sky130.vhd:11068:17  */
  always @*
    case (n2047_o)
      16'b1000000000000000: n2049_o = n2044_o;
      16'b0100000000000000: n2049_o = n2041_o;
      16'b0010000000000000: n2049_o = n2038_o;
      16'b0001000000000000: n2049_o = n2035_o;
      16'b0000100000000000: n2049_o = n2032_o;
      16'b0000010000000000: n2049_o = n2029_o;
      16'b0000001000000000: n2049_o = n2026_o;
      16'b0000000100000000: n2049_o = n2023_o;
      16'b0000000010000000: n2049_o = n2020_o;
      16'b0000000001000000: n2049_o = n2017_o;
      16'b0000000000100000: n2049_o = n2014_o;
      16'b0000000000010000: n2049_o = n2011_o;
      16'b0000000000001000: n2049_o = n2008_o;
      16'b0000000000000100: n2049_o = n2005_o;
      16'b0000000000000010: n2049_o = n2002_o;
      16'b0000000000000001: n2049_o = n1999_o;
      default: n2049_o = 1'bX;
    endcase
  /* find_the_damn_issue_sky130.vhd:11087:129  */
  assign n2051_o = {n2049_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11087:135  */
  assign n2053_o = {n2051_o, 2'b11};
  /* find_the_damn_issue_sky130.vhd:11088:45  */
  assign n2054_o = ~n2053_o;
  /* find_the_damn_issue_sky130.vhd:11088:108  */
  assign n2055_o = {n2054_o, n2053_o};
  /* find_the_damn_issue_sky130.vhd:11088:40  */
  assign n2056_o = s_m_phy_rx_data_2 == n2055_o;
  /* find_the_damn_issue_sky130.vhd:11088:197  */
  assign n2057_o = s_m_phy_rx_sop & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:11088:244  */
  assign n2059_o = s_m_state_2 == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:11088:227  */
  assign n2060_o = n2057_o & n2059_o;
  /* find_the_damn_issue_sky130.vhd:11088:170  */
  assign n2061_o = n2056_o & n2060_o;
  /* find_the_damn_issue_sky130.vhd:11088:17  */
  assign n2063_o = n2061_o ? 4'b1000 : n1829_o;
  /* find_the_damn_issue_sky130.vhd:11093:94  */
  assign n2064_o = n2053_o[3];
  /* find_the_damn_issue_sky130.vhd:11093:33  */
  assign n2065_o = ~n2064_o;
  /* find_the_damn_issue_sky130.vhd:11093:99  */
  assign n2067_o = {n2065_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11093:105  */
  assign n2069_o = {n2067_o, 2'b11};
  /* find_the_damn_issue_sky130.vhd:11094:46  */
  assign n2070_o = ~n2069_o;
  /* find_the_damn_issue_sky130.vhd:11094:61  */
  assign n2071_o = {n2070_o, n2069_o};
  /* find_the_damn_issue_sky130.vhd:11094:40  */
  assign n2072_o = s_m_phy_rx_data_2 != n2071_o;
  /* find_the_damn_issue_sky130.vhd:11094:110  */
  assign n2073_o = ~n2053_o;
  /* find_the_damn_issue_sky130.vhd:11094:173  */
  assign n2074_o = {n2073_o, n2053_o};
  /* find_the_damn_issue_sky130.vhd:11094:105  */
  assign n2075_o = s_m_phy_rx_data_2 == n2074_o;
  /* find_the_damn_issue_sky130.vhd:11094:82  */
  assign n2076_o = ~n2075_o;
  /* find_the_damn_issue_sky130.vhd:11094:263  */
  assign n2077_o = s_m_phy_rx_sop & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:11094:310  */
  assign n2079_o = s_m_state_2 == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:11094:293  */
  assign n2080_o = n2077_o & n2079_o;
  /* find_the_damn_issue_sky130.vhd:11094:236  */
  assign n2081_o = n2076_o & n2080_o;
  /* find_the_damn_issue_sky130.vhd:11094:75  */
  assign n2082_o = n2072_o & n2081_o;
  /* find_the_damn_issue_sky130.vhd:11094:17  */
  assign n2084_o = n2082_o ? 4'b0000 : n2063_o;
  /* find_the_damn_issue_sky130.vhd:11099:17  */
  assign n2086_o = n723_o ? 4'b0000 : n2084_o;
  /* find_the_damn_issue_sky130.vhd:11104:17  */
  assign n2088_o = n734_o ? 4'b0000 : n2086_o;
  /* find_the_damn_issue_sky130.vhd:11109:17  */
  assign n2090_o = n745_o ? 4'b0000 : n2088_o;
  /* find_the_damn_issue_sky130.vhd:11116:36  */
  assign n2092_o = s_m_senddatastate_mux8 == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:11116:17  */
  assign n2093_o = n2092_o ? s_m_descaddressactive_mux9 : s_m_descaddressactive_mux1;
  /* find_the_damn_issue_sky130.vhd:11121:36  */
  assign n2095_o = s_m_senddatastate_mux8 == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:11121:17  */
  assign n2096_o = n2095_o ? s_m_desclengthactive_mux11 : n805_o;
  /* find_the_damn_issue_sky130.vhd:11130:126  */
  assign n2099_o = s_m_packetdata_2_rewired_2 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2106_o = n2099_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11130:83  */
  assign n2108_o = {15'b000000000000000, n2106_o};
  /* find_the_damn_issue_sky130.vhd:11131:150  */
  assign n2109_o = n2108_o[15:2];
  /* find_the_damn_issue_sky130.vhd:11131:207  */
  assign n2112_o = s_m_packetdata_2_rewired_2 == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2119_o = n2112_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11131:164  */
  assign n2120_o = {n2109_o, n2119_o};
  /* find_the_damn_issue_sky130.vhd:11131:262  */
  assign n2121_o = n2108_o[0];
  /* find_the_damn_issue_sky130.vhd:11131:217  */
  assign n2122_o = {n2120_o, n2121_o};
  /* find_the_damn_issue_sky130.vhd:11132:234  */
  assign n2123_o = n2122_o[15:3];
  /* find_the_damn_issue_sky130.vhd:11132:291  */
  assign n2126_o = s_m_packetdata_2_rewired_2 == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2133_o = n2126_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11132:248  */
  assign n2134_o = {n2123_o, n2133_o};
  /* find_the_damn_issue_sky130.vhd:11132:388  */
  assign n2135_o = n2122_o[1:0];
  /* find_the_damn_issue_sky130.vhd:11132:301  */
  assign n2136_o = {n2134_o, n2135_o};
  /* find_the_damn_issue_sky130.vhd:11133:318  */
  assign n2137_o = n2136_o[15:4];
  /* find_the_damn_issue_sky130.vhd:11133:375  */
  assign n2140_o = s_m_packetdata_2_rewired_2 == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2147_o = n2140_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11133:332  */
  assign n2148_o = {n2137_o, n2147_o};
  /* find_the_damn_issue_sky130.vhd:11133:514  */
  assign n2149_o = n2136_o[2:0];
  /* find_the_damn_issue_sky130.vhd:11133:385  */
  assign n2150_o = {n2148_o, n2149_o};
  /* find_the_damn_issue_sky130.vhd:11134:202  */
  assign n2151_o = n2150_o[15:5];
  /* find_the_damn_issue_sky130.vhd:11134:259  */
  assign n2154_o = s_m_packetdata_2_rewired_2 == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2161_o = n2154_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11134:216  */
  assign n2162_o = {n2151_o, n2161_o};
  /* find_the_damn_issue_sky130.vhd:11134:440  */
  assign n2163_o = n2150_o[3:0];
  /* find_the_damn_issue_sky130.vhd:11134:269  */
  assign n2164_o = {n2162_o, n2163_o};
  /* find_the_damn_issue_sky130.vhd:11135:84  */
  assign n2165_o = n2164_o[15:6];
  /* find_the_damn_issue_sky130.vhd:11135:141  */
  assign n2168_o = s_m_packetdata_2_rewired_2 == 4'b0101;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2175_o = n2168_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11135:98  */
  assign n2176_o = {n2165_o, n2175_o};
  /* find_the_damn_issue_sky130.vhd:11135:164  */
  assign n2177_o = n2164_o[4:0];
  /* find_the_damn_issue_sky130.vhd:11135:151  */
  assign n2178_o = {n2176_o, n2177_o};
  /* find_the_damn_issue_sky130.vhd:11136:166  */
  assign n2179_o = n2178_o[15:7];
  /* find_the_damn_issue_sky130.vhd:11136:223  */
  assign n2182_o = s_m_packetdata_2_rewired_2 == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2189_o = n2182_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11136:180  */
  assign n2190_o = {n2179_o, n2189_o};
  /* find_the_damn_issue_sky130.vhd:11136:286  */
  assign n2191_o = n2178_o[5:0];
  /* find_the_damn_issue_sky130.vhd:11136:233  */
  assign n2192_o = {n2190_o, n2191_o};
  /* find_the_damn_issue_sky130.vhd:11137:250  */
  assign n2193_o = n2192_o[15:8];
  /* find_the_damn_issue_sky130.vhd:11137:307  */
  assign n2196_o = s_m_packetdata_2_rewired_2 == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2203_o = n2196_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11137:264  */
  assign n2204_o = {n2193_o, n2203_o};
  /* find_the_damn_issue_sky130.vhd:11137:412  */
  assign n2205_o = n2192_o[6:0];
  /* find_the_damn_issue_sky130.vhd:11137:317  */
  assign n2206_o = {n2204_o, n2205_o};
  /* find_the_damn_issue_sky130.vhd:11138:334  */
  assign n2207_o = n2206_o[15:9];
  /* find_the_damn_issue_sky130.vhd:11138:391  */
  assign n2210_o = s_m_packetdata_2_rewired_2 == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2217_o = n2210_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11138:348  */
  assign n2218_o = {n2207_o, n2217_o};
  /* find_the_damn_issue_sky130.vhd:11138:538  */
  assign n2219_o = n2206_o[7:0];
  /* find_the_damn_issue_sky130.vhd:11138:401  */
  assign n2220_o = {n2218_o, n2219_o};
  /* find_the_damn_issue_sky130.vhd:11139:210  */
  assign n2221_o = n2220_o[15:10];
  /* find_the_damn_issue_sky130.vhd:11139:268  */
  assign n2224_o = s_m_packetdata_2_rewired_2 == 4'b1001;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2231_o = n2224_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11139:225  */
  assign n2232_o = {n2221_o, n2231_o};
  /* find_the_damn_issue_sky130.vhd:11139:457  */
  assign n2233_o = n2220_o[8:0];
  /* find_the_damn_issue_sky130.vhd:11139:278  */
  assign n2234_o = {n2232_o, n2233_o};
  /* find_the_damn_issue_sky130.vhd:11140:85  */
  assign n2235_o = n2234_o[15:11];
  /* find_the_damn_issue_sky130.vhd:11140:143  */
  assign n2238_o = s_m_packetdata_2_rewired_2 == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2245_o = n2238_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11140:100  */
  assign n2246_o = {n2235_o, n2245_o};
  /* find_the_damn_issue_sky130.vhd:11140:166  */
  assign n2247_o = n2234_o[9:0];
  /* find_the_damn_issue_sky130.vhd:11140:153  */
  assign n2248_o = {n2246_o, n2247_o};
  /* find_the_damn_issue_sky130.vhd:11141:169  */
  assign n2249_o = n2248_o[15:12];
  /* find_the_damn_issue_sky130.vhd:11141:227  */
  assign n2252_o = s_m_packetdata_2_rewired_2 == 4'b1011;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2259_o = n2252_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11141:184  */
  assign n2260_o = {n2249_o, n2259_o};
  /* find_the_damn_issue_sky130.vhd:11141:291  */
  assign n2261_o = n2248_o[10:0];
  /* find_the_damn_issue_sky130.vhd:11141:237  */
  assign n2262_o = {n2260_o, n2261_o};
  /* find_the_damn_issue_sky130.vhd:11142:255  */
  assign n2263_o = n2262_o[15:13];
  /* find_the_damn_issue_sky130.vhd:11142:313  */
  assign n2266_o = s_m_packetdata_2_rewired_2 == 4'b1100;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2273_o = n2266_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11142:270  */
  assign n2274_o = {n2263_o, n2273_o};
  /* find_the_damn_issue_sky130.vhd:11142:420  */
  assign n2275_o = n2262_o[11:0];
  /* find_the_damn_issue_sky130.vhd:11142:323  */
  assign n2276_o = {n2274_o, n2275_o};
  /* find_the_damn_issue_sky130.vhd:11143:341  */
  assign n2277_o = n2276_o[15:14];
  /* find_the_damn_issue_sky130.vhd:11143:399  */
  assign n2280_o = s_m_packetdata_2_rewired_2 == 4'b1101;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2287_o = n2280_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11143:356  */
  assign n2288_o = {n2277_o, n2287_o};
  /* find_the_damn_issue_sky130.vhd:11143:549  */
  assign n2289_o = n2276_o[12:0];
  /* find_the_damn_issue_sky130.vhd:11143:409  */
  assign n2290_o = {n2288_o, n2289_o};
  /* find_the_damn_issue_sky130.vhd:11144:214  */
  assign n2291_o = n2290_o[15];
  /* find_the_damn_issue_sky130.vhd:11144:272  */
  assign n2294_o = s_m_packetdata_2_rewired_2 == 4'b1110;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2301_o = n2294_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11144:229  */
  assign n2302_o = {n2291_o, n2301_o};
  /* find_the_damn_issue_sky130.vhd:11144:465  */
  assign n2303_o = n2290_o[13:0];
  /* find_the_damn_issue_sky130.vhd:11144:282  */
  assign n2304_o = {n2302_o, n2303_o};
  /* find_the_damn_issue_sky130.vhd:11145:115  */
  assign n2307_o = s_m_packetdata_2_rewired_2 == 4'b1111;
  /* find_the_damn_issue_sky130.vhd:24:17  */
  assign n2314_o = n2307_o ? 1'b1 : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11145:138  */
  assign n2315_o = n2304_o[14:0];
  /* find_the_damn_issue_sky130.vhd:11145:125  */
  assign n2316_o = {n2314_o, n2315_o};
  /* find_the_damn_issue_sky130.vhd:11146:17  */
  assign n2317_o = s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken ? s_unnamed_m_packetdata_2_rewired_eq_const_15_rewired : s_m_endpointmask;
  /* find_the_damn_issue_sky130.vhd:11151:40  */
  assign n2319_o = s_m_phy_rx_data_2 == 8'b11010010;
  /* find_the_damn_issue_sky130.vhd:11151:80  */
  assign n2320_o = s_ackexpected & s_m_phy_rx_sop;
  /* find_the_damn_issue_sky130.vhd:11151:106  */
  assign n2321_o = n2320_o & s_m_phy_rx_valid_2;
  /* find_the_damn_issue_sky130.vhd:11151:54  */
  assign n2322_o = n2319_o & n2321_o;
  /* find_the_damn_issue_sky130.vhd:11152:76  */
  assign n2323_o = s_m_nextoutdatapid ^ n2317_o;
  /* find_the_damn_issue_sky130.vhd:11151:17  */
  assign n2324_o = n2322_o ? n2323_o : s_m_nextoutdatapid;
  /* find_the_damn_issue_sky130.vhd:11157:23  */
  assign n2325_o = ~s_m_rxreadyerror_2;
  /* find_the_damn_issue_sky130.vhd:11157:60  */
  assign n2326_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:11157:90  */
  assign n2327_o = n2326_o & n734_o;
  /* find_the_damn_issue_sky130.vhd:11157:53  */
  assign n2328_o = n2325_o & n2327_o;
  /* find_the_damn_issue_sky130.vhd:11158:131  */
  assign n2329_o = n1998_o ^ n2317_o;
  /* find_the_damn_issue_sky130.vhd:11157:17  */
  assign n2330_o = n2328_o ? n2329_o : n1998_o;
  /* find_the_damn_issue_sky130.vhd:11164:42  */
  assign n2332_o = n1431_o == 2'b11;
  /* find_the_damn_issue_sky130.vhd:11164:74  */
  assign n2334_o = s_m_endpoint_mux1 == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:11164:84  */
  assign n2335_o = n2334_o & s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken;
  /* find_the_damn_issue_sky130.vhd:11164:50  */
  assign n2336_o = n2332_o & n2335_o;
  /* find_the_damn_issue_sky130.vhd:11165:131  */
  assign n2337_o = n2324_o[15:1];
  /* find_the_damn_issue_sky130.vhd:11165:145  */
  assign n2339_o = {n2337_o, 1'b1};
  /* find_the_damn_issue_sky130.vhd:11164:17  */
  assign n2340_o = n2336_o ? n2339_o : n2324_o;
  /* find_the_damn_issue_sky130.vhd:11171:108  */
  assign n2341_o = n2340_o[15:1];
  /* find_the_damn_issue_sky130.vhd:11171:122  */
  assign n2343_o = {n2341_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11171:25  */
  assign n2345_o = n1430_o == 4'b0000;
  /* find_the_damn_issue_sky130.vhd:11172:108  */
  assign n2346_o = n2340_o[15:2];
  /* find_the_damn_issue_sky130.vhd:11172:122  */
  assign n2348_o = {n2346_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11172:155  */
  assign n2349_o = n2340_o[0];
  /* find_the_damn_issue_sky130.vhd:11172:128  */
  assign n2350_o = {n2348_o, n2349_o};
  /* find_the_damn_issue_sky130.vhd:11172:25  */
  assign n2352_o = n1430_o == 4'b0001;
  /* find_the_damn_issue_sky130.vhd:11173:108  */
  assign n2353_o = n2340_o[15:3];
  /* find_the_damn_issue_sky130.vhd:11173:122  */
  assign n2355_o = {n2353_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11173:155  */
  assign n2356_o = n2340_o[1:0];
  /* find_the_damn_issue_sky130.vhd:11173:128  */
  assign n2357_o = {n2355_o, n2356_o};
  /* find_the_damn_issue_sky130.vhd:11173:25  */
  assign n2359_o = n1430_o == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:11174:108  */
  assign n2360_o = n2340_o[15:4];
  /* find_the_damn_issue_sky130.vhd:11174:122  */
  assign n2362_o = {n2360_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11174:155  */
  assign n2363_o = n2340_o[2:0];
  /* find_the_damn_issue_sky130.vhd:11174:128  */
  assign n2364_o = {n2362_o, n2363_o};
  /* find_the_damn_issue_sky130.vhd:11174:25  */
  assign n2366_o = n1430_o == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:11175:108  */
  assign n2367_o = n2340_o[15:5];
  /* find_the_damn_issue_sky130.vhd:11175:122  */
  assign n2369_o = {n2367_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11175:155  */
  assign n2370_o = n2340_o[3:0];
  /* find_the_damn_issue_sky130.vhd:11175:128  */
  assign n2371_o = {n2369_o, n2370_o};
  /* find_the_damn_issue_sky130.vhd:11175:25  */
  assign n2373_o = n1430_o == 4'b0100;
  /* find_the_damn_issue_sky130.vhd:11176:108  */
  assign n2374_o = n2340_o[15:6];
  /* find_the_damn_issue_sky130.vhd:11176:122  */
  assign n2376_o = {n2374_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11176:155  */
  assign n2377_o = n2340_o[4:0];
  /* find_the_damn_issue_sky130.vhd:11176:128  */
  assign n2378_o = {n2376_o, n2377_o};
  /* find_the_damn_issue_sky130.vhd:11176:25  */
  assign n2380_o = n1430_o == 4'b0101;
  /* find_the_damn_issue_sky130.vhd:11177:108  */
  assign n2381_o = n2340_o[15:7];
  /* find_the_damn_issue_sky130.vhd:11177:122  */
  assign n2383_o = {n2381_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11177:155  */
  assign n2384_o = n2340_o[5:0];
  /* find_the_damn_issue_sky130.vhd:11177:128  */
  assign n2385_o = {n2383_o, n2384_o};
  /* find_the_damn_issue_sky130.vhd:11177:25  */
  assign n2387_o = n1430_o == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:11178:108  */
  assign n2388_o = n2340_o[15:8];
  /* find_the_damn_issue_sky130.vhd:11178:122  */
  assign n2390_o = {n2388_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11178:155  */
  assign n2391_o = n2340_o[6:0];
  /* find_the_damn_issue_sky130.vhd:11178:128  */
  assign n2392_o = {n2390_o, n2391_o};
  /* find_the_damn_issue_sky130.vhd:11178:25  */
  assign n2394_o = n1430_o == 4'b0111;
  /* find_the_damn_issue_sky130.vhd:11179:108  */
  assign n2395_o = n2340_o[15:9];
  /* find_the_damn_issue_sky130.vhd:11179:122  */
  assign n2397_o = {n2395_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11179:155  */
  assign n2398_o = n2340_o[7:0];
  /* find_the_damn_issue_sky130.vhd:11179:128  */
  assign n2399_o = {n2397_o, n2398_o};
  /* find_the_damn_issue_sky130.vhd:11179:25  */
  assign n2401_o = n1430_o == 4'b1000;
  /* find_the_damn_issue_sky130.vhd:11180:108  */
  assign n2402_o = n2340_o[15:10];
  /* find_the_damn_issue_sky130.vhd:11180:123  */
  assign n2404_o = {n2402_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11180:156  */
  assign n2405_o = n2340_o[8:0];
  /* find_the_damn_issue_sky130.vhd:11180:129  */
  assign n2406_o = {n2404_o, n2405_o};
  /* find_the_damn_issue_sky130.vhd:11180:25  */
  assign n2408_o = n1430_o == 4'b1001;
  /* find_the_damn_issue_sky130.vhd:11181:108  */
  assign n2409_o = n2340_o[15:11];
  /* find_the_damn_issue_sky130.vhd:11181:123  */
  assign n2411_o = {n2409_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11181:156  */
  assign n2412_o = n2340_o[9:0];
  /* find_the_damn_issue_sky130.vhd:11181:129  */
  assign n2413_o = {n2411_o, n2412_o};
  /* find_the_damn_issue_sky130.vhd:11181:25  */
  assign n2415_o = n1430_o == 4'b1010;
  /* find_the_damn_issue_sky130.vhd:11182:108  */
  assign n2416_o = n2340_o[15:12];
  /* find_the_damn_issue_sky130.vhd:11182:123  */
  assign n2418_o = {n2416_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11182:156  */
  assign n2419_o = n2340_o[10:0];
  /* find_the_damn_issue_sky130.vhd:11182:129  */
  assign n2420_o = {n2418_o, n2419_o};
  /* find_the_damn_issue_sky130.vhd:11182:25  */
  assign n2422_o = n1430_o == 4'b1011;
  /* find_the_damn_issue_sky130.vhd:11183:108  */
  assign n2423_o = n2340_o[15:13];
  /* find_the_damn_issue_sky130.vhd:11183:123  */
  assign n2425_o = {n2423_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11183:156  */
  assign n2426_o = n2340_o[11:0];
  /* find_the_damn_issue_sky130.vhd:11183:129  */
  assign n2427_o = {n2425_o, n2426_o};
  /* find_the_damn_issue_sky130.vhd:11183:25  */
  assign n2429_o = n1430_o == 4'b1100;
  /* find_the_damn_issue_sky130.vhd:11184:108  */
  assign n2430_o = n2340_o[15:14];
  /* find_the_damn_issue_sky130.vhd:11184:123  */
  assign n2432_o = {n2430_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11184:156  */
  assign n2433_o = n2340_o[12:0];
  /* find_the_damn_issue_sky130.vhd:11184:129  */
  assign n2434_o = {n2432_o, n2433_o};
  /* find_the_damn_issue_sky130.vhd:11184:25  */
  assign n2436_o = n1430_o == 4'b1101;
  /* find_the_damn_issue_sky130.vhd:11185:108  */
  assign n2437_o = n2340_o[15];
  /* find_the_damn_issue_sky130.vhd:11185:123  */
  assign n2439_o = {n2437_o, 1'b0};
  /* find_the_damn_issue_sky130.vhd:11185:156  */
  assign n2440_o = n2340_o[13:0];
  /* find_the_damn_issue_sky130.vhd:11185:129  */
  assign n2441_o = {n2439_o, n2440_o};
  /* find_the_damn_issue_sky130.vhd:11185:25  */
  assign n2443_o = n1430_o == 4'b1110;
  /* find_the_damn_issue_sky130.vhd:11186:114  */
  assign n2444_o = n2340_o[14:0];
  /* find_the_damn_issue_sky130.vhd:11186:87  */
  assign n2446_o = {1'b0, n2444_o};
  /* find_the_damn_issue_sky130.vhd:11186:25  */
  assign n2448_o = n1430_o == 4'b1111;
  assign n2449_o = {n2448_o, n2443_o, n2436_o, n2429_o, n2422_o, n2415_o, n2408_o, n2401_o, n2394_o, n2387_o, n2380_o, n2373_o, n2366_o, n2359_o, n2352_o, n2345_o};
  /* find_the_damn_issue_sky130.vhd:11170:17  */
  always @*
    case (n2449_o)
      16'b1000000000000000: n2451_o = n2446_o;
      16'b0100000000000000: n2451_o = n2441_o;
      16'b0010000000000000: n2451_o = n2434_o;
      16'b0001000000000000: n2451_o = n2427_o;
      16'b0000100000000000: n2451_o = n2420_o;
      16'b0000010000000000: n2451_o = n2413_o;
      16'b0000001000000000: n2451_o = n2406_o;
      16'b0000000100000000: n2451_o = n2399_o;
      16'b0000000010000000: n2451_o = n2392_o;
      16'b0000000001000000: n2451_o = n2385_o;
      16'b0000000000100000: n2451_o = n2378_o;
      16'b0000000000010000: n2451_o = n2371_o;
      16'b0000000000001000: n2451_o = n2364_o;
      16'b0000000000000100: n2451_o = n2357_o;
      16'b0000000000000010: n2451_o = n2350_o;
      16'b0000000000000001: n2451_o = n2343_o;
      default: n2451_o = 16'bX;
    endcase
  /* find_the_damn_issue_sky130.vhd:11189:43  */
  assign n2452_o = s_m_packetdata[39];
  /* find_the_damn_issue_sky130.vhd:11189:23  */
  assign n2453_o = ~n2452_o;
  /* find_the_damn_issue_sky130.vhd:11189:76  */
  assign n2455_o = n832_o == 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:11189:120  */
  assign n2457_o = n831_o == 8'b00000001;
  /* find_the_damn_issue_sky130.vhd:11189:167  */
  assign n2459_o = n900_o == 2'b00;
  /* find_the_damn_issue_sky130.vhd:11189:183  */
  assign n2460_o = ~s_m_phy_rx_error_2;
  /* find_the_damn_issue_sky130.vhd:11189:228  */
  assign n2462_o = s_m_pid == 4'b0011;
  /* find_the_damn_issue_sky130.vhd:11189:213  */
  assign n2463_o = n2460_o & n2462_o;
  /* find_the_damn_issue_sky130.vhd:11189:239  */
  assign n2464_o = n2463_o & n697_o;
  /* find_the_damn_issue_sky130.vhd:11189:175  */
  assign n2465_o = n2459_o & n2464_o;
  /* find_the_damn_issue_sky130.vhd:11189:134  */
  assign n2466_o = n2457_o & n2465_o;
  /* find_the_damn_issue_sky130.vhd:11189:98  */
  assign n2467_o = n2455_o & n2466_o;
  /* find_the_damn_issue_sky130.vhd:11189:55  */
  assign n2468_o = n2453_o & n2467_o;
  /* find_the_damn_issue_sky130.vhd:11189:17  */
  assign n2469_o = n2468_o ? n2451_o : n2340_o;
  /* find_the_damn_issue_sky130.vhd:11196:179  */
  assign n2470_o = n2469_o[0];
  /* find_the_damn_issue_sky130.vhd:11196:118  */
  assign n2472_o = {15'b000000000000000, n2470_o};
  /* find_the_damn_issue_sky130.vhd:11195:17  */
  assign n2473_o = n1247_o ? n2472_o : n2469_o;
  /* find_the_damn_issue_sky130.vhd:11201:94  */
  assign n2474_o = s_m_nextoutdatapid_2_xor_m_endpointmask_mux2_rewired_mux2_rewired_mux1 & n2317_o;
  /* find_the_damn_issue_sky130.vhd:11201:123  */
  assign n2476_o = n2474_o != 16'b0000000000000000;
  /* find_the_damn_issue_sky130.vhd:11201:146  */
  assign n2477_o = n2476_o & n707_o;
  /* find_the_damn_issue_sky130.vhd:11201:17  */
  assign n2479_o = n2477_o ? 8'b01001011 : n711_o;
  /* find_the_damn_issue_sky130.vhd:11206:44  */
  assign n2481_o = s_m_desclengthactive != 8'b00000000;
  /* find_the_damn_issue_sky130.vhd:11206:80  */
  assign n2483_o = s_m_packetlen != 4'b1000;
  /* find_the_damn_issue_sky130.vhd:11206:59  */
  assign n2484_o = n2481_o & n2483_o;
  /* find_the_damn_issue_sky130.vhd:11206:109  */
  assign n2486_o = s_m_state_2 == 4'b0010;
  /* find_the_damn_issue_sky130.vhd:11206:92  */
  assign n2487_o = n2484_o & n2486_o;
  /* find_the_damn_issue_sky130.vhd:11206:17  */
  assign n2488_o = n2487_o ? s_m_descdata : n2479_o;
  /* find_the_damn_issue_sky130.vhd:11211:63  */
  assign n2489_o = s_tx_endpoint == s_m_endpoint_mux1;
  /* find_the_damn_issue_sky130.vhd:11211:42  */
  assign n2490_o = s_tx_valid & n2489_o;
  /* find_the_damn_issue_sky130.vhd:11211:91  */
  assign n2491_o = ~s_m_packetlen_2_eq_m_packetlentxlimit;
  /* find_the_damn_issue_sky130.vhd:11211:85  */
  assign n2492_o = n2490_o & n2491_o;
  /* find_the_damn_issue_sky130.vhd:11211:158  */
  assign n2494_o = s_m_state_2 == 4'b0110;
  /* find_the_damn_issue_sky130.vhd:11211:141  */
  assign n2495_o = n2492_o & n2494_o;
  /* find_the_damn_issue_sky130.vhd:11211:17  */
  assign n2496_o = n2495_o ? s_tx_data : n2488_o;
  /* find_the_damn_issue_sky130.vhd:11251:27  */
  assign n2561_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:11282:9  */
  functionreset functionreset0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_m_address_2),
    .in_unnamed_2(s_m_configuration_2),
    .in_unnamed_3(s_m_newaddress_2),
    .in_unnamed_4(s_m_rxstatus_linestate_2),
    .in_unnamed_5(s_m_rxstatus_sessend_2),
    .out_unnamed_mux1(functionreset0_out_unnamed_mux1),
    .out_unnamed_mux1_2(functionreset0_out_unnamed_mux1_2),
    .out_unnamed_mux1_3(functionreset0_out_unnamed_mux1_3));
  /* find_the_damn_issue_sky130.vhd:11294:9  */
  scl_memory scl_memory0 (
    .clk(clk),
    .in_unnamed(s_m_descaddressactive_mux1),
    .out_unnamed_2(scl_memory0_out_unnamed_2));
  /* find_the_damn_issue_sky130.vhd:11299:9  */
  rxstream rxstream0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_m_rx_ready(s_unnamed_not_mux1_3),
    .in_unnamed(s_m_rx_eop_2),
    .in_unnamed_2(s_m_rxreadyerror_2),
    .in_unnamed_3(s_m_state_2),
    .in_unnamed_4(s_m_phy_rx_valid_2),
    .in_unnamed_5(s_m_phy_rx_eop_2),
    .in_unnamed_6(s_m_phy_rx_error_2),
    .in_m_rx_data(s_m_phy_rx_data_2),
    .in_m_rx_endpoint(s_m_endpoint_mux1),
    .in_unnamed_7(s_m_configuration_3),
    .out_m_rxreadyerror(rxstream0_out_m_rxreadyerror),
    .out_const_1(rxstream0_out_const_1),
    .out_m_rx_valid(rxstream0_out_m_rx_valid),
    .out_m_rx_endpoint_2(rxstream0_out_m_rx_endpoint_2),
    .out_m_rx_data_2(rxstream0_out_m_rx_data_2),
    .out_m_rx_eop(rxstream0_out_m_rx_eop),
    .out_m_rx_error(rxstream0_out_m_rx_error));
  /* find_the_damn_issue_sky130.vhd:11320:9  */
  rxfifointerface rxfifointerface0 (
    .in_unnamed(s_m_endpoint_mux1),
    .in_unnamed_2(s_unnamed_36),
    .in_unnamed_3(s_m_rx_valid_2),
    .in_unnamed_4(s_m_rx_endpoint),
    .in_unnamed_5(s_m_rx_data_2),
    .in_unnamed_6(s_m_rx_eop_3),
    .in_unnamed_7(s_m_rx_error_2),
    .in_unnamed_8(s_unnamed_55),
    .in_unnamed_9(s_unnamed_56),
    .in_unnamed_10(s_unnamed_57),
    .in_unnamed_11(s_unnamed_58),
    .in_unnamed_12(s_unnamed_59),
    .in_unnamed_13(s_unnamed_60),
    .out_unnamed_not_mux1(rxfifointerface0_out_unnamed_not_mux1),
    .out_unnamed_not_mux1_2(rxfifointerface0_out_unnamed_not_mux1_2),
    .out_unnamed_mux1(rxfifointerface0_out_unnamed_mux1),
    .out_unnamed_mux1_2(rxfifointerface0_out_unnamed_mux1_2),
    .out_const_0_mux1(rxfifointerface0_out_const_0_mux1),
    .out_unnamed_mux2(rxfifointerface0_out_unnamed_mux2),
    .out_const_10_mux1(rxfifointerface0_out_const_10_mux1));
  /* find_the_damn_issue_sky130.vhd:11342:9  */
  txfifointerface txfifointerface0 (
    .in_unnamed(s_m_endpoint_mux1),
    .in_unnamed_2(s_m_tx_commit),
    .in_unnamed_3(s_m_tx_rollback),
    .in_tx_ready(s_m_tx_ready),
    .in_unnamed_4(s_unnamed_33),
    .in_unnamed_5(s_unnamed_34),
    .in_unnamed_6(s_unnamed_35),
    .in_unnamed_7(in_unnamed_28),
    .in_unnamed_8(in_unnamed_29),
    .in_unnamed_9(s_unnamed_52),
    .in_unnamed_10(s_unnamed_53),
    .in_unnamed_11(s_unnamed_54),
    .out_unnamed_not_mux1(txfifointerface0_out_unnamed_not_mux1),
    .out_unnamed_mux2(txfifointerface0_out_unnamed_mux2),
    .out_const_0_mux1(txfifointerface0_out_const_0_mux1),
    .out_tx_ready_2(),
    .out_tx_valid(txfifointerface0_out_tx_valid),
    .out_tx_endpoint(txfifointerface0_out_tx_endpoint),
    .out_tx_data(txfifointerface0_out_tx_data),
    .out_unnamed_mux2_2(txfifointerface0_out_unnamed_mux2_2));
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2627_q <= s_m_rx_error;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2628_q <= 1'b0;
    else
      n2628_q <= s_m_rx_eop;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2629_q <= s_m_rx_data;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2630_q <= s_m_rx_sop;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2631_q <= 1'b0;
    else
      n2631_q <= s_m_rx_valid;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2632_q <= s_m_status_sessend;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2633_q <= scl_usbgpiophy0_out_m_status_linestate;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2634_q <= 4'b0000;
    else
      n2634_q <= s_m_senddatastate_mux8;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2635_q <= 2'b00;
    else
      n2635_q <= s_m_sendhandshake_mux19;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2636_q <= 1'b0;
    else
      n2636_q <= s_send_mux2;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2637_q <= 1'b0;
    else
      n2637_q <= s_ackexpected_mux3;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  assign n2638_o = s_m_tx_valid_and_m_tx_endpoint_eq_m_endpoint_mux1_and_m_packetlen_2_eq_m_packetlentxlimit_not_not_and_m_state_eq_senddata ? s_m_packetlen_2_eq_m_packetlentxlimit : s_incompletetransfer;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2639_q <= 1'b0;
    else
      n2639_q <= n2638_o;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2640_q <= 4'b1000;
    else
      n2640_q <= s_m_packetlentxlimit_mux2;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  assign n2641_o = s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken ? s_m_packetdata_2_rewired_2 : s_m_endpoint;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2642_q <= n2641_o;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  assign n2643_o = s_m_packetdata_2_rewired_eq_unnamed_mux2_and_m_pid_2_rewired_eq_const_1_not_and_m_pid_2_rewired_eq_const_1_and_m_phy_rx_eop_and_m_phy_rx_error_not_and_m_state_eq_waitfortoken ? s_unnamed_m_packetdata_2_rewired_eq_const_15_rewired : s_m_endpointmask;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2644_q <= n2643_o;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2645_q <= s_m_senddatastate_2_mux2;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2646_q <= 7'b0000000;
    else
      n2646_q <= s_m_packetdata_2_rewired_mux1_3;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2647_q <= 4'b0000;
    else
      n2647_q <= s_m_packetdata_2_rewired_mux1_2;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2648_q <= 16'b0000000000000000;
    else
      n2648_q <= s_m_nextoutdatapid_2_xor_m_endpointmask_mux2_rewired_mux2_rewired_mux1;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2649_q <= s_m_descaddressactive_mux2;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2650_q <= s_m_desclengthactive_mux2;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2651_q <= s_m_descaddressactive_mux9;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2652_q <= s_m_desclengthactive_mux11;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2653_q <= s_m_nextindatapid_2_mux2_rewired_mux1_xor_m_endpointmask_mux2;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2654_q <= s_m_pid_2_mux2;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2655_q <= s_m_packetlen_2_mux3;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  assign n2656_o = s_m_phy_rx_valid_and_m_packetlen_lt_const_8 ? s_m_packetdata_2_rewired_m_phy_rx_data_rewired : s_m_packetdata;
  /* find_the_damn_issue_sky130.vhd:11223:17  */
  always @(posedge clk)
    n2657_q <= n2656_o;
  /* find_the_damn_issue_sky130.vhd:11264:17  */
  always @(posedge clk or posedge n2561_o)
    if (n2561_o)
      n2658_q <= 7'b0000000;
    else
      n2658_q <= s_unnamed_mux2_5;
endmodule

module tt_um_find_the_damn_issue
  (input  clk,
   input  rst_n,
   input  [7:0] uio_in,
   input  [7:0] ui_in,
   input  ena,
   output [7:0] uio_out,
   output [7:0] uio_oe,
   output [7:0] uo_out);
  wire [1:0] s_m_status_linestate_2;
  wire s_m_status_rxactive_2;
  wire s_unnamed_or_in_valid_mux1_delayed1_not_mux1;
  wire s_m_phy_tx_valid_3;
  wire [7:0] s_m_phy_tx_data_3;
  wire s_in_valid_and_unnamed_mux2;
  wire s_in_mux1;
  wire s_m_out_2;
  wire s_m_match_delayed1;
  wire s_firstdatabit_mux1;
  wire s_unnamed_mux1;
  wire s_unnamed_mux1_2;
  wire s_m_phy_tx_valid_2;
  wire [7:0] s_m_phy_tx_data_2;
  wire s_unnamed_mux2;
  reg s_operatingmode;
  wire [7:0] s_uio_in_2;
  wire [7:0] s_unnamed;
  wire [7:0] s_unnamed_2;
  wire s_operatingmode_2;
  wire s_set_line_coding_mux1;
  reg s_unnamed_3;
  reg s_dtr;
  wire s_dtr_2;
  reg s_rts;
  wire s_rts_2;
  reg [23:0] s_baudrate;
  wire [23:0] s_baudrate_2;
  wire [1:0] s_m_status_linestate;
  wire s_m_status_rxactive;
  wire s_m_out;
  wire s_m_match_delayed1_2;
  wire s_m_phy_tx_ready;
  wire s_unnamed_mux1_3;
  wire s_in_mux1_2;
  wire s_firstdatabit_mux1_2;
  wire s_in_valid_and_unnamed_mux2_2;
  wire s_unnamed_mux1_4;
  wire s_set_line_coding_mux1_2;
  wire s_unnamed_4;
  wire s_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop;
  wire [23:0] s_baudrate_3;
  wire s_unnamed_mux2_2;
  wire s_unnamed_5;
  wire [7:0] s_unnamed_6;
  wire [3:0] s_unnamed_7;
  wire [7:0] s_m_peekdata_data;
  wire s_unnamed_8;
  wire [4:0] s_unnamed_9;
  wire s_m_pushvalid;
  wire [7:0] s_m_pushdata_data;
  wire [3:0] s_m_pushdata_endpoint;
  wire s_m_pushcommit;
  wire s_m_pushrollack;
  wire [4:0] s_m_pushcutoff;
  wire s_m_popvalid;
  wire s_m_pushfull;
  wire s_m_popempty;
  wire s_usbep1_rx_valid;
  wire [7:0] s_usbep1_rx;
  wire s_m_selector;
  wire s_out_0_ready;
  wire s_out_0_valid;
  wire [7:0] s_out_0;
  wire s_unnamed_10;
  wire s_out;
  wire s_usbep1_rx_ready;
  wire s_out_1_ready;
  wire s_out_1_valid;
  wire [7:0] s_out_1;
  wire s_unnamed_11;
  wire s_m_io0_out;
  wire s_m_io0_en;
  wire s_m_io0_opendrain;
  wire s_m_io1_out;
  wire s_m_io1_en;
  wire s_m_io1_opendrain;
  wire s_m_io2_out;
  wire s_m_io2_en;
  wire s_m_io2_opendrain;
  wire s_m_io3_out;
  wire s_m_io3_en;
  wire s_m_io3_opendrain;
  wire s_m_io4_out;
  wire s_m_io4_en;
  wire s_m_io4_opendrain;
  wire s_m_io5_out;
  wire s_m_io5_en;
  wire s_m_io5_opendrain;
  wire s_m_io8_out;
  wire s_m_io9_out;
  wire s_m_io10_out;
  wire s_m_io11_out;
  wire s_m_io12_out;
  wire s_m_io13_out;
  wire s_m_io14_out;
  wire s_m_io15_out;
  wire s_out_valid;
  wire [7:0] s_out_2;
  wire s_bitbangout_valid;
  wire [7:0] s_bitbangout;
  wire s_rx;
  wire s_out_valid_2;
  wire [7:0] s_out_3;
  wire s_uartout_valid;
  wire [7:0] s_uartout;
  wire s_unnamed_12;
  wire s_m_out_valid;
  wire [7:0] s_m_out_3;
  wire s_unnamed_13;
  wire [7:0] s_m_peekdata_data_2;
  wire [3:0] s_m_peekdata_endpoint;
  wire s_unnamed_14;
  wire [4:0] s_m_pushcutoff_2;
  wire s_m_popvalid_2;
  wire s_m_popcommit;
  wire s_m_poprollback;
  wire s_m_out_ready;
  wire s_m_pushvalid_2;
  wire [7:0] s_m_pushdata_data_2;
  wire [3:0] s_m_pushdata_endpoint_2;
  wire s_m_pushfull_2;
  wire s_m_popempty_2;
  wire s_unnamed_15;
  wire s_unnamed_16;
  wire s_unnamed_17;
  wire s_unnamed_18;
  wire s_unnamed_19;
  wire s_unnamed_20;
  wire s_unnamed_21;
  wire s_unnamed_22;
  wire s_unnamed_23;
  wire s_unnamed_24;
  wire s_unnamed_25;
  wire s_unnamed_26;
  wire s_unnamed_27;
  wire s_unnamed_28;
  wire s_m_packetdata_2_bit_16;
  wire s_m_packetdata_2_bit_17;
  wire [23:0] s_m_packetdata_2_rewired;
  wire s_unnamed_mux2_3;
  wire s_m_packetdata_2_bit_17_mux1;
  wire s_m_packetdata_2_bit_16_mux1;
  wire [7:0] s_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired;
  wire [7:0] s_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired;
  wire usbfunction0_out_m_phy_tx_valid_2;
  wire [7:0] usbfunction0_out_m_phy_tx_data_2;
  wire [1:0] usbfunction0_out_m_status_linestate;
  wire usbfunction0_out_m_status_rxactive;
  wire usbfunction0_out_m_out;
  wire usbfunction0_out_m_match_delayed1;
  wire usbfunction0_out_m_phy_tx_ready;
  wire usbfunction0_out_unnamed_mux1;
  wire usbfunction0_out_unnamed_mux1_2;
  wire usbfunction0_out_firstdatabit_mux2;
  wire usbfunction0_out_in_valid_and_unnamed_mux2;
  wire usbfunction0_out_unnamed_mux1_3;
  wire usbfunction0_out_set_line_coding_mux1;
  wire usbfunction0_out_unnamed_32;
  wire usbfunction0_out_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop;
  wire [23:0] usbfunction0_out_m_packetdata_2_rewired_mux1;
  wire usbfunction0_out_unnamed_mux2;
  wire usbfunction0_out_unnamed_not_mux1;
  wire [7:0] usbfunction0_out_unnamed_mux1_4;
  wire [3:0] usbfunction0_out_unnamed_mux1_5;
  wire usbfunction0_out_const_0_mux1;
  wire usbfunction0_out_unnamed_mux2_2;
  wire [4:0] usbfunction0_out_const_10_mux1;
  wire usbfunction0_out_unnamed_not_mux1_2;
  wire usbfunction0_out_unnamed_mux2_3;
  wire usbfunction0_out_const_0_mux1_2;
  wire usbfunction0_out_m_packetdata_2_bit_16;
  wire usbfunction0_out_m_packetdata_2_bit_17;
  wire [23:0] usbfunction0_out_m_packetdata_2_rewired;
  wire usbfunction0_out_unnamed_mux2_4;
  wire usbfunction0_out_m_packetdata_2_bit_17_mux1;
  wire usbfunction0_out_m_packetdata_2_bit_16_mux1;
  wire [7:0] usbfunction0_out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired;
  wire [7:0] usbfunction0_out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired;
  wire n92_o;
  wire n93_o;
  wire n94_o;
  wire n96_o;
  wire n97_o;
  wire n98_o;
  wire n99_o;
  wire n100_o;
  wire n101_o;
  wire n103_o;
  wire n104_o;
  wire n106_o;
  wire n107_o;
  wire n108_o;
  wire n109_o;
  wire n110_o;
  wire n112_o;
  wire n113_o;
  wire n114_o;
  wire n115_o;
  wire n116_o;
  wire n118_o;
  wire n119_o;
  wire n120_o;
  wire n121_o;
  wire n122_o;
  wire n124_o;
  wire n125_o;
  wire n126_o;
  wire n127_o;
  wire n128_o;
  wire n130_o;
  wire n131_o;
  wire n132_o;
  wire n133_o;
  wire n134_o;
  wire n136_o;
  wire n137_o;
  wire n138_o;
  wire n139_o;
  wire n140_o;
  wire n141_o;
  wire n142_o;
  wire n143_o;
  wire n144_o;
  wire n145_o;
  wire n146_o;
  wire n147_o;
  localparam [7:0] n148_o = 8'bX;
  wire [6:0] n149_o;
  wire [7:0] n150_o;
  wire [5:0] n151_o;
  wire [6:0] n152_o;
  wire n153_o;
  wire [7:0] n154_o;
  wire [4:0] n155_o;
  wire [5:0] n156_o;
  wire [1:0] n157_o;
  wire [7:0] n158_o;
  wire [3:0] n159_o;
  wire [4:0] n160_o;
  wire [2:0] n161_o;
  wire [7:0] n162_o;
  wire [2:0] n163_o;
  wire [3:0] n164_o;
  wire [3:0] n165_o;
  wire [7:0] n166_o;
  wire [1:0] n167_o;
  wire [2:0] n168_o;
  wire [4:0] n169_o;
  wire [7:0] n170_o;
  wire n171_o;
  wire [1:0] n172_o;
  wire [5:0] n173_o;
  wire [7:0] n174_o;
  wire [6:0] n175_o;
  wire [7:0] n176_o;
  wire [6:0] n177_o;
  wire [7:0] n178_o;
  wire n180_o;
  wire [5:0] n181_o;
  wire [6:0] n182_o;
  wire n183_o;
  wire [7:0] n184_o;
  wire [7:0] n185_o;
  wire [6:0] n186_o;
  wire [7:0] n187_o;
  wire [5:0] n188_o;
  wire [6:0] n189_o;
  wire n190_o;
  wire [7:0] n191_o;
  wire [4:0] n192_o;
  wire [5:0] n193_o;
  wire [1:0] n194_o;
  wire [7:0] n195_o;
  wire [3:0] n196_o;
  wire [4:0] n197_o;
  wire [2:0] n198_o;
  wire [7:0] n199_o;
  wire [2:0] n200_o;
  wire [3:0] n201_o;
  wire [3:0] n202_o;
  wire [7:0] n203_o;
  wire [1:0] n204_o;
  wire [2:0] n205_o;
  wire [4:0] n206_o;
  wire [7:0] n207_o;
  wire n209_o;
  wire [1:0] n210_o;
  wire [7:0] n212_o;
  wire [7:0] n213_o;
  wire [6:0] n214_o;
  wire [7:0] n215_o;
  wire [5:0] n216_o;
  wire [6:0] n217_o;
  wire n218_o;
  wire [7:0] n219_o;
  wire [4:0] n220_o;
  wire [5:0] n221_o;
  wire [1:0] n222_o;
  wire [7:0] n223_o;
  wire [3:0] n224_o;
  wire [4:0] n225_o;
  wire [2:0] n226_o;
  wire [7:0] n227_o;
  wire [2:0] n228_o;
  wire [3:0] n229_o;
  wire [3:0] n230_o;
  wire [7:0] n231_o;
  wire [1:0] n232_o;
  wire [2:0] n233_o;
  wire [4:0] n234_o;
  wire [7:0] n235_o;
  wire n237_o;
  wire [5:0] n238_o;
  wire [6:0] n239_o;
  wire n240_o;
  wire [7:0] n241_o;
  wire [7:0] n242_o;
  wire n243_o;
  localparam [11:0] n244_o = 12'bX;
  wire [7:0] n245_o;
  wire [7:0] n246_o;
  wire n247_o;
  localparam [11:0] n248_o = 12'bX;
  wire [3:0] n249_o;
  wire [3:0] n251_o;
  localparam [11:0] n252_o = 12'bX;
  wire [7:0] n253_o;
  localparam [11:0] n254_o = 12'bX;
  wire [3:0] n255_o;
  wire n274_o;
  wire [7:0] scl_fifo0_out_m_peekdata_data;
  wire scl_fifo0_out_m_pushfull;
  wire scl_fifo0_out_m_popempty;
  wire scl_streamdemux0_out_out_0_ready;
  wire scl_streamdemux0_out_out_0_valid;
  wire [7:0] scl_streamdemux0_out_out_0;
  wire scl_streamdemux0_out_m_in_ready_mux2;
  wire scl_streamdemux0_out_out_1_ready;
  wire scl_streamdemux0_out_out_1_valid;
  wire [7:0] scl_streamdemux0_out_out_1;
  wire scl_uarttx0_out_baud_and_m_last;
  wire scl_uarttx0_out_out;
  wire scl_bitbangengine0_out_const_0_mux13;
  wire scl_bitbangengine0_out_m_io0_out;
  wire scl_bitbangengine0_out_m_io0_en;
  wire scl_bitbangengine0_out_m_io0_opendrain;
  wire scl_bitbangengine0_out_m_io1_out;
  wire scl_bitbangengine0_out_m_io1_en;
  wire scl_bitbangengine0_out_m_io1_opendrain;
  wire scl_bitbangengine0_out_m_io2_out;
  wire scl_bitbangengine0_out_m_io2_en;
  wire scl_bitbangengine0_out_m_io2_opendrain;
  wire scl_bitbangengine0_out_m_io3_out;
  wire scl_bitbangengine0_out_m_io3_en;
  wire scl_bitbangengine0_out_m_io3_opendrain;
  wire scl_bitbangengine0_out_m_io4_out;
  wire scl_bitbangengine0_out_m_io4_en;
  wire scl_bitbangengine0_out_m_io4_opendrain;
  wire scl_bitbangengine0_out_m_io5_out;
  wire scl_bitbangengine0_out_m_io5_en;
  wire scl_bitbangengine0_out_m_io5_opendrain;
  wire scl_bitbangengine0_out_m_io8_out;
  wire scl_bitbangengine0_out_m_io9_out;
  wire scl_bitbangengine0_out_m_io10_out;
  wire scl_bitbangengine0_out_m_io11_out;
  wire scl_bitbangengine0_out_m_io12_out;
  wire scl_bitbangengine0_out_m_io13_out;
  wire scl_bitbangengine0_out_m_io14_out;
  wire scl_bitbangengine0_out_m_io15_out;
  wire scl_bitbangengine0_out_out_ready;
  wire scl_bitbangengine0_out_out_valid;
  wire [7:0] scl_bitbangengine0_out_out;
  wire scl_uartrx0_out_out_valid;
  wire [7:0] scl_uartrx0_out_out;
  wire scl_streamarbiter_2_out_const_0_mux1;
  wire scl_streamarbiter_2_out_m_out_valid;
  wire [7:0] scl_streamarbiter_2_out_m_out;
  wire [7:0] scl_fifo1_out_m_peekdata_data;
  wire [3:0] scl_fifo1_out_m_peekdata_endpoint;
  wire scl_fifo1_out_m_pushfull;
  wire scl_fifo1_out_m_popempty;
  reg n346_q;
  reg n347_q;
  wire n348_o;
  reg n349_q;
  wire n350_o;
  reg n351_q;
  wire [23:0] n352_o;
  reg [23:0] n353_q;
  assign uio_out = n242_o;
  assign uio_oe = n213_o;
  assign uo_out = n185_o;
  /* find_the_damn_issue_sky130.vhd:11397:16  */
  assign s_m_status_linestate_2 = s_m_status_linestate; // (signal)
  /* find_the_damn_issue_sky130.vhd:11398:16  */
  assign s_m_status_rxactive_2 = s_m_status_rxactive; // (signal)
  /* find_the_damn_issue_sky130.vhd:11399:16  */
  assign s_unnamed_or_in_valid_mux1_delayed1_not_mux1 = s_m_phy_tx_ready; // (signal)
  /* find_the_damn_issue_sky130.vhd:11400:16  */
  assign s_m_phy_tx_valid_3 = s_m_phy_tx_valid_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11401:16  */
  assign s_m_phy_tx_data_3 = s_m_phy_tx_data_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11402:16  */
  assign s_in_valid_and_unnamed_mux2 = s_in_valid_and_unnamed_mux2_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11403:16  */
  assign s_in_mux1 = s_in_mux1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11404:16  */
  assign s_m_out_2 = s_m_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11405:16  */
  assign s_m_match_delayed1 = s_m_match_delayed1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11406:16  */
  assign s_firstdatabit_mux1 = s_firstdatabit_mux1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11407:16  */
  assign s_unnamed_mux1 = s_unnamed_mux1_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:11408:16  */
  assign s_unnamed_mux1_2 = s_unnamed_mux1_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:11409:16  */
  assign s_m_phy_tx_valid_2 = usbfunction0_out_m_phy_tx_valid_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11410:16  */
  assign s_m_phy_tx_data_2 = usbfunction0_out_m_phy_tx_data_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11411:16  */
  assign s_unnamed_mux2 = s_unnamed_mux2_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11412:16  */
  always @*
    s_operatingmode = n346_q; // (isignal)
  initial
    s_operatingmode = 1'b0;
  /* find_the_damn_issue_sky130.vhd:11413:16  */
  assign s_uio_in_2 = uio_in; // (signal)
  /* find_the_damn_issue_sky130.vhd:11414:16  */
  assign s_unnamed = 8'bX; // (signal)
  /* find_the_damn_issue_sky130.vhd:11415:16  */
  assign s_unnamed_2 = 8'bX; // (signal)
  /* find_the_damn_issue_sky130.vhd:11416:16  */
  assign s_operatingmode_2 = s_operatingmode; // (signal)
  /* find_the_damn_issue_sky130.vhd:11417:16  */
  assign s_set_line_coding_mux1 = s_set_line_coding_mux1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11418:16  */
  always @*
    s_unnamed_3 = n347_q; // (isignal)
  initial
    s_unnamed_3 = 1'b0;
  /* find_the_damn_issue_sky130.vhd:11419:16  */
  always @*
    s_dtr = n349_q; // (isignal)
  initial
    s_dtr = 1'b0;
  /* find_the_damn_issue_sky130.vhd:11420:16  */
  assign s_dtr_2 = s_dtr; // (signal)
  /* find_the_damn_issue_sky130.vhd:11421:16  */
  always @*
    s_rts = n351_q; // (isignal)
  initial
    s_rts = 1'b0;
  /* find_the_damn_issue_sky130.vhd:11422:16  */
  assign s_rts_2 = s_rts; // (signal)
  /* find_the_damn_issue_sky130.vhd:11423:16  */
  always @*
    s_baudrate = n353_q; // (isignal)
  initial
    s_baudrate = 24'b000000011100001000000000;
  /* find_the_damn_issue_sky130.vhd:11424:16  */
  assign s_baudrate_2 = s_baudrate; // (signal)
  /* find_the_damn_issue_sky130.vhd:11425:16  */
  assign s_m_status_linestate = usbfunction0_out_m_status_linestate; // (signal)
  /* find_the_damn_issue_sky130.vhd:11426:16  */
  assign s_m_status_rxactive = usbfunction0_out_m_status_rxactive; // (signal)
  /* find_the_damn_issue_sky130.vhd:11427:16  */
  assign s_m_out = usbfunction0_out_m_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11428:16  */
  assign s_m_match_delayed1_2 = usbfunction0_out_m_match_delayed1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11429:16  */
  assign s_m_phy_tx_ready = usbfunction0_out_m_phy_tx_ready; // (signal)
  /* find_the_damn_issue_sky130.vhd:11430:16  */
  assign s_unnamed_mux1_3 = usbfunction0_out_unnamed_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11431:16  */
  assign s_in_mux1_2 = usbfunction0_out_unnamed_mux1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11432:16  */
  assign s_firstdatabit_mux1_2 = usbfunction0_out_firstdatabit_mux2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11433:16  */
  assign s_in_valid_and_unnamed_mux2_2 = usbfunction0_out_in_valid_and_unnamed_mux2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11434:16  */
  assign s_unnamed_mux1_4 = usbfunction0_out_unnamed_mux1_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:11435:16  */
  assign s_set_line_coding_mux1_2 = usbfunction0_out_set_line_coding_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11436:16  */
  assign s_unnamed_4 = usbfunction0_out_unnamed_32; // (signal)
  /* find_the_damn_issue_sky130.vhd:11437:16  */
  assign s_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop = usbfunction0_out_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop; // (signal)
  /* find_the_damn_issue_sky130.vhd:11438:16  */
  assign s_baudrate_3 = usbfunction0_out_m_packetdata_2_rewired_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11439:16  */
  assign s_unnamed_mux2_2 = usbfunction0_out_unnamed_mux2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11440:16  */
  assign s_unnamed_5 = 1'b0; // (signal)
  /* find_the_damn_issue_sky130.vhd:11441:16  */
  assign s_unnamed_6 = n253_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11442:16  */
  assign s_unnamed_7 = n255_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11443:16  */
  assign s_m_peekdata_data = scl_fifo0_out_m_peekdata_data; // (signal)
  /* find_the_damn_issue_sky130.vhd:11444:16  */
  assign s_unnamed_8 = 1'b0; // (signal)
  /* find_the_damn_issue_sky130.vhd:11445:16  */
  assign s_unnamed_9 = 5'b00000; // (signal)
  /* find_the_damn_issue_sky130.vhd:11446:16  */
  assign s_m_pushvalid = usbfunction0_out_unnamed_not_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11447:16  */
  assign s_m_pushdata_data = usbfunction0_out_unnamed_mux1_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:11448:16  */
  assign s_m_pushdata_endpoint = usbfunction0_out_unnamed_mux1_5; // (signal)
  /* find_the_damn_issue_sky130.vhd:11449:16  */
  assign s_m_pushcommit = usbfunction0_out_const_0_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11450:16  */
  assign s_m_pushrollack = usbfunction0_out_unnamed_mux2_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11451:16  */
  assign s_m_pushcutoff = usbfunction0_out_const_10_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11452:16  */
  assign s_m_popvalid = n96_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11453:16  */
  assign s_m_pushfull = scl_fifo0_out_m_pushfull; // (signal)
  /* find_the_damn_issue_sky130.vhd:11454:16  */
  assign s_m_popempty = scl_fifo0_out_m_popempty; // (signal)
  /* find_the_damn_issue_sky130.vhd:11455:16  */
  assign s_usbep1_rx_valid = n97_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11456:16  */
  assign s_usbep1_rx = s_m_peekdata_data; // (signal)
  /* find_the_damn_issue_sky130.vhd:11457:16  */
  assign s_m_selector = s_operatingmode_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11458:16  */
  assign s_out_0_ready = scl_streamdemux0_out_out_0_ready; // (signal)
  /* find_the_damn_issue_sky130.vhd:11459:16  */
  assign s_out_0_valid = scl_streamdemux0_out_out_0_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:11460:16  */
  assign s_out_0 = scl_streamdemux0_out_out_0; // (signal)
  /* find_the_damn_issue_sky130.vhd:11461:16  */
  assign s_unnamed_10 = scl_uarttx0_out_baud_and_m_last; // (signal)
  /* find_the_damn_issue_sky130.vhd:11462:16  */
  assign s_out = scl_uarttx0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11463:16  */
  assign s_usbep1_rx_ready = scl_streamdemux0_out_m_in_ready_mux2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11464:16  */
  assign s_out_1_ready = scl_streamdemux0_out_out_1_ready; // (signal)
  /* find_the_damn_issue_sky130.vhd:11465:16  */
  assign s_out_1_valid = scl_streamdemux0_out_out_1_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:11466:16  */
  assign s_out_1 = scl_streamdemux0_out_out_1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11467:16  */
  assign s_unnamed_11 = scl_bitbangengine0_out_const_0_mux13; // (signal)
  /* find_the_damn_issue_sky130.vhd:11468:16  */
  assign s_m_io0_out = scl_bitbangengine0_out_m_io0_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11469:16  */
  assign s_m_io0_en = scl_bitbangengine0_out_m_io0_en; // (signal)
  /* find_the_damn_issue_sky130.vhd:11470:16  */
  assign s_m_io0_opendrain = scl_bitbangengine0_out_m_io0_opendrain; // (signal)
  /* find_the_damn_issue_sky130.vhd:11471:16  */
  assign s_m_io1_out = scl_bitbangengine0_out_m_io1_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11472:16  */
  assign s_m_io1_en = scl_bitbangengine0_out_m_io1_en; // (signal)
  /* find_the_damn_issue_sky130.vhd:11473:16  */
  assign s_m_io1_opendrain = scl_bitbangengine0_out_m_io1_opendrain; // (signal)
  /* find_the_damn_issue_sky130.vhd:11474:16  */
  assign s_m_io2_out = scl_bitbangengine0_out_m_io2_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11475:16  */
  assign s_m_io2_en = scl_bitbangengine0_out_m_io2_en; // (signal)
  /* find_the_damn_issue_sky130.vhd:11476:16  */
  assign s_m_io2_opendrain = scl_bitbangengine0_out_m_io2_opendrain; // (signal)
  /* find_the_damn_issue_sky130.vhd:11477:16  */
  assign s_m_io3_out = scl_bitbangengine0_out_m_io3_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11478:16  */
  assign s_m_io3_en = scl_bitbangengine0_out_m_io3_en; // (signal)
  /* find_the_damn_issue_sky130.vhd:11479:16  */
  assign s_m_io3_opendrain = scl_bitbangengine0_out_m_io3_opendrain; // (signal)
  /* find_the_damn_issue_sky130.vhd:11480:16  */
  assign s_m_io4_out = scl_bitbangengine0_out_m_io4_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11481:16  */
  assign s_m_io4_en = scl_bitbangengine0_out_m_io4_en; // (signal)
  /* find_the_damn_issue_sky130.vhd:11482:16  */
  assign s_m_io4_opendrain = scl_bitbangengine0_out_m_io4_opendrain; // (signal)
  /* find_the_damn_issue_sky130.vhd:11483:16  */
  assign s_m_io5_out = scl_bitbangengine0_out_m_io5_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11484:16  */
  assign s_m_io5_en = scl_bitbangengine0_out_m_io5_en; // (signal)
  /* find_the_damn_issue_sky130.vhd:11485:16  */
  assign s_m_io5_opendrain = scl_bitbangengine0_out_m_io5_opendrain; // (signal)
  /* find_the_damn_issue_sky130.vhd:11486:16  */
  assign s_m_io8_out = scl_bitbangengine0_out_m_io8_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11487:16  */
  assign s_m_io9_out = scl_bitbangengine0_out_m_io9_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11488:16  */
  assign s_m_io10_out = scl_bitbangengine0_out_m_io10_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11489:16  */
  assign s_m_io11_out = scl_bitbangengine0_out_m_io11_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11490:16  */
  assign s_m_io12_out = scl_bitbangengine0_out_m_io12_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11491:16  */
  assign s_m_io13_out = scl_bitbangengine0_out_m_io13_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11492:16  */
  assign s_m_io14_out = scl_bitbangengine0_out_m_io14_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11493:16  */
  assign s_m_io15_out = scl_bitbangengine0_out_m_io15_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11495:16  */
  assign s_out_valid = scl_bitbangengine0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:11496:16  */
  assign s_out_2 = scl_bitbangengine0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11497:16  */
  assign s_bitbangout_valid = s_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:11498:16  */
  assign s_bitbangout = s_out_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11499:16  */
  assign s_rx = n98_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11500:16  */
  assign s_out_valid_2 = scl_uartrx0_out_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:11501:16  */
  assign s_out_3 = scl_uartrx0_out_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11502:16  */
  assign s_uartout_valid = s_out_valid_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11503:16  */
  assign s_uartout = s_out_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:11504:16  */
  assign s_unnamed_12 = scl_streamarbiter_2_out_const_0_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11505:16  */
  assign s_m_out_valid = scl_streamarbiter_2_out_m_out_valid; // (signal)
  /* find_the_damn_issue_sky130.vhd:11506:16  */
  assign s_m_out_3 = scl_streamarbiter_2_out_m_out; // (signal)
  /* find_the_damn_issue_sky130.vhd:11507:16  */
  assign s_unnamed_13 = 1'b0; // (signal)
  /* find_the_damn_issue_sky130.vhd:11508:16  */
  assign s_m_peekdata_data_2 = scl_fifo1_out_m_peekdata_data; // (signal)
  /* find_the_damn_issue_sky130.vhd:11509:16  */
  assign s_m_peekdata_endpoint = scl_fifo1_out_m_peekdata_endpoint; // (signal)
  /* find_the_damn_issue_sky130.vhd:11510:16  */
  assign s_unnamed_14 = 1'b0; // (signal)
  /* find_the_damn_issue_sky130.vhd:11511:16  */
  assign s_m_pushcutoff_2 = 5'b00000; // (signal)
  /* find_the_damn_issue_sky130.vhd:11512:16  */
  assign s_m_popvalid_2 = usbfunction0_out_unnamed_not_mux1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11513:16  */
  assign s_m_popcommit = usbfunction0_out_unnamed_mux2_3; // (signal)
  /* find_the_damn_issue_sky130.vhd:11514:16  */
  assign s_m_poprollback = usbfunction0_out_const_0_mux1_2; // (signal)
  /* find_the_damn_issue_sky130.vhd:11515:16  */
  assign s_m_out_ready = n99_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11516:16  */
  assign s_m_pushvalid_2 = n103_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11517:16  */
  assign s_m_pushdata_data_2 = n246_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11518:16  */
  assign s_m_pushdata_endpoint_2 = n251_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11519:16  */
  assign s_m_pushfull_2 = scl_fifo1_out_m_pushfull; // (signal)
  /* find_the_damn_issue_sky130.vhd:11520:16  */
  assign s_m_popempty_2 = scl_fifo1_out_m_popempty; // (signal)
  /* find_the_damn_issue_sky130.vhd:11521:16  */
  assign s_unnamed_15 = n104_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11522:16  */
  assign s_unnamed_16 = n110_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11523:16  */
  assign s_unnamed_17 = n116_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11524:16  */
  assign s_unnamed_18 = n122_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11525:16  */
  assign s_unnamed_19 = n128_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11526:16  */
  assign s_unnamed_20 = n134_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11527:16  */
  assign s_unnamed_21 = n140_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11528:16  */
  assign s_unnamed_22 = n141_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11529:16  */
  assign s_unnamed_23 = n142_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11530:16  */
  assign s_unnamed_24 = n143_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11531:16  */
  assign s_unnamed_25 = n144_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11532:16  */
  assign s_unnamed_26 = n145_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11533:16  */
  assign s_unnamed_27 = n146_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11534:16  */
  assign s_unnamed_28 = n147_o; // (signal)
  /* find_the_damn_issue_sky130.vhd:11535:16  */
  assign s_m_packetdata_2_bit_16 = usbfunction0_out_m_packetdata_2_bit_16; // (signal)
  /* find_the_damn_issue_sky130.vhd:11536:16  */
  assign s_m_packetdata_2_bit_17 = usbfunction0_out_m_packetdata_2_bit_17; // (signal)
  /* find_the_damn_issue_sky130.vhd:11537:16  */
  assign s_m_packetdata_2_rewired = usbfunction0_out_m_packetdata_2_rewired; // (signal)
  /* find_the_damn_issue_sky130.vhd:11538:16  */
  assign s_unnamed_mux2_3 = usbfunction0_out_unnamed_mux2_4; // (signal)
  /* find_the_damn_issue_sky130.vhd:11539:16  */
  assign s_m_packetdata_2_bit_17_mux1 = usbfunction0_out_m_packetdata_2_bit_17_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11540:16  */
  assign s_m_packetdata_2_bit_16_mux1 = usbfunction0_out_m_packetdata_2_bit_16_mux1; // (signal)
  /* find_the_damn_issue_sky130.vhd:11541:16  */
  assign s_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired = usbfunction0_out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired; // (signal)
  /* find_the_damn_issue_sky130.vhd:11542:16  */
  assign s_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired = usbfunction0_out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired; // (signal)
  /* find_the_damn_issue_sky130.vhd:11544:9  */
  usbfunction usbfunction0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_m_status_linestate_2),
    .in_unnamed_2(s_m_status_rxactive_2),
    .in_unnamed_3(s_unnamed_or_in_valid_mux1_delayed1_not_mux1),
    .in_unnamed_4(s_m_phy_tx_valid_3),
    .in_unnamed_5(s_m_phy_tx_data_3),
    .in_unnamed_6(s_in_valid_and_unnamed_mux2),
    .in_unnamed_7(s_in_mux1),
    .in_unnamed_8(s_m_out_2),
    .in_unnamed_9(s_m_match_delayed1),
    .in_unnamed_10(s_firstdatabit_mux1),
    .in_unnamed_11(s_unnamed_mux1),
    .in_unnamed_12(s_unnamed_mux1_2),
    .in_unnamed_13(s_operatingmode),
    .in_unnamed_14(s_uio_in_2),
    .in_unnamed_15(s_unnamed),
    .in_unnamed_16(s_unnamed_2),
    .in_unnamed_17(s_unnamed_3),
    .in_unnamed_18(s_dtr_2),
    .in_unnamed_19(s_rts_2),
    .in_unnamed_20(s_baudrate_2),
    .in_unnamed_21(s_unnamed_5),
    .in_unnamed_22(s_unnamed_6),
    .in_unnamed_23(s_unnamed_7),
    .in_unnamed_24(s_unnamed_8),
    .in_unnamed_25(s_unnamed_9),
    .in_unnamed_26(s_m_pushfull),
    .in_unnamed_27(s_unnamed_13),
    .in_unnamed_28(s_m_peekdata_data_2),
    .in_unnamed_29(s_m_peekdata_endpoint),
    .in_unnamed_30(s_unnamed_14),
    .in_unnamed_31(s_m_popempty_2),
    .out_m_phy_tx_valid_2(usbfunction0_out_m_phy_tx_valid_2),
    .out_m_phy_tx_data_2(usbfunction0_out_m_phy_tx_data_2),
    .out_m_status_linestate(usbfunction0_out_m_status_linestate),
    .out_m_status_rxactive(usbfunction0_out_m_status_rxactive),
    .out_m_out(usbfunction0_out_m_out),
    .out_m_match_delayed1(usbfunction0_out_m_match_delayed1),
    .out_m_phy_tx_ready(usbfunction0_out_m_phy_tx_ready),
    .out_unnamed_mux1(usbfunction0_out_unnamed_mux1),
    .out_unnamed_mux1_2(usbfunction0_out_unnamed_mux1_2),
    .out_firstdatabit_mux2(usbfunction0_out_firstdatabit_mux2),
    .out_in_valid_and_unnamed_mux2(usbfunction0_out_in_valid_and_unnamed_mux2),
    .out_unnamed_mux1_3(usbfunction0_out_unnamed_mux1_3),
    .out_set_line_coding_mux1(usbfunction0_out_set_line_coding_mux1),
    .out_unnamed_32(usbfunction0_out_unnamed_32),
    .out_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop(usbfunction0_out_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop),
    .out_m_packetdata_2_rewired_mux1(usbfunction0_out_m_packetdata_2_rewired_mux1),
    .out_unnamed_mux2(usbfunction0_out_unnamed_mux2),
    .out_unnamed_not_mux1(usbfunction0_out_unnamed_not_mux1),
    .out_unnamed_mux1_4(usbfunction0_out_unnamed_mux1_4),
    .out_unnamed_mux1_5(usbfunction0_out_unnamed_mux1_5),
    .out_const_0_mux1(usbfunction0_out_const_0_mux1),
    .out_unnamed_mux2_2(usbfunction0_out_unnamed_mux2_2),
    .out_const_10_mux1(usbfunction0_out_const_10_mux1),
    .out_unnamed_not_mux1_2(usbfunction0_out_unnamed_not_mux1_2),
    .out_unnamed_mux2_3(usbfunction0_out_unnamed_mux2_3),
    .out_const_0_mux1_2(usbfunction0_out_const_0_mux1_2),
    .out_m_packetdata_2_bit_16(usbfunction0_out_m_packetdata_2_bit_16),
    .out_m_packetdata_2_bit_17(usbfunction0_out_m_packetdata_2_bit_17),
    .out_m_packetdata_2_rewired(usbfunction0_out_m_packetdata_2_rewired),
    .out_unnamed_mux2_4(usbfunction0_out_unnamed_mux2_4),
    .out_m_packetdata_2_bit_17_mux1(usbfunction0_out_m_packetdata_2_bit_17_mux1),
    .out_m_packetdata_2_bit_16_mux1(usbfunction0_out_m_packetdata_2_bit_16_mux1),
    .out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired(usbfunction0_out_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired),
    .out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired(usbfunction0_out_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired));
  /* find_the_damn_issue_sky130.vhd:11692:23  */
  assign n92_o = ~s_m_popempty;
  /* find_the_damn_issue_sky130.vhd:11692:47  */
  assign n93_o = n92_o & s_usbep1_rx_ready;
  /* find_the_damn_issue_sky130.vhd:11693:43  */
  assign n94_o = ~s_m_popempty;
  /* find_the_damn_issue_sky130.vhd:11692:17  */
  assign n96_o = n93_o ? n94_o : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11698:40  */
  assign n97_o = ~s_m_popempty;
  /* find_the_damn_issue_sky130.vhd:11705:35  */
  assign n98_o = s_uio_in_2[2];
  /* find_the_damn_issue_sky130.vhd:11711:36  */
  assign n99_o = ~s_m_pushfull_2;
  /* find_the_damn_issue_sky130.vhd:11712:41  */
  assign n100_o = s_m_out_valid & s_m_out_ready;
  /* find_the_damn_issue_sky130.vhd:11713:46  */
  assign n101_o = ~s_m_pushfull_2;
  /* find_the_damn_issue_sky130.vhd:11712:17  */
  assign n103_o = n100_o ? n101_o : 1'b0;
  /* find_the_damn_issue_sky130.vhd:11717:43  */
  assign n104_o = s_uio_in_2[0];
  /* find_the_damn_issue_sky130.vhd:11718:17  */
  assign n106_o = s_m_io0_opendrain ? 1'b0 : s_m_io0_out;
  /* find_the_damn_issue_sky130.vhd:11724:62  */
  assign n107_o = ~s_m_io0_out;
  /* find_the_damn_issue_sky130.vhd:11724:56  */
  assign n108_o = s_m_io0_en & n107_o;
  /* find_the_damn_issue_sky130.vhd:11723:17  */
  assign n109_o = s_m_io0_opendrain ? n108_o : s_m_io0_en;
  /* find_the_damn_issue_sky130.vhd:11728:43  */
  assign n110_o = s_uio_in_2[1];
  /* find_the_damn_issue_sky130.vhd:11729:17  */
  assign n112_o = s_m_io1_opendrain ? 1'b0 : s_m_io1_out;
  /* find_the_damn_issue_sky130.vhd:11735:62  */
  assign n113_o = ~s_m_io1_out;
  /* find_the_damn_issue_sky130.vhd:11735:56  */
  assign n114_o = s_m_io1_en & n113_o;
  /* find_the_damn_issue_sky130.vhd:11734:17  */
  assign n115_o = s_m_io1_opendrain ? n114_o : s_m_io1_en;
  /* find_the_damn_issue_sky130.vhd:11739:43  */
  assign n116_o = s_uio_in_2[2];
  /* find_the_damn_issue_sky130.vhd:11740:17  */
  assign n118_o = s_m_io2_opendrain ? 1'b0 : s_m_io2_out;
  /* find_the_damn_issue_sky130.vhd:11746:62  */
  assign n119_o = ~s_m_io2_out;
  /* find_the_damn_issue_sky130.vhd:11746:56  */
  assign n120_o = s_m_io2_en & n119_o;
  /* find_the_damn_issue_sky130.vhd:11745:17  */
  assign n121_o = s_m_io2_opendrain ? n120_o : s_m_io2_en;
  /* find_the_damn_issue_sky130.vhd:11750:43  */
  assign n122_o = s_uio_in_2[3];
  /* find_the_damn_issue_sky130.vhd:11751:17  */
  assign n124_o = s_m_io3_opendrain ? 1'b0 : s_m_io3_out;
  /* find_the_damn_issue_sky130.vhd:11757:62  */
  assign n125_o = ~s_m_io3_out;
  /* find_the_damn_issue_sky130.vhd:11757:56  */
  assign n126_o = s_m_io3_en & n125_o;
  /* find_the_damn_issue_sky130.vhd:11756:17  */
  assign n127_o = s_m_io3_opendrain ? n126_o : s_m_io3_en;
  /* find_the_damn_issue_sky130.vhd:11761:43  */
  assign n128_o = s_uio_in_2[4];
  /* find_the_damn_issue_sky130.vhd:11762:17  */
  assign n130_o = s_m_io4_opendrain ? 1'b0 : s_m_io4_out;
  /* find_the_damn_issue_sky130.vhd:11768:62  */
  assign n131_o = ~s_m_io4_out;
  /* find_the_damn_issue_sky130.vhd:11768:56  */
  assign n132_o = s_m_io4_en & n131_o;
  /* find_the_damn_issue_sky130.vhd:11767:17  */
  assign n133_o = s_m_io4_opendrain ? n132_o : s_m_io4_en;
  /* find_the_damn_issue_sky130.vhd:11772:43  */
  assign n134_o = s_uio_in_2[5];
  /* find_the_damn_issue_sky130.vhd:11773:17  */
  assign n136_o = s_m_io5_opendrain ? 1'b0 : s_m_io5_out;
  /* find_the_damn_issue_sky130.vhd:11779:62  */
  assign n137_o = ~s_m_io5_out;
  /* find_the_damn_issue_sky130.vhd:11779:56  */
  assign n138_o = s_m_io5_en & n137_o;
  /* find_the_damn_issue_sky130.vhd:11778:17  */
  assign n139_o = s_m_io5_opendrain ? n138_o : s_m_io5_en;
  /* find_the_damn_issue_sky130.vhd:11784:40  */
  assign n140_o = ui_in[0];
  /* find_the_damn_issue_sky130.vhd:11785:40  */
  assign n141_o = ui_in[1];
  /* find_the_damn_issue_sky130.vhd:11786:40  */
  assign n142_o = ui_in[2];
  /* find_the_damn_issue_sky130.vhd:11787:40  */
  assign n143_o = ui_in[3];
  /* find_the_damn_issue_sky130.vhd:11788:40  */
  assign n144_o = ui_in[4];
  /* find_the_damn_issue_sky130.vhd:11789:40  */
  assign n145_o = ui_in[5];
  /* find_the_damn_issue_sky130.vhd:11790:40  */
  assign n146_o = ui_in[6];
  /* find_the_damn_issue_sky130.vhd:11791:40  */
  assign n147_o = ui_in[7];
  /* find_the_damn_issue_sky130.vhd:11793:58  */
  assign n149_o = n148_o[7:1];
  /* find_the_damn_issue_sky130.vhd:11793:71  */
  assign n150_o = {n149_o, s_m_io8_out};
  /* find_the_damn_issue_sky130.vhd:11794:94  */
  assign n151_o = n150_o[7:2];
  /* find_the_damn_issue_sky130.vhd:11794:107  */
  assign n152_o = {n151_o, s_m_io9_out};
  /* find_the_damn_issue_sky130.vhd:11794:150  */
  assign n153_o = n150_o[0];
  /* find_the_damn_issue_sky130.vhd:11794:121  */
  assign n154_o = {n152_o, n153_o};
  /* find_the_damn_issue_sky130.vhd:11795:131  */
  assign n155_o = n154_o[7:3];
  /* find_the_damn_issue_sky130.vhd:11795:144  */
  assign n156_o = {n155_o, s_m_io10_out};
  /* find_the_damn_issue_sky130.vhd:11795:206  */
  assign n157_o = n154_o[1:0];
  /* find_the_damn_issue_sky130.vhd:11795:159  */
  assign n158_o = {n156_o, n157_o};
  /* find_the_damn_issue_sky130.vhd:11796:169  */
  assign n159_o = n158_o[7:4];
  /* find_the_damn_issue_sky130.vhd:11796:182  */
  assign n160_o = {n159_o, s_m_io11_out};
  /* find_the_damn_issue_sky130.vhd:11796:263  */
  assign n161_o = n158_o[2:0];
  /* find_the_damn_issue_sky130.vhd:11796:197  */
  assign n162_o = {n160_o, n161_o};
  /* find_the_damn_issue_sky130.vhd:11797:207  */
  assign n163_o = n162_o[7:5];
  /* find_the_damn_issue_sky130.vhd:11797:220  */
  assign n164_o = {n163_o, s_m_io12_out};
  /* find_the_damn_issue_sky130.vhd:11797:320  */
  assign n165_o = n162_o[3:0];
  /* find_the_damn_issue_sky130.vhd:11797:235  */
  assign n166_o = {n164_o, n165_o};
  /* find_the_damn_issue_sky130.vhd:11798:245  */
  assign n167_o = n166_o[7:6];
  /* find_the_damn_issue_sky130.vhd:11798:258  */
  assign n168_o = {n167_o, s_m_io13_out};
  /* find_the_damn_issue_sky130.vhd:11798:377  */
  assign n169_o = n166_o[4:0];
  /* find_the_damn_issue_sky130.vhd:11798:273  */
  assign n170_o = {n168_o, n169_o};
  /* find_the_damn_issue_sky130.vhd:11799:283  */
  assign n171_o = n170_o[7];
  /* find_the_damn_issue_sky130.vhd:11799:296  */
  assign n172_o = {n171_o, s_m_io14_out};
  /* find_the_damn_issue_sky130.vhd:11799:434  */
  assign n173_o = n170_o[5:0];
  /* find_the_damn_issue_sky130.vhd:11799:311  */
  assign n174_o = {n172_o, n173_o};
  /* find_the_damn_issue_sky130.vhd:11800:336  */
  assign n175_o = n174_o[6:0];
  /* find_the_damn_issue_sky130.vhd:11800:194  */
  assign n176_o = {s_m_io15_out, n175_o};
  /* find_the_damn_issue_sky130.vhd:11802:377  */
  assign n177_o = n176_o[7:1];
  /* find_the_damn_issue_sky130.vhd:11802:390  */
  assign n178_o = {n177_o, s_m_packetdata_2_bit_16_mux1};
  /* find_the_damn_issue_sky130.vhd:11803:39  */
  assign n180_o = s_operatingmode_2 == 1'b0;
  /* find_the_damn_issue_sky130.vhd:11804:238  */
  assign n181_o = n178_o[7:2];
  /* find_the_damn_issue_sky130.vhd:11804:251  */
  assign n182_o = {n181_o, s_m_packetdata_2_bit_17_mux1};
  /* find_the_damn_issue_sky130.vhd:11804:478  */
  assign n183_o = n178_o[0];
  /* find_the_damn_issue_sky130.vhd:11804:282  */
  assign n184_o = {n182_o, n183_o};
  /* find_the_damn_issue_sky130.vhd:11803:17  */
  assign n185_o = n180_o ? n184_o : n176_o;
  /* find_the_damn_issue_sky130.vhd:11809:202  */
  assign n186_o = s_unnamed_txstuffedstream_valid_mux2_rewired_txstuffedstream_valid_mux2_rewired[7:1];
  /* find_the_damn_issue_sky130.vhd:11809:215  */
  assign n187_o = {n186_o, n109_o};
  /* find_the_damn_issue_sky130.vhd:11810:246  */
  assign n188_o = n187_o[7:2];
  /* find_the_damn_issue_sky130.vhd:11810:259  */
  assign n189_o = {n188_o, n115_o};
  /* find_the_damn_issue_sky130.vhd:11810:380  */
  assign n190_o = n187_o[0];
  /* find_the_damn_issue_sky130.vhd:11810:277  */
  assign n191_o = {n189_o, n190_o};
  /* find_the_damn_issue_sky130.vhd:11811:290  */
  assign n192_o = n191_o[7:3];
  /* find_the_damn_issue_sky130.vhd:11811:303  */
  assign n193_o = {n192_o, n121_o};
  /* find_the_damn_issue_sky130.vhd:11811:446  */
  assign n194_o = n191_o[1:0];
  /* find_the_damn_issue_sky130.vhd:11811:321  */
  assign n195_o = {n193_o, n194_o};
  /* find_the_damn_issue_sky130.vhd:11812:334  */
  assign n196_o = n195_o[7:4];
  /* find_the_damn_issue_sky130.vhd:11812:347  */
  assign n197_o = {n196_o, n127_o};
  /* find_the_damn_issue_sky130.vhd:11812:512  */
  assign n198_o = n195_o[2:0];
  /* find_the_damn_issue_sky130.vhd:11812:365  */
  assign n199_o = {n197_o, n198_o};
  /* find_the_damn_issue_sky130.vhd:11813:378  */
  assign n200_o = n199_o[7:5];
  /* find_the_damn_issue_sky130.vhd:11813:391  */
  assign n201_o = {n200_o, n133_o};
  /* find_the_damn_issue_sky130.vhd:11813:578  */
  assign n202_o = n199_o[3:0];
  /* find_the_damn_issue_sky130.vhd:11813:409  */
  assign n203_o = {n201_o, n202_o};
  /* find_the_damn_issue_sky130.vhd:11814:222  */
  assign n204_o = n203_o[7:6];
  /* find_the_damn_issue_sky130.vhd:11814:235  */
  assign n205_o = {n204_o, n139_o};
  /* find_the_damn_issue_sky130.vhd:11814:444  */
  assign n206_o = n203_o[4:0];
  /* find_the_damn_issue_sky130.vhd:11814:253  */
  assign n207_o = {n205_o, n206_o};
  /* find_the_damn_issue_sky130.vhd:11815:39  */
  assign n209_o = s_operatingmode_2 == 1'b0;
  /* find_the_damn_issue_sky130.vhd:11816:49  */
  assign n210_o = n207_o[7:6];
  /* find_the_damn_issue_sky130.vhd:11816:62  */
  assign n212_o = {n210_o, 6'b000010};
  /* find_the_damn_issue_sky130.vhd:11815:17  */
  assign n213_o = n209_o ? n212_o : n207_o;
  /* find_the_damn_issue_sky130.vhd:11822:187  */
  assign n214_o = s_unnamed_txstuffedstream_mux1_rewired_txstuffedstream_not_mux1_rewired[7:1];
  /* find_the_damn_issue_sky130.vhd:11822:200  */
  assign n215_o = {n214_o, n106_o};
  /* find_the_damn_issue_sky130.vhd:11823:233  */
  assign n216_o = n215_o[7:2];
  /* find_the_damn_issue_sky130.vhd:11823:246  */
  assign n217_o = {n216_o, n112_o};
  /* find_the_damn_issue_sky130.vhd:11823:361  */
  assign n218_o = n215_o[0];
  /* find_the_damn_issue_sky130.vhd:11823:265  */
  assign n219_o = {n217_o, n218_o};
  /* find_the_damn_issue_sky130.vhd:11824:279  */
  assign n220_o = n219_o[7:3];
  /* find_the_damn_issue_sky130.vhd:11824:292  */
  assign n221_o = {n220_o, n118_o};
  /* find_the_damn_issue_sky130.vhd:11824:430  */
  assign n222_o = n219_o[1:0];
  /* find_the_damn_issue_sky130.vhd:11824:311  */
  assign n223_o = {n221_o, n222_o};
  /* find_the_damn_issue_sky130.vhd:11825:325  */
  assign n224_o = n223_o[7:4];
  /* find_the_damn_issue_sky130.vhd:11825:338  */
  assign n225_o = {n224_o, n124_o};
  /* find_the_damn_issue_sky130.vhd:11825:499  */
  assign n226_o = n223_o[2:0];
  /* find_the_damn_issue_sky130.vhd:11825:357  */
  assign n227_o = {n225_o, n226_o};
  /* find_the_damn_issue_sky130.vhd:11826:371  */
  assign n228_o = n227_o[7:5];
  /* find_the_damn_issue_sky130.vhd:11826:384  */
  assign n229_o = {n228_o, n130_o};
  /* find_the_damn_issue_sky130.vhd:11826:568  */
  assign n230_o = n227_o[3:0];
  /* find_the_damn_issue_sky130.vhd:11826:403  */
  assign n231_o = {n229_o, n230_o};
  /* find_the_damn_issue_sky130.vhd:11827:217  */
  assign n232_o = n231_o[7:6];
  /* find_the_damn_issue_sky130.vhd:11827:230  */
  assign n233_o = {n232_o, n136_o};
  /* find_the_damn_issue_sky130.vhd:11827:437  */
  assign n234_o = n231_o[4:0];
  /* find_the_damn_issue_sky130.vhd:11827:249  */
  assign n235_o = {n233_o, n234_o};
  /* find_the_damn_issue_sky130.vhd:11829:39  */
  assign n237_o = s_operatingmode_2 == 1'b0;
  /* find_the_damn_issue_sky130.vhd:11830:50  */
  assign n238_o = n235_o[7:2];
  /* find_the_damn_issue_sky130.vhd:11830:63  */
  assign n239_o = {n238_o, s_out};
  /* find_the_damn_issue_sky130.vhd:11830:83  */
  assign n240_o = n235_o[0];
  /* find_the_damn_issue_sky130.vhd:11830:70  */
  assign n241_o = {n239_o, n240_o};
  /* find_the_damn_issue_sky130.vhd:11829:17  */
  assign n242_o = n237_o ? n241_o : n235_o;
  /* find_the_damn_issue_sky130.vhd:11837:41  */
  assign n243_o = s_m_out_valid & s_m_out_ready;
  /* find_the_damn_issue_sky130.vhd:11840:59  */
  assign n245_o = n244_o[7:0];
  /* find_the_damn_issue_sky130.vhd:11837:17  */
  assign n246_o = n243_o ? s_m_out_3 : n245_o;
  /* find_the_damn_issue_sky130.vhd:11842:41  */
  assign n247_o = s_m_out_valid & s_m_out_ready;
  /* find_the_damn_issue_sky130.vhd:11845:63  */
  assign n249_o = n248_o[11:8];
  /* find_the_damn_issue_sky130.vhd:11842:17  */
  assign n251_o = n247_o ? 4'b0001 : n249_o;
  /* find_the_damn_issue_sky130.vhd:11848:43  */
  assign n253_o = n252_o[7:0];
  /* find_the_damn_issue_sky130.vhd:11849:43  */
  assign n255_o = n254_o[11:8];
  /* find_the_damn_issue_sky130.vhd:11854:27  */
  assign n274_o = ~rst_n;
  /* find_the_damn_issue_sky130.vhd:11875:9  */
  scl_fifo scl_fifo0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_m_pushvalid(s_m_pushvalid),
    .in_m_pushdata_data(s_m_pushdata_data),
    .in_m_pushdata_endpoint(s_m_pushdata_endpoint),
    .in_m_pushcommit(s_m_pushcommit),
    .in_m_pushrollack(s_m_pushrollack),
    .in_m_pushcutoff(s_m_pushcutoff),
    .in_m_popvalid(s_m_popvalid),
    .out_m_peekdata_data(scl_fifo0_out_m_peekdata_data),
    .out_m_pushfull(scl_fifo0_out_m_pushfull),
    .out_m_popempty(scl_fifo0_out_m_popempty));
  /* find_the_damn_issue_sky130.vhd:11889:9  */
  scl_streamdemux scl_streamdemux0 (
    .in_m_in_valid(s_usbep1_rx_valid),
    .in_m_in(s_usbep1_rx),
    .in_unnamed(s_m_selector),
    .in_unnamed_2(s_unnamed_10),
    .in_unnamed_3(s_unnamed_11),
    .out_out_0_ready(scl_streamdemux0_out_out_0_ready),
    .out_out_0_valid(scl_streamdemux0_out_out_0_valid),
    .out_out_0(scl_streamdemux0_out_out_0),
    .out_m_in_ready_mux2(scl_streamdemux0_out_m_in_ready_mux2),
    .out_out_1_ready(scl_streamdemux0_out_out_1_ready),
    .out_out_1_valid(scl_streamdemux0_out_out_1_valid),
    .out_out_1(scl_streamdemux0_out_out_1));
  /* find_the_damn_issue_sky130.vhd:11903:9  */
  scl_uarttx scl_uarttx0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_baudrate(s_baudrate_3),
    .in_data_ready(s_out_0_ready),
    .in_data_valid(s_out_0_valid),
    .in_data(s_out_0),
    .out_baud_and_m_last(scl_uarttx0_out_baud_and_m_last),
    .out_out(scl_uarttx0_out_out));
  /* find_the_damn_issue_sky130.vhd:11913:9  */
  scl_bitbangengine scl_bitbangengine0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_command_ready(s_out_1_ready),
    .in_command_valid(s_out_1_valid),
    .in_command(s_out_1),
    .in_unnamed(s_unnamed_12),
    .in_unnamed_2(s_unnamed_15),
    .in_unnamed_3(s_unnamed_16),
    .in_unnamed_4(s_unnamed_17),
    .in_unnamed_5(s_unnamed_18),
    .in_unnamed_6(s_unnamed_19),
    .in_unnamed_7(s_unnamed_20),
    .in_unnamed_8(s_unnamed_21),
    .in_unnamed_9(s_unnamed_22),
    .in_unnamed_10(s_unnamed_23),
    .in_unnamed_11(s_unnamed_24),
    .in_unnamed_12(s_unnamed_25),
    .in_unnamed_13(s_unnamed_26),
    .in_unnamed_14(s_unnamed_27),
    .in_unnamed_15(s_unnamed_28),
    .out_const_0_mux13(scl_bitbangengine0_out_const_0_mux13),
    .out_m_io0_out(scl_bitbangengine0_out_m_io0_out),
    .out_m_io0_en(scl_bitbangengine0_out_m_io0_en),
    .out_m_io0_opendrain(scl_bitbangengine0_out_m_io0_opendrain),
    .out_m_io1_out(scl_bitbangengine0_out_m_io1_out),
    .out_m_io1_en(scl_bitbangengine0_out_m_io1_en),
    .out_m_io1_opendrain(scl_bitbangengine0_out_m_io1_opendrain),
    .out_m_io2_out(scl_bitbangengine0_out_m_io2_out),
    .out_m_io2_en(scl_bitbangengine0_out_m_io2_en),
    .out_m_io2_opendrain(scl_bitbangengine0_out_m_io2_opendrain),
    .out_m_io3_out(scl_bitbangengine0_out_m_io3_out),
    .out_m_io3_en(scl_bitbangengine0_out_m_io3_en),
    .out_m_io3_opendrain(scl_bitbangengine0_out_m_io3_opendrain),
    .out_m_io4_out(scl_bitbangengine0_out_m_io4_out),
    .out_m_io4_en(scl_bitbangengine0_out_m_io4_en),
    .out_m_io4_opendrain(scl_bitbangengine0_out_m_io4_opendrain),
    .out_m_io5_out(scl_bitbangengine0_out_m_io5_out),
    .out_m_io5_en(scl_bitbangengine0_out_m_io5_en),
    .out_m_io5_opendrain(scl_bitbangengine0_out_m_io5_opendrain),
    .out_m_io8_out(scl_bitbangengine0_out_m_io8_out),
    .out_m_io9_out(scl_bitbangengine0_out_m_io9_out),
    .out_m_io10_out(scl_bitbangengine0_out_m_io10_out),
    .out_m_io11_out(scl_bitbangengine0_out_m_io11_out),
    .out_m_io12_out(scl_bitbangengine0_out_m_io12_out),
    .out_m_io13_out(scl_bitbangengine0_out_m_io13_out),
    .out_m_io14_out(scl_bitbangengine0_out_m_io14_out),
    .out_m_io15_out(scl_bitbangengine0_out_m_io15_out),
    .out_out_ready(),
    .out_out_valid(scl_bitbangengine0_out_out_valid),
    .out_out(scl_bitbangengine0_out_out));
  /* find_the_damn_issue_sky130.vhd:11965:9  */
  scl_uartrx scl_uartrx0 (
    .clk(clk),
    .rst_n(rst_n),
    .in_baudrate(s_baudrate_3),
    .in_rx(s_rx),
    .out_out_valid(scl_uartrx0_out_out_valid),
    .out_out(scl_uartrx0_out_out));
  /* find_the_damn_issue_sky130.vhd:11973:9  */
  scl_streamarbiter scl_streamarbiter_2 (
    .clk(clk),
    .rst_n(rst_n),
    .in_unnamed(s_operatingmode_2),
    .in_m_in1_stream_valid(s_bitbangout_valid),
    .in_m_in1_stream(s_bitbangout),
    .in_m_in0_stream_valid(s_uartout_valid),
    .in_m_in0_stream(s_uartout),
    .in_m_out_ready(s_m_out_ready),
    .out_const_0_mux1(scl_streamarbiter_2_out_const_0_mux1),
    .out_m_out_valid(scl_streamarbiter_2_out_m_out_valid),
    .out_m_out(scl_streamarbiter_2_out_m_out));
  /* find_the_damn_issue_sky130.vhd:11986:9  */
  scl_fifo_2 scl_fifo1 (
    .clk(clk),
    .rst_n(rst_n),
    .in_m_pushcutoff(s_m_pushcutoff_2),
    .in_m_popvalid(s_m_popvalid_2),
    .in_m_popcommit(s_m_popcommit),
    .in_m_poprollback(s_m_poprollback),
    .in_m_pushvalid(s_m_pushvalid_2),
    .in_m_pushdata_data(s_m_pushdata_data_2),
    .in_m_pushdata_endpoint(s_m_pushdata_endpoint_2),
    .in_unnamed(s_unnamed_mux2_3),
    .out_m_peekdata_data(scl_fifo1_out_m_peekdata_data),
    .out_m_peekdata_endpoint(scl_fifo1_out_m_peekdata_endpoint),
    .out_m_pushfull(scl_fifo1_out_m_pushfull),
    .out_m_popempty(scl_fifo1_out_m_popempty));
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  always @(posedge clk or posedge n274_o)
    if (n274_o)
      n346_q <= 1'b0;
    else
      n346_q <= s_unnamed_mux2;
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  always @(posedge clk or posedge n274_o)
    if (n274_o)
      n347_q <= 1'b0;
    else
      n347_q <= s_set_line_coding_mux1;
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  assign n348_o = s_unnamed_4 ? s_m_packetdata_2_bit_16 : s_dtr;
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  always @(posedge clk or posedge n274_o)
    if (n274_o)
      n349_q <= 1'b0;
    else
      n349_q <= n348_o;
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  assign n350_o = s_unnamed_4 ? s_m_packetdata_2_bit_17 : s_rts;
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  always @(posedge clk or posedge n274_o)
    if (n274_o)
      n351_q <= 1'b0;
    else
      n351_q <= n350_o;
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  assign n352_o = s_unnamed_eq_set_line_coding_and_m_phy_rx_error_not_and_m_pid_2_rewired_eq_const_11_and_nested_condition_m_phy_rx_eop ? s_m_packetdata_2_rewired : s_baudrate;
  /* find_the_damn_issue_sky130.vhd:11860:17  */
  always @(posedge clk or posedge n274_o)
    if (n274_o)
      n353_q <= 24'b000000011100001000000000;
    else
      n353_q <= n352_o;
endmodule

