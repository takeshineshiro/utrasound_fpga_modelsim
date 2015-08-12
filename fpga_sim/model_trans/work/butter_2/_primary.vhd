library verilog;
use verilog.vl_types.all;
entity butter_2 is
    generic(
        RST_LVL         : integer := 0
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        butt2_real0     : in     vl_logic_vector(15 downto 0);
        butt2_imag0     : in     vl_logic_vector(15 downto 0);
        butt2_real1     : in     vl_logic_vector(15 downto 0);
        butt2_imag1     : in     vl_logic_vector(15 downto 0);
        factor_real     : in     vl_logic_vector(15 downto 0);
        factor_imag     : in     vl_logic_vector(15 downto 0);
        y0_real         : out    vl_logic_vector(15 downto 0);
        y0_imag         : out    vl_logic_vector(15 downto 0);
        y1_real         : out    vl_logic_vector(15 downto 0);
        y1_imag         : out    vl_logic_vector(15 downto 0)
    );
end butter_2;
