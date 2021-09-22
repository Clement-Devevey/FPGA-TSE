use work.coeffs.all;

ENTITY integer_conv_in IS
PORT(
 d0 : in integer;
 d1 : in integer;
 d2 : in integer;
 c0 : in integer;
 c1 : in integer;
 c2 : in integer;
 res : out integer);
END ENTITY integer_conv_in;


ARCHITECTURE integer_conv_in OF integer_conv_in IS
BEGIN
res <= d0*c0 + d1*c1 + d2*c2;
END ARCHITECTURE integer_conv_in;
