library ieee;
use ieee.std_logic_1164.all;

entity SomadorCompletoFpga is
	generic (k: integer := 4);
	port (
		vem_um: in std_logic;
		X, Y: in std_logic_vector(k-1 downto 0);
		HEX0: out std_logic_vector(6 downto 0));
end SomadorCompletoFpga;

architecture structure of SomadorCompletoFpga is
	signal S: std_logic_vector(k-1 downto 0);
	
	component SomadorCompleto is
		port (
			vem_um: in std_logic;
			X, Y: in std_logic_vector(k-1 downto 0);
			S: out std_logic_vector(k-1 downto 0));
	end component;
	
	component SevenSegment is
		port (
			SW: in std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0));
	end component;
	
begin

	somador: SomadorCompleto port map (vem_um, X, Y, S);
	segment: SevenSegment port map (S, HEX0);
	
end structure;