v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 270 -340 270 -300 {lab=#net1}
N 160 -340 270 -340 {lab=#net1}
N 270 -240 270 -180 {lab=#net2}
N 180 -270 230 -270 {lab=#net3}
N 180 -270 180 -150 {lab=#net3}
N 180 -150 230 -150 {lab=#net3}
N 270 -120 270 -80 {lab=#net4}
N 180 -80 270 -80 {lab=#net4}
N 270 -150 380 -150 {lab=#net4}
N 380 -150 380 -100 {lab=#net4}
N 270 -100 380 -100 {lab=#net4}
N 270 -270 380 -270 {lab=#net1}
N 380 -310 380 -270 {lab=#net1}
N 270 -310 380 -310 {lab=#net1}
N 270 -210 440 -210 {lab=#net2}
N 70 -210 180 -210 {lab=#net3}
C {symbols/nfet_03v3.sym} 250 -150 0 0 {name=M1
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 250 -270 0 0 {name=M2
L=0.28u
W=0.22u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
