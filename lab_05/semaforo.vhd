library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity semaforo is
	port (
		clk: in std_logic;
		resetn: in std_logic;
		av_princ: out std_logic_vector(0 to 2);
		av_sec: out std_logic_vector(0 to 2));
end semaforo;

architecture behavior of semaforo is
	type state is (A, B, C, D);
	signal y: state;
begin
	process (clk, resetn)
		variable count: unsigned(2 downto 0) := "000";
	begin
		if (resetn = '1') then
			y <= A;
			count := "000";
		elsif (clk'event and clk = '1') then
			count := count + 1;
			case y is
				when A =>
					if (count = "011") then
						y <= B;
						count := "000";
					end if;
				when B =>
					if (count = "001") then
						y <= C;
						count := "000";
					end if;
				when C =>
					if (count = "010") then
						y <= D;
						count := "000";
					end if;
				when D =>
					if (count = "001") then
						y <= A;
						count := "000";
					end if;
			end case;
		end if;
	end process;
	
	process (y)
	begin
		case y is
			when A =>
				av_princ <= "100";
				av_sec <= "001";
			when B =>
				av_princ <= "010";
				av_sec <= "001";
			when C =>
				av_princ <= "001";
				av_sec <= "100";
			when D =>
				av_princ <= "001";
				av_sec <= "010";
		end case;
	end process;
end behavior;