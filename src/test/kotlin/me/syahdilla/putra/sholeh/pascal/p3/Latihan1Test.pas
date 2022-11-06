(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan1Test;

var p, a, t, r   : Integer;

// build=silent
begin

  p := 14;
  a := 12;
  t := 12;

  WriteLn('Input panjang balok: ', p);
  WriteLn('Input alas balok: ', a);
  WriteLn('Input tinggi balok: ', t);

  r := p * a * t;

  WriteLn('Volume balok adalah: ', r);

end.