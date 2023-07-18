(*
 * Project: PemrogramanX1H
 * User: megag
 * Date: 17/07/2023
 *)
program Soal2;

procedure BubbleSortDescending(arr: array of Int64);
var
  i, j: Integer; temp: Int64;
begin
  for i := Length(arr) - 1 downto 1 do
    for j := 0 to i - 1 do
      if arr[j] < arr[j + 1] then
      begin
        temp := arr[j];
        arr[j] := arr[j + 1];
        arr[j + 1] := temp;
      end;
end;

var
  data: array[0..4] of Int64 = (46, 90, 18, 72, 45);
  i: Integer;

begin
  BubbleSortDescending(data);

  for i := 0 to Length(data) - 1 do
    Write(data[i], ' ');
end.