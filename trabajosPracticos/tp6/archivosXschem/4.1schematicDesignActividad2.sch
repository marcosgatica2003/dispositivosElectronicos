v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 -40 -10 -0 {lab=Vout}
N -10 -130 -10 -100 {lab=Vdd}
N -10 -70 60 -70 {lab=Vdd}
N 60 -110 60 -70 {lab=Vdd}
N -10 -110 60 -110 {lab=Vdd}
N -60 30 -50 30 {lab=Vin}
N -60 -70 -60 30 {lab=Vin}
N -60 -70 -50 -70 {lab=Vin}
N -80 -20 -60 -20 {lab=Vin}
N -10 -20 10 -20 {lab=Vout}
N -10 60 -10 100 {lab=VSS}
N -10 30 60 30 {lab=VSS}
N 60 30 60 80 {lab=VSS}
N -10 80 60 80 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -30 30 0 0 {name=M1
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} -30 -70 0 0 {name=M2
W=1
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
C {ipin.sym} -10 -130 0 0 {name=p1 lab=Vdd}
C {ipin.sym} -80 -20 0 0 {name=p2 lab=Vin}
C {ipin.sym} -10 100 0 0 {name=p3 lab=VSS}
C {iopin.sym} 10 -20 0 0 {name=p4 lab=Vout}
