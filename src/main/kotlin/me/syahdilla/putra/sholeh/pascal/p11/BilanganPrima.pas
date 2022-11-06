(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/11/2022
 *)
program BilanganPrima;

var i, j    : Integer;

// build=silent
begin

  i := 2;

  while i <= 50 do
  begin

    j := 2;
    while j <= i do
    begin
      if (i mod j) = 0 then break;
      j := j + 1;
    end;

    if(j = i) then
      writeln(i , ' Adalah Bilangan prima' );
    i := i+1;
  end;

end.