package com.caffena.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class WebAppInitializer
	extends AbstractAnnotationConfigDispatcherServletInitializer {

		  
		   @Override
		   protected Class<?>[] getServletConfigClasses() {
		      return new Class[] { SpringConfig.class };
		   }

		   @Override
		   protected String[] getServletMappings() {
		      return new String[] { "/" };
		   }

		@Override
		protected Class<?>[] getRootConfigClasses() {
			// TODO Auto-generated method stub
			return new Class[] { DBConfig.class };
		}
		
	
}
