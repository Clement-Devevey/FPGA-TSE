use work.pack_types.all;
use work.coeffs.all;

ENTITY cnn_integer_range IS
PORT(
 d0 : in INT_RANGE;
 d1 : in INT_RANGE;
 d2 : in INT_RANGE;
 res : out INT_RANGE);
END ENTITY cnn_integer_range;


ARCHITECTURE arch_cnn_integer_range OF cnn_integer_range IS
BEGIN
res <= d0*c0_intrange + d1*c1_intrange + d2*c2_intrange;
END ARCHITECTURE arch_cnn_integer_range;