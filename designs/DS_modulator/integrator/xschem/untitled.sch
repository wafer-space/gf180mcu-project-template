v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 110 -190 110 -120 {lab=#net1}
N 40 -220 70 -220 {lab=#net2}
N 40 -90 70 -90 {lab=#net2}
N 40 -220 40 -90 {lab=#net2}
N 10 -150 40 -150 {lab=#net2}
N 110 -300 110 -250 {lab=#net3}
N 110 -220 130 -220 {lab=#net3}
N 130 -260 130 -220 {lab=#net3}
N 110 -260 130 -260 {lab=#net3}
N 110 -90 130 -90 {lab=#net4}
N 130 -90 130 -50 {lab=#net4}
N 110 -50 130 -50 {lab=#net4}
N 110 -60 110 -50 {lab=#net4}
N 110 -50 110 -30 {lab=#net4}
C {symbols/pfet_03v3.sym} 90 -220 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 90 -90 0 0 {name=M2
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
