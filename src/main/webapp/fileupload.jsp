<%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/19
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="com.enhyq.pp1.project4.common.*, java.io.File" %>
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String filename = "";
    int sizeLimit = 15*1024*1024; // 15MB

    String realPath = request.getServletContext().getRealPath("upload");

    File dir = new File(realPath);
    if(!dir.exists()) dir.mkdirs();

    MultipartRequest multipartRequest = new MultipartRequest(request, realPath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());

    filename = multipartRequest.getFilesystemName("photo");
%>
폼에서 전송된 원래 파일명 : <%=multipartRequest.getOriginalFileName("photo")%>
<br>
엄로드한 파일의 경로 : ${pageContext.request.contextPath}/upload/<%=filename%>
<br>
물리적인 저장 경로 : <%=realPath%>
<br>
<img src="${pageContext.request.contextPath}/upload/<%=filename%>">
파일명 : <%=filename%>
<br>
</body>
</html>
