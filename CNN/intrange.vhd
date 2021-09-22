use work.pack_types.all;
use work.coeffs.all;

ENTITY convul_intrange IS
PORT(
 d0 : in INT_RANGE;
 d1 : in INT_RANGE;
 d2 : in INT_RANGE;
 res : out INT_RANGE);
END ENTITY convul_intrange;


ARCHITECTURE convul_intrange_const OF convul_intrange IS
BEGIN
res <= d0*c0_intrange + d1*c1_intrange + d2*c2_intrange;
END ARCHITECTURE convul_intrange_const;