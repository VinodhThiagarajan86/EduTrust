package byvin.org.edu


import com.EmailHelper
import grails.plugin.mail.MailService;
import grails.plugin.asyncmail.AsynchronousMailService


class SendController {

    def mailService

   def someAction() {
	   println "Dai"
       mailService.sendMail {
			to 'vinodh@vinodhthiagarajan.info'
			subject "ROUGE Treval"
			body "ROUGE";
		 }
	   println "Dai Done"
       
	   
   }
	
}
