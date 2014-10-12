import byvin.org.edu.Transaction
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduTrust_transaction_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/transaction/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: transactionInstance, field: 'amtspent', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("transaction.amtspent.label"),'default':("Amtspent")],-1)
printHtmlPart(2)
invokeTag('field','g',10,['name':("amtspent"),'value':(fieldValue(bean: transactionInstance, field: 'amtspent')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: transactionInstance, field: 'purpose', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("transaction.purpose.label"),'default':("Purpose")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("purpose"),'required':(""),'value':(transactionInstance?.purpose)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: transactionInstance, field: 'spentdate', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("transaction.spentdate.label"),'default':("Spentdate")],-1)
printHtmlPart(2)
invokeTag('datePicker','g',28,['name':("spentdate"),'precision':("day"),'value':(transactionInstance?.spentdate)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: transactionInstance, field: 'spentperson', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("transaction.spentperson.label"),'default':("Spentperson")],-1)
printHtmlPart(2)
invokeTag('select','g',37,['id':("spentperson"),'name':("spentperson.id"),'from':(byvin.org.edu.User.list()),'optionKey':("id"),'required':(""),'value':(transactionInstance?.spentperson?.id),'class':("many-to-one")],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1411667924782L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
