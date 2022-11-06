(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/11/2022
 *)
program Latihan1;

var i : Integer;

// build=silent
Begin

  WriteLn('Angka kelipatan 2 dari 0 - 100');

  for i := 0 to 100 do
    if (i mod 2) = 0 then Write(i, ' ');

End.