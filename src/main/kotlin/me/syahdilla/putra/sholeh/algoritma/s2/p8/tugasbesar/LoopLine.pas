(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 17/04/2023
 *)
program LoopLine;
var line, col, max: Integer;

// build=silent
begin
  Write('masukkan baris: '); ReadLn(max);
  for line := 1 to max do
  begin
    for col := 1 to line do
      Write(col:2);
    WriteLn();
  end;
end.