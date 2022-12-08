<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2022-11-30
  Time: 오후 6:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<!-- auth.jsp -->
<!-- 로그인 상태 정보 확인 -->
<%
  String s_ID      = "";
  String s_PW = "";
  String s_Class_Member = "";
  String s_Name_Register = "";


  if(session.getAttribute("ID")==null){
    //guest login
    s_ID      = "guest";
    s_PW      = "guest";
    s_Class_Member = "guest";
    s_Name_Register = "guest";
  }else{
    //로그인 성공 했다면, 세션 변수값 가져오기
    s_ID     = (String)session.getAttribute("ID");
    s_PW = (String)session.getAttribute("PW");
    s_Class_Member = (String)session.getAttribute("Class_Member");
    s_Name_Register = (String)session.getAttribute("Name_Register");
  }//if end
%>
