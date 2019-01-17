// resolvers += "bintray-spark-packages" at "https://dl.bintray.com/spark-packages/maven/"
// https://mvnrepository.com/artifact/org.apache.spark/spark-core
resolvers += Resolver.mavenLocal


name := "sparkjob"

version := "0.1"

scalaVersion := "2.11.12"
val sparkVersion = "2.4.0"

libraryDependencies ++= Seq(
  "org.apache.spark" %% "spark-core" % sparkVersion,
  "org.apache.spark" %% "spark-sql" % sparkVersion,
//  "org.apache.spark" %% "spark-mllib" % sparkVersion,
//  "org.apache.spark" %% "spark-streaming" % sparkVersion,
//  "org.apache.spark" %% "spark-hive" % sparkVersion,
  "mysql" % "mysql-connector-java" % "5.1.6"
)