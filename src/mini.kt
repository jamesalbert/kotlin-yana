package mini

import java.util.*
import java.lang.Math.exp

fun probability(score: Double, prev_score: Double, temp: Double): Double {
  return exp(-(score - prev_score) / temp)
}

fun temperature(time: Int): Double {
  return exp(-1000.0 * (time / 1000000.0))
}

fun main(args : Array<String>) {
  for (i in 1..1000000) {
    var temp: Double = temperature(i)
    if (i % 1000 == 0) {
      println("temp: ${temp}, prob: ${probability(2.0, 1.0, temp)}")
    }
  }
}
