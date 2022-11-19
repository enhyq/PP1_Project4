<%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/19
  Time: 18:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.enhyq.pp1.project4.dao.MemberDAO" %>
<%@ page import="com.enhyq.pp1.project4.bean.MemberVO" %>
<%
//    BoardFileUpload fileUpload = new BoardFileUpload();
//    BoardVO u = fileUpload.uploadPhoto(request);
//    BoardDAO boardDAO = new BoardDAO();
//    int i = boardDAO.inserBoard(u);
//    String msg = "데이터 추가 성공 ! ";
//    if(i == 0) msg = "[에러] 데이터 추가 ";
%>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Member</title>
</head>
<body>
    <h1 class="text-center">Add Member</h1>
    <form class="w-50 m-auto" action="add_ok.jsp" method="post" enctype="multipart/form-data">
        <div class="mb-3 row">
            <label for="photo" class="col-sm-2 col-form-label">Image</label>
            <div class="col-sm-10">
                <input class="form-control" type="file" id="photo" name="photo">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="userid" class="col-sm-2 col-form-label">UserID</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="userid" name="userid">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="username" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="username" name="username">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="password" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="password" name="password">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="email" class="form-control" id="email" name="email" placeholder="email@example.com">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="blogurl" class="col-sm-2 col-form-label">BlogURL</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="blogurl" name="blogurl" placeholder="">
            </div>
        </div>
        <div class="mb-3 row">
            <label for="detail" class="col-sm-2 col-form-label">Detail</label>
            <div class="col-sm-10">
                <textarea class="form-control" id="detail" name="detail" rows="3"></textarea>
            </div>
        </div>
        <div class="text-center">
            <button type="button" onclick="location.href='list.jsp'" class="btn btn-secondary">Back to List</button>
            <button type="submit" class="btn btn-primary">Add</button>
        </div>
    </form>
</body>
</html>
