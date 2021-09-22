use work.coeffs.all;

ENTITY integer_conv IS
PORT(
 d0 : in INTEGER;
 d1 : in INTEGER;
 d2 : in INTEGER;
 res : out INTEGER);
END ENTITY integer_conv;


ARCHITECTURE integer_conv_const OF integer_conv IS
BEGIN
res <= d0*c0_integer + d1*c1_integer + d2*c2_integer;
END ARCHITECTURE integer_conv_const;
