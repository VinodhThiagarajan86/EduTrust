import byvin.org.edu.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduTrust_user_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: userInstance, field: 'firstname', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("user.firstname.label"),'default':("Firstname")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("firstname"),'required':(""),'value':(userInstance?.firstname)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'middlename', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("user.middlename.label"),'default':("Middlename")],-1)
printHtmlPart(5)
invokeTag('textField','g',19,['name':("middlename"),'value':(userInstance?.middlename)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'lastname', 'error'))
printHtmlPart(6)
invokeTag('message','g',25,['code':("user.lastname.label"),'default':("Lastname")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("lastname"),'required':(""),'value':(userInstance?.lastname)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'phonenumber', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("user.phonenumber.label"),'default':("Phonenumber")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("phonenumber"),'value':(fieldValue(bean: userInstance, field: 'phonenumber')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'emailid', 'error'))
printHtmlPart(8)
invokeTag('message','g',43,['code':("user.emailid.label"),'default':("Emailid")],-1)
printHtmlPart(2)
invokeTag('textField','g',46,['name':("emailid"),'required':(""),'value':(userInstance?.emailid)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'address', 'error'))
printHtmlPart(9)
invokeTag('message','g',52,['code':("user.address.label"),'default':("Address")],-1)
printHtmlPart(5)
invokeTag('textField','g',55,['name':("address"),'value':(userInstance?.address)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: userInstance, field: 'donations', 'error'))
printHtmlPart(10)
invokeTag('message','g',61,['code':("user.donations.label"),'default':("Donations")],-1)
printHtmlPart(11)
for( d in (userInstance?.donations) ) {
printHtmlPart(12)
createTagBody(2, {->
expressionOut.print(d?.encodeAsHTML())
})
invokeTag('link','g',67,['controller':("donations"),'action':("show"),'id':(d.id)],2)
printHtmlPart(13)
}
printHtmlPart(14)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'donations.label', default: 'Donations')]))
})
invokeTag('link','g',70,['controller':("donations"),'action':("create"),'params':(['user.id': userInstance?.id])],1)
printHtmlPart(15)
expressionOut.print(hasErrors(bean: userInstance, field: 'transaction', 'error'))
printHtmlPart(16)
invokeTag('message','g',79,['code':("user.transaction.label"),'default':("Transaction")],-1)
printHtmlPart(11)
for( t in (userInstance?.transaction) ) {
printHtmlPart(12)
createTagBody(2, {->
expressionOut.print(t?.encodeAsHTML())
})
invokeTag('link','g',85,['controller':("transaction"),'action':("show"),'id':(t.id)],2)
printHtmlPart(13)
}
printHtmlPart(14)
createTagBody(1, {->
expressionOut.print(message(code: 'default.add.label', args: [message(code: 'transaction.label', default: 'Transaction')]))
})
invokeTag('link','g',88,['controller':("transaction"),'action':("create"),'params':(['user.id': userInstance?.id])],1)
printHtmlPart(17)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1411667929291L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
