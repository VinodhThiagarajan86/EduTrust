
<%@ page import="byvin.org.edu.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="firstname" title="${message(code: 'user.firstname.label', default: 'Firstname')}" />
					
						<g:sortableColumn property="middlename" title="${message(code: 'user.middlename.label', default: 'Middlename')}" />
					
						<g:sortableColumn property="lastname" title="${message(code: 'user.lastname.label', default: 'Lastname')}" />
					
						<g:sortableColumn property="phonenumber" title="${message(code: 'user.phonenumber.label', default: 'Phonenumber')}" />
					
						<g:sortableColumn property="emailid" title="${message(code: 'user.emailid.label', default: 'Emailid')}" />
					
						<g:sortableColumn property="address" title="${message(code: 'user.address.label', default: 'Address')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "firstname")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "middlename")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "lastname")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "phonenumber")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "emailid")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "address")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
