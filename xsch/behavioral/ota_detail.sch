v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Simple Behavioral Op-Amp Model
-Models an op-amp as a single-pole system.
-Models Finite GBW, Finite DC Gain Ao, Finite open-loop output resistance Rout_ol, as well as soft-clipping behavior.
} -240 -240 0 0 0.4 0.4 {}
N -0 30 -0 60 {lab=vss}
N 0 -60 0 -30 {lab=vcvs1_out}
N 0 -60 80 -60 {lab=vcvs1_out}
N 140 -60 220 -60 {lab=vcvs1_out_filt}
N 220 -60 220 -30 {lab=vcvs1_out_filt}
N 220 30 220 60 {lab=vss}
N 360 30 360 60 {lab=vss}
N 360 30 360 60 {lab=vss}
N 360 -60 360 -30 {lab=vcvs2_out}
N 220 -60 280 -60 {lab=vcvs1_out_filt}
N 360 -60 400 -60 {lab=vcvs2_out}
N -710 -30 -660 -30 {lab=vinp}
N -710 30 -660 30 {lab=vinn}
N 0 30 0 60 {
lab=vss}
N 0 60 360 60 {lab=vss}
N -0 60 0 100 {lab=vss}
N 460 -60 500 -60 {lab=vout}
N -600 -30 -570 -30 {lab=vinp_int}
N -600 30 -570 30 {lab=vinn_int}
C {devices/res.sym} 110 -60 1 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 220 0 0 0 {name=C1
m=1
value=\{Ao/2/3.14/GBW/10e3\}
footprint=1206
device="ceramic capacitor"}
C {devices/res.sym} 430 -60 1 0 {name=Rout_ol
value=\{Rout_ol\}
footprint=1206
device=resistor
m=1}
C {devices/ipin.sym} -710 -30 0 0 {name=p1 lab=vinp}
C {devices/ipin.sym} -710 30 0 0 {name=p2 lab=vinn}
C {devices/opin.sym} 500 -60 0 0 {name=p3 lab=vout}
C {devices/lab_wire.sym} 50 -60 0 0 {name=p5 sig_type=std_logic lab=vcvs1_out}
C {devices/lab_wire.sym} 280 -60 0 0 {name=p6 sig_type=std_logic lab=vcvs1_out_filt}
C {devices/lab_wire.sym} 380 -60 0 0 {name=p7 sig_type=std_logic lab=vcvs2_out}
C {devices/iopin.sym} 0 100 3 1 {name=p8 lab=vss}
C {devices/vsource.sym} -630 -30 1 0 {name=V1 value=0 savecurrent=false}
C {devices/vsource.sym} -630 30 1 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -570 -30 0 1 {name=p4 sig_type=std_logic lab=vinp_int}
C {devices/lab_wire.sym} -570 30 0 1 {name=p9 sig_type=std_logic lab=vinn_int}
C {devices/bsource.sym} 0 0 0 1 {name=B2 VAR=V FUNC="\{VDD/2 + (VDD/2-VSAT)*(tanh(V(vinp_int, vinn_int)*Ao/(VDD/2-VSAT)))\}"}
C {devices/bsource.sym} 360 0 0 0 {name=B1 VAR=V FUNC="\{V(vcvs1_out_filt, vss)*1\}"}
