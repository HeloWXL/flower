package com.bs.flower.config;

import com.baomidou.mybatisplus.plugins.PaginationInterceptor;
import com.baomidou.mybatisplus.plugins.PerformanceInterceptor;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import java.util.Properties;

/**
 * @ClassName MyBatisPlus
 * @Description TODO
 * @date 2019/9/7 17:46
 * @Version 1.0
 */
@EnableTransactionManagement
@Configuration
@MapperScan("com.bs.flower.dao")
public class MyBatisPlus {
    /**
     * 分页插件
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
      return new PaginationInterceptor();
    }
}
