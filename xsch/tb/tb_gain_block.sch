v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 790 -640 1030 -640 {lab=A}
N 1230 -640 1350 -640 {lab=Z}
N 790 -440 790 -400 {lab=0}
N 790 -640 790 -500 {lab=A}
N 580 -440 580 -400 {lab=0}
N 580 -340 580 -300 {lab=GND}
N 1300 -640 1300 -610 {lab=Z}
N 1300 -550 1300 -520 {lab=0}
C {lab_pin.sym} 790 -640 0 0 {name=p7 sig_type=std_logic lab=A}
C {vsource.sym} 790 -470 0 0 {name=V1 value=1 savecurrent=false}
C {lab_pin.sym} 790 -400 0 0 {name=p9 sig_type=std_logic lab=0}
C {code_shown.sym} 950 -430 0 0 {name=COMMANDS only_toplevel=false value="
.options savecurrents
.control
  save all
  op
  remzerovec
  write tb_gain_block.raw
  dc V1 0 6 0.01
  set appendwrite
  remzerovec
  write tb_gain_block.raw
  quit 0
.endc
"}
C {devices/res.sym} 580 -370 0 0 {name=R2
value=1e-6
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 580 -430 0 0 {name=p3 sig_type=std_logic lab=0}
C {devices/gnd.sym} 580 -300 0 0 {name=l1 lab=GND}
C {devices/res.sym} 1300 -580 0 0 {name=R1
value=1e3
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 1300 -520 0 0 {name=p1 sig_type=std_logic lab=0}
C {lab_pin.sym} 1350 -640 0 1 {name=p2 sig_type=std_logic lab=Z}
C {veriloga/gain_block.sym} 1130 -640 0 0 {name=U1 model=gain_block_cell spiceprefix=X}
