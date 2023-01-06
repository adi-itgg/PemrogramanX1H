(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/01/2023
 *)
program Soal2;

var x : Integer = 5;
    y : Integer = 10;

begin

  while (x > 0) do
    begin
      y -= x;
      x -= 1;
      WriteLn('Perulangan:   y=', y, '  x=', x);
    end;

    Write('OUTPUT SOAL UPM 2: y=', y);

end.