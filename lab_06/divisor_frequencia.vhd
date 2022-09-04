library ieee;
use ieee.std_logic_1164.all;

entity divisor_frequencia is
	port (
		KEY: in std_logic_vector(1 downto 0);
		HEX0: out std_logic_vector(6 downto 0)
	);
end divisor_frequencia;

architecture structure of divisor_frequencia is
	signal LEDG: std_logic_vector(3 downto 0);
	
	component contador_binario is
		port (
			KEY: in std_logic_vector(1 downto 0);
			LEDG: out std_logic_vector(3 downto 0)
		);
	end component;
	
	component sete_segmentos is
		port (
			valor_bin: in std_logic_vector(3 downto 0);
			HEX0: out std_logic_vector(6 downto 0)
		);
	end component;
	
	begin
		contador: contador_binario port map (KEY, LEDG);
		segmentos: sete_segmentos port map (LEDG, HEX0);
end structure;