v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 160 -30 160 10 {lab=#net1}
N 160 -100 160 -90 {lab=OUT}
N 60 -100 160 -100 {lab=OUT}
N 60 -120 60 -100 {lab=OUT}
N 160 -100 260 -100 {lab=OUT}
N 260 -120 260 -100 {lab=OUT}
N 160 -60 170 -60 {lab=VSS}
N 170 -60 170 40 {lab=VSS}
N 160 40 170 40 {lab=VSS}
N 60 -220 60 -180 {lab=VDD}
N 60 -220 170 -220 {lab=VDD}
N 170 -220 260 -220 {lab=VDD}
N 260 -220 260 -180 {lab=VDD}
N 260 -100 310 -100 {lab=OUT}
N 160 70 160 100 {lab=VSS}
N 170 40 170 80 {lab=VSS}
N 160 80 170 80 {lab=VSS}
N 10 -150 20 -150 {lab=IN1}
N 10 -150 10 -60 {lab=IN1}
N 10 -60 120 -60 {lab=IN1}
N 100 -150 220 -150 {lab=IN2}
N 100 -150 100 40 {lab=IN2}
N 100 40 120 40 {lab=IN2}
N 0 -0 100 0 {lab=IN2}
N 0 -100 10 -100 {lab=IN1}
N 60 -150 70 -150 {lab=VDD}
N 70 -220 70 -150 {lab=VDD}
N 260 -150 270 -150 {lab=VDD}
N 270 -190 270 -150 {lab=VDD}
N 260 -190 270 -190 {lab=VDD}
N 170 -240 170 -220 {lab=VDD}
C {symbols/nfet_03v3.sym} 140 40 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 140 -60 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 40 -150 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 240 -150 0 0 {name=M5
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
C {ipin.sym} 0 -100 0 0 {name=p1 lab=IN1
}
C {opin.sym} 310 -100 0 0 {name=p2 lab=OUT}
C {iopin.sym} 170 -240 3 0 {name=p3 lab=VDD
}
C {ipin.sym} 0 0 0 0 {name=p4 lab=IN2
}
C {iopin.sym} 160 100 1 0 {name=p5 lab=VSS
}
