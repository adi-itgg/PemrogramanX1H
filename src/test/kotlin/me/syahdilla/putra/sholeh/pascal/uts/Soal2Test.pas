(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 12/11/2022
 *)
program Soal2Test;

var nama          : String;
  gajiBersih    : Real;
  gajiPokok     : Real;
  tunjangan     : Real;
  pajak         : Real;

// build=silent
begin

  // inputs
  nama := 'Donal Duck';
  gajiPokok := 5000000;

  // process
  tunjangan := gajiPokok * 0.2;
  pajak := (gajiPokok + tunjangan) * 0.15;
  gajiBersih := gajiPokok + tunjangan - pajak;

  // output
  Write('Gaji bersih yang diterima oleh ', nama, ' adalah sebesar ', gajiBersih:2:0);

end.