<%@ page import="com.enhyq.pp1.project4.dao.MemberDAO" %>
<%@ page import="java.lang.reflect.Member" %>
<%@ page import="com.enhyq.pp1.project4.common.FileUpload" %><%--
  Created by IntelliJ IDEA.
  User: enhyq
  Date: 2022/11/19
  Time: 18:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String sid = request.getParameter("sid");
    if(sid != "") {
        int id = Integer.parseInt(sid);
        MemberDAO memberDAO = new MemberDAO();
        // 업로드한 photo 파일 삭제
        String filename = memberDAO.getPhotoFilename(id);
        if (filename != null) {
            FileUpload.deleteFile(request, filename);
        }
        // 회원정보 삭제
        memberDAO.deleteMember(id);
    }
    response.sendRedirect("list.jsp");
%>
