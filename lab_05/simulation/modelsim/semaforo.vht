-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "07/21/2022 21:46:20"
                                                            
-- Vhdl Test Bench template for design  :  semaforo
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY semaforo_vhd_tst IS
END semaforo_vhd_tst;

ARCHITECTURE semaforo_arch OF semaforo_vhd_tst IS
-- constants                                                 
-- signals
CONSTANT clk_period : TIME := 20 ns;
CONSTANT clk_max : INTEGER := 20;
SIGNAL av_princ : STD_LOGIC_VECTOR(0 TO 2);
SIGNAL av_sec : STD_LOGIC_VECTOR(0 TO 2);
SIGNAL clk : STD_LOGIC := '0';
SIGNAL resetn : STD_LOGIC;

COMPONENT semaforo
	PORT (
	av_princ : OUT STD_LOGIC_VECTOR(0 TO 2);
	av_sec : OUT STD_LOGIC_VECTOR(0 TO 2);
	clk : IN STD_LOGIC;
	resetn : IN STD_LOGIC
	);
END COMPONENT;

BEGIN
	i1 : semaforo
	PORT MAP (
-- list connections between master ports and signals
	av_princ => av_princ,
	av_sec => av_sec,
	clk => clk,
	resetn => resetn
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN
		FOR count_value IN 0 TO clk_max LOOP
			clk <= '0';
			WAIT FOR clk_period/2;
			clk <= '1';
			WAIT FOR clk_period/2;
		END LOOP;
		WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END semaforo_arch;
