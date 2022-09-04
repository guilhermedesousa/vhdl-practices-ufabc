LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DecodificadorDoisBits IS
	PORT(
			S    : IN STD_LOGIC_VECTOR(1 downto 0);
			EN   : IN STD_LOGIC;
			HEX0 : OUT std_logic_vector(6 downto 0));
END DecodificadorDoisBits;

ARCHITECTURE Behavior OF DecodificadorDoisBits IS
	SIGNAL Ens: STD_LOGIC_VECTOR(2 DOWNTO 0);
BEGIN
	Ens <= S & EN;
	HEX0 <= "0000100" WHEN Ens = "100" ELSE
	"0100100" WHEN Ens = "101" ELSE
	"0000001" WHEN Ens = "110" ELSE
	"1001111" WHEN Ens = "111" ELSE
	"1111111";
END Behavior;