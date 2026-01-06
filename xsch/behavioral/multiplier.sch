v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -710 -30 -660 -30 {lab=vinp_a}
N -710 30 -660 30 {lab=vinn_a}
N -600 -30 -570 -30 {lab=vinp_a_int}
N -600 30 -570 30 {lab=vinn_a_int}
N -710 280 -660 280 {lab=vinp_b}
N -710 340 -660 340 {lab=vinn_b}
N -600 280 -570 280 {lab=vinp_b_int}
N -600 340 -570 340 {lab=vinn_b_int}
N -160 150 -160 180 {lab=#net1}
N -160 60 -160 90 {lab=vout}
N -160 60 -40 60 {lab=vout}
N -160 240 -160 260 {lab=vss}
C {devices/ipin.sym} -710 -30 0 0 {name=p1 lab=vinp_a}
C {devices/ipin.sym} -710 30 0 0 {name=p2 lab=vinn_a}
C {devices/opin.sym} -40 60 0 0 {name=p3 lab=vout}
C {devices/iopin.sym} -690 -200 2 0 {name=p8 lab=vss}
C {devices/vsource.sym} -630 -30 1 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} -630 30 1 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -570 -30 0 1 {name=p4 sig_type=std_logic lab=vinp_a_int}
C {devices/lab_wire.sym} -570 30 0 1 {name=p9 sig_type=std_logic lab=vinn_a_int}
C {devices/bsource.sym} -160 120 0 0 {name=B1 VAR=V FUNC="\{(1/GAIN)*( V(vinp_a, vinn_a)*V(vinp_b,vinn_b) ) \}"}
C {devices/ipin.sym} -710 280 0 0 {name=p10 lab=vinp_b}
C {devices/ipin.sym} -710 340 0 0 {name=p11 lab=vinn_b}
C {devices/vsource.sym} -630 280 1 0 {name=V3 value=0 savecurrent=false}
C {devices/vsource.sym} -630 340 1 0 {name=V4 value=0 savecurrent=false}
C {devices/lab_wire.sym} -570 280 0 1 {name=p12 sig_type=std_logic lab=vinp_b_int}
C {devices/lab_wire.sym} -570 340 0 1 {name=p13 sig_type=std_logic lab=vinn_b_int}
C {devices/iopin.sym} -690 -230 2 0 {name=p5 lab=vdd}
C {devices/bsource.sym} -160 210 0 0 {name=B2 VAR=V FUNC="\{ V(vdd)/2 \}"}
C {devices/lab_wire.sym} -160 260 3 0 {name=p6 sig_type=std_logic lab=vss}
