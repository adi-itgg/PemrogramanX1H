(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 01/10/2022
 *)
program Latihan5R1;

var
  nama: string[20];
  jabatan: string;
  Gaji: longint;
  total, Tunj, ppn: real;

begin

  write('Nama Karyawan     : ');
  readln(nama);
  write('Masukkan Jabatan  : ');
  readln(jabatan);


  case (LowerCase(jabatan)) of
    'direktur':
    begin
      Gaji := 3000000;
      Tunj := 0.1 * gaji;
    end;
    'manager':
    begin
      Gaji := 2000000;
      Tunj := 0.05 * gaji;
    end;
    'karyawan':
    begin
      Gaji := 1000000;
      Tunj := 0.1 * gaji;
    end
  else
  begin
    Gaji := 800000;
    Tunj := 0.1 * gaji;
  end;
  end;

  ppn := 0.1 * gaji;
  Total := (gaji + total) - ppn;

  writeln('Gaji Bersih            : Rp.', gaji);
  writeln('Tunjangan Jabatan      : Rp.', tunj: 9: 2);
  writeln('PPN 10 %               : Rp.', ppn: 9: 2);
  writeln('Total Gaji             : Rp.', total: 9: 2);
  readln;

end.