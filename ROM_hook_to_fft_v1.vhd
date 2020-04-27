--ROM_hook_to_fft_v1 by Vincent Gosselin, 2020.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM_hook_to_fft_v1 is

	port 
	(
		TRIGGER_IN :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		RESET :  IN  STD_LOGIC;
		VALID :  OUT  STD_LOGIC;
		SOP	: OUT STD_LOGIC; --FIRST SAMPLE OUT
		EOP	:	OUT STD_LOGIC; --last SAMPLE OUT
		DATA : out std_logic_vector(15 downto 0)
		
	);

end entity;

architecture rtl of ROM_hook_to_fft_v1 is

component ROM_RAWDATA
	PORT
	(
		address		: IN STD_LOGIC_VECTOR (9 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		rden		: IN STD_LOGIC  := '1';
		q		: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
end component;

COMPONENT ROM_READER_V2
	PORT
	(
		TRIGGER_IN		:	 IN STD_LOGIC;
		CLK		:	 IN STD_LOGIC;
		RESET		:	 IN STD_LOGIC;
		READ_ENA		:	 OUT STD_LOGIC;
		ROM_ADDR		:	 OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
		SOP		:	 OUT STD_LOGIC;
		EOP		:	 OUT STD_LOGIC
	);
END COMPONENT;

signal addr_w : std_logic_vector(9 downto 0);
signal rd_w : std_logic;

begin

	--assignements
	valid <= rd_w;

	inst1 : ROM_READER_V2 
	port map
	(
		trigger_in => trigger_in,
		clk => clk,
		reset => reset,
		read_ena => rd_w,
		rom_addr => addr_w,
		sop => sop,
		eop => eop
	);
	
	inst2 : ROM_RAWDATA
	port map
	(
		address => addr_w,
		clock => clk,
		rden => rd_w,
		q => data
	);



end rtl;
