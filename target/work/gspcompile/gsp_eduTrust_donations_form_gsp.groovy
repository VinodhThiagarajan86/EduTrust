import byvin.org.edu.Donations
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduTrust_donations_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/donations/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: donationsInstance, field: 'donamount', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("donations.donamount.label"),'default':("Donamount")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['name':("donamount"),'value':(fieldValue(bean: donationsInstance, field: 'donamount')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: donationsInstance, field: 'dondate', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("donations.dondate.label"),'default':("Dondate")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',19,['name':("dondate"),'precision':("day"),'value':(donationsInstance?.dondate)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: donationsInstance, field: 'donfor', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("donations.donfor.label"),'default':("Donfor")],-1)
printHtmlPart(6)
invokeTag('textField','g',28,['name':("donfor"),'value':(donationsInstance?.donfor)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: donationsInstance, field: 'donby', 'error'))
printHtmlPart(7)
invokeTag('message','g',34,['code':("donations.donby.label"),'default':("Donby")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("donby"),'name':("donby.id"),'from':(byvin.org.edu.User.list()),'optionKey':("id"),'required':(""),'value':(donationsInstance?.donby?.id),'class':("many-to-one")],-1)
printHtmlPart(8)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1411667918355L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
