(*
 * Project: PemrogramanX1H
 * Author: Syahdilla Putra Sholeh
 * Date: 16/09/2023
 *)
program PointerMahasiswa;

type Mahasiswa = record
    npm                         : String;
    name                        : String;
    kelas                       : String;
  end;

var data : array[1..99999] of ^Mahasiswa;
  i, limit  : Integer;
  temp      : ^Mahasiswa;

// build=silent
begin
  New(temp);

  Write('Banyak data yang akan dimasukkan : '); ReadLn(limit);
  for i := 1 to limit do
  begin
    WriteLn();
    Write('Nama: '); ReadLn(temp^.name);
    Write('NPM: '); ReadLn(temp^.npm);
    Write('Kelas: '); ReadLn(temp^.kelas);
    data[i] := temp
  end;

  WriteLn();
  WriteLn('DATA YANG ANDA MASUKKAN');
  WriteLn();
  for i := 1 to limit do
    WriteLn(data[i]^.name, #9#9, data[i]^.npm, #9#9, data[i]^.kelas);

end.