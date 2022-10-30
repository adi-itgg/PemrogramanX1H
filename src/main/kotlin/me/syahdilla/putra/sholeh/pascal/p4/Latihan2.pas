(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan2;

var a, b, r    : Integer;

// build=silent
begin

  Write('Input angka pertama : '); ReadLn(a);
  Write('Input angka kedua : '); ReadLn(b);

  if a > b then
    r := a
  else
    r := b;

  WriteLn('Angka terbesar adalah ', r)

end.