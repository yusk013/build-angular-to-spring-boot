#! /bin/bash

rm -rf /store/build

git clone https://github.com/yusk013/build-spring-boot-with-angular.git /store/build

cd /store/build/web/

npm install

ng build --prod

\cp -rf /store/build/web/dist/web /store/build/server/src/main/resources/static/

cd /store/build/server/

mvn clean package -DskipTests=true

cd /store/build/server/target/

nohup java -jar 1.0-RELEASE.jar &