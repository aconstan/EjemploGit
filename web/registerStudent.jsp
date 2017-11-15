<%-- 
    Document   : RegisterStudent
    Created on : Nov 14, 2017, 5:12:34 PM
    Author     : admin
--%>

<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Exam 2</title>
        <script src="js/jquery.js"></script>
        <script src="js/scholarship.js"></script>
    </head>
    <body>
        <jsp:include page = "header.jsp" flush = "true" /> 
        <hr>
        <jsp:include page = "nav.jsp" flush = "true" /> 
        <hr>
        <p>Please add the following data. <br>
           Press submit button to continue.</p>
        <form action="StudentServlet" method="Get">
            <label for="id">Id:</label>
            <input type="text" name="id" required><br>
            <label for="name">Name:</label>
            <input type="text" name="name" required><br>
            <label for="scholarship">Scholarship:</label><br>
            <input type="radio" name="scholarship" id="scholarship" value="yes"/>Yes<br>
            <input type="radio" name="scholarship" id="scholarship" value="no" checked>No<br>
            <section id="scholarshipSection">
                <p id="scholarshipTypes"></p>
                <label for="scholarshipType">Scholarship Type:</label><br>
                <select id="scholarshipType" name="scholarshipType" required>
                        <option selected>Excellence</option>
                        <option>Academic</option>
                        <option>Sports</option>
                        <option>Tomorrow Leaders</option>
                </select> <br>
            </section>
            <input type="hidden" name="opcion" value="1">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
