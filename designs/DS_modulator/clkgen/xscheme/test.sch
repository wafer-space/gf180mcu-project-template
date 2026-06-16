v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 140 -30 140 0 {lab=#net1}
N 90 30 100 30 {lab=#net2}
N 140 30 150 30 {lab=#net3}
N 150 30 150 70 {lab=#net3}
N 140 70 150 70 {lab=#net3}
N 140 60 140 70 {lab=#net3}
N 140 70 140 90 {lab=#net3}
N 90 -70 90 30 {lab=#net2}
N 90 -70 100 -70 {lab=#net2}
N 140 -130 140 -100 {lab=#net4}
N 140 -70 150 -70 {lab=#net4}
N 150 -110 150 -70 {lab=#net4}
N 140 -110 150 -110 {lab=#net4}
N 140 -40 140 -30 {lab=#net1}
N 60 -20 90 -20 {lab=#net2}
N 140 -20 180 -20 {lab=#net1}
C {symbols/nfet_03v3.sym} 120 30 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 120 -70 0 0 {name=M2
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
