
<%@ page import="com.taskin.auth.Project" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="user"/>
		<meta name="menu" content="Projects"/>
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="list-project" class="content scaffold-list" role="main">
		    
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />						
					
						<g:sortableColumn property="active" title="${message(code: 'project.active.label', default: 'Active')}" />
					
						<g:sortableColumn property="createdBy" title="${message(code: 'project.createdBy.label', default: 'Created By')}" />
						
						<g:sortableColumn property="dateCreated" title="${message(code: 'project.dateCreated.label', default: 'Date Created')}" />
						
						<g:sortableColumn property="updatedBy" title="${message(code: 'project.updatedBy.label', default: 'Updated By')}" />
						
					    <g:sortableColumn property="lastUpdated" title="${message(code: 'project.lastUpdated.label', default: 'Last Updated')}" />											
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="edit" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "name")}</g:link></td>
					
						<td><g:formatBoolean boolean="${projectInstance.active}" /></td>
					
						<td>${fieldValue(bean: projectInstance, field: "createdBy")}</td>
						
						<td><g:formatDate date="${projectInstance.dateCreated}" /></td>
						
						<td>${fieldValue(bean: projectInstance, field: "updatedBy")}</td>
					
						<td><g:formatDate date="${projectInstance.lastUpdated}" /></td>
						
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
