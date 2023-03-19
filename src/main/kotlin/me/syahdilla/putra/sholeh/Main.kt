package me.syahdilla.putra.sholeh

import me.syahdilla.putra.sholeh.algoritma.upm.KisiUPMAlgoritmaJanuari2023
import me.syahdilla.putra.sholeh.algoritma.upm.Soal

fun main(args: Array<String>) {
    println()

    //KisiUPMAlgoritmaJanuari2023.printFields()
    algoSoal1()
}

fun algoSoal1(npm: Int = 3) {
    var a = npm
    a += 1
    var d = (14 + a * 2) div 2
    d -= a
    var b = 0
    var c = 1
    while (c <= d) {
        if (d div 2 == 0) b += 1
        c += 1
    }

    write(b)
    write(d)
    if (b == 2)
        write("UNIVERSITAS")
    else
        write("INDRAPRASTA")
    // hasil: 0-4INDRAPRASTA
}

fun write(msg: Any?) = print(msg)
infix fun Int.div(other: Int) = mod(other)

inline fun<reified T : Any> T.printFields() {
    this::class.java.declaredFields.forEach {
        if (it.name == "INSTANCE") return@forEach
        it.isAccessible = true

        val name = "${this::class.java.simpleName} - ${it.name}"

        val pStart = "START =============== $name =============== START"
        println(pStart)

        @Suppress("UNCHECKED_CAST")
        val value = try {
            (it.get(this) as () -> String)()
        } catch (e: ClassCastException) {
            StringBuilder().apply(it.get(this) as Soal).toString()
        }

        println(value)

        val sb = StringBuilder()
        for (i in 1..(pStart.length))
            sb.append("-")


        println(sb)
        println()
        println()
    }
}


/*
6.1. PRED(fungsi)
Memberikan nilai sebelum nilai argumen dalam urutannya dalam ASCII.
Sintaks: PRED(x);

6.2. SUCC(fungsi)
Memberikan nilai sesudah nilai argumen dalam urutannya dalam ASCII.
Sintaks: SUCC(x);
 */