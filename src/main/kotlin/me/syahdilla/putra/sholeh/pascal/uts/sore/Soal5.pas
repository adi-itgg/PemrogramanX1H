(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/11/2022
 *)
program Soal5;

var i, inp            : Integer;
    arr: array[0..9] of Integer;

// build=silent
begin

  for i := 1 to 4 do
    begin
      Write('Input bilangan ke-', i, ' : '); ReadLn(inp);
      arr[i] := inp;
    end;

  WriteLn('============================================================');

  for i := 1 to 4 do
    WriteLn(arr[i], ' x ', i, ' = ', arr[i] * i);

end.