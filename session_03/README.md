
[Google Slides](https://docs.google.com/presentation/d/1JG4nMPv1ryovSpZG62XGS0frzpb0c82EEincZZ7acMU/edit?usp=sharing)

## Apache Spark - Data Processing & Machine Learning
1. Clone this Github Repo (or download from [here](https://github.com/zaratsian/IAA_Sessions/archive/master.zip)):
```
git clone https://github.com/zaratsian/IAA_Sessions.git
```

2. Navigate to the github repo that you just cloned or downloaded:
```
cd IAA_Sessions/docker/
```

3. Build the Docker Container:
<br>Mac/Linux:  ```./spark_build.sh```
<br>Windows:    Double-click on ```spark_build.bat``` or you could also try to run ```spark_build.bat``` from the command line.

4. Run Container:
<br>Mac/Linux:  ```./spark_run.sh```
<br>Windows: Double-click on ```spark_run.bat``` or you could also try to run ```spark_run.bat``` from the command line.

5. Open up Zeppelin Notebook (use the UI to submit code):
<br>[http://localhost:18080](http://localhost:18080)

6. Work through the following Labs (these notebooks & code should all be pre-loaded in your Apache Zeppelin notebook):
<br>(1) Getting Started - Python (lab)
<br>(2) Flight Predictor - Python 
<br>(3) Movie Text Analytics - Python

**Optional:** Connect to the Docker container (submit code via cli):
```
docker exec -it spark bash
```
Within the Container - Connect to PySpark:
```
/spark/bin/pyspark --deploy-mode client --master local[*] --name spark_lab
```

**Additional Scripts and References:**
<br>https://spark.apache.org/docs/latest/sql-getting-started.html
<br>https://github.com/zaratsian/Spark

**Alternative Docker Container for Spark/Zeppelin**

Pull the Docker container from Docker Hub using this command:
```
docker pull mirkoprescha/spark-zeppelin-docker
```

Run the Docker container:
```
docker run -it -p 18080:18080 -p 8088:8080 -d mirkoprescha/spark-zeppelin-docker
```

Open up your Browser and go to http://localhost:8088
