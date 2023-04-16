(*
 * Project: PemrogramanX1H
 * User: megag
 * Date: 17/03/2023
 *)
program SoalP5;

var
  r, c: Integer;
  table: array[1..3, 1..3] of Integer;

begin

{  for r := 4 to 6 do
    for c := 4 to 6 do
      begin
        if r = c then table[r,c] := r;
        table[r,c] := r;
      end;}

  table[1, 1] := 4;
  table[1, 2] := 5;
  table[1, 3] := 6;
  table[2, 1] := 7;
  table[2, 2] := 5;
  table[2, 3] := 7;
  table[3, 1] := 7;
  table[3, 2] := 2;
  table[3, 3] := 1;

  for r := 1 to 3 do
  begin
    for c := 1 to 3 do
      Write(table[r, c]: 5);

    WriteLn();

  end;

end.