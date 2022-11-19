<%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/19
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.enhyq.pp1.project4.dao.MemberDAO" %>
<%@ page import="com.enhyq.pp1.project4.bean.MemberVO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    String sid = request.getParameter("sid");
    // use this sid to fetch user information from DB
    MemberDAO memberDAO = new MemberDAO();
    MemberVO member = null;
    try{
        member = memberDAO.getOne(Integer.parseInt(sid));
        request.setAttribute("vo", member);
    } catch (NumberFormatException nfe) {
        member = new MemberVO();
        member.putDummyData();
    }

    request.setAttribute("vo", member);
%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Member View</title>
</head>
<body>
    <h1 class="text-center">Member View</h1>
    <form class="w-50 m-auto">
        <div class="text-center">
            <c:if test="${vo.getPhoto() ne ''}">
                <img src="${pageContext.request.contextPath}/upload/${vo.getPhoto()}" class="rounded" width="200" >
            </c:if>
        </div>
        <div class="mb-3 row">
            <label for="inputUserID" class="col-sm-2 col-form-label">UserID</label>
            <div class="col-sm-10">
                <input type="text" readonly class="form-control-plaintext" id="inputUserID" value="<%=member.getUserid()%>">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputUsername" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-10">
                <input type="text" readonly class="form-control-plaintext" id="inputUsername" value="<%=member.getUsername()%>">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputPassword" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" readonly class="form-control-plaintext" id="inputPassword" value="<%=member.getPassword()%>">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputEmail" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="email" readonly class="form-control-plaintext" id="inputEmail" value="<%=member.getEmail()%>">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="email" class="col-sm-2 col-form-label">BlogURL</label>
            <div class="col-sm-10">
                <input type="email" readonly class="form-control-plaintext" id="email" value="<%=member.getBlogurl()%>">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="inputDetail" class="col-sm-2 col-form-label">Detail</label>
            <div class="col-sm-10">
                <textarea readonly class="form-control-plaintext" id="inputDetail" rows="3"><%=member.getDetail()%></textarea>
            </div>
        </div>
        <div class="text-center">
            <button type="button" onclick="location.href='list.jsp'" class="btn btn-secondary">Back to List</button>
            <button type="button" onclick="location.href='editform.jsp?sid=<%=member.getSid()%>'" class="btn btn-primary">Edit</button>
        </div>
    </form>
</body>
</html>
