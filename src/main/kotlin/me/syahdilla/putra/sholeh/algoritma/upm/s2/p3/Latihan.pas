(*
 * Project: PemrogramanX1H
 * User: megag
 * Date: 17/03/2023
 *)
program Latihan;
//uses wincrt;

var
  A: array [1..3, 1..2] of Integer;
  I, J: Byte;

// build=silent
Begin
  A[1, 1] := 5;
  A[1, 2] := 25;
  A[2, 1] := 200;
  A[2, 2] := 22;
  A[3, 1] := 75;
  A[3, 2] := 50;
  for I := 1 to 3 do
  begin
    for J := 1to 2 do
    begin
      write ('|':5, A[I, J]: 5);
      Write('|':5);
    end;
    writeln;
  end;
  //readln;
end.