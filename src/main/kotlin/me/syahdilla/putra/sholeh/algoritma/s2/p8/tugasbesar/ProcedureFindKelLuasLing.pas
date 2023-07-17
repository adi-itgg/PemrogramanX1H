(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 17/04/2023
 *)
program ProcedureFindKelLuasLing;

var pilihan, P, L, R : Integer;
  Luas, Keliling: Real;

procedure InvalidNumber();
begin
  WriteLn('Maaf Anda Salah');
end;

procedure CalcLuasPersegiPanjang();
begin
  Write('Masukkan panjang: '); ReadLn(P);
  Write('Masukkan lebar: '); ReadLn(L);

  Luas := P * L;
  Keliling := (2 * P) + (2 * L);

  WriteLn();
  WriteLn('Luas: ', Luas:2:2);
  WriteLn('Keliling: ', Keliling:2:2);
end;

procedure CalcLingkaran();
begin
  Write('Masukkan jari-jari: '); ReadLn(R);

  Luas := 3.14 * R * R;
  Keliling := 3.14 * 2 * R;

  WriteLn();
  WriteLn('Luas: ', Luas:2:2);
  WriteLn('Keliling: ', Keliling:2:2);
end;

// build=silent
begin
  WriteLn('Kalkulator Sederhana Persegi Panjang & Lingkaran');
  WriteLn('1. Hitung Keliling dan Luas Persegi Panjang');
  WriteLn('2. Hitung Keliling dan Luas Lingkaran');
  Write('Masukkan pilihan (1/2): '); ReadLn(pilihan);

  WriteLn();
  if ((pilihan > 2) or (pilihan < 1)) then
    InvalidNumber()
  else if (pilihan = 1) then
    CalcLuasPersegiPanjang()
  else
    CalcLingkaran();
end.