(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 12/11/2022
 *)
program Latihan;
//Uses crt;
Label BackUI;
var
  benar, salah, jumlah_soal, jawaban, counter: integer;
  a, b: integer;
  nilai: real;
  ulang: Char;

// build=silente
begin
  BackUI:
  //clrscr;
  randomize;
  benar := 0;
  salah := 0;
  write('Input jumlah soal : ');
  readln(jumlah_soal);
  for counter := 1 to jumlah_soal do
  begin
    a := random(100);
    b := random(100);
    write('Soal ', counter, ' : ', a, ' + ', b, ' = ');
    readln(jawaban);
    if(jawaban = (a + b)) then
      benar := benar + 1
    else
      salah := salah + 1;
  end;
  nilai := benar / jumlah_soal * 100;
  writeln('Jumlah Jawaban Benar : ', benar);
  writeln('Jumlah Jawaban Salah: ', salah);
  writeln('Nilai: ', nilai: 0: 0);

  WriteLn();
  Write('Apakah anda ingin mengulang? '); ReadLn(ulang);

  if ulang = 'y' then
    goto BackUI;

end.