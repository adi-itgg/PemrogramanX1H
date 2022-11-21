(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 21/11/2022
 *)
program Soal4;

var kelas     : String;
    durasi    : Integer;
    tarif     : LongInt;

// build=silent
begin

  Write('Jenis kelas kamar: '); ReadLn(kelas);
  Write('Lama menginap (dalam hari): '); ReadLn(durasi);

  kelas := LowerCase(kelas);

  if kelas = 'standard' then
    if durasi > 2 then tarif := 35000 else tarif := 400000
  else
    if durasi > 2 then tarif := 1000000 else tarif := 1200000;

  tarif := tarif * durasi;

  WriteLn('Total tarif yang harus dibayarkan adalah Rp.', tarif);

end.