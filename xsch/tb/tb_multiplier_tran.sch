v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Description:

This testbench demonstrates the behavioral OTA/opamp.
You can see the soft clipping occurs as expected at GND+VSAT (lower), and VDD-VSAT (upper).} -510 -730 0 0 0.4 0.4 {}
N -500 100 -500 120 {lab=GND}
N -500 20 -500 40 {lab=VDD}
N -370 120 -370 140 {lab=GND}
N -370 40 -370 60 {lab=vy}
N -370 20 -370 40 {lab=vy}
N 470 -360 510 -360 {lab=vout}
N 510 -360 530 -360 {lab=vout}
N 250 -220 250 -200 {lab=GND}
N -220 120 -220 140 {lab=GND}
N -220 40 -220 60 {lab=vx}
N -220 20 -220 40 {lab=vx}
N -80 120 -80 140 {lab=GND}
N -80 40 -80 60 {lab=vref}
N -80 20 -80 40 {lab=vref}
N 130 -440 150 -440 {lab=vy}
N 110 -440 130 -440 {lab=vy}
N 130 -400 150 -400 {lab=vref}
N 110 -400 130 -400 {lab=vref}
N 130 -280 150 -280 {lab=vref}
N 110 -280 130 -280 {lab=vref}
N 0 -440 110 -440 {lab=vy}
N 110 -400 110 -280 {lab=vref}
N -0 -320 150 -320 {lab=vx}
N 110 -280 110 -200 {lab=vref}
C {devices/vsource.sym} -500 70 0 0 {name=V_VDD value=1.8 savecurrent=true}
C {devices/gnd.sym} -500 120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -500 20 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -370 90 0 0 {name=V_IN value="sin(0.9 0.01 1e3)" savecurrent=true}
C {devices/gnd.sym} -370 140 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -370 20 3 1 {name=p2 sig_type=std_logic lab=vy}
C {devices/code.sym} -540 -470 0 0 {name=SIMULATOR only_toplevel=false value=
"
.control
  save all
  tran 1u 2m
  plot v(vy) v(vx) v(vout)
  *quit 0
.endc

"}
C {sky130_fd_pr/corner.sym} -540 -270 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {behavioral/multiplier.sym} 250 -420 0 0 {name=X_MULT1 Ao=1000 VDD=1.8 VSAT=0.25 GBW=100e6 Rout_ol=100}
C {devices/noconn.sym} 530 -360 0 1 {name=l9}
C {devices/lab_wire.sym} 490 -360 0 1 {name=p6 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 250 -200 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -220 90 0 0 {name=V_IN1 value="sin(0.9 0.01 10e3)" savecurrent=true}
C {devices/gnd.sym} -220 140 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -220 20 3 1 {name=p1 sig_type=std_logic lab=vx}
C {devices/vsource.sym} -80 90 0 0 {name=V_IN3 value=0.9 savecurrent=true}
C {devices/gnd.sym} -80 140 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -80 20 3 1 {name=p4 sig_type=std_logic lab=vref}
C {devices/lab_wire.sym} 0 -440 0 0 {name=p5 sig_type=std_logic lab=vy}
C {devices/lab_wire.sym} 0 -320 0 0 {name=p8 sig_type=std_logic lab=vx}
C {devices/lab_wire.sym} 110 -200 3 0 {name=p7 sig_type=std_logic lab=vref}
