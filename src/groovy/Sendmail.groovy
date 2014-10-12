class Sendmail {
	def mailService;

	def sendMailTO() {
		println "mail service:"+mailService
		 mailService.sendMail {
			to 'xxxx@gmail.com'
			from 'xxxx@gmail.com'
			subject "Test"
			body "Test";
		 }
	}
}