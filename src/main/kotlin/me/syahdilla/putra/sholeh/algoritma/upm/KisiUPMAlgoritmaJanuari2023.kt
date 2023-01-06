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
    val `SOAL KE 2`: WString = {
        var x = 5 // nilai x default adalah 5
        var y = 10 // nilai y default adalah 10

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

    val `SOAL KE 3`: WString = {
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

    val SOAL4: WString = {
        val data = mutableMapOf<Int, Int>()
        var x = 5
        for (i in 0..5) {
            for (j in 1..x) {
                if (j == 1 && isNotEmpty) appendLine()
                val calc = (data[j] ?: j).run {
                    if (i == 0)
                        return@run this + 1
                    this + 2
                }

                this tampilkan "$calc\t"


                data[j] = calc
            }
            x -= 1
        }
    }

    val SOAL5: WString = {
        var x = 0
        for (i in 1..5) {
            if (isNotEmpty) appendLine()
            for (y in 1..i) {
                if (y == 1 && i.mod(2) != 0) x = 0
                this tampilkan "$x\t"
                x = if (x == 0) 1 else 0
            }
        }
    }

}





typealias WString = StringBuilder.() -> Unit

val StringBuilder.isNotEmpty
    get() = isNotEmpty()
infix fun StringBuilder.tampilkan(value: Any) = append(value)
infix fun StringBuilder.`tampilkan dengan baris baru`(value: Any) = appendLine(value)

infix fun Int.`habis di bagi dengan`(value: Int) = this.mod(value) == 0

inline fun ketika(kondisi: () -> Boolean, lakukan: () -> Unit) {
    while (kondisi()) lakukan()
}