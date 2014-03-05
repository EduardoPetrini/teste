<%@ page import="teste.Feedback" %>



<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="feedback.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" maxlength="80" required="" value="${feedbackInstance?.title}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'feedback', 'error')} required">
	<label for="feedback">
		<g:message code="feedback.feedback.label" default="Feedback" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="feedback" cols="40" rows="5" maxlength="500" required="" value="${feedbackInstance?.feedback}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'user', 'error')} required">
	<label for="user">
		<g:message code="feedback.user.label" default="User" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="user" name="user.id" from="${teste.User.list()}" optionKey="id" required="" value="${feedbackInstance?.user?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'comments', 'error')} ">
	<label for="comments">
		<g:message code="feedback.comments.label" default="Comments" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${feedbackInstance?.comments?}" var="c">
    <li><g:link controller="comment" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="comment" action="create" params="['feedback.id': feedbackInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'comment.label', default: 'Comment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'dateCreate', 'error')} required">
	<label for="dateCreate">
		<g:message code="feedback.dateCreate.label" default="Date Create" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateCreate" precision="day"  value="${feedbackInstance?.dateCreate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: feedbackInstance, field: 'lastUpdate', 'error')} required">
	<label for="lastUpdate">
		<g:message code="feedback.lastUpdate.label" default="Last Update" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="lastUpdate" precision="day"  value="${feedbackInstance?.lastUpdate}"  />
</div>

