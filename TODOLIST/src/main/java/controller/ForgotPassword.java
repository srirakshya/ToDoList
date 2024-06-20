package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Dao;
import dto.User;

@WebServlet("/forgotpassword")
public class ForgotPassword extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Dao dao = new Dao();
		String email = req.getParameter("email");
		
		
		try {
			User u = dao.findByEmail(email);
			if(u!=null) {
				Properties props = new Properties();
				props.put("mail.smtp.host", "smtp.gmail.com"); //Replace with your SMTP server
				props.put("mail.smtp.port", "587"); //Replace with your SMTP port (e.g., 25, 587)
				props.put("mail.smtp.auth", "true");
				props.put("mail.smtp.starttls.enable", "true");
				
				//Set up the session with the mail server
				Session session = Session.getInstance(props, new Authenticator() {
					
					@Override
					protected PasswordAuthentication getPasswordAuthentication() {
						//Replace with your SMTP username and password
						return new PasswordAuthentication("srirakshya2910@gmail.com", "vbkeuhkukrhw");
					}	
				});
				
				String newPass = PasswordGenerator.generatePassword();
				u.setUserpassword(newPass);
				Dao dao2 = new Dao();
				dao2.updateUserPassword(u);
				
				MimeMessage message = new MimeMessage(session);
				message.setFrom(new InternetAddress("srirakshya2910@gmail.com")); //Replace with your email
				message.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
				message.setSubject("Your New Password");
				message.setText("Your New Password is: " + newPass);
				
				Transport.send(message);
				
				resp.sendRedirect("login.jsp");
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			req.setAttribute("message", "invalid email address added for password recovery");
			RequestDispatcher dispatcher = req.getRequestDispatcher("login.jsp");
			dispatcher.include(req, resp);
		
		}

	}
	
}
	
