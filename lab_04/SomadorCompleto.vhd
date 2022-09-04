-- Somador Completo
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity SomadorCompleto is
  generic (k: integer:= 4 );
  port (vem_um: in std_logic;
        X, Y: in std_logic_vector(k-1 downto 0);
        S: out std_logic_vector(k-1 downto 0);
        vai_um: out std_logic);
end SomadorCompleto;

architecture Comportamental of SomadorCompleto is
  signal soma: std_logic_vector(k downto 0);
begin
  soma <= ('0' & X) + ('0' & Y) + vem_um;
  S <= soma(k-1 downto 0);
  vai_um <= soma(k);
end Comportamental;