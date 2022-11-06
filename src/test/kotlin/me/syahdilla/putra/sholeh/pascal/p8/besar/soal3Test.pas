(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/10/2022
 *)
program soal3Test;
var Luas      :  real;
  P,L,A, T    :  integer;
  jenis       :  char;
  ket         :  string[8];
// test verified
// runexe=2
// build=silent
begin

  jenis := 'A';

  writeln ('Tentukan jenis ruang bangunan');
  writeln ('Ketik "A" segitiga atau "B" persegi');

  if jenis = 'A' then
  begin
    ket := 'SEGITIGA';
    A := 12;
    T := 12;
    writeln('Masukan nilai A: ', A);
    writeln('Masukan nilai T: ', T);
    Luas := A * T / 2;
  end
  else if jenis = 'B' then
  begin
    ket := 'PERSEGI';
    P := 12;
    L := 12;
    writeln('Masukan nilai P: ', P);
    writeln('Masukan nilai L: ', L);
    Luas := P * L
  end
  else exit;

  writeln('Jenis Ruang Bangunannya adalah ', ket);
  writeln('Luasnya adalah ', Luas: 2: 2);
end.