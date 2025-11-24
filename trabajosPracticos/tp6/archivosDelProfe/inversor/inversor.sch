v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -30 -120 -30 -80 {lab=out}
N -70 -150 -70 -50 {lab=in}
N -90 -100 -70 -100 {lab=in}
N -30 -100 -0 -100 {lab=out}
N -30 -20 -30 10 {lab=Vss}
N -30 -200 -30 -180 {lab=Vdd}
N -30 -190 -0 -190 {lab=Vdd}
N 0 -190 0 -150 {lab=Vdd}
N -30 -150 -0 -150 {lab=Vdd}
N -30 -50 -0 -50 {lab=Vss}
N 0 -50 -0 0 {lab=Vss}
N -30 -0 0 0 {lab=Vss}
C {sky130_fd_pr/nfet_01v8.sym} -50 -50 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} -50 -150 0 0 {name=M2 
W=2.1
L=0.15
nf=1 
mult=1 
ad="'int((nf+1)/2) * W/nf * 0.29'" pd="'2*int((nf+1)/2) * (W/nf + 0.29)'" 
as="'int((nf+2)/2) * W/nf * 0.29'" ps="'2*int((nf+2)/2) * (W/nf + 0.29)'" 
nrd="'0.29 / W'" nrs="'0.29 / W'" 
sa=0 
sb=0 sd=0 
model=pfet_01v8 
spiceprefix=X}
C {ipin.sym} -90 -100 0 0 {name=p1 lab=in}
C {ipin.sym} -30 -200 0 0 {name=p2 lab=Vdd
}
C {ipin.sym} -30 10 0 0 {name=p3 lab=Vss}
C {opin.sym} 0 -100 0 0 {name=p4 lab=out

}
