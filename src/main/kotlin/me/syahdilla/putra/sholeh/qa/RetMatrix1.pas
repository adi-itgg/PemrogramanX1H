(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 25/03/2023
 *)
program RetMatrix1;
var
  Table: array[1..5, 1..5] of String;
  row, col: integer;

begin

  for row := 1 to Length(Table) do
    for col := 1 to Length(Table) do
      if (row mod 2) = 0 then
        Table[row, col] := 'O'
      else
        Table[row, col] := 'X';

  for row := 1 to Length(Table) do
    for col := 1 to Length(Table) do
      if col = Length(Table) then
        WriteLn(Table[row, col]: 6)
      else
        Write(Table[row, col]: 6);

end.