(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 25/03/2023
 *)
program RetMatrix2;
var
  Table: array[1..5, 1..5] of String;
  row, col: integer;
// build=silent
begin

  for row := 1 to Length(Table) do
  begin
    for col := 1 to Length(Table) do
      if row = col then
        Table[row, col] := 'X'
      else if row > col then
        Table[row, col] := ' '
      else
        Table[row, col] := 'O';
  end;

  for row := 1 to Length(Table) do
    for col := 1 to Length(Table) do
      if col = Length(Table) then
        WriteLn(Table[row, col]: 6)
      else
        Write(Table[row, col]: 6);

end.