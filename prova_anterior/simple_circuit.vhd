library ieee;
use ieee.std_logic_1164.all;

entity simple_circuit is
	port(a, b, c: in std_logic;
			z: out std_logic);
end simple_circuit;

architecture behavior of simple_circuit is
	signal x: std_logic;
	signal y: std_logic;
begin
	x <= a and b and c;
	y <= not a and c;
	z <= x or y;
end behavior;