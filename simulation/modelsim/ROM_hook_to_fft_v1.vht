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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/27/2020 16:38:39"
                                                            
-- Vhdl Test Bench template for design  :  ROM_hook_to_fft_v1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ROM_hook_to_fft_v1_vhd_tst IS
END ROM_hook_to_fft_v1_vhd_tst;
ARCHITECTURE ROM_hook_to_fft_v1_arch OF ROM_hook_to_fft_v1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL DATA : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL EOP : STD_LOGIC;
SIGNAL RESET : STD_LOGIC;
SIGNAL SOP : STD_LOGIC;
SIGNAL TRIGGER_IN : STD_LOGIC;
SIGNAL VALID : STD_LOGIC;

constant clock_period : time := 5 ns; --200mhz

COMPONENT ROM_hook_to_fft_v1
	PORT (
	CLK : IN STD_LOGIC;
	DATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	EOP : OUT STD_LOGIC;
	RESET : IN STD_LOGIC;
	SOP : OUT STD_LOGIC;
	TRIGGER_IN : IN STD_LOGIC;
	VALID : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ROM_hook_to_fft_v1
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	DATA => DATA,
	EOP => EOP,
	RESET => RESET,
	SOP => SOP,
	TRIGGER_IN => TRIGGER_IN,
	VALID => VALID
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;  
clock : PROCESS
	

	---clock running
	BEGIN
	CLK <='1';
	wait for clock_period/2;
	CLK <='0';
	wait for clock_period/2;

END PROCESS clock;                                         
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list 

			reset <= '1';
			trigger_in <= '0';
			wait for 300 ns;
			
			
			reset <= '0';
			trigger_in <= '0';
			wait for 300 ns;
			
			trigger_in <= '1';
			wait for clock_period;
			
			
			trigger_in <= '0';
			wait for clock_period;
			
			
			
WAIT;                                                        
END PROCESS always;                                          
END ROM_hook_to_fft_v1_arch;
