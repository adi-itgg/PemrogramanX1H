(*
 * Project: PemrogramanX1H
 * User: megag
 * Date: 18/03/2023
 *)
program Soal2;

var
  r, c: Integer;
  table: array[1..3, 1..3] of Integer;

// build=silent
begin

  for r := 1 to 3 do
  begin
    for c := 1 to 3 do
    begin
      if r = c then table[r, c] := r * r
      else if r > c then table[r, c] := r + c
      else table[r, c] := r - c;
    end;
  end;

  for r := 1 to 3 do
  begin
    for c := 1 to 3 do
      Write(table[r, c]: 5);
    WriteLn();
  end;

end.