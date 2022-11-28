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
    String id = session.getAttribute("s_id").toString();
%>
<h3>회원정보 변경</h3>
<img src="../images/Chef-d'œuvre%20logo.png" style="width: 5%">
<h2>안녕하세요. <%out.println(id);%> 님</h2>
<p>Chef-d'œuvre에서의 회원정보 변경을 위해 고객님의 정보를 입력 부탁드립니다 .</p>
<br>
<br>
<form name="Loginfrm" id="Loginfrm" class="col-md-4" style="float: none; margin:0 auto;" action="memberModifyProc.jsp"
><!-- myscript.js -->
    <input type="hidden" name="id" value="<%=session.getAttribute("s_id")%>">
    <table class="table grid">
        <tr>
            <td style="padding: 50px 0px;">
                PW <input style="border-radius: 10px" type="password" name="passwd" id="passwd" maxlength="15" required>
            </td>
        </tr>
        <tr>
            <td style="padding: 50px 0px;">
                연락처 <input style="border-radius: 10px" type="text" name="tel" id="tel" maxlength="15"
                           placeholder="010-0000-0000" required>
            </td>
        </tr>
        <tr>
            <td rowspan="2">
                <br>
                <%--                type=image는 기본속성이 submit--%>
                <button type="submit" class="btn btn-block">다음</button>
            </td>
        </tr>
    </table>
</form>
<%-- 본문끝--%>
<%@ include file="../footer.jsp" %>
