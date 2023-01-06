(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/01/2023
 *)
program Soal3;

var x : Integer;

begin

  for x := 1 to 5 do
    if (x mod 2) = 0 then
      WriteLn('merah')
    else if (x mod 3) = 0 then
      WriteLn('kuning')
    else
      WriteLn('hijau')

end.