(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/11/2022
 *)
program Latihan2Test;

var i, lim, total     : Integer;

// build=silent
begin

  lim := 10;

  WriteLn('Input angka batasan: ', lim);

  for i := 1 to lim do
    begin
      total := total + i;
      Write(i, ' ');
    end;

  WriteLn();
  WriteLn('Jumlah seluruh angka : ', total);

end.