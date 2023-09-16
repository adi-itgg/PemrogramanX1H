(*
 * Project: PemrogramanX1H
 * Author: Syahdilla Putra Sholeh
 * Date: 16/09/2023
 *)
program IdentitiyMahasiswa;

type Mahasiswa = record
    nim                         : Int64;
    name                        : String;
    age, sibling (* saudara *)  : Integer;
  end;

var data : array[1..99999] of Mahasiswa;
  i, limit  : Integer;
  temp      : Mahasiswa;

// build=silent
begin

  Write('Banyak data yang akan dimasukkan : '); ReadLn(limit);
  for i := 1 to limit do
  begin
    WriteLn();
    Write('NIM: '); ReadLn(temp.nim);
    Write('Nama: '); ReadLn(temp.name);
    Write('Usia: '); ReadLn(temp.age);
    Write('Saudara: '); ReadLn(temp.sibling);
    data[i] := temp
  end;

  WriteLn();
  WriteLn('DATA YANG ANDA MASUKKAN');
  WriteLn();
  for i := 1 to limit do
    WriteLn(data[i].nim, #9#9, data[i].name, #9, data[i].age, #9, data[i].sibling);

end.