<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib tagdir="/WEB-INF/tags/template" prefix="template" %>
<template:admin>
<jsp:attribute name="extraStyles">
	<link rel="stylesheet" href="<c:url value='/assets/css/pagination/jqpagination.css'/>" />
</jsp:attribute>
<jsp:attribute name="extraScripts">
	<script src="<c:url value='/assets/js/jquery.jqpagination.js'/>"></script>
</jsp:attribute>
<jsp:body>
  <div>
    <div class ="container min-container">
      <h2 class="basic-title">List Category</h2>
        <div class="well">
          <table class="table table-condensed table-bordered table-striped table-hover">
          		  <thead>
	                  <tr>
	                  	<td>Code</td>
		                <td>Name</td>
		                <td>Description</td>
						<td>Actions</td>
	                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items='${paginatedList.currentList}' var='object'>         		
	             	<tr>
						<td>
							<a href="<c:url value='/category'/>/${object.id}">
								${object.id}
							</a>
						</td>
		                <td>${object.name}</td>
		                <td>${object.description}</td>
	                   	<td>
	                   		<a href="<c:url value='/category/remove'/>/${object.id}">
	                   			Remove
	                   		</a>
	                   	</td>
					  </tr>
                  </c:forEach>
                  </tbody>
          </table>
		  <template:paginationComponent paginatedList="${paginatedList}" page="${param.page}" action="/category"/>
          <a href="<c:url value='/category/form'/>" class="btn btn-success">
          	<span class="glyphicon glyphicon-plus-sign"></span> 
          	New Category
          </a>
        </div>
    </div>
  </div>
</jsp:body>
</template:admin>
