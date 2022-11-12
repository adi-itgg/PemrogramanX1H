(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 12/11/2022
 *)
program Soal3Test;

var uang, pembulatan, i        : LongInt;

// build=silent
begin

  // inputs
  uang := 1730;
  pembulatan := 50;
  WriteLn('Nominal = ', uang);
  WriteLn('Pembulatan = ', pembulatan);

  // proses
  while i < uang do
  begin
    i += pembulatan;
  end;

  // output
  Write('Hasil Pembulatan: ', i);

end.