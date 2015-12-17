package jpabook.jpashop;

import org.springframework.boot.*;
import org.springframework.boot.autoconfigure.*;
import org.springframework.boot.builder.*;
import org.springframework.boot.context.web.*;

/**
 * Created by rigel on 12/16/15.
 */

@SpringBootApplication
//@Configuration
//@EnableAutoConfiguration(exclude=ErrorMvcAutoConfiguration.class)
//@ComponentScan
public class WebUiApplication extends SpringBootServletInitializer{

    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
        return builder.sources(WebUiApplication.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(WebUiApplication.class, args);

    }
}
