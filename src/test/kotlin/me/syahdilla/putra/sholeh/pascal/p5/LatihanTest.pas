(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan1Test;
var
  nama, kelas, matkul, status    : String;
  nAbsen, nTugas, nUAP           : Integer;
  npm                            : Int64;
  nAkhir                         : Real;

// build=silent
begin
  WriteLn('');

  nama := 'Syahdilla Putra Sholeh';
  WriteLn('Masukkan Nama Anda          : ', nama);

  npm := 202243500933;
  WriteLn('Masukkan NPM Anda           : ', npm);

  kelas := 'X1H';
  WriteLn('Masukkan Kelas Anda         : ', kelas);

  matkul := 'Pemrograman';
  WriteLn('Masukkan Mata Kuliah Anda   : ', matkul);

  nAbsen := 90;
  WriteLn('Masukkan Nilai Absensi Anda : ', nTugas);

  nTugas := 85;
  WriteLn('Masukkan Nilai Tugas Anda   : ', nTugas);

  nUAP := 95;
  WriteLn('Masukkan Nilai UAP Anda     : ', nUAP);

  nAkhir := (nAbsen * 0.2);
  nAkhir += (nTugas * 0.3);
  nAkhir += (nUAP   * 0.5);

  if (nAkhir >= 75.0) then
    status := 'Lulus'
  else
    status := 'Tidak Lulus';

  WriteLn(''); WriteLn('');

  WriteLn('Nama Saya          : ',   nama      );
  WriteLn('NPM Saya           : ',   npm       );
  WriteLn('Kelas Saya         : ',   kelas     );
  WriteLn('Mata Kuliah Saya   : ',   matkul    );
  WriteLn('Nilai Absensi Saya : ',   nAbsen    );
  WriteLn('Nilai Tugas Saya   : ',   nTugas    );
  WriteLn('Nilai UAP Saya     : ',   nUAP      );
  WriteLn('Nilai Akhir        : ',   nAkhir:2:2);
  WriteLn('Lulus/Tidak Lulus  : ',   status    );

end.