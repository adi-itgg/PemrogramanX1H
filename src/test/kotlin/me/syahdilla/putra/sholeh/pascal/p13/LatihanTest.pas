(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 12/11/2022
 *)
program LatihanTest;
//Uses crt;
Label BackUI;
var
  benar, salah, jumlah_soal, jawaban, counter: integer;
  a, b: integer;
  nilai: real;
  ulang: Char;

// build=silent
begin
  BackUI:
    //clrscr;
  randomize;
  benar := 0;
  salah := 0;
  jumlah_soal := random(10) + 5;
  for counter := 1 to jumlah_soal do
  begin
    a := random(100);
    b := random(100);
    if random(50) > 25 then
      jawaban := a + b
    else
      jawaban := random(100);
    writeln('Soal ', counter, ' : ', a, ' + ', b, ' = ', jawaban);
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
  ulang := 'n';
  Write('Apakah anda ingin mengulang? ', ulang);

  if ulang = 'y' then
    goto BackUI;

end.