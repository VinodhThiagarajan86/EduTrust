
<%@ page import="byvin.org.edu.Donations" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'donations.label', default: 'Donations')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-donations" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-donations" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="donamount" title="${message(code: 'donations.donamount.label', default: 'Donamount')}" />
					
						<g:sortableColumn property="dondate" title="${message(code: 'donations.dondate.label', default: 'Dondate')}" />
					
						<g:sortableColumn property="donfor" title="${message(code: 'donations.donfor.label', default: 'Donfor')}" />
					
						<th><g:message code="donations.donby.label" default="Donby" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${donationsInstanceList}" status="i" var="donationsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${donationsInstance.id}">${fieldValue(bean: donationsInstance, field: "donamount")}</g:link></td>
					
						<td><g:formatDate date="${donationsInstance.dondate}" /></td>
					
						<td>${fieldValue(bean: donationsInstance, field: "donfor")}</td>
					
						<td>${fieldValue(bean: donationsInstance, field: "donby")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${donationsInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
