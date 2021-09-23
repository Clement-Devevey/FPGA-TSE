vcom -93 pack_types.vhd
vcom -93 coeffs.vhd
vcom -93 integer_range.vhd

vsim -gui work.cnn_integer_range
force -freeze sim:/cnn_integer_range/d0 2 0
force -freeze sim:/cnn_integer_range/d1 2 0
force -freeze sim:/cnn_integer_range/d2 2 0

add wave -label entree_1 /cnn_integer_range/d0
add wave -label coefficient_1 /coeffs/c0_intrange
add wave -label entree_2 /cnn_integer_range/d1
add wave -label coefficient_2 /coeffs/c1_intrange
add wave -label entree_3 /cnn_integer_range/d2
add wave -label coefficient_3 /coeffs/c2_intrange
add wave -label resultat /cnn_integer_range/res
view wave

run

force -freeze sim:/cnn_integer_range/d0 10 0
force -freeze sim:/cnn_integer_range/d1 20 0
force -freeze sim:/cnn_integer_range/d2 30 0

run

force -freeze sim:/cnn_integer_range/d0 10 0
force -freeze sim:/cnn_integer_range/d1 10 0
force -freeze sim:/cnn_integer_range/d2 10 0

run

force -freeze sim:/cnn_integer_range/d0 5 0
force -freeze sim:/cnn_integer_range/d1 6 0
force -freeze sim:/cnn_integer_range/d2 7 0

run

radix -decimal

echo (entree_1 * coefficient_1) + (entree_2 * coefficient_2) + (entree_3 * coefficient_3) = resultat
