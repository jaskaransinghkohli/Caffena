package com.caffena.config;

import java.io.IOException;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

import com.caffena.controller.BasicController;
import com.caffena.dao.AdminDao;
import com.caffena.dao.AdminDaoImpl;
import com.caffena.dao.BasicDao;
import com.caffena.dao.BasicDaoImpl;
import com.caffena.services.AdminService;
import com.caffena.services.AdminServiceImpl;
import com.caffena.services.BasicService;
import com.caffena.services.BasicServiceImpl;



@Configuration
@EnableWebMvc
@ComponentScan(basePackages = { "com.caffena"})

public class SpringConfig extends WebMvcConfigurerAdapter {

	@Bean(name = "multipartResolver")
	public CommonsMultipartResolver getResolver() throws IOException {
		CommonsMultipartResolver resolver = new CommonsMultipartResolver();

		// Set the maximum allowed size (in bytes) for each individual file.
		resolver.setMaxUploadSizePerFile(16000000);// 5MB

		// You may also set other available properties.

		return resolver;
	}

	@Bean
	public InternalResourceViewResolver resolver() {
		InternalResourceViewResolver resolver = new InternalResourceViewResolver();
		resolver.setViewClass(JstlView.class);
		resolver.setPrefix("/WEB-INF/");
		resolver.setSuffix(".jsp");
		return resolver;
	}

	@Override
	public void addResourceHandlers(final ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/**").addResourceLocations("/");
	}
	
	@Bean
	public AdminService adminService()
	{
		return new AdminServiceImpl();
	}
	
	@Bean
	public AdminDao adminDao()
	{
		return new AdminDaoImpl();
	}
	
	@Bean
	public BasicService basicService()
	{
		return new BasicServiceImpl();
	}
	
	@Bean
	public BasicDao basicDao()
	{
		return new BasicDaoImpl();
	}
	@Bean
	public BasicController basicController()
	{
		return new BasicController();
	}
	
}