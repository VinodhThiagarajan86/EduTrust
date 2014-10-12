<%@ page import="byvin.org.edu.Transaction" %>



<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'amtspent', 'error')} required">
	<label for="amtspent">
		<g:message code="transaction.amtspent.label" default="Amtspent" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amtspent" value="${fieldValue(bean: transactionInstance, field: 'amtspent')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'purpose', 'error')} required">
	<label for="purpose">
		<g:message code="transaction.purpose.label" default="Purpose" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="purpose" required="" value="${transactionInstance?.purpose}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'spentdate', 'error')} required">
	<label for="spentdate">
		<g:message code="transaction.spentdate.label" default="Spentdate" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="spentdate" precision="day"  value="${transactionInstance?.spentdate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: transactionInstance, field: 'spentperson', 'error')} required">
	<label for="spentperson">
		<g:message code="transaction.spentperson.label" default="Spentperson" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="spentperson" name="spentperson.id" from="${byvin.org.edu.User.list()}" optionKey="id" required="" value="${transactionInstance?.spentperson?.id}" class="many-to-one"/>

</div>

