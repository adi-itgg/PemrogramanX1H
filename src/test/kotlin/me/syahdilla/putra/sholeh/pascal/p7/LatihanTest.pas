(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan1Test;

var i      : Integer;
    bulan  : String;

// build=silent
begin

  i := 11;
  WriteLn('Input sebuah angka 1 - 12: ', i);

  case (i) of
      1: bulan := 'Januari';
      2: bulan := 'Februari';
      3: bulan := 'Maret';
      4: bulan := 'April';
      5: bulan := 'Mei';
      6: bulan := 'Juni';
      7: bulan := 'Juli';
      8: bulan := 'Agustus';
      9: bulan := 'September';
      10: bulan := 'Oktober';
      11: bulan := 'November';
      12: bulan := 'Desember';
    else
      WriteLn('angka yang anda masukkan tidak valid');
      exit;
  end;

  WriteLn('Bulan ke ', i, ' adalah : ', bulan);
end.