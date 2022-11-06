(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan1Test;

var i, inc, lim             : Integer;

// build=silent
begin

  inc := 0;

  i := 2;
  lim := 100;
  WriteLn('Input angka kelipatan yang diinginkan : ', i);
  WriteLn('Input batasan angka yang ingin ditampilkan : ', lim);

  while (inc < lim) do
    begin
      inc := inc + i;
      Write(inc, ' ');
    end;
end.