
<%@ page import="byvin.org.edu.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.firstname}">
				<li class="fieldcontain">
					<span id="firstname-label" class="property-label"><g:message code="user.firstname.label" default="Firstname" /></span>
					
						<span class="property-value" aria-labelledby="firstname-label"><g:fieldValue bean="${userInstance}" field="firstname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.middlename}">
				<li class="fieldcontain">
					<span id="middlename-label" class="property-label"><g:message code="user.middlename.label" default="Middlename" /></span>
					
						<span class="property-value" aria-labelledby="middlename-label"><g:fieldValue bean="${userInstance}" field="middlename"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.lastname}">
				<li class="fieldcontain">
					<span id="lastname-label" class="property-label"><g:message code="user.lastname.label" default="Lastname" /></span>
					
						<span class="property-value" aria-labelledby="lastname-label"><g:fieldValue bean="${userInstance}" field="lastname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.phonenumber}">
				<li class="fieldcontain">
					<span id="phonenumber-label" class="property-label"><g:message code="user.phonenumber.label" default="Phonenumber" /></span>
					
						<span class="property-value" aria-labelledby="phonenumber-label"><g:fieldValue bean="${userInstance}" field="phonenumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.emailid}">
				<li class="fieldcontain">
					<span id="emailid-label" class="property-label"><g:message code="user.emailid.label" default="Emailid" /></span>
					
						<span class="property-value" aria-labelledby="emailid-label"><g:fieldValue bean="${userInstance}" field="emailid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="user.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${userInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.donations}">
				<li class="fieldcontain">
					<span id="donations-label" class="property-label"><g:message code="user.donations.label" default="Donations" /></span>
					
						<g:each in="${userInstance.donations}" var="d">
						<span class="property-value" aria-labelledby="donations-label"><g:link controller="donations" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.transaction}">
				<li class="fieldcontain">
					<span id="transaction-label" class="property-label"><g:message code="user.transaction.label" default="Transaction" /></span>
					
						<g:each in="${userInstance.transaction}" var="t">
						<span class="property-value" aria-labelledby="transaction-label"><g:link controller="transaction" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
