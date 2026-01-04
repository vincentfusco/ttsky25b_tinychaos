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
N 60 0 100 0 {lab=vout}
N 0 40 -0 60 {lab=GND}
N -500 100 -500 120 {lab=GND}
N -500 20 -500 40 {lab=VDD}
N -140 120 -140 140 {lab=vinp_bias}
N -140 40 -140 60 {lab=vinp_cl}
N -140 20 -140 40 {lab=vinp_cl}
N 100 0 120 0 {lab=vout}
N 70 230 110 230 {lab=vout_ol}
N 10 270 10 290 {lab=GND}
N 110 230 130 230 {lab=vout_ol}
N -160 250 -160 280 {lab=vinp_ol}
N -160 250 -50 250 {lab=vinp_ol}
N 60 -250 100 -250 {lab=vout_bias}
N 0 -210 0 -190 {lab=GND}
N -140 -230 -60 -230 {lab=vinp_bias}
N 100 -250 120 -250 {lab=vout_bias}
N -490 430 -490 450 {lab=GND}
N -490 350 -490 370 {lab=vinp_bias}
N -490 330 -490 350 {lab=vinp_bias}
N -160 340 -160 360 {lab=vinp_bias}
N -140 20 -60 20 {lab=vinp_cl}
N -280 250 -280 360 {lab=#net1}
N -280 420 -280 440 {lab=GND}
N -280 440 -280 480 {lab=GND}
N -350 410 -320 410 {lab=GND}
N -350 410 -350 450 {lab=GND}
N -350 450 -280 450 {lab=GND}
N -350 370 -320 370 {lab=vout_bias}
N 100 -400 100 -250 {lab=vout_bias}
N -100 -400 100 -400 {lab=vout_bias}
N -100 -400 -100 -270 {lab=vout_bias}
N -100 -270 -60 -270 {lab=vout_bias}
N 100 -120 100 0 {lab=vout}
N -100 -120 100 -120 {lab=vout}
N -100 -120 -100 -20 {lab=vout}
N -100 -20 -60 -20 {lab=vout}
N -280 210 -280 250 {lab=#net1}
N -280 210 -50 210 {lab=#net1}
C {devices/vsource.sym} -500 70 0 0 {name=V_VDD value=1.8 savecurrent=true}
C {devices/gnd.sym} -500 120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -500 20 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -140 90 0 0 {name=V_IN value="0 AC 1" savecurrent=true}
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
C {behavioral/ota.sym} 0 0 0 0 {name=X1 Ao=100 GBW=100e6 VDD=1.8 VSAT=0.25 Rout_ol=100}
C {devices/gnd.sym} 10 290 0 0 {name=l1 lab=GND}
C {devices/noconn.sym} 130 230 0 1 {name=l7}
C {devices/lab_wire.sym} 80 230 0 1 {name=p5 sig_type=std_logic lab=vout_ol}
C {behavioral/ota.sym} 10 230 0 0 {name=X2 Ao=100 GBW=100e6 VDD=1.8 VSAT=0.25 Rout_ol=100}
C {devices/vsource.sym} -160 310 0 0 {name=V_IN1 value="0 AC 1" savecurrent=true}
C {devices/lab_wire.sym} -140 -230 0 1 {name=p1 sig_type=std_logic lab=vinp_bias}
C {devices/gnd.sym} 0 -190 0 0 {name=l10 lab=GND}
C {devices/noconn.sym} 120 -250 0 1 {name=l11}
C {devices/lab_wire.sym} 70 -250 0 1 {name=p6 sig_type=std_logic lab=vout_bias}
C {behavioral/ota.sym} 0 -250 0 0 {name=X3 Ao=100 GBW=100e6 VDD=1.8 VSAT=0.25 Rout_ol=100}
C {devices/vsource.sym} -490 400 0 0 {name=V_IN2 value="0.9" savecurrent=true}
C {devices/gnd.sym} -490 450 0 0 {name=l12 lab=GND}
C {devices/lab_wire.sym} -490 330 1 0 {name=p7 sig_type=std_logic lab=vinp_bias}
C {devices/lab_wire.sym} -140 140 3 0 {name=p8 sig_type=std_logic lab=vinp_bias}
C {devices/lab_wire.sym} -160 360 3 0 {name=p9 sig_type=std_logic lab=vinp_bias}
C {devices/vcvs.sym} -280 390 0 0 {name=E1 value=1}
C {devices/gnd.sym} -280 480 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -350 370 0 0 {name=p2 sig_type=std_logic lab=vout_bias}
C {devices/lab_wire.sym} -120 20 0 1 {name=p3 sig_type=std_logic lab=vinp_cl}
C {devices/lab_wire.sym} -120 250 0 1 {name=p10 sig_type=std_logic lab=vinp_ol}
