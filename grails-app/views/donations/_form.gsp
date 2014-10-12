<%@ page import="byvin.org.edu.Donations" %>



<div class="fieldcontain ${hasErrors(bean: donationsInstance, field: 'donamount', 'error')} required">
	<label for="donamount">
		<g:message code="donations.donamount.label" default="Donamount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="donamount" value="${fieldValue(bean: donationsInstance, field: 'donamount')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: donationsInstance, field: 'dondate', 'error')} required">
	<label for="dondate">
		<g:message code="donations.dondate.label" default="Dondate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dondate" precision="day"  value="${donationsInstance?.dondate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: donationsInstance, field: 'donfor', 'error')} ">
	<label for="donfor">
		<g:message code="donations.donfor.label" default="Donfor" />
		
	</label>
	<g:textField name="donfor" value="${donationsInstance?.donfor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: donationsInstance, field: 'donby', 'error')} required">
	<label for="donby">
		<g:message code="donations.donby.label" default="Donby" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="donby" name="donby.id" from="${byvin.org.edu.User.list()}" optionKey="id" required="" value="${donationsInstance?.donby?.id}" class="many-to-one"/>

</div>

