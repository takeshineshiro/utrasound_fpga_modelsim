library verilog;
use verilog.vl_types.all;
entity butterfly_unit_radix4 is
    port(
        clk             : in     vl_logic;
        cos0            : in     vl_logic_vector(15 downto 0);
        sin0            : in     vl_logic_vector(15 downto 0);
        cos1            : in     vl_logic_vector(15 downto 0);
        sin1            : in     vl_logic_vector(15 downto 0);
        cos2            : in     vl_logic_vector(15 downto 0);
        sin2            : in     vl_logic_vector(15 downto 0);
        x1_re           : in     vl_logic_vector(15 downto 0);
        x1_im           : in     vl_logic_vector(15 downto 0);
        x2_re           : in     vl_logic_vector(15 downto 0);
        x2_im           : in     vl_logic_vector(15 downto 0);
        x3_re           : in     vl_logic_vector(15 downto 0);
        x3_im           : in     vl_logic_vector(15 downto 0);
        x4_re           : in     vl_logic_vector(15 downto 0);
        x4_im           : in     vl_logic_vector(15 downto 0);
        p1_re           : out    vl_logic_vector(15 downto 0);
        p1_im           : out    vl_logic_vector(15 downto 0);
        p2_re           : out    vl_logic_vector(15 downto 0);
        p2_im           : out    vl_logic_vector(15 downto 0);
        p3_re           : out    vl_logic_vector(15 downto 0);
        p3_im           : out    vl_logic_vector(15 downto 0);
        p4_re           : out    vl_logic_vector(15 downto 0);
        p4_im           : out    vl_logic_vector(15 downto 0)
    );
end butterfly_unit_radix4;
