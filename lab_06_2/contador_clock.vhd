library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity contador_clock is
	port (
		CLK: in std_logic;
		KEY: in std_logic_vector(1 downto 0);
		LEDG: out std_logic_vector(3 downto 0)
	);
end contador_clock;

architecture behavior of contador_clock is
	begin
		process (CLK)
			variable count: std_logic_vector(24 downto 0) := "0000000000000000000000000";
			variable tmp: std_logic_vector(3 downto 0);
				begin
					if (KEY(1) = '0') then
						tmp := "0000";
					elsif (CLK'event and CLK = '0') then
						count := count + "0000000000000000000000001";
						if (count = "1011111010111100001000000") then
							tmp := tmp + "0001";
							count := "0000000000000000000000000";
						end if;
						LEDG <= tmp;
					end if;
		end process;
end behavior;