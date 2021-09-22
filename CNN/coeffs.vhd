library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use work.mes_types.all;

package coeffs is

constant vect_c0 : neufBits := "000000010";
constant vect_c1 : neufBits := "000000010";
constant vect_c2 : neufBits := "000000010";


constant c0_integer: INTEGER := 1;
constant c1_integer: INTEGER := 2;
constant c2_integer: INTEGER := 3;

constant c0_intrange: INT_RANGE := 1;
constant c1_intrange: INT_RANGE := 2;
constant c2_intrange: INT_RANGE := 3;
end package coeffs;

