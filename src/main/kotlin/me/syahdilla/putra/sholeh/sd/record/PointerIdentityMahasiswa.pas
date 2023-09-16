(*
 * Project: PemrogramanX1H
 * Author: Syahdilla Putra Sholeh
 * Date: 16/09/2023
 *)
program PointerIdentityMahasiswa;

type Mahasiswa = record
    name        : String;
    npm         : String;
  end;

var ptrData : ^Mahasiswa;
  nameMemLoc: ^word;
  npmMemLoc: ^word;

// build=silent
begin
  New(ptrData); // create new address memory

  Write('Input Nama Mahasiswa : '); ReadLn(ptrData^.name);
  Write('Input NPM Mahasiswa  : '); ReadLn(ptrData^.npm);

  WriteLn('Nama Mahasiswa     : ', ptrData^.name);
  nameMemLoc := Addr(ptrData^.name);
  WriteLn('Alamat Memori Nama Mahasiswa adalah = ', nameMemLoc^);

  WriteLn('NPM Mahasiswa = ', ptrData^.npm);
  npmMemLoc := Addr(ptrData^.npm);
  WriteLn('Alamat Memori Nama Mahasiswa adalah = ', nameMemLoc^);

  Dispose(ptrData); // clear data from memory address
end.