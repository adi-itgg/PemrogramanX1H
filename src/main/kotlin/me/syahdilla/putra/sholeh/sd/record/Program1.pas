(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 09/09/2023
 *)
program Program1;

type
  tanggal = record
    bulan, hari, tahun : integer;
  end;
var
  waktu : tanggal;

// build=silent
begin
  with waktu do
  begin
    hari := 25;
    bulan := 09;
    tahun := 1983;
  end;

  writeln('hari ini adalah', waktu.hari, ' : ', waktu.bulan, ' : ', waktu.tahun)
end.