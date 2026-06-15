v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 200 -380 200 -320 {lab=VDD}
N 200 -260 200 -180 {lab=#net1}
N 120 -290 160 -290 {lab=A}
N 120 -290 120 -220 {lab=A}
N 80 -220 120 -220 {lab=A}
N 120 -220 120 -150 {lab=A}
N 120 -150 160 -150 {lab=A}
N 200 -290 300 -290 {lab=VDD}
N 300 -340 300 -290 {lab=VDD}
N 200 -340 300 -340 {lab=VDD}
N 200 -150 300 -150 {lab=VSS}
N 300 -150 300 -100 {lab=VSS}
N 200 -100 300 -100 {lab=VSS}
N 200 -120 200 -80 {lab=VSS}
N 420 -260 420 -180 {lab=B}
N 420 -220 540 -220 {lab=B}
N 420 -290 520 -290 {lab=VDD}
N 520 -340 520 -290 {lab=VDD}
N 420 -340 520 -340 {lab=VDD}
N 420 -150 520 -150 {lab=VSS}
N 520 -150 520 -100 {lab=VSS}
N 420 -100 520 -100 {lab=VSS}
N 340 -290 380 -290 {lab=#net1}
N 340 -290 340 -220 {lab=#net1}
N 340 -220 340 -150 {lab=#net1}
N 340 -150 380 -150 {lab=#net1}
N 200 -220 340 -220 {lab=#net1}
N 420 -380 420 -320 {lab=VDD}
N 420 -120 420 -80 {lab=VSS}
C {symbols/nfet_03v3.sym} 180 -150 0 0 {name=MN1
L=0.28u
W=1u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 180 -290 0 0 {name=MP1
L=0.28u
W=3u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {opin.sym} 540 -220 0 0 {name=p1 lab=B}
C {ipin.sym} 80 -220 0 0 {name=p2 lab=A}
C {iopin.sym} 200 -380 1 1 {name=p5 lab=VDD}
C {iopin.sym} 200 -80 1 0 {name=p4 lab=VSS}
C {symbols/nfet_03v3.sym} 400 -150 0 0 {name=MN2
L=0.28u
W=1u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 400 -290 0 0 {name=MP2
L=0.28u
W=3u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 420 -380 3 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 420 -80 3 0 {name=p3 sig_type=std_logic lab=VSS}
