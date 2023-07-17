(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 01/04/2023
 *)
program Tugas;

var alas, tinggi, luas, luasling, phi, ruas : Real;

// build=silent
procedure readSegitiga();
begin
  Write('Panjang alas: '); ReadLn(alas);
  Write('Tinggi: '); ReadLn(tinggi);
end;
procedure readRuasLingkaran();
begin
  Write('Phi: '); ReadLn(phi);
  Write('Ruas: ');  ReadLn(ruas);
end;
procedure calculate();
begin
  luas := (alas * tinggi) / 2;
  luasling := phi * ruas * ruas;
end;
procedure printAll();
begin
  WriteLn();
  WriteLn('Luas segitiga: ', luas:2:2);
  WriteLn('Luas lingkaran: ', luasling:2:2);
end;

begin
  readSegitiga();
  readRuasLingkaran();
  calculate();
  printAll();
end.
