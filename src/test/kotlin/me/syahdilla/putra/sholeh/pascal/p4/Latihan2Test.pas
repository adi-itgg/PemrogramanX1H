(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan2Test;

var a, b, r    : Integer;

// build=silent
begin

  a := 1;
  b := 10;

  WriteLn('Input angka pertama : ', a);
  WriteLn('Input angka kedua : ', b);

  if a > b then
    r := a
  else
    r := b;

  WriteLn('Angka terbesar adalah ', r)

end.