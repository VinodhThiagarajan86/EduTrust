package com

class EmailHelper {

	def mailService;

	def sendMailTO() {
		println "mail services:"+mailService
		 mailService.sendMail {
			to 'vinodhtce04f40@gmail.com'
			from 'vinodhtce04f40@gmail.com'
			subject "Testut"
			body "Testit";
		 }
		 println "mail done:"+mailService
	}
}
