(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 09/09/2023
 *)
program Program3;
Uses crt;

var
  array2D : array[1..2, 1..2] of integer;
  i, j : integer;

begin
  for i:=1 to 2 do
    for j:=1 to 2 do
    begin
      write('masukan elemen baris[', i, '] Kolom[', j, ']=');
      readln(array2D[i, j]);
    end;
  for i:=1 to 2 do
  begin
    for j:=1 to 2 do
      write(array2D[i, j]: 3);
    writeln;
  end;
  readln;
end.