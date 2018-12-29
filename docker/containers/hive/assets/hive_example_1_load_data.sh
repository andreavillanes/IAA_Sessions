su hdfs

hadoop fs -mkdir /demo
hadoop fs -mkdir /demo/ncaa
hadoop fs -mkdir /demo/ncaa/SeasonResults
hadoop fs -mkdir /demo/ncaa/Teams
hadoop fs -put /tmp/SeasonResults.csv /demo/ncaa/SeasonResults/.
hadoop fs -put /tmp/Teams.csv /demo/ncaa/Teams/.

exit
