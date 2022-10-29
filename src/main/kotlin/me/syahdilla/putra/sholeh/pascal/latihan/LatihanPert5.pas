(*
 * Project: PemrogramanX1H
 * Date: 01/10/2022
 *)
program LatihanPert5;

//uses crt;
var
  nama: string[20];
  jabatan: string;
  Gaji: longint;
  total, Tunj, ppn, gajibersih: real;
// test verified
begin
  //clrscr;
  write('Nama Karyawan     : ');
  readln(
          nama);
  write('Masukkan Jabatan  : ');
  readln(
          jabatan);
  if  (jabatan = 'Direktur') or (jabatan = 'direktur') then
  begin
    Gaji := 3000000;
    Tunj := 0.1 * gaji;
  end
  else if  (jabatan = 'Manager') or (jabatan = 'manager') then
  begin
    Gaji := 2000000;
    Tunj := 0.05 * gaji;
  end
  else if  (jabatan = 'Karyawan') or (jabatan = 'karyawan') then
  begin
    Gaji := 1000000;
    Tunj := 0.1 * gaji;
  end
  else
  begin
    Gaji := 800000;
    Tunj := 0.1 * gaji;
  end;
  writeln('Gaji Bersih            : Rp.', gaji);
  writeln('Tunjangan Jabatan      : Rp.', tunj:9:2);
  ppn := 0.1 * gaji;
  writeln('PPN 10 %               : Rp.', ppn:9:2);
  Total := (gaji + total) - ppn;
  writeln('Total Gaji             : Rp.', total:9:2);
  readln;
end.