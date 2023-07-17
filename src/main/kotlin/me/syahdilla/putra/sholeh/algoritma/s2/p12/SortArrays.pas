(*
 * Project: PemrogramanX1H
 * User: Syahdilla Putra Sholeh
 * Date: 07/05/2023
 *)
program SortArrays;
type TypedIntArray = array [1..10] of Integer;
var randomData : TypedIntArray;
  i, childIndex, temp, prevIndex, rand : Integer;
  j, x, y: integer;

procedure InsertSort(isAsc: Boolean; data: TypedIntArray);
begin
  for i := 1 to Length(data) do
  begin
    // ambil nilai dari array berdasarkan index
    // dan simpan di variabel temp untuk sementara
    temp := data[i];
    // set nilai prevIndex menjadi index sebelumnya
    prevIndex := i - 1;
    // cek apakah ascending atau descending
    if (isAsc) then
        // loop jika index lebih atau sama dengan 1
        // dan data temp lebih kecil dari data[i]
      while (prevIndex >= 1) and (temp < data[prevIndex]) do
      begin
        // lakukan tukar data hingga di posisi yang tepat
        data[prevIndex + 1] := data[prevIndex];
        prevIndex := prevIndex - 1;
      end
    else
        // loop jika index lebih atau sama dengan 1
        // dan data temp lebih kecil dari data[i]
      while (prevIndex >= 1) and (temp > data[prevIndex]) do
      begin
        // lakukan tukar data hingga di posisi yang tepat
        data[prevIndex + 1] := data[prevIndex];
        prevIndex := prevIndex - 1;
      end;
    // lakukan pertukaran data yang lama
    data[prevIndex + 1] := temp;
  end;

  // tampilkan semua data array yang sudah di sortir
  for i := 1 to Length(data) do
    WriteLn(data[i]);
end;

procedure QuickSort(var data: TypedIntArray);
procedure sort(l, r: integer);
begin
  i := l;
  j := r;
  // tentukan tengah2 pivot
  x := data[(l + r) div 2];
  // loop hingga i lebih besar dari j
  repeat
    // loop jika data[i] lebih kecil dari pivot(x) maka i harus di tambah 1
    while data[i] < x do i := i + 1;
    // loop jika sebaliknya tetapi di kurang 1
    while x < data[j] do j := j - 1;
    if i <= j then
    begin // lakukan penukaran posisi data
      y := data[i];
      data[i] := data[j];
      data[j] := y;
      i := i + 1;
      j := j - 1;
    end;
  until i > j;
  // ulangi sort kembali jika l masih kecil dari j
  if l < j then sort(l, j); // panggil fungsi sort kembali untuk melakukan penyesuaian data array yang masih belum sesuai
  // sama seperti di atas
  if i < r then sort(i, r); // panggil fungsi sort kembali untuk melakukan penyesuaian data array yang masih belum sesuai
end;
begin;
  // sort data array
  sort(1, Length(data));
  // tampilkan semua data array yang sudah di sortir
  for i := 1 to Length(data) do
    WriteLn(data[i]);
end;

// ubah nilai data array secara acak
procedure generateRandomArrayData();
begin
  for i := 1 to Length(randomData) do
  begin
    rand := random(100) + 10;
    for childIndex := 1 to i do // loop lagi untuk mengurangi duplikasi nilai
      rand := (random(100) + 10) * random(15) + 1;  // di kali untuk mengurangi duplikasi nilai
    randomData[i] := rand;
  end;
end;

// build=silent
begin
  generateRandomArrayData();

  InsertSort(true, randomData);

  WriteLn(); WriteLn();

  generateRandomArrayData();

  QuickSort(randomData);
end.