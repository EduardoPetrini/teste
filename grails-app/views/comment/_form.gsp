<%@ page import="teste.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'comment', 'error')} required">
	<label for="comment">
		<g:message code="comment.comment.label" default="Comment" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="comment" cols="40" rows="5" maxlength="500" required="" value="${commentInstance?.comment}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'user', 'error')} ">
	<label for="user">
		<g:message code="comment.user.label" default="User" />
		
	</label>
	<g:select id="user" name="user.id" from="${teste.User.list()}" optionKey="id" value="${commentInstance?.user?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'feedback', 'error')} required">
	<label for="feedback">
		<g:message code="comment.feedback.label" default="Feedback" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="feedback" name="feedback.id" from="${teste.Feedback.list()}" optionKey="id" required="" value="${commentInstance?.feedback?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'lastUpdate', 'error')} required">
	<label for="lastUpdate">
		<g:message code="comment.lastUpdate.label" default="Last Update" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastUpdate" precision="day"  value="${commentInstance?.lastUpdate}"  />
</div>

