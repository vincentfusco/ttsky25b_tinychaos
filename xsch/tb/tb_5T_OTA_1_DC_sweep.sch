v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 20 -60 20 {lab=vout}
N -100 20 -100 140 {lab=vout}
N -100 140 100 140 {lab=vout}
N 100 0 100 140 {lab=vout}
N 60 0 100 0 {lab=vout}
N 0 40 -0 60 {lab=GND}
N -20 -100 -20 -50 {lab=ibias_2u}
N 0 -100 -0 -40 {lab=VDD}
N -500 100 -500 120 {lab=GND}
N -500 20 -500 40 {lab=VDD}
N -390 100 -390 120 {lab=GND}
N -390 20 -390 40 {lab=vinp}
N -390 -0 -390 20 {lab=vinp}
N -140 -20 -60 -20 {lab=vinp}
N 100 0 120 0 {lab=vout}
N -20 -160 -20 -100 {lab=ibias_2u}
N -20 -260 -20 -220 {lab=VDD}
C {ip/otas/5T_OTA_1.sym} 0 0 0 0 {name=X_5T_OTA_1_DUT}
C {devices/vdd.sym} 0 -100 0 0 {name=l1 lab=VDD}
C {devices/lab_wire.sym} -20 -80 3 1 {name=p1 sig_type=std_logic lab=ibias_2u}
C {devices/vsource.sym} -500 70 0 0 {name=V_VDD value=1.8 savecurrent=true}
C {devices/gnd.sym} -500 120 0 0 {name=l2 lab=GND}
C {devices/vdd.sym} -500 20 0 0 {name=l3 lab=VDD}
C {devices/vsource.sym} -390 70 0 0 {name=V_IN value=0.9 savecurrent=true}
C {devices/gnd.sym} -390 120 0 0 {name=l4 lab=GND}
C {devices/lab_wire.sym} -390 0 3 0 {name=p2 sig_type=std_logic lab=vinp}
C {devices/lab_wire.sym} -140 -20 0 1 {name=p3 sig_type=std_logic lab=vinp}
C {devices/gnd.sym} 0 60 0 0 {name=l5 lab=GND}
C {devices/noconn.sym} 120 0 0 1 {name=l6}
C {devices/code.sym} -540 -470 0 0 {name=SIMULATOR only_toplevel=false value=
"
.save v(vout) v(vinp)
.save m.x_5t_ota_1_dut.mn_in[gm]
.control
  save all

  dc V_IN 0 1.8 0.01
  *op
  plot v(vout) v(vinp)
  plot @m.x_5t_ota_1_dut.xmn_inp.msky130_fd_pr__nfet_01v8[gm]
  plot @m.x_5t_ota_1_dut.xmn_cs.msky130_fd_pr__nfet_01v8[gm]
 
.endc

"}
C {sky130_fd_pr/corner.sym} -540 -270 0 0 {name=CORNER only_toplevel=false corner=tt
}
C {devices/isource.sym} -20 -190 0 0 {name=I_SOURCE value=2u}
C {devices/vdd.sym} -20 -260 0 0 {name=l7 lab=VDD}
C {devices/lab_wire.sym} 70 0 0 1 {name=p4 sig_type=std_logic lab=vout}
