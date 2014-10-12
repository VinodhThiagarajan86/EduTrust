<%@ page import="byvin.org.edu.ImageList" %>



<div class="fieldcontain ${hasErrors(bean: imageListInstance, field: 'imageUrl', 'error')} required">
	<label for="imageUrl">
		<g:message code="imageList.imageUrl.label" default="Image Url" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="url" name="imageUrl" required="" value="${imageListInstance?.imageUrl}"/>

</div>

