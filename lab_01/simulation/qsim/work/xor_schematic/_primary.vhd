library verilog;
use verilog.vl_types.all;
entity xor_schematic is
    port(
        f               : out    vl_logic;
        x1              : in     vl_logic;
        x2              : in     vl_logic
    );
end xor_schematic;
