v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Description:

This testbench demonstrates the behavioral OTA/opamp.
You can see the soft clipping occurs as expected at GND+VSAT (lower), and VDD-VSAT (upper).} -510 -730 0 0 0.4 0.4 {}
N 60 0 100 0 {lab=vout}
N 0 40 -0 60 {lab=GND}
N -500 100 -500 120 {lab=GND}
N -500 20 -500 40 {lab=VDD}
N -370 120 -370 140 {lab=GND}
N -370 40 -370 60 {lab=vinp}
N -370 20 -370 40 {lab=vinp}
N 100 0 120 0 {lab=vout}
N -100 20 -60 20 {lab=vinp}
N 60 250 100 250 {lab=vout_ol}
N 0 290 0 310 {lab=GND}
N -140 270 -60 270 {lab=vinp}
N 100 250 120 250 {lab=vout_ol}
N -170 230 -130 230 {lab=#net1}
N -170 230 -170 250 {lab=#net1}
N -170 440 -170 460 {lab=GND}
N -170 360 -170 380 {lab=#net1}
N -170 250 -170 360 {lab=#net1}
N 100 -140 100 0 {lab=vout}
N -100 -140 100 -140 {lab=vout}
N -100 -140 -100 -20 {lab=vout}
N -100 -20 -60 -20 {lab=vout}
N -130 230 -60 230 {lab=#net1}
C {devices/vsource.sym} -500 70 0 0 {name=V_VDD value=1.8 savecurrent=true}
C {devices/gnd.sym} -500 120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -500 20 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -370 90 0 0 {name=V_IN value=0.9 savecurrent=true}
C {devices/gnd.sym} -370 140 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -370 20 3 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -100 20 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {devices/gnd.sym} 0 60 0 0 {name=l5 lab=GND}
C {devices/noconn.sym} 120 0 0 1 {name=l6}
C {devices/code.sym} -540 -470 0 0 {name=SIMULATOR only_toplevel=false value=
"
.control
  save all
  dc V_IN 0 1.8 0.01
  *op
  plot v(vout) v(vinp)
 
.endc

"}
C {sky130_fd_pr/corner.sym} -540 -270 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {devices/lab_wire.sym} 70 0 0 1 {name=p4 sig_type=std_logic lab=vout}
C {behavioral/ota.sym} 0 0 0 0 {name=X1 Ao=1000 GBW=100e6 VDD=1.8 VSAT=0.25 Rout_ol=100}
C {devices/lab_wire.sym} -140 270 0 1 {name=p1 sig_type=std_logic lab=vinp}
C {devices/gnd.sym} 0 310 0 0 {name=l1 lab=GND}
C {devices/noconn.sym} 120 250 0 1 {name=l7}
C {devices/lab_wire.sym} 70 250 0 1 {name=p5 sig_type=std_logic lab=vout_ol}
C {behavioral/ota.sym} 0 250 0 0 {name=X2 Ao=1000 GBW=100e6 VDD=1.8 VSAT=0.25 Rout_ol=100}
C {devices/vsource.sym} -170 410 0 0 {name=V_IN1 value=0.9 savecurrent=true}
C {devices/gnd.sym} -170 460 0 0 {name=l8 lab=GND}
