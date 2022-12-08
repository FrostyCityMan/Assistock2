<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2022-11-30
  Time: 오후 6:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page import="utility.Utility.*" %>



<jsp:useBean id="dto" class="dh.assistock.member.MemberDTO" scope="page"></jsp:useBean>
<jsp:useBean id="dao" class="dh.assistock.member.MemberDAO" scope="page"></jsp:useBean>


<%
  request.setCharacterEncoding("UTF-8");
%>
