<%-- 
    Document   : scholarshipStudents
    Created on : Nov 15, 2017, 4:53:59 AM
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
        <hr><h3>Student registered</h3>
        <p>Here is the information that you entered:<br>
            <label>Id:</label>${student.id}<br>
            <label>Name:</label>${student.name}<br>
            <label>Scholarship:</label>${student.scholarship}<br
            <label>Type:</label>${student.type}<br>
        <p>
    </body>
</html>
