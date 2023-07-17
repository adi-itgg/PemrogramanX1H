(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra sholeh
 * Date: 14/05/2023
 *)
program Search;
uses sysutils;

type Mahasiswa = record
  NIM : Int64;
  Name: string;
  Nilai: real;
  end;

var data : array[1..99999] of Mahasiswa;
  i, limit : Integer;
  find : Int64;
  temp : Mahasiswa;

// build=silent
begin

  Write('Masukan jumlah mahasiswa: '); ReadLn(limit);
  for i := 1 to limit do
  begin
    WriteLn();
    Write('NIM: '); ReadLn(temp.NIM);
    Write('Nama: '); ReadLn(temp.Name);
    Write('Nilai: '); ReadLn(temp.Nilai);
    data[i] := temp
  end;

  WriteLn();
  WriteLn('NIM'#9, #9, #9, 'Nama', #9, #9, #9, 'IPK');
  WriteLn();
  for i := 1 to limit do
    WriteLn('[' + IntToStr(i) + ']' + IntToStr(data[i].NIM), #9, data[i].Name, #9#9, data[i].Nilai:2:2);

  WriteLn(); WriteLn('Cari Data');
  Write('NIM yang dicari: '); ReadLn(find);

  for i := 1 to limit do
    if data[i].NIM = find then
    begin
      WriteLn();
      WriteLn('Nama', #9, #9, #9, 'IPK');
      WriteLn(data[i].Name, #9, #9, #9, data[i].Nilai:2:2);
      exit;
    end;
  WriteLn();
  WriteLn('Data tidak ditemukan!');

end.