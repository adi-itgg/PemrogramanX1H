(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 21/11/2022
 *)
program Soal3;

var nama    : String;
    jt      : Integer;
    diskon  : Integer;
    tarif   : Integer;

begin

  Write('Nama Customer: '); ReadLn(nama);
  Write('Jarak yang akan ditempuh (Km): '); ReadLn(jt);


  if jt > 15 then diskon := 5000 else if jt > 10 then diskon := 2000 else diskon := 0;

  if diskon > 0 then WriteLn('Selamat, anda mendapatkan potongan Rp. ', diskon);



  WriteLn('Tarif yang harus dibayarkan ', nama, ' adalah sebesar ', tarif);

end.