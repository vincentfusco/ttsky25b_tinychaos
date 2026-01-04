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
N -370 40 -370 60 {lab=vinp_a}
N -370 20 -370 40 {lab=vinp_a}
N 470 -360 510 -360 {lab=vout}
N 510 -360 530 -360 {lab=vout}
N 250 -220 250 -200 {lab=GND}
N -260 120 -260 140 {lab=GND}
N -260 40 -260 60 {lab=vinn_a}
N -260 20 -260 40 {lab=vinn_a}
N -140 120 -140 140 {lab=GND}
N -140 40 -140 60 {lab=vinp_b}
N -140 20 -140 40 {lab=vinp_b}
N -30 120 -30 140 {lab=GND}
N -30 40 -30 60 {lab=vinn_b}
N -30 20 -30 40 {lab=vinn_b}
N 130 -440 150 -440 {lab=vinp_a}
N 110 -440 130 -440 {lab=vinp_a}
N 130 -400 150 -400 {lab=vinn_a}
N 110 -400 130 -400 {lab=vinn_a}
N 130 -320 150 -320 {lab=vinp_b}
N 110 -320 130 -320 {lab=vinp_b}
N 130 -280 150 -280 {lab=vinn_b}
N 110 -280 130 -280 {lab=vinn_b}
C {devices/vsource.sym} -500 70 0 0 {name=V_VDD value=\{VDD\} savecurrent=true}
C {devices/gnd.sym} -500 120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -500 20 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -370 90 0 0 {name=V_IN value=\{VDD/2+10m\} savecurrent=true}
C {devices/gnd.sym} -370 140 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -370 20 3 1 {name=p2 sig_type=std_logic lab=vinp_a}
C {devices/code.sym} -540 -470 0 0 {name=SIMULATOR only_toplevel=false value=
"
.control

  .param vdd = 30
  save all
  *dc V_IN 0 1.8 0.01
  op
  print v(vinp_a)-v(vinn_a)
  print v(vinp_b)-v(vinn_b)
  print (x_mult.vcvs1_out_a)
  print (x_mult.vcvs1_out_b)
  print (x_mult.vcvs1_out_a) - \{VDD/2\}
  print (x_mult.vcvs1_out_b) - \{VDD/2\}
  print (x_mult.vcvs1_out_filt_a)
  print (x_mult.vcvs1_out_filt_b)
  print (x_mult.vcvs1_out_filt_a) - \{VDD/2\}
  print (x_mult.vcvs1_out_filt_b) - \{VDD/2\}
  print v(vout)
  print v(vout) - \{VDD/2\}
 
.endc

"}
C {sky130_fd_pr/corner.sym} -540 -270 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {behavioral/multiplier.sym} 250 -420 0 0 {name=X_MULT Ao=1000 VDD=\{VDD\} VSAT=0.25 BW=100e6 Rout_ol=100}
C {devices/noconn.sym} 530 -360 0 1 {name=l9}
C {devices/lab_wire.sym} 490 -360 0 1 {name=p6 sig_type=std_logic lab=vout}
C {devices/gnd.sym} 250 -200 0 0 {name=l10 lab=GND}
C {devices/vsource.sym} -260 90 0 0 {name=V_IN1 value=\{VDD/2\} savecurrent=true}
C {devices/gnd.sym} -260 140 0 0 {name=l1 lab=GND}
C {devices/lab_wire.sym} -260 20 3 1 {name=p1 sig_type=std_logic lab=vinn_a}
C {devices/vsource.sym} -140 90 0 0 {name=V_IN2 value=\{VDD/2+10m\} savecurrent=true}
C {devices/gnd.sym} -140 140 0 0 {name=l5 lab=GND}
C {devices/lab_wire.sym} -140 20 3 1 {name=p3 sig_type=std_logic lab=vinp_b}
C {devices/vsource.sym} -30 90 0 0 {name=V_IN3 value=\{VDD/2\} savecurrent=true}
C {devices/gnd.sym} -30 140 0 0 {name=l6 lab=GND}
C {devices/lab_wire.sym} -30 20 3 1 {name=p4 sig_type=std_logic lab=vinn_b}
C {devices/lab_wire.sym} 110 -440 0 0 {name=p5 sig_type=std_logic lab=vinp_a}
C {devices/lab_wire.sym} 110 -400 0 0 {name=p7 sig_type=std_logic lab=vinn_a}
C {devices/lab_wire.sym} 110 -320 0 0 {name=p8 sig_type=std_logic lab=vinp_b}
C {devices/lab_wire.sym} 110 -280 0 0 {name=p9 sig_type=std_logic lab=vinn_b}
