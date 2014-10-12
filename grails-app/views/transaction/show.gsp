
<%@ page import="byvin.org.edu.Transaction" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transaction.label', default: 'Transaction')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-transaction" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-transaction" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list transaction">
			
				<g:if test="${transactionInstance?.amtspent}">
				<li class="fieldcontain">
					<span id="amtspent-label" class="property-label"><g:message code="transaction.amtspent.label" default="Amtspent" /></span>
					
						<span class="property-value" aria-labelledby="amtspent-label"><g:fieldValue bean="${transactionInstance}" field="amtspent"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionInstance?.purpose}">
				<li class="fieldcontain">
					<span id="purpose-label" class="property-label"><g:message code="transaction.purpose.label" default="Purpose" /></span>
					
						<span class="property-value" aria-labelledby="purpose-label"><g:fieldValue bean="${transactionInstance}" field="purpose"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionInstance?.spentdate}">
				<li class="fieldcontain">
					<span id="spentdate-label" class="property-label"><g:message code="transaction.spentdate.label" default="Spentdate" /></span>
					
						<span class="property-value" aria-labelledby="spentdate-label"><g:formatDate date="${transactionInstance?.spentdate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${transactionInstance?.spentperson}">
				<li class="fieldcontain">
					<span id="spentperson-label" class="property-label"><g:message code="transaction.spentperson.label" default="Spentperson" /></span>
					
						<span class="property-value" aria-labelledby="spentperson-label"><g:link controller="user" action="show" id="${transactionInstance?.spentperson?.id}">${transactionInstance?.spentperson?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:transactionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${transactionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
