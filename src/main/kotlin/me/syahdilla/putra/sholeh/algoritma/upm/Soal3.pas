(*
 * Project: PemrogramanX1H
 * User: megag
 * Date: 17/07/2023
 *)
program Soal3;

var
  data: array[0..20] of Int64;
  i, n, b, s: Integer;
  total: int64 = 0;
  avg: Real;

procedure BubbleSort(var arr: array of Int64);
var
  i, j, temp: Integer;
begin
  for i := Length(arr) - 1 downto 1 do
    for j := 0 to i - 1 do
      if arr[j] > arr[j + 1] then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
end;

begin
  Randomize;
  n := 20;
  b := 0;
  s := 100;

  for i := 0 to n do
    data[i] := Random(100) + 1;

  Write('data yang diinput: ');
  for i := 0 to n do
    begin
      if b < data[i] then b := data[i];
      if s > data[i] then s := data[i];
      Write(data[i], ' ');
      total := total + data[i];
    end;

  BubbleSort(data);

  avg := total / n;

  WriteLn();
  WriteLn('Data Setelah diurutkan');
  for i := 0 to n do
    Write(data[i], ' ');

  WriteLn(); WriteLn();
  WriteLn('Nilai Terbesar: ', b);
  WriteLn('Nilai Terkecil: ', s);
  Writeln('Rata-rata: ', avg:0:2);

end.