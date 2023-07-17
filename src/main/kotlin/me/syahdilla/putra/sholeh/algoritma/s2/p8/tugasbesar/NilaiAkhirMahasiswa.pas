(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 17/04/2023
 *)
program NilaiAkhirMahasiswa;
var
  nUTS, nTugasAndQuiz, nUAS, nPraktikum     : Integer;
  nAkhir                                    : Real;
  indeks                                    : Char;

// build=silent
begin
  WriteLn('');

  // #9 tab (seperti space) \t
  Write('Masukkan Nilai UTS Anda', #9,#9,#9, ': ');
  ReadLn(nUTS);
  Write('Masukkan Nilai UAS Anda', #9,#9,#9, ': ');
  ReadLn(nUAS);
  Write('Masukkan Nilai Tugas Anda', #9, #9, ': ');
  ReadLn(nTugasAndQuiz);
  Write('Masukkan Nilai Praktikum Anda', #9, ': ');
  ReadLn(nPraktikum);

  nAkhir := (nUTS * 0.25);
  nAkhir += (nUAS   * 0.35);
  nAkhir += (nTugasAndQuiz * 0.2);
  nAkhir += (nPraktikum * 0.2);

  if (nAkhir >= 80) then
    indeks := 'A'
  else if (nAkhir >= 65) then
    indeks := 'B'
  else if (nAkhir >= 50) then
    indeks := 'C'
  else if (nAkhir >= 35) then
    indeks := 'D'
  else
    indeks := 'E';

  WriteLn(''); WriteLn('');

  WriteLn('Nilai Akhir', #9, #9, ': ', nAkhir:2:2);
  WriteLn('Indeks', #9, #9, #9, ': ', indeks);

end.