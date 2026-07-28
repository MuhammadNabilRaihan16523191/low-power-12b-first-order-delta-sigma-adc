`timescale 1ns / 1ps

module tb_andig_clock;

  // 1. Deklarasi Sinyal Testbench
  reg  in_clk;
  reg  rst;
  wire out_clk1;
  wire out_clk2;
  wire out_clk2B;
  wire out_clk_cic;

  // 2. Instansiasi Unit Under Test (UUT)
  andig_clock uut (
    .in_clk(in_clk),
    .rst(rst),
    .out_clk1(out_clk1),
    .out_clk2(out_clk2),
    .out_clk2B(out_clk2B),
    .out_clk_cic(out_clk_cic)
  );

  // 3. Pembangkit Clock Utama (in_clk = 10 MHz -> Periode = 100ns)
  always begin
    #50 in_clk = ~in_clk;
  end

  // 4. Prosedur Stimulus dan Penulisan VCD
  initial begin
    // Inisialisasi Sinyal
    in_clk = 0;
    rst    = 0;

    // Membuka File VCD untuk Visualisasi di GTKWave
    $dumpfile("tb_andig_clock.vcd");
    $dumpvars(0, tb_andig_clock);

    // Tampilkan log di terminal saat ada perubahan sinyal
    $monitor("Time=%0t ns | rst=%b | counter=%d | clk1=%b | clk2=%b | clk2B=%b | clk_cic=%b",
             $time, rst, uut.counter, out_clk1, out_clk2, out_clk2B, out_clk_cic);

    // Tahan Reset selama 150 ns (Active-LOW Reset)
    #150;
    rst = 1; // Lepas Reset

    // Jalankan simulasi selama beberapa siklus penuh (misal: 2000 ns)
    #2000;

    // Selesaikan Simulasi
    $display("Simulasi Selesai!");
    $finish;
  end

endmodule
