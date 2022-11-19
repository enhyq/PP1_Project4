<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/18
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.enhyq.pp1.project4.dao.MemberDAO" %>
<%@ page import="com.enhyq.pp1.project4.bean.MemberVO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Member List</title>
</head>
<body>
<h1 class="text-center">Members</h1>
<%
  MemberDAO memberDAO = new MemberDAO();
//  MemberVO memberData = new MemberVO("a", "b", "c", "d", "e", "d", "f");
//  memberDAO.inserMember(memberData);

  ArrayList<MemberVO> members = memberDAO.getList();
//  members.sort(Collections.reverseOrder());
%>
  <div class="table-responsive">
    <table class="table table-striped table-bordered table-hover align-middle text-center w-auto mx-auto">
      <thead class="table-dark">
        <tr class="align-middle">
          <th scope="col"> sid </th>
          <th scope="col"> Userid </th>
          <th scope="col"> Username </th>
          <th scope="col"> Photo </th>
          <th scope="col"> Email </th>
          <th scope="col"> Detail </th>
          <th scope="col"> Registered Date </th>
          <th scope="col"> <button type="button" onclick="location.href='addform.jsp'" class="btn btn-success">Add</button> </th>
        </tr>
      </thead>
      <%
        for( MemberVO member : members ){
      %>
      <tr>
        <td><%= member.getSid() %></td>
        <td><%= member.getUserid() %></td>
        <td><%= member.getUsername() %></td>
        <td><%= member.getPhoto() %></td>
        <td><%= member.getEmail() %></td>
        <td><%= member.getDetail() %></td>
        <td><%= member.getRegdate() %></td>
        <td>
          <button type="button" onclick="location.href='view.jsp?sid=<%=member.getSid()%>'" class="btn btn-warning">View</button>
          <button type="button" onclick="location.href='editform.jsp?sid=<%=member.getSid()%>'" class="btn btn-primary">Edit</button>
          <button type="button" onclick="location.href='delete_ok.jsp?sid=<%=member.getSid()%>'" class="btn btn-danger">Delete</button>
        </td>
      </tr>
      <% } %>
    </table>
  </div>
</body>
</html>
