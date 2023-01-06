package me.syahdilla.putra.sholeh.algoritma.upm

@Suppress("unused")
object KisiUPMAlgoritmaJanuari2023 {


    /**
    ## Program Output:
    -  Perulangan:    y=5    x=4
    -  Perulangan:    y=1    x=3
    -  Perulangan:    y=-2    x=2
    -  Perulangan:    y=-4    x=1
    -  Perulangan:    y=-5    x=0
    -  OUTPUT SOAL UPM 2: y=-5

    Kenapa y -5? kamu bisa lihat nilai x dan y saat looping
    nilainya berubah-ubah sampai x == 0 atau x <= 0
     */
    val `SOAL KE 2`: Soal = {
        var x = 5 // nilai x adalah 5
        var y = 10 // nilai y adalah 10

        ketika(  // ini sama juga dengan while (x > 0) {
            kondisi = { x > 0 },
            lakukan = {
                y -= x // nilai y berubah, dikurang x
                x -= 1 // nilai x berubah, dikurang 1
                this `tampilkan dengan baris baru` "Perulangan:    y=$y    x=$x" // ini hanya mengeluarkan output seperti halnya di pascal writeLn('');
            }
        )

        // y hasilnya adalah -5
        this tampilkan "OUTPUT SOAL UPM 2: y=$y"
    }

    /**
     ## Output:
     - hijau
     - merah
     - kuning
     - merah
     - hijau
     */
    val `SOAL KE 3`: Soal = {
        for (x in 1..5) {
            val hasil = if (x `habis di bagi dengan` 2)
                "merah"
            else if (x `habis di bagi dengan` 3)
                "kuning"
            else
                "hijau"
            if (isNotEmpty) this `tampilkan dengan baris baru` ""
            this tampilkan hasil
        }
    }

    /**
     ## Output:
     - 2	3	4	5	6
     - 4	5	6	7
     - 6	7	8
     - 8	9
     - 10
     */
    val `SOAL KE 4`: Soal = {
        val data = mutableMapOf<Int, Int>() // map untuk menyimpan data di line 1
        var x = 5 // x = 5 karena max baris kanan 5 huruf
        for (i in 0..5) { // sama seperti x
            for (j in 1..x) { // buat huruf di satu baris
                if (j == 1 && isNotEmpty) appendLine() // buat baris baru kalau data tidak kosong
                val calc = (data[j] ?: j).run {
                    if (i == 0)
                        return@run this + 1 // kalau baris 1 kita tambah 1 saja
                    this + 2 // kalau lebih dari baris 1 kita tambah 2
                }

                this tampilkan "$calc\t" // tampilkan hasil output hurufnya \t untuk tab agar lebih rapih

                data[j] = calc // simpan data calc ke map
            }
            x -= 1 // x di kurang satu karena huruf di barus makin lama makin sedikit
        }
    }

    /**
     ## Output
     - 0
     - 1	0
     - 0	1	0
     - 1	0	1	0
     - 0	1	0	1	0
     */
    val `SOAL KE 5`: Soal = {
        var x = 0 // x = 0 karena awal output adalah 0 di baris pertama
        for (i in 1..5) { // i = 1 sampai 5 karena barisnya 5
            if (isNotEmpty) appendLine() // tambahkan baris jika data tulisan tidak kosong
            for (y in 1..i) { // 1 sampai i kenapa? karena menyesuaikan output huruf di barisnya
                if (y == 1 && !(i `habis di bagi dengan` 2)) x = 0 // x = 0 karena baris ketiga pasti x huruf pertama menjadi 1
                this tampilkan "$x\t" // tampilkan huruf
                x = if (x == 0) 1 else 0 // ganti x kalau 0 jadi 1 dan sebaliknya
            }
        }
    }

}





typealias Soal = StringBuilder.() -> Unit

val StringBuilder.isNotEmpty
    get() = isNotEmpty()
infix fun StringBuilder.tampilkan(value: Any) = append(value)
infix fun StringBuilder.`tampilkan dengan baris baru`(value: Any) = appendLine(value)

infix fun Int.`habis di bagi dengan`(value: Int) = this.mod(value) == 0

inline fun ketika(kondisi: () -> Boolean, lakukan: () -> Unit) {
    while (kondisi()) lakukan()
}