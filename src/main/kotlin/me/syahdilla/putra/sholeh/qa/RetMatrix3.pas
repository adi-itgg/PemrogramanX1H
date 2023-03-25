(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 25/03/2023
 *)
program RetMatrix3;
var
  Table: array[1..5, 1..5] of String;
  row, col: integer;
  lastChar: Char = 'X';

begin

  for row := 1 to Length(Table) do
    for col := 1 to Length(Table) do
      begin
        Table[row, col] := lastChar;
        if lastChar = 'X' then
          lastChar := 'O'
        else
          lastChar := 'X';
      end;

  for row := 1 to Length(Table) do
    for col := 1 to Length(Table) do
      if col = Length(Table) then
        WriteLn(Table[row, col]: 6)
      else
        Write(Table[row, col]: 6);

end.