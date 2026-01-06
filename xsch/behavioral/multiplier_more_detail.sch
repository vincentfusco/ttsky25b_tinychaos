v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 10 -10 40 {lab=vss}
N -10 -80 -10 -50 {lab=vcvs1_out_a}
N -10 -80 70 -80 {lab=vcvs1_out_a}
N 130 -80 210 -80 {lab=vcvs1_out_filt_a}
N 210 -80 210 -50 {lab=vcvs1_out_filt_a}
N 210 10 210 40 {lab=vss}
N 210 -80 270 -80 {lab=vcvs1_out_filt_a}
N -710 -30 -660 -30 {lab=vinp_a}
N -710 30 -660 30 {lab=vinn_a}
N -10 10 -10 40 {
lab=vss}
N -10 40 -10 80 {lab=vss}
N -600 -30 -570 -30 {lab=vinp_a_int}
N -600 30 -570 30 {lab=vinn_a_int}
N -710 280 -660 280 {lab=vinp_b}
N -710 340 -660 340 {lab=vinn_b}
N -600 280 -570 280 {lab=vinp_b_int}
N -600 340 -570 340 {lab=vinn_b_int}
N -10 40 210 40 {lab=vss}
N 0 330 0 360 {lab=vss}
N 0 240 0 270 {lab=vcvs1_out_b}
N 0 240 80 240 {lab=vcvs1_out_b}
N 140 240 220 240 {lab=vcvs1_out_filt_b}
N 220 240 220 270 {lab=vcvs1_out_filt_b}
N 220 330 220 360 {lab=vss}
N 220 240 280 240 {lab=vcvs1_out_filt_b}
N 0 330 0 360 {
lab=vss}
N 0 360 0 400 {lab=vss}
N 0 360 220 360 {lab=vss}
N 490 190 490 220 {lab=vss}
N 490 100 490 130 {lab=vout}
N 490 100 610 100 {lab=vout}
C {devices/res.sym} 100 -80 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 210 -20 0 0 {name=C1
m=1
value=\{1/2/3.14/BW/10e3\}
footprint=1206
device="ceramic capacitor"}
C {devices/ipin.sym} -710 -30 0 0 {name=p1 lab=vinp_a}
C {devices/ipin.sym} -710 30 0 0 {name=p2 lab=vinn_a}
C {devices/opin.sym} 610 100 0 0 {name=p3 lab=vout}
C {devices/lab_wire.sym} 40 -80 0 0 {name=p5 sig_type=std_logic lab=vcvs1_out_a}
C {devices/lab_wire.sym} 270 -80 0 0 {name=p6 sig_type=std_logic lab=vcvs1_out_filt_a}
C {devices/iopin.sym} -690 -200 2 0 {name=p8 lab=vss}
C {devices/vsource.sym} -630 -30 1 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} -630 30 1 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -570 -30 0 1 {name=p4 sig_type=std_logic lab=vinp_a_int}
C {devices/lab_wire.sym} -570 30 0 1 {name=p9 sig_type=std_logic lab=vinn_a_int}
C {devices/bsource.sym} -10 -20 0 1 {name=B2 VAR=V FUNC="\{VDD/2 + (VDD/2-VSAT)*(tanh(V(vinp_a_int, vinn_a_int)*1/(VDD/2-VSAT)))\}"}
C {devices/bsource.sym} 490 160 0 0 {name=B1 VAR=V FUNC="\{VDD/2 + (1/GAIN)*( (V(vcvs1_out_filt_a, vss)-VDD/2)*(V(vcvs1_out_filt_b,vss)-VDD/2) )\}"}
C {devices/ipin.sym} -710 280 0 0 {name=p10 lab=vinp_b}
C {devices/ipin.sym} -710 340 0 0 {name=p11 lab=vinn_b}
C {devices/vsource.sym} -630 280 1 0 {name=V3 value=0 savecurrent=false}
C {devices/vsource.sym} -630 340 1 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_wire.sym} -570 280 0 1 {name=p12 sig_type=std_logic lab=vinp_b_int}
C {devices/lab_wire.sym} -570 340 0 1 {name=p13 sig_type=std_logic lab=vinn_b_int}
C {devices/res.sym} 110 240 1 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 220 300 0 0 {name=C2
m=1
value=\{1/2/3.14/BW/10e3\}
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 50 240 0 0 {name=p7 sig_type=std_logic lab=vcvs1_out_b}
C {devices/lab_wire.sym} 280 240 0 0 {name=p14 sig_type=std_logic lab=vcvs1_out_filt_b}
C {devices/bsource.sym} 0 300 0 1 {name=B3 VAR=V FUNC="\{VDD/2 + (VDD/2-VSAT)*(tanh(V(vinp_b_int, vinn_b_int)*1/(VDD/2-VSAT)))\}"}
C {devices/lab_wire.sym} -10 80 3 0 {name=p15 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 0 400 3 0 {name=p16 sig_type=std_logic lab=vss}
C {devices/lab_wire.sym} 490 220 3 0 {name=p17 sig_type=std_logic lab=vss}
