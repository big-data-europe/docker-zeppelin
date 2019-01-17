package com.scals.arbuzov

import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.functions._

object SparkJobRunner {

  def main(args: Array[String]) {

    // Run the word count
    SparkJob.execute()

    // Exit with success
    System.exit(0)
  }

}
