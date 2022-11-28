<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2022-10-19
  Time: 오전 10:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp"%>
<%@ include file="../header.jsp"%>
<%-- 본문시작 template.jsp--%>
<%
   String id =request.getParameter("id").trim();
   String passwd = request.getParameter("passwd").trim();
   String mname = request.getParameter("mname").trim();
   String email = request.getParameter("email").trim();
   String tel = request.getParameter("tel").trim();
   String address1 = request.getParameter("address1").trim();
   String address2 = request.getParameter("address2").trim();
   String zipcode = request.getParameter("zipcode").trim();
   String job = request.getParameter("job").trim();

   dto.setId(id);
   dto.setPasswd(passwd);
   dto.setMname(mname);
   dto.setEmail(email);
   dto.setTel(tel);
   dto.setAddress1(address1);
   dto.setAddress2(address2);
   dto.setZipcode(zipcode);
   dto.setJob(job);

   int cnt=dao.create(dto);
   if(cnt==0){
       out.println("<p>회원가입에 실패했습니다.</p>");
       out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");

   }else{
       out.println("<script>");
       out.println("alert('회원가입이 완료되었습니다')");
       out.println("location.href='loginForm.jsp'");
       out.println("</script>");

   }//end if

%>
<%-- 본문끝--%>
<%@ include file="../footer.jsp"%>
