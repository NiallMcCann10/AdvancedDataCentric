package com.sales;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.support.SpringBootServletInitializer;

@SpringBootApplication
public class FinalProjV1Application extends SpringBootServletInitializer{
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(FinalProjV1Application.class);
	}

	public static void main(String[] args) {
		SpringApplication.run(FinalProjV1Application.class, args);
	}
}
