*mini project D G Source Sub
.include "1um_model.sp"
*set sizing
m1 1 3 2 0 N_1u w=1.644u l=1u
m2 4 5 2 0 N_1u w=1.644u l=1u
m3 1 1 6 6 P_1u w=20u l=1u
m4 4 1 6 6 P_1u w=20u l=1u
m5 2 9 0 0 N_1u w=4.25u l=1u
m6 7 4 6 6 P_1u w=97.7u l=1u
m7 7 9 0 0 N_1u w=20.77u l=1u
m8 9 9 0 0 N_1u w=4.25u l=1u
*capacitors
ib 6 9 30ua
Cc 7 4 3pf
Cl 0 7 10pf
vdd 6 0 2.5v
*set Vin val
vin1 3 10 dc 1.8v
vin2 5 11 dc 1.8v
vin3 12 11 ac sin(0 0.0002 1000)
.op
.tran 1u 40ms
.probe
.end