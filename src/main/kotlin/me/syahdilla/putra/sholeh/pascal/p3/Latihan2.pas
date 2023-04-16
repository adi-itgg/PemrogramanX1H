(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program SoalP5;

var c     : Integer;
  f, r, k : Real;

// build=silent
begin

  Write('Input suhu celcius: '); ReadLn(c);

  f := (c * 1.8) + 32;
  k := c + 273;
  r := c * 4/5;

  WriteLn('Farenheit: ', f:2:2);
  WriteLn('Kelvin: ', k:3:2);
  WriteLn('Reamur: ', r:2:2);

end.