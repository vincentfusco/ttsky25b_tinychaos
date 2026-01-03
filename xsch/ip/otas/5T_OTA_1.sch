v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 0 0 0 {lab=tail}
N 0 0 100 0 {lab=tail}
N -100 -30 -100 0 {lab=tail}
N 100 -30 100 0 {lab=tail}
N 100 -240 100 -90 {lab=vout}
N -60 -270 60 -270 {lab=mirror}
N 0 -270 0 -200 {lab=mirror}
N -100 -180 0 -180 {lab=mirror}
N 0 -200 0 -180 {lab=mirror}
N 100 -160 140 -160 {lab=vout}
N 0 60 0 100 {lab=tail}
N -60 130 -40 130 {lab=ibias_2uA}
N -100 -340 -100 -300 {lab=vdd}
N 100 -340 100 -300 {lab=vdd}
N 0 160 0 200 {lab=vss}
N -180 -60 -140 -60 {lab=vinp}
N -180 -60 -140 -60 {lab=vinp}
N 140 -60 180 -60 {lab=vinn}
N -300 130 -280 130 {lab=ibias_2uA}
N -340 160 -340 200 {lab=vss}
N -280 130 -60 130 {lab=ibias_2uA}
N -240 60 -240 130 {lab=ibias_2uA}
N -340 40 -240 40 {lab=ibias_2uA}
N -0 -0 0 60 {lab=tail}
N -340 40 -340 100 {lab=ibias_2uA}
N -240 40 -240 60 {lab=ibias_2uA}
N -100 -230 -100 -80 {lab=mirror}
N -340 -50 -340 40 {lab=ibias_2uA}
N -100 -240 -100 -230 {lab=mirror}
N -440 200 340 200 {lab=vss bus=true}
N -440 -340 340 -340 {lab=vdd bus=true}
N -0 130 10 130 {lab=vss}
N -100 -60 -90 -60 {lab=vss}
N -350 130 -340 130 {lab=vss}
N 90 -60 100 -60 {lab=vss}
N 100 -270 110 -270 {lab=vdd}
N -110 -270 -100 -270 {lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} -120 -60 0 0 {name=Mn_inp
L=0.15
W=10  
nf=16 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 120 -60 0 1 {name=Mn_inn
L=0.15
W=10 
nf=16 mult=4
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 130 0 0 {name=Mn_cs
L=2
W=10  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 80 -270 0 0 {name=Mp_load_out
L=2
W=20
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -80 -270 0 1 {name=Mp_load_diode
L=2
W=20
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -320 130 0 1 {name=Mn_cs_diode
L=2
W=10  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/iopin.sym} -510 -240 0 1 {name=p1 lab=vdd}
C {devices/iopin.sym} -510 -220 0 1 {name=p2 lab=vss}
C {devices/ipin.sym} -180 -60 0 0 {name=p3 lab=vinp}
C {devices/ipin.sym} 180 -60 0 1 {name=p4 lab=vinn}
C {devices/opin.sym} 140 -160 0 0 {name=p5 lab=vout}
C {devices/ipin.sym} -340 -50 1 0 {name=p6 lab=ibias_2uA}
C {devices/lab_wire.sym} -400 200 0 0 {name=p7 sig_type=power lab=vss}
C {devices/lab_pin.sym} 10 130 0 1 {name=p8 sig_type=power lab=vss}
C {devices/lab_pin.sym} -90 -60 0 1 {name=p9 sig_type=power lab=vss}
C {devices/lab_pin.sym} -350 130 0 0 {name=p11 sig_type=power lab=vss}
C {devices/lab_pin.sym} 90 -60 0 0 {name=p12 sig_type=power lab=vss}
C {devices/lab_wire.sym} -400 -340 0 0 {name=p13 sig_type=power lab=vdd}
C {devices/lab_pin.sym} 110 -270 0 1 {name=p15 sig_type=power lab=vdd}
C {devices/lab_pin.sym} -110 -270 0 0 {name=p16 sig_type=power lab=vdd}
C {borders/border_s.sym} 410 310 0 0 {}
C {devices/lab_wire.sym} -30 -180 0 0 {name=p10 sig_type=std_logic lab=mirror}
C {devices/lab_wire.sym} 60 0 0 0 {name=p14 sig_type=std_logic lab=tail}
