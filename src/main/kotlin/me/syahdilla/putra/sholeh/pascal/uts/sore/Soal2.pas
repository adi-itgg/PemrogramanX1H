(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/11/2022
 *)
program Soal2;

var jenisBBM    : Integer;
    totalBBM    : Integer;
    bayar       : LongInt;
// build=silent
begin

  WriteLn('----------------------------------------------------');
  WriteLn('|    Jenis Bahan Bakar       |   Harga/Liter       |');
  WriteLn('----------------------------------------------------');
  WriteLn('|    1. PascalLite           |      7.650          |');
  WriteLn('|    2. PascalMax            |      9.000          |');
  WriteLn('----------------------------------------------------');
  WriteLn();

  Write('Jenis Bahan Bakar          : '); ReadLn(jenisBBM);
  Write('Jumlah Bahan Bakar (liter) : '); ReadLn(totalBBM);
  WriteLn('=============================================================');

  if jenisBBM = 1 then bayar := 7650 else bayar := 9000;
  bayar := bayar * totalBBM;

  WriteLn('Biaya yang harus dibayar adalah ', bayar);

end.