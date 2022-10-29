(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/10/2022
 *)
program soal3;
var Luas      :  real;
  P,L,A, T    :  integer;
  jenis       :  char;
  ket         :  string[8];
// test verified
// runexe=2
// build=silent
begin
  writeln ('Tentukan jenis ruang bangunan');
  writeln ('Ketik "A" segitiga atau "B" persegi'); readln(jenis);

  if jenis = 'A' then
  begin
    ket := 'SEGITIGA';
    write('Masukan nilai A: '); readln(A);
    write('Masukan nilai T: '); readln(T);
    Luas := A * T / 2;
  end
  else if jenis = 'B' then
  begin
    ket := 'PERSEGI';
    write('Masukan nilai P: '); readln(P);
    write('Masukan nilai L: '); readln(L);
    Luas := P * L
  end
  else exit;

  writeln('Jenis Ruang Bangunannya adalah ', ket);
  writeln('Luasnya adalah ', Luas: 2: 2);
end.