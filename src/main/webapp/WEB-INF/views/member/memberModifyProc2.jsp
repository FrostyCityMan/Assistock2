<%--
  Created by IntelliJ IDEA.
  User: ITWILL
  Date: 2022-10-11
  Time: 오후 2:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp" %>
<%@ include file="../header.jsp" %>
<%-- 본문시작 template.jsp--%>
<%
    String id = request.getParameter("id");
    String passwd = request.getParameter("passwd").trim();
    String email = request.getParameter("email").trim();
    String tel = request.getParameter("tel").trim();
    String zipcode = request.getParameter("zipcode").trim();
    String address1 = request.getParameter("address1").trim();
    String address2 = request.getParameter("address2").trim();
    String job = request.getParameter("job").trim();

    dto.setId(id);
    dto.setPasswd(passwd);
    dto.setEmail(email);
    dto.setTel(tel);
    dto.setZipcode(zipcode);
    dto.setJob(job);
    dto.setAddress1(address1);
    dto.setAddress2(address2);

    int cnt = dao.update(dto);
    if (cnt == 0) {
        out.println("수정이 실패했습니다.");
        out.println("<p><a href='javascript:history.back()'>[다시시도]</a></p>");
    } else {
        out.println("<script>");
        out.println("alert('게시글이 수정되었습니다.')");
        out.println("location.href='loginForm.jsp';");
        out.println("</script>");
    }//end if

%>
<%-- 본문끝--%>
<%@ include file="../footer.jsp" %>
