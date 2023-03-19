(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 19/03/2023
 *)
program TugasP31;
var
  table: array[1..3, 1..3] of integer;
  row, col: integer;
// build=silent
begin
  table[1, 1] := 4;
  table[1, 2] := 5;
  table[1, 3] := 6;

  table[2, 1] := 7;
  table[2, 2] := 5;
  table[2, 3] := 7;

  table[3, 1] := 7;
  table[3, 2] := 2;
  table[3, 3] := 1;

  for row := 1 to 3 do
    for col := 1 to 3 do
      if col = 3 then
        WriteLn(table[row, col]: 4)
      else
        Write(table[row, col]: 4);
end.