<%@ page import="byvin.org.edu.User" %>



<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'firstname', 'error')} required">
	<label for="firstname">
		<g:message code="user.firstname.label" default="Firstname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstname" required="" value="${userInstance?.firstname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'middlename', 'error')} ">
	<label for="middlename">
		<g:message code="user.middlename.label" default="Middlename" />
		
	</label>
	<g:textField name="middlename" value="${userInstance?.middlename}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'lastname', 'error')} required">
	<label for="lastname">
		<g:message code="user.lastname.label" default="Lastname" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastname" required="" value="${userInstance?.lastname}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'phonenumber', 'error')} required">
	<label for="phonenumber">
		<g:message code="user.phonenumber.label" default="Phonenumber" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="phonenumber" value="${fieldValue(bean: userInstance, field: 'phonenumber')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'emailid', 'error')} required">
	<label for="emailid">
		<g:message code="user.emailid.label" default="Emailid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="emailid" required="" value="${userInstance?.emailid}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="user.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${userInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'donations', 'error')} ">
	<label for="donations">
		<g:message code="user.donations.label" default="Donations" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.donations?}" var="d">
    <li><g:link controller="donations" action="show" id="${d.id}">${d?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="donations" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'donations.label', default: 'Donations')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'transaction', 'error')} ">
	<label for="transaction">
		<g:message code="user.transaction.label" default="Transaction" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${userInstance?.transaction?}" var="t">
    <li><g:link controller="transaction" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="transaction" action="create" params="['user.id': userInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'transaction.label', default: 'Transaction')])}</g:link>
</li>
</ul>


</div>

