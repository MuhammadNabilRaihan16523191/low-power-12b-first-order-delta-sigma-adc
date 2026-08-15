v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -10 -30 100 -30 {lab=Vbiasp}
N -50 0 -50 120 {lab=Vom}
N 140 0 140 120 {lab=Vop}
N 260 30 410 30 {lab=VDD}
N -50 80 240 80 {lab=Vom}
N -160 90 -160 100 {lab=Vop}
N -160 100 140 100 {lab=Vop}
N 140 180 140 270 {lab=#net1}
N -50 180 -50 270 {lab=#net1}
N -50 220 140 220 {lab=#net1}
N -10 300 100 300 {lab=Vbiasn}
N -50 330 -50 380 {lab=VSS}
N 140 330 140 380 {lab=VSS}
N 450 260 450 310 {lab=VSS}
N 300 260 300 310 {lab=VSS}
N 340 230 410 230 {lab=#net2}
N 300 120 300 200 {lab=#net2}
N 300 310 300 380 {lab=VSS}
N 450 310 450 400 {lab=VSS}
N 350 180 350 230 {lab=#net2}
N -200 120 -200 210 {lab=#net3}
N -200 270 -200 320 {lab=VSS}
N -340 270 -340 320 {lab=VSS}
N -300 240 -240 240 {lab=#net3}
N -340 130 -340 210 {lab=Vom}
N -270 190 -270 240 {lab=#net3}
N -270 190 -200 190 {lab=#net3}
N -200 320 -200 380 {lab=VSS}
N -340 320 -340 400 {lab=VSS}
N -340 60 -340 130 {lab=Vom}
N -340 -100 -340 0 {lab=VDD}
N -50 -100 -50 -60 {lab=VDD}
N 140 -100 140 -60 {lab=VDD}
N 450 -100 450 0 {lab=VDD}
N -50 -140 -50 -100 {lab=VDD}
N -340 -140 -340 -100 {lab=VDD}
N 140 -140 140 -100 {lab=VDD}
N 450 -140 450 -100 {lab=VDD}
N -340 -140 450 -140 {lab=VDD}
N -200 -140 -200 60 {lab=VDD}
N 40 -200 40 -140 {lab=VDD}
N -340 400 450 400 {lab=VSS}
N 40 400 40 420 {lab=VSS}
N -50 380 -50 400 {lab=VSS}
N -200 380 -200 400 {lab=VSS}
N 140 380 140 400 {lab=VSS}
N 300 380 300 400 {lab=VSS}
N 300 -140 300 60 {lab=VDD}
N 450 60 450 200 {lab=Vop}
N 260 80 260 90 {lab=Vom}
N 240 80 260 80 {lab=Vom}
N 300 180 350 180 {lab=#net2}
N 180 150 200 150 {lab=Vp}
N -120 150 -90 150 {lab=Vm}
N -370 150 -340 150 {lab=Vom}
N 450 150 480 150 {lab=Vop}
N 140 -30 170 -30 {lab=VDD}
N -80 -30 -50 -30 {lab=VDD}
N 450 30 480 30 {lab=VDD}
N 300 90 330 90 {lab=VDD}
N -370 30 -340 30 {lab=VDD}
N -230 90 -200 90 {lab=VDD}
N 140 300 170 300 {lab=VSS}
N -80 300 -50 300 {lab=VSS}
N 110 150 140 150 {lab=VSS}
N -50 150 -20 150 {lab=VSS}
N 270 230 300 230 {lab=VSS}
N 450 230 480 230 {lab=VSS}
N -200 240 -170 240 {lab=VSS}
N -370 240 -340 240 {lab=VSS}
N -50 80 -50 120 {lab=Vom}
N -100 80 -50 80 {lab=Vom}
N -100 50 -100 80 {lab=Vom}
N -300 50 -100 50 {lab=Vom}
N -300 50 -300 70 {lab=Vom}
N -300 70 -300 80 {lab=Vom}
N 140 60 270 60 {lab=Vop}
N 270 40 270 60 {lab=Vop}
N 270 40 390 40 {lab=Vop}
N 390 100 390 120 {lab=Vop}
N 390 180 450 180 {lab=Vop}
N -340 200 -300 200 {lab=Vom}
N 390 40 390 100 {lab=Vop}
N -300 80 -300 140 {lab=Vom}
N -300 140 -300 200 {lab=Vom}
N 390 120 390 180 {lab=Vop}
N -270 -20 -270 30 {lab=VDD}
N -340 -20 -270 -20 {lab=VDD}
N 260 -140 260 30 {lab=VDD}
N -300 30 -270 30 {lab=VDD}
C {symbols/pfet_03v3.sym} 280 90 0 0 {name=M5
L=\{Lp2\}
W=\{Wp2\}
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
C {symbols/pfet_03v3.sym} -30 -30 0 1 {name=M2
L=\{Lp1\}
W=\{Wp1\}
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
C {symbols/nfet_03v3.sym} -70 150 0 0 {name=M8
L=\{Ln1\}
W=\{Wn1\}
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
C {symbols/nfet_03v3.sym} 160 150 0 1 {name=M7
L=\{Ln1\}
W=\{Wn1\}
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
C {symbols/pfet_03v3.sym} 120 -30 0 0 {name=M1
L=\{Lp1\}
W=\{Wp1\}
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
C {symbols/pfet_03v3.sym} -180 90 0 1 {name=M6
L=\{Lp2\}
W=\{Wp2\}
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
C {symbols/pfet_03v3.sym} -320 30 0 1 {name=M4
L=\{Lp3\}
W=\{Wp3\}
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
C {symbols/pfet_03v3.sym} 430 30 0 0 {name=M3
L=\{Lp3\}
W=\{Wp3\}
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
C {symbols/nfet_03v3.sym} 120 300 0 0 {name=M9
L=\{Ln2\}
W=\{Wn2\}
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
C {symbols/nfet_03v3.sym} -30 300 0 1 {name=M10
L=\{Ln2\}
W=\{Wn2\}
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
C {symbols/nfet_03v3.sym} 430 230 0 0 {name=M11
L=\{Ln4\}
W=\{Wn4\}
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
C {symbols/nfet_03v3.sym} 320 230 0 1 {name=M13
L=\{Ln3\}
W=\{Wn3\}
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
C {symbols/nfet_03v3.sym} -220 240 0 0 {name=M12
L=\{Ln3\}
W=\{Wn3\}
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
C {symbols/nfet_03v3.sym} -320 240 0 1 {name=M14
L=\{Ln4\}
W=\{Wn4\}
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
C {iopin.sym} 40 -200 3 0 {name=p1 lab=VDD}
C {iopin.sym} 40 420 1 0 {name=p2 lab=VSS}
C {ipin.sym} 40 300 1 1 {name=p3 lab=Vbiasn}
C {ipin.sym} 40 -30 1 1 {name=p4 lab=Vbiasp}
C {ipin.sym} -120 150 2 1 {name=p5 lab=Vm}
C {ipin.sym} 200 150 2 0 {name=p6 lab=Vp}
C {opin.sym} -370 150 0 1 {name=p7 lab=Vom}
C {opin.sym} 480 150 2 1 {name=p8 lab=Vop}
C {lab_pin.sym} 170 -30 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -30 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 30 0 1 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 90 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -370 30 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -230 90 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 170 300 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -80 300 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -370 240 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 270 230 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 230 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -170 240 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -20 150 0 1 {name=p21 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 150 0 0 {name=p22 sig_type=std_logic lab=VSS}
