-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/27/2020 16:56:40"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ROM_hook_to_fft_v1 IS
    PORT (
	TRIGGER_IN : IN std_logic;
	CLK : IN std_logic;
	RESET : IN std_logic;
	VALID : BUFFER std_logic;
	SOP : BUFFER std_logic;
	EOP : BUFFER std_logic;
	DATA : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END ROM_hook_to_fft_v1;

-- Design Ports Information
-- VALID	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SOP	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EOP	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[8]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[9]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[10]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[11]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[12]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[13]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[14]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DATA[15]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TRIGGER_IN	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ROM_hook_to_fft_v1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_TRIGGER_IN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_VALID : std_logic;
SIGNAL ww_SOP : std_logic;
SIGNAL ww_EOP : std_logic;
SIGNAL ww_DATA : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \TRIGGER_IN~input_o\ : std_logic;
SIGNAL \inst1|trigger_in_sync~feeder_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \inst1|trigger_in_sync~q\ : std_logic;
SIGNAL \inst1|trigger_in_sync2~q\ : std_logic;
SIGNAL \inst1|inst55|dff1~feeder_combout\ : std_logic;
SIGNAL \inst1|inst55|dff1~q\ : std_logic;
SIGNAL \inst1|inst55|dff2~q\ : std_logic;
SIGNAL \inst1|Add0~1_sumout\ : std_logic;
SIGNAL \inst1|Add0~2\ : std_logic;
SIGNAL \inst1|Add0~5_sumout\ : std_logic;
SIGNAL \inst1|Add0~6\ : std_logic;
SIGNAL \inst1|Add0~9_sumout\ : std_logic;
SIGNAL \inst1|Add0~10\ : std_logic;
SIGNAL \inst1|Add0~13_sumout\ : std_logic;
SIGNAL \inst1|Add0~14\ : std_logic;
SIGNAL \inst1|Add0~17_sumout\ : std_logic;
SIGNAL \inst1|Add0~18\ : std_logic;
SIGNAL \inst1|Add0~21_sumout\ : std_logic;
SIGNAL \inst1|cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \inst1|Add0~22\ : std_logic;
SIGNAL \inst1|Add0~25_sumout\ : std_logic;
SIGNAL \inst1|Add0~26\ : std_logic;
SIGNAL \inst1|Add0~29_sumout\ : std_logic;
SIGNAL \inst1|Add0~30\ : std_logic;
SIGNAL \inst1|Add0~33_sumout\ : std_logic;
SIGNAL \inst1|Add0~34\ : std_logic;
SIGNAL \inst1|Add0~37_sumout\ : std_logic;
SIGNAL \inst1|cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|cnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|cnt_ena_ff~0_combout\ : std_logic;
SIGNAL \inst1|cnt_ena_ff~q\ : std_logic;
SIGNAL \inst1|cnt_ena_ffd~feeder_combout\ : std_logic;
SIGNAL \inst1|cnt_ena_ffd~q\ : std_logic;
SIGNAL \inst0ac|sr[0]~feeder_combout\ : std_logic;
SIGNAL \inst0ac|sr[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|SOP_OUT~1_combout\ : std_logic;
SIGNAL \inst1|cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|SOP_OUT~0_combout\ : std_logic;
SIGNAL \inst1|SOP_OUT~combout\ : std_logic;
SIGNAL \inst1|SOP_OUT_ff~q\ : std_logic;
SIGNAL \inst0aa|sr[0]~feeder_combout\ : std_logic;
SIGNAL \inst0aa|sr[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|EOP_OUT~combout\ : std_logic;
SIGNAL \inst1|EOP_OUT_ff~q\ : std_logic;
SIGNAL \inst0ab|sr[0]~feeder_combout\ : std_logic;
SIGNAL \inst0ab|sr[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[2]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[8]~feeder_combout\ : std_logic;
SIGNAL \inst1|Q_OUT_ff[9]~feeder_combout\ : std_logic;
SIGNAL \inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst0aa|sr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|cnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst1|Q_OUT_ff\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst0ac|sr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst0ab|sr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|ALT_INV_cnt[9]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt[8]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt[7]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt[6]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt[4]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt[3]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_TRIGGER_IN~input_o\ : std_logic;
SIGNAL \ALT_INV_RESET~input_o\ : std_logic;
SIGNAL \inst1|ALT_INV_trigger_in_sync2~q\ : std_logic;
SIGNAL \inst1|inst55|ALT_INV_dff2~q\ : std_logic;
SIGNAL \inst1|inst55|ALT_INV_dff1~q\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_SOP_OUT~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_SOP_OUT~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt_ena_ff~q\ : std_logic;
SIGNAL \inst1|ALT_INV_EOP_OUT_ff~q\ : std_logic;
SIGNAL \inst1|ALT_INV_SOP_OUT_ff~q\ : std_logic;
SIGNAL \inst1|ALT_INV_cnt_ena_ffd~q\ : std_logic;
SIGNAL \inst0ab|ALT_INV_sr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst0aa|ALT_INV_sr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst0ac|ALT_INV_sr\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst1|ALT_INV_cnt\ : std_logic_vector(9 DOWNTO 0);

BEGIN

ww_TRIGGER_IN <= TRIGGER_IN;
ww_CLK <= CLK;
ww_RESET <= RESET;
VALID <= ww_VALID;
SOP <= ww_SOP;
EOP <= ww_EOP;
DATA <= ww_DATA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst1|Q_OUT_ff\(9) & \inst1|Q_OUT_ff\(8) & \inst1|Q_OUT_ff\(7) & \inst1|Q_OUT_ff[6]~DUPLICATE_q\ & \inst1|Q_OUT_ff\(5) & \inst1|Q_OUT_ff\(4) & 
\inst1|Q_OUT_ff[3]~DUPLICATE_q\ & \inst1|Q_OUT_ff[2]~DUPLICATE_q\ & \inst1|Q_OUT_ff[1]~DUPLICATE_q\ & \inst1|Q_OUT_ff\(0));

\inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|altsyncram_component|auto_generated|q_a\(3) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|altsyncram_component|auto_generated|q_a\(4) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|altsyncram_component|auto_generated|q_a\(5) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|altsyncram_component|auto_generated|q_a\(6) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|altsyncram_component|auto_generated|q_a\(7) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\inst2|altsyncram_component|auto_generated|q_a\(8) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\inst2|altsyncram_component|auto_generated|q_a\(9) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\inst2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\ <= (\inst1|Q_OUT_ff\(9) & \inst1|Q_OUT_ff\(8) & \inst1|Q_OUT_ff\(7) & \inst1|Q_OUT_ff\(6) & \inst1|Q_OUT_ff\(5) & \inst1|Q_OUT_ff\(4) & \inst1|Q_OUT_ff\(3) & 
\inst1|Q_OUT_ff\(2) & \inst1|Q_OUT_ff\(1) & \inst1|Q_OUT_ff\(0));

\inst2|altsyncram_component|auto_generated|q_a\(10) <= \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(0);
\inst2|altsyncram_component|auto_generated|q_a\(11) <= \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(1);
\inst2|altsyncram_component|auto_generated|q_a\(12) <= \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(2);
\inst2|altsyncram_component|auto_generated|q_a\(13) <= \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(3);
\inst2|altsyncram_component|auto_generated|q_a\(14) <= \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(4);
\inst2|altsyncram_component|auto_generated|q_a\(15) <= \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\(5);
\inst1|ALT_INV_cnt[9]~DUPLICATE_q\ <= NOT \inst1|cnt[9]~DUPLICATE_q\;
\inst1|ALT_INV_cnt[8]~DUPLICATE_q\ <= NOT \inst1|cnt[8]~DUPLICATE_q\;
\inst1|ALT_INV_cnt[7]~DUPLICATE_q\ <= NOT \inst1|cnt[7]~DUPLICATE_q\;
\inst1|ALT_INV_cnt[6]~DUPLICATE_q\ <= NOT \inst1|cnt[6]~DUPLICATE_q\;
\inst1|ALT_INV_cnt[4]~DUPLICATE_q\ <= NOT \inst1|cnt[4]~DUPLICATE_q\;
\inst1|ALT_INV_cnt[3]~DUPLICATE_q\ <= NOT \inst1|cnt[3]~DUPLICATE_q\;
\inst1|ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \inst1|cnt[1]~DUPLICATE_q\;
\inst1|ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \inst1|cnt[0]~DUPLICATE_q\;
\ALT_INV_TRIGGER_IN~input_o\ <= NOT \TRIGGER_IN~input_o\;
\ALT_INV_RESET~input_o\ <= NOT \RESET~input_o\;
\inst1|ALT_INV_trigger_in_sync2~q\ <= NOT \inst1|trigger_in_sync2~q\;
\inst1|inst55|ALT_INV_dff2~q\ <= NOT \inst1|inst55|dff2~q\;
\inst1|inst55|ALT_INV_dff1~q\ <= NOT \inst1|inst55|dff1~q\;
\inst1|ALT_INV_Equal1~1_combout\ <= NOT \inst1|Equal1~1_combout\;
\inst1|ALT_INV_Equal1~0_combout\ <= NOT \inst1|Equal1~0_combout\;
\inst1|ALT_INV_SOP_OUT~1_combout\ <= NOT \inst1|SOP_OUT~1_combout\;
\inst1|ALT_INV_SOP_OUT~0_combout\ <= NOT \inst1|SOP_OUT~0_combout\;
\inst1|ALT_INV_cnt_ena_ff~q\ <= NOT \inst1|cnt_ena_ff~q\;
\inst1|ALT_INV_EOP_OUT_ff~q\ <= NOT \inst1|EOP_OUT_ff~q\;
\inst1|ALT_INV_SOP_OUT_ff~q\ <= NOT \inst1|SOP_OUT_ff~q\;
\inst1|ALT_INV_cnt_ena_ffd~q\ <= NOT \inst1|cnt_ena_ffd~q\;
\inst0ab|ALT_INV_sr\(0) <= NOT \inst0ab|sr\(0);
\inst0aa|ALT_INV_sr\(0) <= NOT \inst0aa|sr\(0);
\inst0ac|ALT_INV_sr\(0) <= NOT \inst0ac|sr\(0);
\inst1|ALT_INV_cnt\(9) <= NOT \inst1|cnt\(9);
\inst1|ALT_INV_cnt\(8) <= NOT \inst1|cnt\(8);
\inst1|ALT_INV_cnt\(7) <= NOT \inst1|cnt\(7);
\inst1|ALT_INV_cnt\(6) <= NOT \inst1|cnt\(6);
\inst1|ALT_INV_cnt\(5) <= NOT \inst1|cnt\(5);
\inst1|ALT_INV_cnt\(4) <= NOT \inst1|cnt\(4);
\inst1|ALT_INV_cnt\(3) <= NOT \inst1|cnt\(3);
\inst1|ALT_INV_cnt\(2) <= NOT \inst1|cnt\(2);
\inst1|ALT_INV_cnt\(1) <= NOT \inst1|cnt\(1);
\inst1|ALT_INV_cnt\(0) <= NOT \inst1|cnt\(0);

-- Location: IOOBUF_X6_Y0_N19
\VALID~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0ac|sr\(1),
	devoe => ww_devoe,
	o => ww_VALID);

-- Location: IOOBUF_X28_Y0_N2
\SOP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0aa|sr\(1),
	devoe => ww_devoe,
	o => ww_SOP);

-- Location: IOOBUF_X26_Y0_N76
\EOP~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst0ab|sr\(1),
	devoe => ww_devoe,
	o => ww_EOP);

-- Location: IOOBUF_X6_Y0_N2
\DATA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(0),
	devoe => ww_devoe,
	o => ww_DATA(0));

-- Location: IOOBUF_X4_Y0_N19
\DATA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(1),
	devoe => ww_devoe,
	o => ww_DATA(1));

-- Location: IOOBUF_X4_Y0_N36
\DATA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(2),
	devoe => ww_devoe,
	o => ww_DATA(2));

-- Location: IOOBUF_X2_Y0_N42
\DATA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(3),
	devoe => ww_devoe,
	o => ww_DATA(3));

-- Location: IOOBUF_X2_Y0_N59
\DATA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(4),
	devoe => ww_devoe,
	o => ww_DATA(4));

-- Location: IOOBUF_X4_Y0_N2
\DATA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(5),
	devoe => ww_devoe,
	o => ww_DATA(5));

-- Location: IOOBUF_X6_Y0_N53
\DATA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(6),
	devoe => ww_devoe,
	o => ww_DATA(6));

-- Location: IOOBUF_X2_Y0_N93
\DATA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(7),
	devoe => ww_devoe,
	o => ww_DATA(7));

-- Location: IOOBUF_X4_Y0_N53
\DATA[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(8),
	devoe => ww_devoe,
	o => ww_DATA(8));

-- Location: IOOBUF_X2_Y0_N76
\DATA[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(9),
	devoe => ww_devoe,
	o => ww_DATA(9));

-- Location: IOOBUF_X26_Y0_N93
\DATA[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(10),
	devoe => ww_devoe,
	o => ww_DATA(10));

-- Location: IOOBUF_X8_Y0_N36
\DATA[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(11),
	devoe => ww_devoe,
	o => ww_DATA(11));

-- Location: IOOBUF_X26_Y0_N59
\DATA[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(12),
	devoe => ww_devoe,
	o => ww_DATA(12));

-- Location: IOOBUF_X26_Y0_N42
\DATA[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(13),
	devoe => ww_devoe,
	o => ww_DATA(13));

-- Location: IOOBUF_X8_Y0_N19
\DATA[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(14),
	devoe => ww_devoe,
	o => ww_DATA(14));

-- Location: IOOBUF_X8_Y0_N53
\DATA[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|altsyncram_component|auto_generated|q_a\(15),
	devoe => ww_devoe,
	o => ww_DATA(15));

-- Location: IOIBUF_X89_Y35_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X8_Y0_N1
\TRIGGER_IN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_TRIGGER_IN,
	o => \TRIGGER_IN~input_o\);

-- Location: LABCELL_X7_Y1_N6
\inst1|trigger_in_sync~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|trigger_in_sync~feeder_combout\ = ( \TRIGGER_IN~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_TRIGGER_IN~input_o\,
	combout => \inst1|trigger_in_sync~feeder_combout\);

-- Location: IOIBUF_X6_Y0_N35
\RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: FF_X7_Y1_N8
\inst1|trigger_in_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|trigger_in_sync~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|trigger_in_sync~q\);

-- Location: FF_X7_Y1_N13
\inst1|trigger_in_sync2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|trigger_in_sync~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|trigger_in_sync2~q\);

-- Location: LABCELL_X9_Y1_N57
\inst1|inst55|dff1~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|inst55|dff1~feeder_combout\ = ( \inst1|trigger_in_sync2~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_trigger_in_sync2~q\,
	combout => \inst1|inst55|dff1~feeder_combout\);

-- Location: FF_X9_Y1_N59
\inst1|inst55|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|inst55|dff1~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst55|dff1~q\);

-- Location: FF_X9_Y1_N49
\inst1|inst55|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|inst55|dff1~q\,
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst55|dff2~q\);

-- Location: LABCELL_X10_Y1_N0
\inst1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~1_sumout\ = SUM(( \inst1|cnt\(0) ) + ( VCC ) + ( !VCC ))
-- \inst1|Add0~2\ = CARRY(( \inst1|cnt\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(0),
	cin => GND,
	sumout => \inst1|Add0~1_sumout\,
	cout => \inst1|Add0~2\);

-- Location: FF_X10_Y1_N2
\inst1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~1_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(0));

-- Location: LABCELL_X10_Y1_N3
\inst1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~5_sumout\ = SUM(( \inst1|cnt\(1) ) + ( GND ) + ( \inst1|Add0~2\ ))
-- \inst1|Add0~6\ = CARRY(( \inst1|cnt\(1) ) + ( GND ) + ( \inst1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(1),
	cin => \inst1|Add0~2\,
	sumout => \inst1|Add0~5_sumout\,
	cout => \inst1|Add0~6\);

-- Location: FF_X10_Y1_N5
\inst1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~5_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(1));

-- Location: LABCELL_X10_Y1_N6
\inst1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~9_sumout\ = SUM(( \inst1|cnt\(2) ) + ( GND ) + ( \inst1|Add0~6\ ))
-- \inst1|Add0~10\ = CARRY(( \inst1|cnt\(2) ) + ( GND ) + ( \inst1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(2),
	cin => \inst1|Add0~6\,
	sumout => \inst1|Add0~9_sumout\,
	cout => \inst1|Add0~10\);

-- Location: FF_X10_Y1_N8
\inst1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~9_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(2));

-- Location: LABCELL_X10_Y1_N9
\inst1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~13_sumout\ = SUM(( \inst1|cnt\(3) ) + ( GND ) + ( \inst1|Add0~10\ ))
-- \inst1|Add0~14\ = CARRY(( \inst1|cnt\(3) ) + ( GND ) + ( \inst1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(3),
	cin => \inst1|Add0~10\,
	sumout => \inst1|Add0~13_sumout\,
	cout => \inst1|Add0~14\);

-- Location: FF_X10_Y1_N11
\inst1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~13_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(3));

-- Location: LABCELL_X10_Y1_N12
\inst1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~17_sumout\ = SUM(( \inst1|cnt\(4) ) + ( GND ) + ( \inst1|Add0~14\ ))
-- \inst1|Add0~18\ = CARRY(( \inst1|cnt\(4) ) + ( GND ) + ( \inst1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(4),
	cin => \inst1|Add0~14\,
	sumout => \inst1|Add0~17_sumout\,
	cout => \inst1|Add0~18\);

-- Location: FF_X10_Y1_N13
\inst1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~17_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(4));

-- Location: LABCELL_X10_Y1_N15
\inst1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~21_sumout\ = SUM(( \inst1|cnt\(5) ) + ( GND ) + ( \inst1|Add0~18\ ))
-- \inst1|Add0~22\ = CARRY(( \inst1|cnt\(5) ) + ( GND ) + ( \inst1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(5),
	cin => \inst1|Add0~18\,
	sumout => \inst1|Add0~21_sumout\,
	cout => \inst1|Add0~22\);

-- Location: FF_X10_Y1_N17
\inst1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~21_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(5));

-- Location: FF_X10_Y1_N10
\inst1|cnt[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~13_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[3]~DUPLICATE_q\);

-- Location: FF_X10_Y1_N14
\inst1|cnt[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~17_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[4]~DUPLICATE_q\);

-- Location: FF_X10_Y1_N1
\inst1|cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~1_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[0]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y1_N39
\inst1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = ( \inst1|cnt[0]~DUPLICATE_q\ & ( (\inst1|cnt[3]~DUPLICATE_q\ & (\inst1|cnt[4]~DUPLICATE_q\ & (\inst1|cnt\(2) & \inst1|cnt\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cnt[3]~DUPLICATE_q\,
	datab => \inst1|ALT_INV_cnt[4]~DUPLICATE_q\,
	datac => \inst1|ALT_INV_cnt\(2),
	datad => \inst1|ALT_INV_cnt\(1),
	dataf => \inst1|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \inst1|Equal1~0_combout\);

-- Location: LABCELL_X10_Y1_N30
\inst1|Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = ( \inst1|Equal1~0_combout\ & ( (\inst1|cnt\(5) & \inst1|Equal1~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_cnt\(5),
	datad => \inst1|ALT_INV_Equal1~1_combout\,
	dataf => \inst1|ALT_INV_Equal1~0_combout\,
	combout => \inst1|Equal1~2_combout\);

-- Location: FF_X10_Y1_N28
\inst1|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~37_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(9));

-- Location: LABCELL_X10_Y1_N18
\inst1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~25_sumout\ = SUM(( \inst1|cnt\(6) ) + ( GND ) + ( \inst1|Add0~22\ ))
-- \inst1|Add0~26\ = CARRY(( \inst1|cnt\(6) ) + ( GND ) + ( \inst1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(6),
	cin => \inst1|Add0~22\,
	sumout => \inst1|Add0~25_sumout\,
	cout => \inst1|Add0~26\);

-- Location: FF_X10_Y1_N19
\inst1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~25_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(6));

-- Location: LABCELL_X10_Y1_N21
\inst1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~29_sumout\ = SUM(( \inst1|cnt\(7) ) + ( GND ) + ( \inst1|Add0~26\ ))
-- \inst1|Add0~30\ = CARRY(( \inst1|cnt\(7) ) + ( GND ) + ( \inst1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(7),
	cin => \inst1|Add0~26\,
	sumout => \inst1|Add0~29_sumout\,
	cout => \inst1|Add0~30\);

-- Location: FF_X10_Y1_N22
\inst1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~29_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(7));

-- Location: LABCELL_X10_Y1_N24
\inst1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~33_sumout\ = SUM(( \inst1|cnt\(8) ) + ( GND ) + ( \inst1|Add0~30\ ))
-- \inst1|Add0~34\ = CARRY(( \inst1|cnt\(8) ) + ( GND ) + ( \inst1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(8),
	cin => \inst1|Add0~30\,
	sumout => \inst1|Add0~33_sumout\,
	cout => \inst1|Add0~34\);

-- Location: FF_X10_Y1_N25
\inst1|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~33_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt\(8));

-- Location: LABCELL_X10_Y1_N27
\inst1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Add0~37_sumout\ = SUM(( \inst1|cnt\(9) ) + ( GND ) + ( \inst1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \inst1|ALT_INV_cnt\(9),
	cin => \inst1|Add0~34\,
	sumout => \inst1|Add0~37_sumout\);

-- Location: FF_X10_Y1_N29
\inst1|cnt[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~37_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[9]~DUPLICATE_q\);

-- Location: FF_X10_Y1_N26
\inst1|cnt[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~33_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[8]~DUPLICATE_q\);

-- Location: FF_X10_Y1_N23
\inst1|cnt[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~29_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[7]~DUPLICATE_q\);

-- Location: FF_X10_Y1_N20
\inst1|cnt[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~25_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[6]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y1_N54
\inst1|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = ( \inst1|cnt[6]~DUPLICATE_q\ & ( (\inst1|cnt[9]~DUPLICATE_q\ & (\inst1|cnt[8]~DUPLICATE_q\ & \inst1|cnt[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cnt[9]~DUPLICATE_q\,
	datac => \inst1|ALT_INV_cnt[8]~DUPLICATE_q\,
	datad => \inst1|ALT_INV_cnt[7]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_cnt[6]~DUPLICATE_q\,
	combout => \inst1|Equal1~1_combout\);

-- Location: LABCELL_X10_Y1_N42
\inst1|cnt_ena_ff~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cnt_ena_ff~0_combout\ = ( \inst1|cnt_ena_ff~q\ & ( \inst1|Equal1~0_combout\ & ( (!\inst1|Equal1~1_combout\) # ((!\inst1|cnt\(5)) # ((\inst1|inst55|dff1~q\ & !\inst1|inst55|dff2~q\))) ) ) ) # ( !\inst1|cnt_ena_ff~q\ & ( \inst1|Equal1~0_combout\ & ( 
-- (\inst1|inst55|dff1~q\ & !\inst1|inst55|dff2~q\) ) ) ) # ( \inst1|cnt_ena_ff~q\ & ( !\inst1|Equal1~0_combout\ ) ) # ( !\inst1|cnt_ena_ff~q\ & ( !\inst1|Equal1~0_combout\ & ( (\inst1|inst55|dff1~q\ & !\inst1|inst55|dff2~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100111111111111111101000100010001001111111111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst55|ALT_INV_dff1~q\,
	datab => \inst1|inst55|ALT_INV_dff2~q\,
	datac => \inst1|ALT_INV_Equal1~1_combout\,
	datad => \inst1|ALT_INV_cnt\(5),
	datae => \inst1|ALT_INV_cnt_ena_ff~q\,
	dataf => \inst1|ALT_INV_Equal1~0_combout\,
	combout => \inst1|cnt_ena_ff~0_combout\);

-- Location: FF_X10_Y1_N44
\inst1|cnt_ena_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|cnt_ena_ff~0_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt_ena_ff~q\);

-- Location: LABCELL_X13_Y1_N51
\inst1|cnt_ena_ffd~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|cnt_ena_ffd~feeder_combout\ = ( \inst1|cnt_ena_ff~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_cnt_ena_ff~q\,
	combout => \inst1|cnt_ena_ffd~feeder_combout\);

-- Location: FF_X13_Y1_N52
\inst1|cnt_ena_ffd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|cnt_ena_ffd~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt_ena_ffd~q\);

-- Location: MLABCELL_X6_Y1_N57
\inst0ac|sr[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst0ac|sr[0]~feeder_combout\ = ( \inst1|cnt_ena_ffd~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_cnt_ena_ffd~q\,
	combout => \inst0ac|sr[0]~feeder_combout\);

-- Location: FF_X6_Y1_N58
\inst0ac|sr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst0ac|sr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0ac|sr\(0));

-- Location: MLABCELL_X6_Y1_N15
\inst0ac|sr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst0ac|sr[1]~feeder_combout\ = ( \inst0ac|sr\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst0ac|ALT_INV_sr\(0),
	combout => \inst0ac|sr[1]~feeder_combout\);

-- Location: FF_X6_Y1_N16
\inst0ac|sr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst0ac|sr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0ac|sr\(1));

-- Location: LABCELL_X10_Y1_N33
\inst1|SOP_OUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|SOP_OUT~1_combout\ = ( !\inst1|cnt[6]~DUPLICATE_q\ & ( (!\inst1|cnt[8]~DUPLICATE_q\ & (!\inst1|cnt\(5) & !\inst1|cnt[7]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cnt[8]~DUPLICATE_q\,
	datac => \inst1|ALT_INV_cnt\(5),
	datad => \inst1|ALT_INV_cnt[7]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_cnt[6]~DUPLICATE_q\,
	combout => \inst1|SOP_OUT~1_combout\);

-- Location: FF_X10_Y1_N4
\inst1|cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Add0~5_sumout\,
	clrn => \ALT_INV_RESET~input_o\,
	sclr => \inst1|Equal1~2_combout\,
	ena => \inst1|cnt_ena_ff~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X10_Y1_N48
\inst1|SOP_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|SOP_OUT~0_combout\ = ( !\inst1|cnt[1]~DUPLICATE_q\ & ( \inst1|cnt_ena_ff~q\ & ( (!\inst1|cnt\(2) & !\inst1|cnt\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_cnt\(2),
	datac => \inst1|ALT_INV_cnt\(0),
	datae => \inst1|ALT_INV_cnt[1]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_cnt_ena_ff~q\,
	combout => \inst1|SOP_OUT~0_combout\);

-- Location: LABCELL_X10_Y1_N36
\inst1|SOP_OUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|SOP_OUT~combout\ = ( \inst1|SOP_OUT~0_combout\ & ( (!\inst1|cnt[3]~DUPLICATE_q\ & (!\inst1|cnt[4]~DUPLICATE_q\ & (\inst1|SOP_OUT~1_combout\ & !\inst1|cnt[9]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|ALT_INV_cnt[3]~DUPLICATE_q\,
	datab => \inst1|ALT_INV_cnt[4]~DUPLICATE_q\,
	datac => \inst1|ALT_INV_SOP_OUT~1_combout\,
	datad => \inst1|ALT_INV_cnt[9]~DUPLICATE_q\,
	dataf => \inst1|ALT_INV_SOP_OUT~0_combout\,
	combout => \inst1|SOP_OUT~combout\);

-- Location: FF_X10_Y1_N37
\inst1|SOP_OUT_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|SOP_OUT~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SOP_OUT_ff~q\);

-- Location: LABCELL_X22_Y1_N57
\inst0aa|sr[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst0aa|sr[0]~feeder_combout\ = ( \inst1|SOP_OUT_ff~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_SOP_OUT_ff~q\,
	combout => \inst0aa|sr[0]~feeder_combout\);

-- Location: FF_X22_Y1_N58
\inst0aa|sr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst0aa|sr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0aa|sr\(0));

-- Location: LABCELL_X22_Y1_N36
\inst0aa|sr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst0aa|sr[1]~feeder_combout\ = ( \inst0aa|sr\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst0aa|ALT_INV_sr\(0),
	combout => \inst0aa|sr[1]~feeder_combout\);

-- Location: FF_X22_Y1_N37
\inst0aa|sr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst0aa|sr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0aa|sr\(1));

-- Location: LABCELL_X10_Y1_N57
\inst1|EOP_OUT\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|EOP_OUT~combout\ = ( \inst1|Equal1~0_combout\ & ( (\inst1|cnt\(5) & (\inst1|cnt_ena_ff~q\ & \inst1|Equal1~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst1|ALT_INV_cnt\(5),
	datac => \inst1|ALT_INV_cnt_ena_ff~q\,
	datad => \inst1|ALT_INV_Equal1~1_combout\,
	dataf => \inst1|ALT_INV_Equal1~0_combout\,
	combout => \inst1|EOP_OUT~combout\);

-- Location: FF_X10_Y1_N58
\inst1|EOP_OUT_ff\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|EOP_OUT~combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|EOP_OUT_ff~q\);

-- Location: MLABCELL_X21_Y1_N30
\inst0ab|sr[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst0ab|sr[0]~feeder_combout\ = ( \inst1|EOP_OUT_ff~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_EOP_OUT_ff~q\,
	combout => \inst0ab|sr[0]~feeder_combout\);

-- Location: FF_X21_Y1_N32
\inst0ab|sr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst0ab|sr[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0ab|sr\(0));

-- Location: MLABCELL_X21_Y1_N39
\inst0ab|sr[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst0ab|sr[1]~feeder_combout\ = ( \inst0ab|sr\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst0ab|ALT_INV_sr\(0),
	combout => \inst0ab|sr[1]~feeder_combout\);

-- Location: FF_X21_Y1_N40
\inst0ab|sr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst0ab|sr[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst0ab|sr\(1));

-- Location: FF_X10_Y1_N53
\inst1|Q_OUT_ff[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|cnt\(0),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(0));

-- Location: LABCELL_X11_Y1_N0
\inst1|Q_OUT_ff[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Q_OUT_ff[1]~feeder_combout\ = ( \inst1|cnt[1]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_cnt[1]~DUPLICATE_q\,
	combout => \inst1|Q_OUT_ff[1]~feeder_combout\);

-- Location: FF_X11_Y1_N1
\inst1|Q_OUT_ff[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff[1]~DUPLICATE_q\);

-- Location: FF_X9_Y1_N40
\inst1|Q_OUT_ff[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|cnt\(2),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff[2]~DUPLICATE_q\);

-- Location: LABCELL_X13_Y1_N33
\inst1|Q_OUT_ff[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Q_OUT_ff[3]~feeder_combout\ = ( \inst1|cnt\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_cnt\(3),
	combout => \inst1|Q_OUT_ff[3]~feeder_combout\);

-- Location: FF_X13_Y1_N34
\inst1|Q_OUT_ff[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff[3]~DUPLICATE_q\);

-- Location: FF_X11_Y1_N43
\inst1|Q_OUT_ff[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|cnt\(4),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(4));

-- Location: FF_X10_Y1_N46
\inst1|Q_OUT_ff[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|cnt\(5),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(5));

-- Location: LABCELL_X11_Y1_N48
\inst1|Q_OUT_ff[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Q_OUT_ff[6]~feeder_combout\ = ( \inst1|cnt\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_cnt\(6),
	combout => \inst1|Q_OUT_ff[6]~feeder_combout\);

-- Location: FF_X11_Y1_N50
\inst1|Q_OUT_ff[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff[6]~DUPLICATE_q\);

-- Location: FF_X11_Y1_N10
\inst1|Q_OUT_ff[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|cnt\(7),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(7));

-- Location: LABCELL_X11_Y1_N36
\inst1|Q_OUT_ff[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Q_OUT_ff[8]~feeder_combout\ = ( \inst1|cnt\(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_cnt\(8),
	combout => \inst1|Q_OUT_ff[8]~feeder_combout\);

-- Location: FF_X11_Y1_N37
\inst1|Q_OUT_ff[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[8]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(8));

-- Location: LABCELL_X13_Y1_N36
\inst1|Q_OUT_ff[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst1|Q_OUT_ff[9]~feeder_combout\ = ( \inst1|cnt\(9) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \inst1|ALT_INV_cnt\(9),
	combout => \inst1|Q_OUT_ff[9]~feeder_combout\);

-- Location: FF_X13_Y1_N37
\inst1|Q_OUT_ff[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[9]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(9));

-- Location: M10K_X5_Y1_N0
\inst2|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "F87B5E7BA2F03EF08C4E18C5D0F40CF63AFE77A5F1FF80B053190590D804F43AAE73A9F38010CC58190550BBFBF27A6E73AEF580A0EC5C18C5009BF2F0BA3E77B3F78121085F1884A07BE9EEFA0E7FB9F9C1B1206118044057E1ED79EE8BC0FBC23138631743D033D8EBF9DE97C7FE02C14C6416436013D1EAB9CEA7CE00433160641542EFEFC9E9B9CEBBD60283B1706314026FCBC2E8F9DECFDE0484217C621281EFA7BBE839FEE7E606C481846011015F87B5E7BA2F03EF08C4E18C5D0F40DF67AFE77A5F1FF80AC53190590D804F47ABE73A9F38010CC58190550BBFBF27A6E73AEF580A0EC5C18C5009BF2F0BA3E77B3F78121085F1884A07BE9EEFA0E7",
	mem_init3 => "FB9F981B1206118044057E1ED79EE8BBFFBC23138631743D037D9EBF9DE97C6FE02B14C6416436013D1EAF9CEA7CE00433160641542EFEFC9E9B9CEBBD60243B1706314026FCBC2E8F9DECFDE0484217C621281EFA7BBE839FEE7E606C481846011015F87B5E7BA2EFFEF08C4E18C5D0F40DF67B0E77A5F1BF80AC53190590D804F47ABE73A9F38010CC58190550BBFBF27A6E73AEF58090EC5C18C5009BF2F0BA3E77B3F78121045F1884A07BE9EEFA0E7FB9F981B1206118044057E1ED79EE8BBFFBC23138631743D037D9EC39DE97C6FE02B14C6416436013D1EAF9CEA7CE00433160641542EFEFC9E9B9CEBBD60243A1706314026FCBC2E8F9DECFDE0484",
	mem_init2 => "117C621281EFABBBE839FEE7E606C481846011015F87B5E7BA2EFFEF08C4E18C5D0F40DF67B0E77A5F1BF80AC53190590D804F47ABE73A9F38000CC58190550BBFBF27A6E73AEF58090E85B18C5009BF2F0BA3E77B3F78121045F1884A07BEAEEFA0E7FB9F981B120611804405BE1ED79EE8BBFFBC23138631743D037D9EC39DE97C6FE02B14C6416436013D1EAF9CEA7CE00033160641542EFEFC9E9B9CEBBD60243A16C6314026FCBC2E8F9DECFDE0484117C621281EFABBBE839FEE7E606C481846011016F87B5E7BA2EFFEF08C4E18C5D0F40DF67B0E77A5F1BF80AC53190590D804F47ABE73A9F38000CC58190550BBFBF27A6E73AEF58090E85B18C500",
	mem_init1 => "9BF2F0BA3E77B3F78121045F1884A07BEAEEFA0E7FB9F981B120611804405BE1ED79EE8BBFFBC23138631743D037D9EC39DE97C6FDC2B14C6416436013D1EAF9CEA7CE0003315C641542FFEFC9E9B9CEB7D50243A16C6314027FCBC2E8F9DECFDE0484117C621281EFABBBE839FEE7E6068481846011016F87B5E7BA2EFFEF08C4E18C5D0F40DF67B0E77A5F1BF70AC53190590D804F47ABE73A9F38000CC57190550BFFBF27A6E73ADF54090E85B18C5009FF3F0BA3E77B3F78121045F1884A07BEAEF3A0E7FB9F981A120611804405BE1ED79EE8BBFFBC23138631743D037D9EC39DE97C6FDC2B14C6416436013D1EAF9CEA7CE0003315C641542FFEFC9E9F",
	mem_init0 => "9CEB7D50243A16C6314027FCFC2E8F9DECFDD0484117C621281EFABBCE839FEE7E6068481846011016F87B5E7BA2EFFEF08C4D18C5D0F40DF67B0E77A5F1BF70AC53190590D804F47ABE73A9F34000CC57190550BFFBF2BA7E73ADF54090E85B18C5009FF3F0BA3E77B3F74121045F1884A07BEAEF3A0E7FB9F981A120611804405BE1ED79EE87BFFB823134631743E037D9EC39DE97C6FDC2B14C6416436013D1EAF9CEA7CD0003315C641542FFF3CAE9F9CEB7D50243A16C6314027FCFC2E8F9DECFDD0484117C621281EFABBCE839FEE7E6068481846011016F87B5E7BA1EFFEE08C4D18C5D0F80DF67B0E77A5F1BF70AC53190590D804F47ABE73A9F3400",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./rawdata.hex",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_RAWDATA:inst2|altsyncram:altsyncram_component|altsyncram_ob24:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 10,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	ena0 => \inst1|cnt_ena_ffd~q\,
	portaaddr => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: FF_X11_Y1_N2
\inst1|Q_OUT_ff[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[1]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(1));

-- Location: FF_X9_Y1_N41
\inst1|Q_OUT_ff[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	asdata => \inst1|cnt\(2),
	clrn => \ALT_INV_RESET~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(2));

-- Location: FF_X13_Y1_N35
\inst1|Q_OUT_ff[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[3]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(3));

-- Location: FF_X11_Y1_N49
\inst1|Q_OUT_ff[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \inst1|Q_OUT_ff[6]~feeder_combout\,
	clrn => \ALT_INV_RESET~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|Q_OUT_ff\(6));

-- Location: M10K_X14_Y1_N0
\inst2|altsyncram_component|auto_generated|ram_block1a10\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init4 => "0FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0F",
	mem_init3 => "C3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000",
	mem_init2 => "000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000",
	mem_init1 => "003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0000000000000000FC3F0FC",
	mem_init0 => "3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0FC0000000000000003F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC3F0000000000000000FC3F0FC3F0FC00",
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "./rawdata.hex",
	init_file_layout => "port_a",
	logical_ram_name => "ROM_RAWDATA:inst2|altsyncram:altsyncram_component|altsyncram_ob24:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 10,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 10,
	port_b_data_width => 10,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputCLKENA0_outclk\,
	ena0 => \inst1|cnt_ena_ffd~q\,
	portaaddr => \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|altsyncram_component|auto_generated|ram_block1a10_PORTADATAOUT_bus\);

-- Location: MLABCELL_X78_Y76_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


