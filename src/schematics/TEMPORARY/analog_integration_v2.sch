v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 230 -980 230 -840 {lab=#net1}
N 190 -840 230 -840 {lab=#net1}
N 230 -840 310 -840 {lab=#net1}
N 370 -840 410 -840 {lab=#net2}
N 410 -980 410 -840 {lab=#net2}
N 410 -840 450 -840 {lab=#net2}
N 510 -840 550 -840 {lab=Vm}
N 110 -840 130 -840 {lab=Vin+}
N 80 -840 110 -840 {lab=Vin+}
N 480 -900 480 -880 {lab=clk2}
N 480 -900 510 -900 {lab=clk2}
N 450 -1010 510 -1010 {lab=clk1}
N 410 -1070 410 -1040 {lab=VSS}
N 230 -1070 230 -1040 {lab=VCM}
N 230 -460 230 -320 {lab=#net3}
N 190 -460 230 -460 {lab=#net3}
N 230 -460 310 -460 {lab=#net3}
N 370 -460 410 -460 {lab=#net4}
N 410 -460 410 -320 {lab=#net4}
N 410 -460 450 -460 {lab=#net4}
N 510 -460 550 -460 {lab=Vp}
N 110 -460 130 -460 {lab=Vin-}
N 80 -460 110 -460 {lab=Vin-}
N 160 -420 160 -400 {lab=clk1}
N 130 -400 160 -400 {lab=clk1}
N 130 -290 190 -290 {lab=clk2}
N 480 -420 480 -400 {lab=clk2}
N 480 -400 510 -400 {lab=clk2}
N 450 -290 510 -290 {lab=clk1}
N 410 -260 410 -230 {lab=VSS}
N 230 -260 230 -230 {lab=VCM}
N 230 -1010 240 -1010 {lab=VSS}
N 400 -1010 410 -1010 {lab=VSS}
N 160 -840 160 -830 {lab=VSS}
N 480 -840 480 -830 {lab=VSS}
N 160 -470 160 -460 {lab=VSS}
N 480 -470 480 -460 {lab=VSS}
N 230 -290 240 -290 {lab=VSS}
N 400 -290 410 -290 {lab=VSS}
N 550 -840 750 -840 {lab=Vm}
N 550 -460 770 -460 {lab=Vp}
N 560 -840 560 -670 {lab=Vm}
N 560 -670 720 -670 {lab=Vm}
N 560 -630 560 -460 {lab=Vp}
N 560 -630 720 -630 {lab=Vp}
N 720 -635 720 -630 {lab=Vp}
N 810 -840 880 -840 {lab=#net5}
N 830 -460 890 -460 {lab=#net6}
N 822.5 -643.75 890 -643.75 {lab=#net6}
N 821.25 -667.5 888.75 -667.5 {lab=#net5}
N 880 -840 890 -840 {lab=#net5}
N 888.75 -667.5 890 -667.5 {lab=#net5}
N 890 -840 890 -667.5 {lab=#net5}
N 890 -643.75 890 -460 {lab=#net6}
N 792.5 -637.5 800 -637.5 {lab=Vbiasp}
N 800 -637.5 800 -590 {lab=Vbiasp}
N 760 -617.5 760 -590 {lab=Vbiasn}
N -970 -980 -970 -940 {lab=VDD}
N -970 -880 -970 -860 {lab=0}
N -750 -980 -750 -940 {lab=VSS}
N -750 -880 -750 -860 {lab=0}
N -530 -980 -530 -940 {lab=Vbiasn}
N -530 -880 -530 -860 {lab=0}
N -270 -980 -270 -940 {lab=Vbiasp}
N -270 -880 -270 -860 {lab=0}
N -970 -700 -970 -660 {lab=Vin+}
N -970 -600 -970 -580 {lab=0}
N -750 -700 -750 -660 {lab=Vin-}
N -750 -600 -750 -580 {lab=0}
N -530 -700 -530 -660 {lab=clk1}
N -530 -600 -530 -580 {lab=0}
N -270 -700 -270 -660 {lab=clk2}
N -270 -600 -270 -580 {lab=0}
N -970 -450 -970 -410 {lab=VCM}
N -970 -350 -970 -330 {lab=0}
N 890 -667.5 932.5 -667.5 {lab=#net5}
N 890 -643.75 932.5 -643.75 {lab=#net6}
N 992.5 -667.5 1040 -667.5 {lab=#net5}
N 992.5 -643.75 1040 -643.75 {lab=#net6}
N 932.5 -643.75 992.5 -643.75 {lab=#net6}
N 932.5 -667.5 992.5 -667.5 {lab=#net5}
N 1100 -667.5 1160 -667.5 {lab=Vop}
N 1100 -643.75 1160 -643.75 {lab=Vom}
C {symbols/nfet_03v3.sym} 210 -1010 2 1 {name=M1
L=0.3u
W=7.5u
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
C {symbols/nfet_03v3.sym} 430 -1010 2 0 {name=M2
L=0.3u
W=7.5u
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
C {symbols/nfet_03v3.sym} 160 -860 3 1 {name=M3
L=0.3u
W=7.5u
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
C {symbols/nfet_03v3.sym} 480 -860 3 1 {name=M4
L=0.3u
W=7.5u
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
C {capa.sym} 340 -840 1 1 {name=C1
m=1
value=50pF
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 80 -840 0 0 {name=p3 lab=Vin+}
C {lab_pin.sym} 510 -1010 2 0 {name=p1 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 510 -900 2 0 {name=p5 sig_type=std_logic lab=clk2}
C {symbols/nfet_03v3.sym} 210 -290 0 0 {name=M5
L=0.3u
W=7.5u
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
C {symbols/nfet_03v3.sym} 430 -290 0 1 {name=M6
L=0.3u
W=7.5u
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
C {symbols/nfet_03v3.sym} 160 -440 3 0 {name=M7
L=0.3u
W=7.5u
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
C {symbols/nfet_03v3.sym} 480 -440 3 0 {name=M8
L=0.3u
W=7.5u
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
C {capa.sym} 340 -460 1 0 {name=C3
m=1
value=50pF
footprint=1206
device="ceramic capacitor"}
C {ipin.sym} 80 -460 2 1 {name=p6 lab=Vin-}
C {lab_pin.sym} 510 -290 0 1 {name=p7 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 130 -400 2 1 {name=p8 sig_type=std_logic lab=clk1}
C {lab_pin.sym} 130 -290 2 1 {name=p9 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 510 -400 0 1 {name=p10 sig_type=std_logic lab=clk2}
C {lab_pin.sym} 240 -1010 2 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 -1010 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -830 3 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -830 3 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 -470 1 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 480 -470 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -290 2 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 400 -290 0 0 {name=p20 sig_type=std_logic lab=VSS}
C {capa.sym} 780 -840 3 0 {name=C5
m=1
value=50pF
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 800 -460 3 0 {name=C6
m=1
value=50pF
footprint=1206
device="ceramic capacitor"}
C {opin.sym} 1160 -667.5 0 0 {name=p11 lab=Vop}
C {opin.sym} 1160 -643.75 2 1 {name=p12 lab=Vom}
C {lab_pin.sym} 720 -615 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 720 -690 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 410 -230 3 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 410 -1070 1 0 {name=p39 sig_type=std_logic lab=VSS}
C {ipin.sym} 160 -880 3 1 {name=p41 lab=clk1}
C {ipin.sym} 190 -1010 2 1 {name=p2 lab=clk2}
C {ipin.sym} 760 -590 1 1 {name=p4 lab=Vbiasn}
C {ipin.sym} 800 -590 1 1 {name=p42 lab=Vbiasp}
C {vsource.sym} -970 -910 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -970 -860 0 0 {name=l5 lab=0}
C {vsource.sym} -750 -910 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -750 -860 0 0 {name=l6 lab=0}
C {vsource.sym} -530 -910 0 0 {name=V3 value=0.65 savecurrent=false}
C {gnd.sym} -530 -860 0 0 {name=l7 lab=0}
C {vsource.sym} -270 -910 0 0 {name=V4 value=2.5 savecurrent=false}
C {gnd.sym} -270 -860 0 0 {name=l8 lab=0}
C {vsource.sym} -970 -630 0 0 {name=V5 value="PULSE(0.25 -0.25 0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -970 -580 0 0 {name=l9 lab=0}
C {vsource.sym} -750 -630 0 0 {name=V6 value="PULSE(-0.25 0.25 0 1n 1n 5u 10u)" savecurrent=false}
C {gnd.sym} -750 -580 0 0 {name=l10 lab=0}
C {vsource.sym} -530 -630 0 0 {name=V7 value="PULSE(0 3.3 0 1n 1n 36.69n 81.38n)" savecurrent=false}
C {gnd.sym} -530 -580 0 0 {name=l11 lab=0}
C {vsource.sym} -270 -630 0 0 {name=V8 value="PULSE(0 3.3 40.69n 1n 1n 36.69n 81.38n)" savecurrent=false}
C {gnd.sym} -270 -580 0 0 {name=l12 lab=0}
C {lab_pin.sym} -970 -980 1 0 {name=p25 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -750 -980 1 0 {name=p26 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -530 -980 1 0 {name=p27 sig_type=std_logic lab=Vbiasn
}
C {lab_pin.sym} -270 -980 1 0 {name=p28 sig_type=std_logic lab=Vbiasp
}
C {lab_pin.sym} -970 -700 1 0 {name=p29 sig_type=std_logic lab=Vin+}
C {lab_pin.sym} -750 -700 1 0 {name=p30 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} -530 -700 1 0 {name=p31 sig_type=std_logic lab=clk1}
C {lab_pin.sym} -270 -700 1 0 {name=p32 sig_type=std_logic lab=clk2}
C {devices/code_shown.sym} 1821.25 -1053.75 0 0 {name=NGSPICE only_toplevel=true
value="
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice

.param CL=0.5p
.param Wp=12u
.param Wn=6u
.param Kall=1.28u
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T

* dummy load supaya tiap node punya DC path ke ground
Rd1 clk1  0 1meg
Rd2 clk2  0 1meg

.control
set color0=white
set color1=black
tran 2n 200u
let vicm_ota = (v(Vp)+v(Vm))/2
let vid_ota  = v(Vp)-v(Vm)
* --- window ala paper ---
plot v(clk1) v(clk2)          $ window 1: non-overlapping clocks
plot v(Vin+) v(Vin-)          $ window 2: input diferensial
plot v(Vop) v(Vom)            $ window 3: output OTA (single-ended)
plot v(Vop)-v(Vom)            $ window 4: output integrator (diferensial) -> segitiga
plot v(Vp) v(Vm)
plot vicm_ota
plot vid_ota
.endc
.end
"}
C {lab_pin.sym} 630 -670 1 0 {name=p33 sig_type=std_logic lab=Vm}
C {lab_pin.sym} 630 -630 3 0 {name=p34 sig_type=std_logic lab=Vp}
C {vsource.sym} -970 -380 0 0 {name=V9 value=1.65 savecurrent=false}
C {gnd.sym} -970 -330 0 0 {name=l1 lab=0}
C {lab_pin.sym} -970 -450 1 0 {name=p35 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 230 -1070 1 0 {name=p36 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 230 -230 3 0 {name=p21 sig_type=std_logic lab=VCM}
C {fully_differential_amplifier/fullydiffamp.sym} 780 -565 0 0 {name=x1}
C {capa.sym} 1100 -697.5 0 0 {name=C2
m=1
value=0.53nF
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1100 -613.75 0 0 {name=C4
m=1
value=0.53nF
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1100 -727.5 1 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -583.75 3 0 {name=p37 sig_type=std_logic lab=VSS}
C {res.sym} 1070 -643.75 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 1070 -667.5 3 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
