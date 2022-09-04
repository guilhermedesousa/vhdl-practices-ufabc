library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador_binario is
	port(
		KEY: in std_logic_vector(1 downto 0);
		LEDG: out std_logic_vector(3 downto 0)
	);
end contador_binario;

architecture comportamental of contador_binario is
	begin
		process (KEY)
		variable tmp: std_logic_vector(3 downto 0);
			begin
				if (KEY(1) = '0') then
					tmp := "0000";
				elsif (rising_edge(KEY(0))) then
					tmp := tmp + "0001";
				end if;
				LEDG <= tmp;
		end process;
end comportamental;