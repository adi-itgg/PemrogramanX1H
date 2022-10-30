(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan;

var th        : Integer;

// build=silent
begin
  Write('Input tahun: '); ReadLn(th);
  if th mod 4 = 0 then
      WriteLn(th, ' adalah tahun kabisat')
  else
      WriteLn(th, ' bukan tahun kabisat');
end.