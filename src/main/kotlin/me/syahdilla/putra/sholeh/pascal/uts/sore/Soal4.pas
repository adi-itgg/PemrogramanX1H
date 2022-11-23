(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 23/11/2022
 *)
program Soal4;

var count, inp, total, ganjil, genap         : Integer;

// build=silent
begin
  count := 0;
  total := 0;
  ganjil := 0;
  genap := 0;
  repeat
    begin
      Write('Input bilangan ke-1  : '); ReadLn(inp);
      if inp = 0 then break;
      if (inp mod 2) = 0 then genap += 1 else ganjil += 1;
      total += inp;
      count += 1;
    end;
  until inp = 0;

  WriteLn();
  WriteLn('Jumlah angka yang anda input : ', count);
  WriteLn('Total angka yang anda input : ', total);
  WriteLn('Jumlah angka genap yang anda input : ', genap);
  WriteLn('Jumlah angka ganjil yang anda input : ', ganjil)
end.