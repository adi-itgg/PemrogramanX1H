(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 12/11/2022
 *)
program Soal3;

var uang, pembulatan, i        : LongInt;

// build=silent
begin

  // inputs
  Write('Nominal = '); ReadLn(uang);
  Write('Pembulatan = '); ReadLn(pembulatan);

  // proses
  while i < uang do
  begin
    i += pembulatan;
  end;

  // output
  Write('Hasil Pembulatan: ', i);

end.