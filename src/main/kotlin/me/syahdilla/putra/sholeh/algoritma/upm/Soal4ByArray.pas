(*
 * Project: PemrogramanX1H
 * User: Syahdilla
 * Date: 07/01/2023
 *)
program Soal4ByArray;

var nilai                    : array[0..5] of Integer;
    x                        : Integer = 5;
    i, kolom, angka          : Integer;

begin

  // inisialisasi semua nilai di dalam array dengan -1
  for i := 1 to 5 do nilai[i] := -1;

  // i adalah baris
  for i := 1 to 5 do
  begin
    // kolom adalah baris horizontal angka yang di tampilkan
    for kolom := 1 to x do
    begin
      // cek kalau data di array masih -1 akan mengubah angka menjadi kolom dan sebaliknya jika tidak nilai akan di ambil dari array
      if nilai[kolom] = -1 then angka := kolom else angka := nilai[kolom];
      // jika i adalah baris 1 maka angka di tambah 1, jika tidak ditambah 2
      if i = 1 then angka += 1 else angka += 2;
      // menulis output angka
      Write(angka, '  ');
      // simpan nilai angka ke array
      nilai[kolom] := angka;
    end;
    // kurangi x agar output sesuai yang di inginkan seperti anak tangga terbalik
    x -= 1;
    // kalau i lebih kecil dari 5 buat baris baru
    // kenapa? supaya output lebih rapi tidak kelebihan barus baru di akhir program
    if i < 5 then WriteLn();
  end;

end.