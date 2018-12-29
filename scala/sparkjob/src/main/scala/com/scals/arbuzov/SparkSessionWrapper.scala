package com.scals.arbuzov

import org.apache.spark.sql.SparkSession

trait SparkSessionWrapper {

  lazy val spark: SparkSession = {
    SparkSession
      .builder()
      .master("local")
      .appName("sparkjob")
      .getOrCreate()
  }

}