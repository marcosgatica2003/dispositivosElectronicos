v {xschem version=3.4.8RC file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 250 -260 250 -230 {lab=Vout}
N 170 -290 210 -290 {lab=Vin}
N 170 -290 170 -200 {lab=Vin}
N 170 -200 210 -200 {lab=Vin}
N 250 -360 250 -320 {lab=Vdd}
N 250 -170 250 -140 {lab=Vss}
N 130 -250 170 -250 {lab=Vin}
N 250 -250 330 -250 {lab=Vout}
N 250 -290 270 -290 {lab=Vdd}
N 270 -320 270 -290 {lab=Vdd}
N 250 -320 270 -320 {lab=Vdd}
N 250 -200 260 -200 {lab=Vss}
N 260 -200 260 -170 {lab=Vss}
N 250 -170 260 -170 {lab=Vss}
C {sky130_fd_pr/pfet_01v8.sym} 230 -290 0 0 {name=M2
W=2.1
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 230 -200 0 0 {name=M1
W=1.05
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {ipin.sym} 250 -360 0 0 {name=p1 lab=Vdd}
C {ipin.sym} 250 -140 0 0 {name=p2 lab=Vss}
C {ipin.sym} 130 -250 0 0 {name=p3 lab=Vin}
C {opin.sym} 330 -250 0 0 {name=p4 lab=Vout}
