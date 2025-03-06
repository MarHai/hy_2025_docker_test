# Docker test

1. Install [Docker Desktop](https://docker.com/). No need to create a user. 

2. Create a `Dockerfile` with the following contents (as a simple text file):
```dockerfile
# start with R image
FROM rocker/tidyverse

# install git
RUN apt-get update && apt-get install -y git

# clone research repository and jump into that directory
RUN git clone https://github.com/MarHai/hy_2025_docker_test
WORKDIR /hy_2025_docker_test

# run the actual R script
CMD R -e "source('analysis.r')"
```

3. Open up a terminal or command line, change to the directory in which your `Dockerfile` is located, and run the following command:
   `docker build -t r_test .`

4. Change into your Docker Desktop and find the built container under images. Run it.
