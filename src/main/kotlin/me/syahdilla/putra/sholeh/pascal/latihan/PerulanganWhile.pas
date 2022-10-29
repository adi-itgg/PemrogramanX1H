(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 29/10/2022
 *)
program PerulanganWhile;
//uses crt;

var
  i, m, n, jumlah: integer;

// runexe=2
// build=silent
begin
  //clrscr;
  i := m;
  write (' Input Nilai Awal:'); readln (m);
  write (' Input Batas Akhir:'); readln (n);

  while(i <= n) do
    begin
      jumlah := jumlah + i;
      writeln(i, ' ');
      i := i + 2;
    end;

  writeln;
  writeln('Hasil Penjumlah Perulangan: ', jumlah);

  readln;
end.