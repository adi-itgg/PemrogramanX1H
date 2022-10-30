(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan1;

var p, a, t, r   : Integer;

// build=silent
begin

  Write('Input panjang balok: '); ReadLn(p);
  Write('Input alas balok: '); ReadLn(a);
  Write('Input tinggi balok: '); ReadLn(t);

  r := p * a * t;

  WriteLn('Volume balok adalah: ', r);

end.