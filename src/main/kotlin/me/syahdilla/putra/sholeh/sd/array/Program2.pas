(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 09/09/2023
 *)
program Program2;

type
  TArray = array[1..10] of integer;
var
  a : TArray;
  i, n : integer;
Const
  b : array[0..6] of string = ('Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu', 'Minggu');


begin
  Write('Banyak Data = ');
  readln(n);
  for i := 1 to n do
  begin
    write('Masukan Elemen Array ke-', i, '= ');
    readln(a[i]);
  end;
  for i := 1 to n do
    write(a[i]: 3);
  writeln;
  for i := 0 to 6 do
    writeln(b[i]);
  readln;
end.