-- Testbench para o SomadorCompleto.vhd
library ieee;
use ieee.std_logic_1164.all;

entity SomadorCompleto_testbench is
end SomadorCompleto_testbench;

architecture tb_arch of SomadorCompleto_testbench is
  signal test_X, test_Y: std_logic_vector(3 downto 0);
  signal test_S: std_logic_vector(3 downto 0);
  signal test_vem_um, test_vai_um: std_logic;
begin
  -- instancia o circuito sob test (uut - unit under test)
  uut: entity work.SomadorCompleto(Comportamental)
    port map(vem_um=>test_vem_um, X=>test_X, Y=>test_Y, S=>test_S, vai_um=>test_vai_um);
  -- gerador dos vetores de teste
  process
  begin
    -- vetor de teste 1
    test_vem_um <= '0';
    test_X <= "0110";
    test_Y <= "1110";
    wait for 200 ns;

    -- vetor de teste 2
    test_vem_um <= '1';
    test_X <= "1011";
    test_Y <= "1100";
    wait for 200 ns;

    -- vetor de teste 3
    test_vem_um <= '0';
    test_X <= "1011";
    test_Y <= "0110";
    wait for 200 ns;

    -- vetor de teste 4
    test_vem_um <= '1';
    test_X <= "1111";
    test_Y <= "1111";
    wait for 200 ns;

    wait;
  end process;
end tb_arch;