(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/11/2022
 *)
program Soal3;

var bil1, bil2, pangkat, terbesar, i    : Integer;
// build=silent
begin

  Write('Input bilangan pertama : '); ReadLn(bil1);
  Write('Input bilangan kedua   : '); ReadLn(bil2);
  WriteLn('=================================================');
  WriteLn();

  pangkat := 0;
  for i := 1 to bil2 do
    if pangkat = 0 then pangkat := bil1 else pangkat := pangkat * bil1;

  if bil1 > bil2 then terbesar := bil1 else terbesar := bil2;

  WriteLn('Nilai ', bil1, ' pangkat ', bil2, ' adalah ', pangkat);
  WriteLn('Nilai terbesar dari dua bilangan tersebut adalah ', terbesar);

end.