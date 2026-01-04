v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Description:

This testbench demonstrates the behavioral OTA.
You can see that GBW = 100MHz, as intended, in the closed-loop case.
You can see that Aol = 1000, as intended, in the open-loop case.

A separate DC sweep testbench is used to confirm soft-clipping behavior.
But this validates the expected behavior: A behavioral op-amp/ota with a single-pole.} -560 -800 0 0 0.4 0.4 {}
N -100 20 -60 20 {lab=vout}
N -100 20 -100 140 {lab=vout}
N -100 140 100 140 {lab=vout}
N 100 0 100 140 {lab=vout}
N 60 0 100 0 {lab=vout}
N 0 40 -0 60 {lab=GND}
N -500 100 -500 120 {lab=GND}
N -500 20 -500 40 {lab=VDD}
N -220 80 -220 100 {lab=vinp_bias}
N -220 0 -220 20 {lab=vinp_cl}
N -220 -20 -220 0 {lab=vinp_cl}
N -140 -20 -60 -20 {lab=vinp_cl}
N 100 0 120 0 {lab=vout}
N 70 230 110 230 {lab=vout_ol}
N 10 270 10 290 {lab=GND}
N -130 210 -50 210 {lab=vinp_ol}
N 110 230 130 230 {lab=vout_ol}
N -240 210 -240 240 {lab=vinp_ol}
N -240 210 -130 210 {lab=vinp_ol}
N -100 -230 -60 -230 {lab=vout_bias}
N -100 -230 -100 -110 {lab=vout_bias}
N -100 -110 100 -110 {lab=vout_bias}
N 100 -250 100 -110 {lab=vout_bias}
N 60 -250 100 -250 {lab=vout_bias}
N 0 -210 0 -190 {lab=GND}
N -140 -270 -60 -270 {lab=vinp_bias}
N 100 -250 120 -250 {lab=vout_bias}
N -490 430 -490 450 {lab=GND}
N -490 350 -490 370 {lab=vinp_bias}
N -490 330 -490 350 {lab=vinp_bias}
N -240 300 -240 320 {lab=vinp_bias}
N -220 -20 -140 -20 {lab=vinp_cl}
N -80 250 -50 250 {lab=#net1}
N -80 250 -80 360 {lab=#net1}
N -80 420 -80 440 {lab=GND}
N -80 440 -80 480 {lab=GND}
N -150 410 -120 410 {lab=GND}
N -150 410 -150 450 {lab=GND}
N -150 450 -80 450 {lab=GND}
N -150 370 -120 370 {lab=vout_bias}
C {devices/vsource.sym} -500 70 0 0 {name=V_VDD value=1.8 savecurrent=true}
C {devices/gnd.sym} -500 120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -500 20 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -220 50 0 0 {name=V_IN value="0 AC 1" savecurrent=true}
C {devices/gnd.sym} 0 60 0 0 {name=l5 lab=GND}
C {devices/noconn.sym} 120 0 0 1 {name=l6}
C {devices/code.sym} -540 -470 0 0 {name=SIMULATOR only_toplevel=false value=
"
.control
  save all
  ac dec 100 1 1e9
  plot db(v(vout))
  plot v(vout_ol)
  write tb_ota_1_AC_sweep.raw
.endc

"}
C {sky130_fd_pr/corner.sym} -540 -270 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {devices/lab_wire.sym} 70 0 0 1 {name=p4 sig_type=std_logic lab=vout}
C {behavioral/ota.sym} 0 0 0 0 {name=X1}
C {devices/gnd.sym} 10 290 0 0 {name=l1 lab=GND}
C {devices/noconn.sym} 130 230 0 1 {name=l7}
C {devices/lab_wire.sym} 80 230 0 1 {name=p5 sig_type=std_logic lab=vout_ol}
C {behavioral/ota.sym} 10 230 0 0 {name=X2}
C {devices/vsource.sym} -240 270 0 0 {name=V_IN1 value="0 AC 1" savecurrent=true}
C {devices/lab_wire.sym} -140 -270 0 1 {name=p1 sig_type=std_logic lab=vinp_bias}
C {devices/gnd.sym} 0 -190 0 0 {name=l10 lab=GND}
C {devices/noconn.sym} 120 -250 0 1 {name=l11}
C {devices/lab_wire.sym} 70 -250 0 1 {name=p6 sig_type=std_logic lab=vout_bias}
C {behavioral/ota.sym} 0 -250 0 0 {name=X3}
C {devices/vsource.sym} -490 400 0 0 {name=V_IN2 value="0.9" savecurrent=true}
C {devices/gnd.sym} -490 450 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -490 330 1 0 {name=p7 sig_type=std_logic lab=vinp_bias}
C {devices/lab_wire.sym} -220 100 3 0 {name=p8 sig_type=std_logic lab=vinp_bias}
C {devices/lab_wire.sym} -240 320 3 0 {name=p9 sig_type=std_logic lab=vinp_bias}
C {devices/vcvs.sym} -80 390 0 0 {name=E1 value=1}
C {devices/gnd.sym} -80 480 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -150 370 0 0 {name=p2 sig_type=std_logic lab=vout_bias}
C {devices/lab_wire.sym} -200 -20 0 1 {name=p3 sig_type=std_logic lab=vinp_cl}
C {devices/lab_wire.sym} -200 210 0 1 {name=p10 sig_type=std_logic lab=vinp_ol}
