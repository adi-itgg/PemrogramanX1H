(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 12/11/2022
 *)
program Soal4;

var bil1, bil2, result      : Integer;

// build=silent
begin

  Write('Bilangan Pertama = '); ReadLn(bil1);
  Write('Bilangan Kedua = '); ReadLn(bil2);

  if bil1 = bil2 then
    result := 0
  else if (bil1 mod 6) = (bil2 mod 6) then
    if bil1 < bil2 then
      result := bil1
    else
      result := bil2
  else if bil1 > bil2 then
    result := bil1
  else
    result := bil2;

  Write('Hasil = ', result);

end.