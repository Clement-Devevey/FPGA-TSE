vcom -93 pack_types.vhd 
vcom -93 coeffs.vhd
vcom -93 vect.vhd

vsim -gui work.vect_cnn
force -freeze sim:/vect_cnn/d0 9'h002 0
force -freeze sim:/vect_cnn/d1 9'h002 0
force -freeze sim:/vect_cnn/d2 9'h002 0

add wave -label entree_1 /vect_cnn/d0
add wave -label coefficient_1 /coeffs/vect_c0
add wave -label entree_2 /vect_cnn/d1
add wave -label coefficient_2 /coeffs/vect_c1
add wave -label entree_3 /vect_cnn/d2
add wave -label coefficient_3 /coeffs/vect_c2
add wave -label resultat /vect_cnn/res
view wave

run

force -freeze sim:/vect_cnn/d0 9'h1FF 0
force -freeze sim:/vect_cnn/d1 9'h1FE 0
force -freeze sim:/vect_cnn/d2 9'h1FD 0

run

force -freeze sim:/vect_cnn/d0 9'h1AF 0
force -freeze sim:/vect_cnn/d1 9'h1BF 0
force -freeze sim:/vect_cnn/d2 9'h1CF 0

run

force -freeze sim:/vect_cnn/d0 9'h101 0
force -freeze sim:/vect_cnn/d1 9'h111 0
force -freeze sim:/vect_cnn/d2 9'h120 0

run

radix -decimal

echo (entree_1 * coefficient_1) + (entree_2 * coefficient_2) + (entree_3 * coefficient_3) = resultat
