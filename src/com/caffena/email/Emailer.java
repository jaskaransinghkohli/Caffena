package com.caffena.email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

public class Emailer {

	
	static Properties prop = new Properties();
	public int status = 0; 
	boolean sendStatus=false;  
	  public boolean  emailSend(String subject, String emailto,String body){

		  try{	
			  			  
/*			prop.put("mail.smtp.host",mailConfiguration.getEmailer_host());
			prop.put("mail.smtp.port", mailConfiguration.getEmailer_port());
			 prop.put("mail.smtp.auth",mailConfiguration.getEmailer_auth());
			  prop.put("mail.smtp.starttls.enable", "true");
			  prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			   prop.put("mail.smtp.socketFactory.port", mailConfiguration.getEmailer_port());
			   prop.put("mail.smtp.socketFactory.fallback","false");*/
			   
			
			   prop.put("mail.smtp.host", "smtp.gmail.com");
			     //below mentioned mail.smtp.port is optional
			    prop.put("mail.smtp.port", "465");		
			     prop.put("mail.smtp.auth", "true");
			     prop.put("mail.smtp.starttls.enable", "true");
			     prop.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
			     prop.put("mail.smtp.socketFactory.port","465");
			     prop.put("mail.smtp.socketFactory.fallback","false");
			 	
		         Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
		            protected PasswordAuthentication 
		            getPasswordAuthentication() {
		            return new	PasswordAuthentication("caffenaindia@gmail.com", "bestcoffee15@caffena");
		            }});

		         Message message = new MimeMessage(session);
		         message.setContent(body, "text/html");						
		         message.setFrom(new InternetAddress("caffenaindia@gmail.com"));
		         message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(emailto));
		         message.setSubject(subject);
		         		         
		         Transport.send(message);
		         sendStatus = true;
		      }
		      catch(Exception e)
		      {   status=0;
		    	  e.printStackTrace();
		      }
		   return sendStatus; 
	  }
	}