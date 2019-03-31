#! /bin/bash

rm -rf /store/build

git clone https://github.com/yusk013/build-spring-boot-with-angular.git /store/build

cd /store/build/web/

ng build --prod

/cp /store/build/web/dist/** /store/build/server/src/main/resources/

cd /store/build/server/

mvn clean package -DskipTests=true

cd /store/build/server/target/

nohup java -jar 1.0-RELEASE.jar &