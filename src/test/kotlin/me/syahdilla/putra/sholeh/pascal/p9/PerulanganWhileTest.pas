(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 29/10/2022
 *)
program PerulanganWhileTest;
//uses crt;

var
  i, m, n, jumlah: integer;
// test verified
// runexe=2
// build=silent
begin
  //clrscr;
  i := m;

  m := 0;
  n := 50;

  write (' Input Nilai Awal: ', m);
  write (' Input Batas Akhir: ', n);

  while(i <= n) do
    begin
      jumlah := jumlah + i;
      writeln(i, ' ');
      i := i + 2;
    end;

  writeln;
  writeln('Hasil Penjumlah Perulangan: ', jumlah);

end.