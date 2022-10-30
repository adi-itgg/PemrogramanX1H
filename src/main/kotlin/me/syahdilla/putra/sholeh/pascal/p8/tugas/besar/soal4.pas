(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/10/2022
 *)
program soal4;
uses SysUtils;

var
  nama, diskonStr               : string;
  mAnggota, tBelanja            : longint;
  tBayar, potongan, diskon      : real;
// test verified
// runexe=3
// build=silent
begin
  write('Nama Karyawan: ');     readln(nama);
  write('Masa Keanggotaan: ');  readln(mAnggota);
  if (mAnggota <= 0) then
    begin WriteLn('Kamu tidak dapat belanja!'); exit; end;
  write('Total Belanja: Rp.');  readln(tBelanja);

  if (mAnggota > 5) then
    begin
    diskon := 0.10; // 10%
    diskonStr := '10%'
    end
  else if (mAnggota > 4) then
    diskon := 0.08 // 8%
  else if (mAnggota > 3) then
    diskon := 0.06 // 6%
  else if (mAnggota > 2) then
    diskon := 0.03 // 3%
  else if (mAnggota > 1) then
    diskon := 0.02 // 2%
  else
    diskon := 0;

  if (diskonStr = '') then
    diskonStr := format('%.2f',[ diskon])[4] + '%';
  potongan := tBelanja * diskon;
  tBayar   := tBelanja - potongan;

  WriteLn();
  WriteLn('Nama Karyawan      : '   ,  nama           );
  WriteLn('Masa Keanggotaan   : '   ,  mAnggota       );
  WriteLn('Total Belanja      : Rp.',  tBelanja, '.00');
  WriteLn('Dapat Potongan     : Rp.',  potongan:1:2, ' (Diskon ', diskonStr, ')');
  WriteLn('Total Bayar        : Rp.',  tBayar:1:2     );
end.