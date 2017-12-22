package com.xfj;

import org.springframework.boot.Banner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class Application {
    public static void main(String[] args) {
        SpringApplication application = new SpringApplication(Application.class);

        application.setBannerMode(Banner.Mode.LOG);
        application.run(args);
    }
}


//~ Formatted by Jindent --- http://www.jindent.com
