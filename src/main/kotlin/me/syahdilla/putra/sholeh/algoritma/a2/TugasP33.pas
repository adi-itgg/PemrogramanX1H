(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 19/03/2023
 *)
program TugasP33;
var
  T: array[1..5, 1..5] of integer;
  row, col: integer;
// build=silent
begin
  T[1,1] := 1; T[1,2] := 1; T[1,3] := 2; T[1,4] := 3; T[1,5] := 4;
  T[2,1] := 3; T[2,2] := 4; T[2,3] := 1; T[2,4] := 2; T[2,5] := 3;
  T[3,1] := 4; T[3,2] := 5; T[3,3] := 9; T[3,4] := 1; T[3,5] := 2;
  T[4,1] := 5; T[4,2] := 6; T[4,3] := 7; T[4,4] := 16; T[4,5] := 1;
  T[5,1] := 6; T[5,2] := 7; T[5,3] := 8; T[5,4] := 9; T[5,5] := 25;

  for row := 1 to 5 do
    for col := 1 to 5 do
      if col = 5 then
        WriteLn(T[row, col]: 6)
      else
        Write(T[row, col]: 6);
end.