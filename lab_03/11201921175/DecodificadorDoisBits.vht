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
-- Generated on "07/08/2022 11:15:44"
                                                            
-- Vhdl Test Bench template for design  :  DecodificadorDoisBits
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DecodificadorDoisBits_vhd_tst IS
END DecodificadorDoisBits_vhd_tst;
ARCHITECTURE DecodificadorDoisBits_arch OF DecodificadorDoisBits_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL EN : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL S : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT DecodificadorDoisBits
	PORT (
	EN : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	S : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DecodificadorDoisBits
	PORT MAP (
-- list connections between master ports and signals
	EN => EN,
	HEX0 => HEX0,
	S => S
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once
	S <= "00"; EN <= '1';
	WAIT FOR 200 ns;
	S <= "01"; EN <= '1';
	WAIT FOR 200 ns;
	S <= "10"; EN <= '1';
	WAIT FOR 200 ns;
	S <= "11"; EN <= '1';
	WAIT FOR 200 ns;
	S <= "XX"; EN <= '0';
	WAIT FOR 200 ns;
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
END DecodificadorDoisBits_arch;
