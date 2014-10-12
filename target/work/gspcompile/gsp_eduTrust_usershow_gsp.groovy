import byvin.org.edu.User
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_eduTrust_usershow_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/user/show.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(2)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("layout"),'content':("main")],-1)
printHtmlPart(2)
invokeTag('set','g',7,['var':("entityName"),'value':(message(code: 'user.label', default: 'User'))],-1)
printHtmlPart(2)
createTagBody(2, {->
createTagBody(3, {->
invokeTag('message','g',8,['code':("default.show.label"),'args':([entityName])],-1)
})
invokeTag('captureTitle','sitemesh',8,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',8,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',9,[:],1)
printHtmlPart(3)
createTagBody(1, {->
printHtmlPart(4)
invokeTag('message','g',11,['code':("default.link.skip.label"),'default':("Skip to content&hellip;")],-1)
printHtmlPart(5)
expressionOut.print(createLink(uri: '/'))
printHtmlPart(6)
invokeTag('message','g',14,['code':("default.home.label")],-1)
printHtmlPart(7)
createTagBody(2, {->
invokeTag('message','g',15,['code':("default.list.label"),'args':([entityName])],-1)
})
invokeTag('link','g',15,['class':("list"),'action':("index")],2)
printHtmlPart(8)
createTagBody(2, {->
invokeTag('message','g',16,['code':("default.new.label"),'args':([entityName])],-1)
})
invokeTag('link','g',16,['class':("create"),'action':("create")],2)
printHtmlPart(9)
invokeTag('message','g',20,['code':("default.show.label"),'args':([entityName])],-1)
printHtmlPart(10)
if(true && (flash.message)) {
printHtmlPart(11)
expressionOut.print(flash.message)
printHtmlPart(12)
}
printHtmlPart(13)
if(true && (userInstance?.firstname)) {
printHtmlPart(14)
invokeTag('message','g',28,['code':("user.firstname.label"),'default':("Firstname")],-1)
printHtmlPart(15)
invokeTag('fieldValue','g',30,['bean':(userInstance),'field':("firstname")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.middlename)) {
printHtmlPart(18)
invokeTag('message','g',37,['code':("user.middlename.label"),'default':("Middlename")],-1)
printHtmlPart(19)
invokeTag('fieldValue','g',39,['bean':(userInstance),'field':("middlename")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.lastname)) {
printHtmlPart(20)
invokeTag('message','g',46,['code':("user.lastname.label"),'default':("Lastname")],-1)
printHtmlPart(21)
invokeTag('fieldValue','g',48,['bean':(userInstance),'field':("lastname")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.phonenumber)) {
printHtmlPart(22)
invokeTag('message','g',55,['code':("user.phonenumber.label"),'default':("Phonenumber")],-1)
printHtmlPart(23)
invokeTag('fieldValue','g',57,['bean':(userInstance),'field':("phonenumber")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.emailid)) {
printHtmlPart(24)
invokeTag('message','g',64,['code':("user.emailid.label"),'default':("Emailid")],-1)
printHtmlPart(25)
invokeTag('fieldValue','g',66,['bean':(userInstance),'field':("emailid")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.address)) {
printHtmlPart(26)
invokeTag('message','g',73,['code':("user.address.label"),'default':("Address")],-1)
printHtmlPart(27)
invokeTag('fieldValue','g',75,['bean':(userInstance),'field':("address")],-1)
printHtmlPart(16)
}
printHtmlPart(17)
if(true && (userInstance?.donations)) {
printHtmlPart(28)
invokeTag('message','g',82,['code':("user.donations.label"),'default':("Donations")],-1)
printHtmlPart(29)
for( d in (userInstance.donations) ) {
printHtmlPart(30)
createTagBody(4, {->
expressionOut.print(d?.encodeAsHTML())
})
invokeTag('link','g',85,['controller':("donations"),'action':("show"),'id':(d.id)],4)
printHtmlPart(31)
}
printHtmlPart(32)
}
printHtmlPart(17)
if(true && (userInstance?.transaction)) {
printHtmlPart(33)
invokeTag('message','g',93,['code':("user.transaction.label"),'default':("Transaction")],-1)
printHtmlPart(29)
for( t in (userInstance.transaction) ) {
printHtmlPart(34)
createTagBody(4, {->
expressionOut.print(t?.encodeAsHTML())
})
invokeTag('link','g',96,['controller':("transaction"),'action':("show"),'id':(t.id)],4)
printHtmlPart(31)
}
printHtmlPart(32)
}
printHtmlPart(35)
createTagBody(2, {->
printHtmlPart(36)
createTagBody(3, {->
invokeTag('message','g',105,['code':("default.button.edit.label"),'default':("Edit")],-1)
})
invokeTag('link','g',105,['class':("edit"),'action':("edit"),'resource':(userInstance)],3)
printHtmlPart(37)
invokeTag('actionSubmit','g',106,['class':("delete"),'action':("delete"),'value':(message(code: 'default.button.delete.label', default: 'Delete')),'onclick':("return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');")],-1)
printHtmlPart(38)
})
invokeTag('form','g',108,['url':([resource:userInstance, action:'delete']),'method':("DELETE")],2)
printHtmlPart(39)
})
invokeTag('captureBody','sitemesh',110,[:],1)
printHtmlPart(40)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1411667929041L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
