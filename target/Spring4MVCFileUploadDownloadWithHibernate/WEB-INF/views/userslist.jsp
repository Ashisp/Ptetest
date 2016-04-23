<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
	
	<title>Users List</title>
	<link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet">
	<link href="<c:url value='/static/css/app.css' />" rel="stylesheet">
</head>

<body>
		
			  <!-- Default panel contents -->
		  	<div class="panel-heading"><span class="lead">List of Users </span></div>
		  	<div class="tablecontainer">
				<table class="table table-hover">
		    		<thead>
			      		<tr>
					        <th>Approve User</th>
					        <th>Edit User</th>
					        <th>Delete</th>
					        <th>SSO ID</th>
                                                  <th>First Name</th>
					        <th>Last Name</th>
					        <th>Email</th>
					        <th>SSO ID</th>
                                                  <th>First Name</th>
					        <th>Last Name</th>
					        <th>Email</th>
					        <th>SSO ID</th>
                                                  <th>First Name</th>
					        <th>Last Name</th>
					        <th>Email</th>
					        <th>SSO ID</th>
                                                
					       
						</tr>
			    	</thead>
		    		
                                
                                
                                <tbody>
					<c:forEach items="${users}" var="user">
				
                                            
                                            
                                            <tr>
					
                                                
                                                                     
                                                        <c:choose>
					<c:when test="${user.approve==0}">
                                            
                                            
                      
                                                                     
                                                                      <td><a href="<c:url value='/approve-user-${user.ssoId}' />" class="btn btn-primary custom-width">Approve</a></td>
						
					</c:when>
					<c:otherwise>
                                            
                                                
                                                                      <td><a href="<c:url value='/suspend-user-${user.ssoId}' />" class="btn btn-primary custom-width">Suspend</a></td>
                                                                    
                                                                      
						
					</c:otherwise>
				</c:choose>
                                                
                                                
                                                
                                                
							<td><a  href="<c:url  value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">Edit</a></td>
							<td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">Delete</a></td>
                                                        
                                                
                                                <td>${user.firstName}</td>
							<td>${user.lastName}</td>
							<td>${user.email}</td>
							<td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        <td>${user.ssoId}</td>
                                                        
                                   
						</tr>
					</c:forEach>
		    		</tbody>
		    	</table>
		    </div>
		
<!--	 	<div>
	 		<a href="<c:url value='/newuser' />">Add New User</a>
	 	</div>-->
   	
</body>
</html>