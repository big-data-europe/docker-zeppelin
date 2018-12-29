package com.scals.arbuzov
// import required spark classes
import org.apache.spark.SparkContext
import org.apache.spark.SparkContext._
import org.apache.spark.SparkConf

object SparkJob {

    def execute() {

      // initialise spark context
      val conf = new SparkConf().setAppName("HelloWorld")
      val sc = new SparkContext(conf)

      // do stuff
      println("############################")
      println("############################")
      println("########HELLO WORLD#########")
      println("############################")
      println("############################")

      // terminate spark context
      sc.stop()

    }
}
