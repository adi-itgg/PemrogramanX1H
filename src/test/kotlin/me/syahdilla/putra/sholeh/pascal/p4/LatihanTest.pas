(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 30/10/2022
 *)
program Latihan1Test;

var th        : Integer;

// build=silent
begin
  th := 5;
  WriteLn('Input tahun: ', th);
  if th mod 4 = 0 then
      WriteLn(th, ' adalah tahun kabisat')
  else
      WriteLn(th, ' bukan tahun kabisat');
end.