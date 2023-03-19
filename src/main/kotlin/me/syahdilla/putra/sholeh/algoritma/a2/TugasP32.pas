(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 19/03/2023
 *)
program TugasP32;
var
  table1, table2, outTable: array[1..3, 1..3] of Integer;
  row, col : Integer;
// build=silent
begin
  table1[1,1] := 2; table1[1,2] := 1; table1[1,3] := 2;
  table1[2,1] := 6; table1[2,2] := 7; table1[2,3] := 17;
  table1[3,1] := 3; table1[3,2] := 2; table1[3,3] := 6;

  table2[1,1] := 14; table2[1,2] := 5; table2[1,3] := 4;
  table2[2,1] := 0; table2[2,2] := 15; table2[2,3] := 7;
  table2[3,1] := 7; table2[3,2] := 2; table2[3,3] := 1;

  for row := 1 to 3 do
    for col := 1 to 3 do
      outTable[row, col] := table1[row, col] + table2[row, col];

  WriteLn('Hasil matriks penjumlahan:'); WriteLn();
  for row := 1 to 3 do
    for col := 1 to 3 do
      if col = 3 then
        WriteLn(outTable[row, col]: 6)
      else
        Write(outTable[row, col]: 6);
end.