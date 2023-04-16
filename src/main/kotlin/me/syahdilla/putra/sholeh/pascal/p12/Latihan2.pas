(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/11/2022
 *)
program SoalP5;

var i, lim, total     : Integer;

// build=silent
begin

  Write('Input angka batasan: '); ReadLn(lim);

  for i := 1 to lim do
  begin
    total := total + i;
    Write(i, ' ');
  end;

  WriteLn();
  WriteLn('Jumlah seluruh angka : ', total);

end.
