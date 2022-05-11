# syntax=docker/dockerfile:1

FROM tomcat:9.0.62
#ENV NODE_ENV=production

#WORKDIR /app
#WORKDIR /
#WORKDIR .
#COPY ["package.json", "package-lock.json*", "./"]
#COPY ["helloworld.war",  "/usr/local/tomcat/webapps/"]
COPY ["./target/helloworld.war",  "/usr/local/tomcat/webapps/"]
#RUN npm install --production

#COPY . .

EXPOSE 8080
CMD [ "/usr/local/tomcat/bin/catalina.sh", "run" ]