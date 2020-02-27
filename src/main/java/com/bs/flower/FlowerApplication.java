package com.bs.flower;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
* @Description: Swagger2 网址：http://127.0.0.1:8080/flower/doc.html
* @params: 
* @return:
* @Date: 2020/2/27 10:36 PM
*/
@MapperScan("com.bs.flower.dao")
@EnableSwagger2
@SpringBootApplication
public class FlowerApplication {

    public static void main(String[] args) {
        SpringApplication.run(FlowerApplication.class, args);
    }

}
