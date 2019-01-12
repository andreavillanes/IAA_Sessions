# Docker Container Setup Installation Notes

## 1) Install Docker
For Windows: ```https://docs.docker.com/docker-for-windows/install/```
<br>For Mac: ```https://docs.docker.com/docker-for-mac/install/```
<br>For Ubuntu/Linux:  ```https://docs.docker.com/install/linux/docker-ce/centos/```

**NOTE:** For Windows 10 Home and older, or for Mac operating systems older than El Capitan 10.11, you will need to install [Docker Toolbox](https://docs.docker.com/toolbox/overview/)

To test Docker, you can run the hello world container, by opening up the command line / terminal and entering: ```docker run hello-world```

If the "docker hello-world" test completes successfully, you should see a meesage on your screen that looks like this:
```
Hello from Docker!
This message shows that your installation appears to be working correctly.
```

## 2) Download my [Github Repo](https://github.com/zaratsian/IAA_Sessions):
For Windows/Mac Users: Manually download the repo from https://github.com/zaratsian/IAA_Sessions and unzip into a location that you can remember.

For Linux/Mac Users: Run this command ```git clone https://github.com/zaratsian/IAA_Sessions.git```. This will download the repo into your current working directory.

## 3) Open the CMD / Terminal Shell
Navigate to the downloaded github repo, specifically to this path ./IAA_Sessions/docker. You should be able to use this command:
```
cd ./IAA_Sessions/docker
```
## 5) Build the Docker Container

This process will build the Docker container, which involves pulldown down libraries and depencenies from the web (so be sure that you are connected to the internet). 

For Windows Users, run this command: ```spark_build.bat```
<br>For Max/Linux Users, run this command:  ```./spark_build.sh```

If the above doesn't work, you can try to run these commands directly in the shell:
```
docker network create dev
docker build -t spark containers/spark
```

## 6) Run the Spark Container 

This process will start the Docker container, start Zeppelin (which is a code editor), and also run a test spark script.
    
For Windows Users:      ```spark_run.bat```
<br>For Mac/Linux Users:    ```./spark_run.sh```

**NOTE:** If successful, you should see data displayed once the processing completes, as well as a message that says "[ INFO ] Spark Test Successful!"

