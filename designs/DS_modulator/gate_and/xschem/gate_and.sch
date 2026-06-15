v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 40 -370 80 -370 {lab=A}
N 200 -230 240 -230 {lab=B}
N 420 -370 520 -370 {lab=VDD}
N 280 -230 380 -230 {lab=VSS}
N 280 -200 280 -160 {lab=NX}
N 280 -130 380 -130 {lab=VSS}
N 280 -100 280 -60 {lab=VSS}
N 120 -440 120 -400 {lab=VDD}
N 120 -370 220 -370 {lab=VDD}
N 420 -340 420 -300 {lab=OUTN}
N 340 -370 380 -370 {lab=B}
N 420 -440 420 -400 {lab=VDD}
N 120 -480 120 -440 {lab=VDD}
N 200 -130 240 -130 {lab=A}
N 120 -340 120 -300 {lab=OUTN}
N 280 -300 280 -260 {lab=OUTN}
N 120 -300 620 -300 {lab=OUTN}
N 120 -440 420 -440 {lab=VDD}
N 620 -370 620 -300 {lab=OUTN}
N 620 -370 660 -370 {lab=OUTN}
N 700 -340 700 -260 {lab=OUT}
N 620 -300 620 -230 {lab=OUTN}
N 620 -230 660 -230 {lab=OUTN}
N 700 -230 800 -230 {lab=VSS}
N 700 -200 700 -160 {lab=VSS}
N 700 -370 800 -370 {lab=VDD}
N 700 -440 700 -400 {lab=VDD}
N 420 -440 700 -440 {lab=VDD}
N 700 -300 800 -300 {lab=OUT}
N 40 -300 120 -300 {lab=OUTN}
C {symbols/nfet_03v3.sym} 260 -230 0 0 {name=MNB
L=0.28u
W=1u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 400 -370 0 0 {name=MPB
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
C {opin.sym} 800 -300 0 0 {name=p1 lab=OUT}
C {ipin.sym} 200 -130 0 0 {name=p2 lab=A}
C {iopin.sym} 120 -480 3 0 {name=p5 lab=VDD}
C {iopin.sym} 280 -60 1 0 {name=p4 lab=VSS}
C {symbols/nfet_03v3.sym} 260 -130 0 0 {name=MNA
L=0.28u
W=1u
nf=1
m=4
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 380 -230 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 380 -130 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 100 -370 0 0 {name=MPA
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
C {lab_pin.sym} 220 -370 0 1 {name=p7 sig_type=std_logic lab=VDD
W=3u
nf=3
m=2}
C {lab_pin.sym} 520 -370 0 1 {name=p8 sig_type=std_logic lab=VDD
W=2u
nf=3}
C {ipin.sym} 200 -230 0 0 {name=p9 lab=B}
C {lab_pin.sym} 40 -370 0 0 {name=p10 sig_type=std_logic lab=A}
C {lab_pin.sym} 340 -370 0 0 {name=p13 sig_type=std_logic lab=B
W=3u
nf=3
m=2}
C {symbols/nfet_03v3.sym} 680 -230 0 0 {name=MIN
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
C {symbols/pfet_03v3.sym} 680 -370 0 0 {name=MIP
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
C {lab_pin.sym} 800 -230 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 800 -370 0 1 {name=p16 sig_type=std_logic lab=VDD
W=2u
nf=3}
C {lab_pin.sym} 40 -300 0 0 {name=p17 sig_type=std_logic lab=OUTN}
C {lab_pin.sym} 280 -180 0 0 {name=p11 sig_type=std_logic lab=NX}
C {lab_pin.sym} 700 -160 1 1 {name=p12 sig_type=std_logic lab=VSS}
