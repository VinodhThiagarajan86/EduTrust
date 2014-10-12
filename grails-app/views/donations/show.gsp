
<%@ page import="byvin.org.edu.Donations" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'donations.label', default: 'Donations')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-donations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-donations" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list donations">
			
				<g:if test="${donationsInstance?.donamount}">
				<li class="fieldcontain">
					<span id="donamount-label" class="property-label"><g:message code="donations.donamount.label" default="Donamount" /></span>
					
						<span class="property-value" aria-labelledby="donamount-label"><g:fieldValue bean="${donationsInstance}" field="donamount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationsInstance?.dondate}">
				<li class="fieldcontain">
					<span id="dondate-label" class="property-label"><g:message code="donations.dondate.label" default="Dondate" /></span>
					
						<span class="property-value" aria-labelledby="dondate-label"><g:formatDate date="${donationsInstance?.dondate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationsInstance?.donfor}">
				<li class="fieldcontain">
					<span id="donfor-label" class="property-label"><g:message code="donations.donfor.label" default="Donfor" /></span>
					
						<span class="property-value" aria-labelledby="donfor-label"><g:fieldValue bean="${donationsInstance}" field="donfor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${donationsInstance?.donby}">
				<li class="fieldcontain">
					<span id="donby-label" class="property-label"><g:message code="donations.donby.label" default="Donby" /></span>
					
						<span class="property-value" aria-labelledby="donby-label"><g:link controller="user" action="show" id="${donationsInstance?.donby?.id}">${donationsInstance?.donby?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:donationsInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${donationsInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
