<%--
  Created by IntelliJ IDEA.
  User: mehir
  Date: 12/20/2020
  Time: 9:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Result</title>
</head>
<body>
    <div align="center">
        <h1> Result is:</h1>
        <h3> My name is <%= request.getAttribute("taskDescr") %> </h3>
        <% String val = request.getParameter("task_descr"); %>
        <h2>The task entered was : </h2><%=val%>

        <% String val2 = request.getParameter("accuracy_spec"); %>
        <h2>The accuracy entered was : </h2><%=val2%>

        <h3>The query is present ? <%=  request.getAttribute("askvalue")  %> </h3>

        <h3>The main result is <%=  request.getAttribute("resultvalue") %></h3>
        <h3>The main result2 is <%=  request.getAttribute("resultvalue") %></h3>

    </div>
</body>
</html>
