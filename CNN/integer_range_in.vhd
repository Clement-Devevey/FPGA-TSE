use work.pack_types.all;
use work.coeffs.all;

ENTITY cnn_integer_range_in IS
PORT(
 d0 : in INT_RANGE;
 d1 : in INT_RANGE;
 d2 : in INT_RANGE;
 c0 : in INT_RANGE;
 c1 : in INT_RANGE;
 c2 : in INT_RANGE;
 res : out INT_RANGE);
END ENTITY cnn_integer_range_in;


ARCHITECTURE arch_cnn_integer_range_in OF cnn_integer_range_in IS
BEGIN
res <= d0*c0 + d1*c1 + d2*c2;
END ARCHITECTURE arch_cnn_integer_range_in;