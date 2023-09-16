(*
 * Project: PemrogramanX1H
 * Author: Syahdilla Putra Sholeh
 * Date: 16/09/2023
 *)
program DataMahasiswa;

type Mahasiswa = record
    nim                       : Int64;
    name                      : String;
    task, uts, uas            : Integer;
    lastValue          : Real;
    grade                     : Char;
  end;

var data : array[1..99999] of Mahasiswa;
  i, limit : Integer;
  temp : Mahasiswa;

// build=silent
begin

  Write('Masukan jumlah mahasiswa: '); ReadLn(limit);
  for i := 1 to limit do
  begin
    WriteLn();
    Write('Nim    : '); ReadLn(temp.nim);
    Write('Nama   : '); ReadLn(temp.Name);
    Write('Tugas  : '); ReadLn(temp.task);
    Write('UTS    : '); ReadLn(temp.uts);
    Write('UAS    : '); ReadLn(temp.uas);

    temp.lastValue := (temp.task  * 0.2);
    temp.lastValue += (temp.uts   * 0.3);
    temp.lastValue += (temp.uas   * 0.5);

    if (temp.lastValue >= 80) then
      temp.grade := 'A'
    else if (temp.lastValue >= 65) then
      temp.grade := 'B'
    else if (temp.lastValue >= 50) then
      temp.grade := 'C'
    else if (temp.lastValue >= 35) then
      temp.grade := 'D'
    else
      temp.grade := 'E';

    data[i] := temp
  end;

  WriteLn();
  WriteLn('----------------------------------------------------------------------------');
  WriteLn('NO', #9#9, 'NIM', #9#9#9, 'NAMA', #9#9, 'TUGAS', #9#9, 'UTS', #9#9, 'UAS', #9#9, 'NA', #9#9, 'GRADE'); // #9 = tab (\t)
  WriteLn('----------------------------------------------------------------------------');
  WriteLn();
  for i := 1 to limit do
    WriteLn(i, #9, data[i].NIM, #9, data[i].name, #9#9, data[i].task, #9#9, data[i].uts, #9#9, data[i].uas, #9#9, data[i].lastValue:2:2, #9#9, data[i].grade);

end.