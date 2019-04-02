package com.yusk.build;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.ApplicationPidFileWriter;

@SpringBootApplication
public class BuildApplication {

    public static void main(String[] args) {
        SpringApplication app = new SpringApplication(BuildApplication.class);
        app.addListeners(new ApplicationPidFileWriter());
        app.run(args);
    }

}
