(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan;
var
  nama, kelas, matkul, status    : String;
  nAbsen, nTugas, nUAP           : Integer;
  npm                            : Int64;
  nAkhir                         : Real;

// build=silent
begin
  WriteLn('');

  Write('Masukkan Nama Anda          : ');
  ReadLn(nama);

  Write('Masukkan NPM Anda           : ');
  ReadLn(npm);

  Write('Masukkan Kelas Anda         : ');
  ReadLn(kelas);

  Write('Masukkan Mata Kuliah Anda   : ');
  ReadLn(matkul);

  Write('Masukkan Nilai Absensi Anda : ');
  ReadLn(nAbsen);

  Write('Masukkan Nilai Tugas Anda   : ');
  ReadLn(nTugas);

  Write('Masukkan Nilai UAP Anda     : ');
  ReadLn(nUAP);

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
  ReadLn();

end.