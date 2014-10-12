package byvin.org.edu

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

import com.sendgrid.SendGrid;
import com.sendgrid.SendGridException
import com.sendgrid.SendGrid.Email;

class SendemailController {

	def mailService
	
    def index() { 
		
	}
	
	def sendEmail() {
		
			
			SendGrid sendgrid = new SendGrid("VinodhTce", "Vinfosys9677");
			
			println params.emailList.getClass()
			
			String[] ary = "$params.emailList".split(",");
			
			SendGrid.Email email = new SendGrid.Email();
			email.setTo(ary);
			email.setFrom("support-APSRMCH@handstogether.com");
			email.setSubject("$params.subject");
			email.setText("$params.message");
		
			try {
			  SendGrid.Response response = sendgrid.send(email);
			  System.out.println(response.getMessage());
			}
			catch (SendGridException e) {
			  System.err.println(e);
			}

		flash.message = "Email sent successfully"
		render(view:'/sendemail/index')
		
	}
}
