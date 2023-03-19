(*
 * Project: PemrogramanXH
 * Nama: Syahdilla Putra Sholeh
 * NPM: 202243500933
 * Date: 10/03/2023
 *)
program KasirTugas1;
//uses Crt; // saya komen karena error di idea saya.

var
  i                         : Integer;
  // set default 0 agar tidak null
  totalBayar                : Int64 = 0;
  calc, total, uang         : Int64;
  namaArray                 : array[1..999999] of String;
  jumlahArray, hargaArray   : array[1..999999] of Int64;

// build=silent
begin
  // bersihkan screen dari output sebelumnya
  //clrscr; // saya komen karena error di idea saya.

  // Write sudah pasti menampilkan output tanpa akhiran baris baru
  Write('Masukkan jumlah item yang akan dibeli : ');
  ReadLn(total); // Membaca inputan dari user + tambah baris baru

  for i := 1 to total do // loop inputan item
    begin
      WriteLn(); // buat baris baru
      // menggunakan i untuk menandakan ini barang ke berapa
      Write('Nama barang ke-', i, ' : ');
      // langsung assign/set value ke array berdasarkan index
      ReadLn(namaArray[i]);
      Write('Jumlah barang ke-', i, ' : ');
      ReadLn(jumlahArray[i]);
      Write('Harga barang ke-', i, ' : ');
      ReadLn(hargaArray[i]);
    end;

  WriteLn(); WriteLn();
  // menampilkan nama kolom dan #9(\t) sebagai tab (jarak)
  WriteLn('Nama barang', #9, #9, 'Jumlah', #9, 'Total', #9, 'total harga');
  WriteLn('===============================================');

  for i := 1 to total do // loop lagi untuk menampilkan semua hasil
    begin
      // kalkulasi total harga satu barang (sekarang)
      calc := jumlahArray[i] * hargaArray[i];
      totalBayar += calc; // tambahkan ke total bayar
      // tampilan hasilnya
      WriteLn(' ', namaArray[i], #9, #9, #9, jumlahArray[i], #9, #9, hargaArray[i], #9, calc);
    end;

  WriteLn();
  WriteLn('Total belanja : ', totalBayar);
  WriteLn();

  Write('Jumlah uang yg diserahkan: ');
  ReadLn(uang);
  WriteLn('Jumlah bayar : ', totalBayar);
  WriteLn('Kembalian : ', uang - totalBayar);
  WriteLn();
  WriteLn('Terima Kasih');

end.