(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 06/01/2023
 *)
program Soal4;
uses fgl;

type TMap = specialize TFPGMap<Integer, Integer>;
var data              : TMap;
    x                 : Integer = 5;
    i, kolom, angka          : Integer;

begin

  // initialize map
  data := TMap.Create;

  for i := 1 to 5 do
    begin
      for kolom := 1 to x do
        begin
          if data.indexOf(kolom) = -1 then angka := kolom else angka := data[kolom];
          if i = 1 then angka += 1 else angka += 2;
          Write(angka, '  ');
          data[kolom] := angka;
        end;
      x -= 1;
      if i < 5 then WriteLn();
    end;

end.