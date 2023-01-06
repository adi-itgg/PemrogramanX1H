(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/01/2023
 *)
program Soal5;

var i, y     : Integer;
    x        : Integer = 0;

begin

  for i := 1 to 5 do
    begin
      for y := 1 to i do
        begin
          if (y = 1) and ((i mod 2) <> 0) then x := 0;
          Write(x, '  ');
          if x = 1 then x := 0 else x:= 1;
        end;
      WriteLn();
    end;

end.