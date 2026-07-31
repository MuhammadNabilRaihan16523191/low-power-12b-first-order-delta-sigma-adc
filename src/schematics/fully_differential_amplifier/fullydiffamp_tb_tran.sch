v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 180 10 180 50 {lab=GND}
N 180 10 210 10 {lab=GND}
N 592.5 -27.5 592.5 -17.5 {lab=GND}
N 170 -65 210 -65 {lab=VDD}
N 592.5 -97.5 592.5 -87.5 {lab=VDD}
N 250 7.5 250 45 {lab=vbiasn}
N 250 105 250 115 {lab=GND}
N 311.25 -42.5 345 -42.5 {lab=vop}
N 312.5 -18.75 346.25 -18.75 {lab=vom}
N 282.5 50 400 50 {lab=vbiasp}
N 282.5 -12.5 282.5 50 {lab=vbiasp}
N -250 165 -250 185 {lab=GND}
N 15 85 15 110 {lab=Vin+}
N -250 45 -250 105 {lab=Vin-}
N 15 10 15 85 {lab=Vin+}
N -200 -45 -150 -45 {lab=Vin-}
N -250 -45 -250 45 {lab=Vin-}
N 345 -42.5 422.5 -42.5 {lab=vop}
N 422.5 -112.5 422.5 -42.5 {lab=vop}
N -250 -45 -200 -45 {lab=Vin-}
N 15 170 15 190 {lab=GND}
N 346.25 -18.75 550 -20 {lab=vom}
N 550 -20 550 270 {lab=vom}
N 325 265 550 270 {lab=vom}
N 150 265 265 265 {lab=#net1}
N 150 10 150 265 {lab=#net1}
N 15 10 60 10 {lab=Vin+}
N -150 -45 -115 -45 {lab=Vin-}
N -55 -45 210 -45 {lab=#net2}
N 295 -115 422.5 -112.5 {lab=vop}
N 135 -115 235 -115 {lab=#net2}
N 135 -115 135 -45 {lab=#net2}
N 150 -10 150 10 {lab=#net1}
N 150 -10 210 -10 {lab=#net1}
N 120 10 150 10 {lab=#net1}
N 400 110 400 120 {lab=GND}
C {gnd.sym} 180 50 0 0 {name=l3 lab=GND}
C {vsource.sym} 592.5 -57.5 0 0 {name=V3 value="dc \{VDDVAL\}" savecurrent=false}
C {gnd.sym} 592.5 -17.5 0 0 {name=l4 lab=GND}
C {vdd.sym} 592.5 -97.5 0 0 {name=l5 lab=VDD}
C {vdd.sym} 170 -65 0 0 {name=l6 lab=VDD}
C {vsource.sym} 250 75 0 0 {name=V4 value="dc \{VBIASN_VAL\}" savecurrent=false}
C {vsource.sym} 400 80 0 0 {name=V5 value="dc \{VBIASP_VAL\}" savecurrent=false}
C {gnd.sym} 250 115 0 0 {name=l7 lab=GND}
C {gnd.sym} 400 120 0 0 {name=l8 lab=GND}
C {devices/code_shown.sym} -978.75 -458.75 0 0 {name=NGSPICE only_toplevel=true
value="
*PARAMETERS
* =====================================================
.param VDDVAL=3.3
.param VCM=1.65
.param VBIASN_VAL=0.65
.param VBIASP_VAL=2.5
.param CL=0.5p
.param Wp=12u
.param Wn=6u
.param Kall=1.28u
.param Gcm = 10u
.option reltol=1e-4 abstol=1e-12 vntol=1e-6 temp=27

* LOAD, LEAKAGE, CMFB
* =====================================================
CLP Vop 0 \{CL\}
CLM Vom 0 \{CL\}
RLEAKP Vop 0 1T
RLEAKM Vom 0 1T
Bcm_sense vcm_sns 0 V=\{ (v(Vop)+v(Vom))/2 \}
Gcmfb_p  0 Vop  vcm_sns vcm_ref  \{Gcm\}
Gcmfb_m  0 Vom  vcm_sns vcm_ref  \{Gcm\}
Vcm_ref  vcm_ref 0  DC \{VCM\}

* SIMULATION
* =====================================================
.control
save all

* OP ANALYSIS (DC Bias & Sizing Validation)
echo ===== DC OPERATING POINT =====
op

* Kalkulasi Variabel Makro
let vocm = (v(Vop)+v(Vom))/2
let vod = v(Vop)-v(Vom)


* TRANSIENT ANALYSIS
echo ===== TRANSIENT =====
tran 1n 8u
let vout_diff_tran = v(Vop)-v(Vom)
plot v(Vin-) v(Vin+)
plot vout_diff_tran
plot v(Vop) v(Vom)

* --- swing & final value ---
meas tran vout_max MAX vout_diff_tran
meas tran vout_min MIN vout_diff_tran
let vout_swing = vout_max - vout_min
meas tran vfinal FIND vout_diff_tran AT=2.4u

* --- slew rate (10%-90% pada transisi naik pertama) ---
let v10 = vout_min + 0.1*vout_swing
let v90 = vout_min + 0.9*vout_swing
meas tran t10 WHEN vout_diff_tran=v10 RISE=1
meas tran t90 WHEN vout_diff_tran=v90 RISE=1

let slew_rate = vout_swing/(t90-t10)
* --- settling time ke dalam 1% dari nilai akhir ---
let vset_hi = vfinal + 0.01*vout_swing
meas tran tset WHEN vout_diff_tran=vset_hi RISE=1
print vout_swing slew_rate tset
write ota_tran.raw v(Vop) v(Vom) vout_diff_tran
.endc
"}
C {lab_wire.sym} 330 -42.5 0 1 {name=p1 sig_type=std_logic lab=vop}
C {lab_wire.sym} 330 -18.75 0 1 {name=p2 sig_type=std_logic lab=vom}
C {lab_wire.sym} 282.5 22.5 0 1 {name=p3 sig_type=std_logic lab=vbiasp}
C {lab_wire.sym} 250 37.5 0 1 {name=p4 sig_type=std_logic lab=vbiasn}
C {gnd.sym} 15 190 0 0 {name=l11 lab=GND}
C {vsource.sym} -250 135 0 0 {name=V7 value="PULSE(0.5 -0.5 500n 1n 1n 2u 4u)" savecurrent=false}
C {gnd.sym} -250 185 0 0 {name=l12 lab=GND
value="PULSE(20u -20u 0 1n 1n 100u 200u)"}
C {vsource.sym} 15 140 0 0 {name=V6 value="PULSE(-0.5 0.5 500n 1n 1n 2u 4u)" savecurrent=false}
C {res.sym} 90 10 1 0 {name=R1
value=1000k
footprint=1206
device=resistor
m=1}
C {res.sym} -85 -45 1 0 {name=R2
value=1000k
footprint=1206
device=resistor
m=1}
C {res.sym} 265 -115 1 0 {name=R3
value=1000k
footprint=1206
device=resistor
m=1}
C {res.sym} 295 265 1 0 {name=R4
value=1000k
footprint=1206
device=resistor
m=1}
C {fully_differential_amplifier/fullydiffamp.sym} 270 60 0 0 {name=x1}
C {lab_pin.sym} -250 90 0 0 {name=p5 sig_type=std_logic lab=Vin-}
C {lab_pin.sym} 15 100 0 0 {name=p6 sig_type=std_logic lab=Vin+}
C {code_shown.sym} -410 -450 0 0 {name=MODELS only_toplevel=false value=" 
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical
.inc /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
"}
