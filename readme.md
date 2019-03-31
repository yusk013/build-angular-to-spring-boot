# Build Spring boot website with Angular website

## How to build the project in your linux server

### Prepare
1. install git
2. install java
3. install maven
4. install nodejs & npm


### build the project use linux shell command

```
1. copy the content and create a new file like(build.sh)
2. chmod 700 build.sh
3. ./build.sh
```


``` bash
#! /bin/bash

rm -rf /store/build

git clone https://github.com/yusk013/build-spring-boot-with-angular.git /store/build

cd /store/build/web/

npm install

ng build --prod

\cp -rf /store/build/web/dist/* /store/build/server/src/main/resources/static/

cd /store/build/server/

mvn clean package -DskipTests=true

cd /store/build/server/target/

nohup java -jar 1.0-RELEASE.jar &
```

### Access the website
1. open your browser
2. type the url: http://your ip or localhost:8080/
3. the user can go to angular website from the spring boot website, and the system doesn't effect the angular router.
4. the user can back to spring boot website from angular website.


## Next
Modify the code for developer for dev.
