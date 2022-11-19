<%@ page import="com.enhyq.pp1.project4.dao.MemberDAO" %>
<%@ page import="com.enhyq.pp1.project4.common.FileUpload" %>
<%@ page import="com.enhyq.pp1.project4.bean.MemberVO" %><%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/19
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    MemberDAO memberDAO = new MemberDAO();
    FileUpload upload = new FileUpload();
    MemberVO u = upload.uploadPhoto(request);

    int i = memberDAO.updateMember(u);
    String msg = "데이터 수정 성공 !";
    if(i == 0) msg = "[에러] 데이터 수정 실패 !";
%>

<script>
    alert('<%=msg%>');
    location.href='list.jsp';
</script>