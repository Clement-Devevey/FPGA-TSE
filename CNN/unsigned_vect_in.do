vcom -93 pack_types.vhd 
vcom -93 unsigned_vect_in.vhd

vsim -gui work.vect_cnn
force -freeze sim:/vect_cnn/d0 9'h002 0
force -freeze sim:/vect_cnn/d1 9'h005 0
force -freeze sim:/vect_cnn/d2 9'h00F 0

force -freeze sim:/vect_cnn/c0 9'h001 0
force -freeze sim:/vect_cnn/c1 9'h002 0
force -freeze sim:/vect_cnn/c2 9'h003 0

add wave -label entree_1 /vect_cnn/d0
add wave -label coefficient_1 /vect_cnn/c0
add wave -label entree_2 /vect_cnn/d1
add wave -label coefficient_2 /vect_cnn/c1
add wave -label entree_3 /vect_cnn/d2
add wave -label coefficient_3 /vect_cnn/c2
add wave -label resultat /vect_cnn/res
view wave

run

force -freeze sim:/vect_cnn/d0 9'h1FF 0
force -freeze sim:/vect_cnn/d1 9'h1FE 0
force -freeze sim:/vect_cnn/d2 9'h1FD 0

run

force -freeze sim:/vect_cnn/d0 9'h1FE 0
force -freeze sim:/vect_cnn/d1 9'h1EF 0
force -freeze sim:/vect_cnn/d2 9'h1CF 0

force -freeze sim:/vect_cnn/c0 9'h00A 0
force -freeze sim:/vect_cnn/c1 9'h010 0
force -freeze sim:/vect_cnn/c2 9'h000 0

run

force -freeze sim:/vect_cnn/d0 9'h101 0
force -freeze sim:/vect_cnn/d1 9'h111 0
force -freeze sim:/vect_cnn/d2 9'h120 0

run

radix -ufixed

echo (entree_1 * coefficient_1) + (entree_2 * coefficient_2) + (entree_3 * coefficient_3) = resultat
