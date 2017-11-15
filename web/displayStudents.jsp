<%-- 
    Document   : displayStudents
    Created on : Nov 15, 2017, 6:02:42 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" /> 
        <hr>
        <jsp:include page = "nav.jsp" flush = "true" /> 
         <h3>Students information</h3>
        <table border="1">
            <caption><h2>Students List</h2></caption>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Scholarship</th>
                <th>Type</th>
            </tr>
             <c:forEach var="student" items="${studentList}" >                                      
                   <tr>
                      <td>${student.id}</td>    
                      <td>${student.name}</td>  
                      <td>${student.scholarship}</td>  
                      <td>${student.type}</td>
                   </tr>
               </c:forEach>      
        </table>
        <form action="index.jsp" method="post">
            <input type="submit" value="Return">
        </form>
    </body>
</html>
