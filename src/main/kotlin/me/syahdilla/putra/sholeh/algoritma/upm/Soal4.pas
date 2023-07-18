(*
 * Project: PemrogramanX1H
 * User: megag
 * Date: 18/07/2023
 *)
program Soal4;

var
  data: array[0..20] of Int64;
  i, n, b, s: Integer;
  find, total: int64;
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
  n := Length(data) - 1;
  b := 0;
  s := 100;
  total := 0;

  Write('data yang diinput: ');
  for i := 0 to n do
  begin
    data[i] := Random(100) + 1;
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

  Write('Cari nilai: '); ReadLn(find);
  for i := 0 to n do
    if data[i] = find then
      begin
        find := -1;
        WriteLn('Nilai ditemukan: ', data[i]);
      end;
  if not (find = -1) then WriteLn('Nilai tidak ditemukan');
end.