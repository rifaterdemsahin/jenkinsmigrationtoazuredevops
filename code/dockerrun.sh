docker run \
  --name jenkins-poc \
  -p 8080:8080 \
  -v jenkins-data:/var/jenkins_home \
  jenkins/jenkins:lts
