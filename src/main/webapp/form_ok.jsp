<%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/01
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String user_name = request.getParameter("user_name");
    String user_email = request.getParameter("user_email");
    String user_password = request.getParameter("user_password");
    String user_gender = request.getParameter("user_gender");
    String user_birthday = request.getParameter("user_birthday");
    String user_bio = request.getParameter("user_bio");
    String team_color = request.getParameter("team_color");
    String user_major = request.getParameter("user_major");
    String user_interest = request.getParameter("user_interest");
    String payment = request.getParameter("payment");
//    if(isHeroku != null) {
//      if(isHeroku.equals("1")) msg = "헤로쿠 좋다!!! ";
//  }
%>
<html>
<head>
    <title>Form ok</title>
</head>
<body>
<style>
    table {
        width: 400px;
    }
    table, th, td {
        border:1px solid black;
    }
</style>
<h1>Form result</h1>
<table>
    <tr><th>Field</th><th>User Input</th></tr>
    <tr><td>Name</td><td><%=user_name%></td></tr>
    <tr><td>Email</td><td><%=user_email%></td></tr>
    <tr><td>Password</td><td><%=user_password%></td></tr>
    <tr><td>Gender</td><td><%=user_gender%></td></tr>
    <tr><td>Birthday</td><td><%=user_birthday%></td></tr>
    <tr><td>Bio</td><td><%=user_bio%></td></tr>
    <tr><td>Team Color</td><td><%=team_color%></td></tr>
    <tr><td>Major</td><td><%=user_major%></td></tr>
    <tr><td>Interest</td><td><%=user_interest%></td></tr>
    <tr><td>Payment</td><td><%=payment%></td></tr>
</table>
</body>
</html>
