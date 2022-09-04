LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY GeradorParidade IS
	PORT(A3,A2,A1,A0: IN std_logic;
			P: OUT std_logic);
END GeradorParidade;

ARCHITECTURE Comportamental OF GeradorParidade IS
BEGIN
	P <= A3 XOR A2 XOR A1 XOR A0;
END Comportamental;