<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%--ssi.jsp 공통코드--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

<%@ page import="net.utility.*" %>
<%@ page import="net.bbs.BbsDAO" %>
<%@ page import="net.bbs.BbsDTO" %>


<jsp:useBean id="dto" class="net.member.MemberDTO" scope="page"></jsp:useBean>
<jsp:useBean id="dao" class="net.member.MemberDAO" scope="page"></jsp:useBean>


<%
    request.setCharacterEncoding("UTF-8");
%>
