library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;


package pack_types is

CONSTANT TAILLE: integer := 9;
CONSTANT DIXHUIT : integer := 18;
CONSTANT VINGT : integer := 20;
SUBTYPE neufBits IS signed(TAILLE-1 downto 0);
SUBTYPE dixHuitBits IS signed(2*TAILLE-1 downto 0);
SUBTYPE vingtBits IS signed(2*(TAILLE + 1) -1 downto 0);

CONSTANT interval_min: integer := 0;
CONSTANT interval_max: integer := 255;
SUBTYPE INT_RANGE IS integer range interval_min to interval_max;

end package mes_types;
