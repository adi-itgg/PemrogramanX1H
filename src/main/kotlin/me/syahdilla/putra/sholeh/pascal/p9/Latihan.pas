(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan;

var i, inc, lim             : Integer;

// build=silent
begin

  inc := 0;

  Write('Input angka kelipatan yang diinginkan : '); ReadLn(i);
  Write('Input batasan angka yang ingin ditampilkan : '); ReadLn(lim);

  while (inc < lim) do
    begin
      inc := inc + i;
      Write(inc, ' ');
    end;
end.