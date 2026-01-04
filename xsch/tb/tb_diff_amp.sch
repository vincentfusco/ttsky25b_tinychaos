v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 2 1550 -1010 2350 -610 {flags=graph
y1=0
y2=6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.6
x2=5.4
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="b
a"
color="6 4"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1550 -610 2350 -210 {flags=graph
y1=-30
y2=30
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-0.6
x2=5.4
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=z
color=7
dataset=-1
unitx=1
logx=0
logy=0
}
P 4 5 850 -730 850 -980 1420 -980 1420 -730 850 -730 {}
P 4 7 1120 -730 1120 -670 1130 -670 1120 -650 1110 -670 1120 -670 1120 -730 {}
T {// importing libs

`include "discipline.h"

module diff_amp(
  output electrical out,
  input electrical in1,
  input electrical in2);

parameter real gain = 10; // setting gain to 10 of the differential amplifier

analog begin

    V(out) <+ gain * (V(in1, in2));
    // V(out) <+ 2 * atan( gain / 2 * V(in1, in2) );

end
endmodule} 860 -970 0 0 0.2 0.2 {font=monospace}
T {create a diff_amp.va file with following code 
and compile it into a .osdi file with openvaf.} 900 -1040 0 0 0.4 0.4 {}
N 890 -560 1030 -560 {lab=B}
N 790 -640 1030 -640 {lab=A}
N 770 -400 890 -400 {lab=0}
N 890 -440 890 -400 {lab=0}
N 790 -440 790 -400 {lab=0}
N 790 -640 790 -500 {lab=A}
N 890 -560 890 -500 {lab=B}
N 580 -440 580 -400 {lab=0}
N 580 -340 580 -300 {lab=GND}
N 1230 -600 1290 -600 {lab=Z}
C {veriloga/diff_amp.sym} 1130 -600 0 0 {name=X1 model=diff_amp_cell spiceprefix=X}
C {lab_pin.sym} 790 -640 0 0 {name=p7 sig_type=std_logic lab=A}
C {lab_pin.sym} 890 -560 0 0 {name=p8 sig_type=std_logic lab=B}
C {vsource.sym} 790 -470 0 0 {name=V1 value=3.1 savecurrent=false}
C {vsource.sym} 890 -470 0 0 {name=V2 value=3 savecurrent=false}
C {lab_pin.sym} 770 -400 0 0 {name=p9 sig_type=std_logic lab=0}
C {code_shown.sym} 950 -430 0 0 {name=COMMANDS only_toplevel=false value="
.options savecurrents
.control
	save all
	op
	remzerovec
	write tb_diff_amp.raw
	dc V1 1.1 1.9 0.001
	set appendwrite
	remzerovec
	write tb_diff_amp.raw
	* quit 0
.endc 
"}
C {launcher.sym} 1380 -230 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_diff_amp.raw dc"
}
C {launcher.sym} 1380 -280 0 0 {name=h1
descr="OP annotate" 
tclcommand="xschem annotate_op"
}
C {devices/res.sym} 580 -370 0 0 {name=R2
value=1e-6
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} 580 -430 0 0 {name=p3 sig_type=std_logic lab=0}
C {devices/gnd.sym} 580 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 1290 -600 0 1 {name=p1 sig_type=std_logic lab=Z}
