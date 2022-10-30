(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan;

var gol             : Char;
    pendidikan      : String;
    gaji, tunj      : LongInt;


// build=silent
begin

  Write('Input Golongan Karyawan    : '); ReadLn(gol);
  Write('Input Pendidikan Karyawan  : '); ReadLn(pendidikan);

  if (gol = 'a') or (gol = 'A') then
    begin
      if (pendidikan = 'SMA') or (pendidikan = 'sma') then
        gaji := 3000000
      else
        gaji := 4000000;
    end
  else
    begin
      if (pendidikan = 'SMA') or (pendidikan = 'sma') then
        gaji := 4000000
      else
        gaji := 6000000;
    end;

  tunj := gaji - 1000000;

  WriteLn();
  WriteLn('Gaji yang didapat adalah : ', gaji);
  WriteLn('Tunjangan yang didapat adalah : ', tunj);

end.