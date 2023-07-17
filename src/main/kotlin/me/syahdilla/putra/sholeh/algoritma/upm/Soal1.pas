(*
 * Project: PemrogramanX1H
 * User: megag
 * Date: 17/07/2023
 *)
program Soal1;
var
  nilai: Int64;

function function_kali(num1, num2: Int64): Int64;
begin
  function_kali := num1 * num2;
end;

begin
  nilai := function_kali(10, 50);
  WriteLn('Nilai: ', nilai);
end.