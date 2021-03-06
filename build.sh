#! /bin/bash

# kill the running java
if [ -f "/store/an.pid" ];then
  kill -9 `cat /store/an.pid`
fi

rm -rf /store/build

git clone https://github.com/yusk013/build-spring-boot-with-angular.git /store/build

cd /store/build/web/

npm install

ng build --prod

mkdir -p /store/build/server/src/main/resources/static/web
\cp -rf /store/build/web/dist/web/* /store/build/server/src/main/resources/static/web/

cd /store/build/server/

mvn clean package -DskipTests=true

cd /store/build/server/target/

nohup java -jar 1.0-RELEASE.jar &