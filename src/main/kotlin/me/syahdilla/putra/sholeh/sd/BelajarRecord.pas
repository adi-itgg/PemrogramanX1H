program BelajarRecord;

type
  Data_Siswa = record
    nama_lengkap  : string;
    nama_panggilan: string;
    kelas         : string;
    umur          : integer;
    jenis_kelamin : string;
  end;

var
  siswa: Data_Siswa; //untuk Mendeklarasikan type data yang sudah di input di dalam typedata record

begin

  with siswa do
  begin
    nama_lengkap := 'Brivane Farren';
    nama_panggilan := 'Farren';
    kelas := 'X2H';
    umur := 22;
    jenis_kelamin := 'Perempuan';
  end;


  with siswa do
  begin
    // mencetak isi RECORD datasiswa
    writeln('nama lengkap: ', nama_lengkap);
    writeln('nama panggilan: ', nama_panggilan);
    writeln('kelas: ', kelas);
    writeln('umur: ', umur);
    writeln('jenis kelamin: ', jenis_kelamin);
  readln;
  end;
end.
