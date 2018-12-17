# Docker Container Setup Installation Notes

## 1) Install Docker
For Windows: ```https://docs.docker.com/docker-for-windows/install/```
<br>For Mac:     ```https://docs.docker.com/docker-for-mac/install/```
<br>For Ubuntu/Linux:  Run this script https://github.com/zaratsian/IAA_Sessions/blob/master/scripts/install_docker_linux.sh

## 2) Download Github Repo:
For Windows/Mac Users: Manually download from https://github.com/zaratsian/IAA_Sessions and unzip

For Linux/Mac Users:   git clone https://github.com/zaratsian/IAA_Sessions.git

## 3) Open the CMD / Terminal Shell
Navigate to the downloaded github repo, specifically at this path ./IAA_Sessions/docker. You should be able to use a variation of this command:
```
cd ./IAA_Sessions/docker
```
## 5) Build the Docker Container

For Windows Users, run this command:    ```build.bat```
<br>For Max/Linux Users, run this command:  ```./build.sh```

If the above doesn't work, you can try to run these commands directly in the shell:
```
docker network create dev
docker build -t spark_240 containers/spark_240
```
NOTE: The build will download and install the service(s). This will take several minutes.

## 6) Run the Spark Container 
NOTE: This will automatically load a Spark test file and run it
    
For Windows Users:      ```run_spark_240.bat```
<br>For Mac/Linux Users:    ```./run_spark_240.sh```

NOTE: If successful, you should see data displayed once the processing completes, as well as a message that says "[ INFO ] Spark Test Successful!"

