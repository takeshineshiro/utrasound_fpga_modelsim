library verilog;
use verilog.vl_types.all;
entity fft_8 is
    generic(
        RST_LVL         : integer := 0
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        butt8_real0     : in     vl_logic_vector(15 downto 0);
        butt8_imag0     : in     vl_logic_vector(15 downto 0);
        butt8_real1     : in     vl_logic_vector(15 downto 0);
        butt8_imag1     : in     vl_logic_vector(15 downto 0);
        butt8_real2     : in     vl_logic_vector(15 downto 0);
        butt8_imag2     : in     vl_logic_vector(15 downto 0);
        butt8_real3     : in     vl_logic_vector(15 downto 0);
        butt8_imag3     : in     vl_logic_vector(15 downto 0);
        butt8_real4     : in     vl_logic_vector(15 downto 0);
        butt8_imag4     : in     vl_logic_vector(15 downto 0);
        butt8_real5     : in     vl_logic_vector(15 downto 0);
        butt8_imag5     : in     vl_logic_vector(15 downto 0);
        butt8_real6     : in     vl_logic_vector(15 downto 0);
        butt8_imag6     : in     vl_logic_vector(15 downto 0);
        butt8_real7     : in     vl_logic_vector(15 downto 0);
        butt8_imag7     : in     vl_logic_vector(15 downto 0);
        y0_real         : out    vl_logic_vector(15 downto 0);
        y0_imag         : out    vl_logic_vector(15 downto 0);
        y1_real         : out    vl_logic_vector(15 downto 0);
        y1_imag         : out    vl_logic_vector(15 downto 0);
        y2_real         : out    vl_logic_vector(15 downto 0);
        y2_imag         : out    vl_logic_vector(15 downto 0);
        y3_real         : out    vl_logic_vector(15 downto 0);
        y3_imag         : out    vl_logic_vector(15 downto 0);
        y4_real         : out    vl_logic_vector(15 downto 0);
        y4_imag         : out    vl_logic_vector(15 downto 0);
        y5_real         : out    vl_logic_vector(15 downto 0);
        y5_imag         : out    vl_logic_vector(15 downto 0);
        y6_real         : out    vl_logic_vector(15 downto 0);
        y6_imag         : out    vl_logic_vector(15 downto 0);
        y7_real         : out    vl_logic_vector(15 downto 0);
        y7_imag         : out    vl_logic_vector(15 downto 0)
    );
end fft_8;
