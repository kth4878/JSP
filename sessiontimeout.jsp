<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv=Content-Type" content="text/html; charset=EUC-KR">
    <title>JSP 예제 sessiontimeout.jsp</title>
</head>
<body>
<%@ page import="java.util.Enumeration , java.util.Date" %>
<h1> 세션 예제 </h1>
<hr> <h2> 세션 만들기 </h2>

<%! long beforetime = new Date().getTime(); // 이전페이지 참조 시간을 저장하는 소속 변수 %>
<%
    long nowtime = new Date().getTime();
    if(session.isNew()){
        session.setAtteibute("id", session.getId());
        session.setAttribute("time", new Date(session.getId()));
        session.setMaxInactiveInterval(5);
    } else{
        session.removeAttribute("id");
    }
%>
    <hr><h2> 세션 조회 </h2>
    세션ID (유일한 식별자) : <%= session.getAttribute("id") %><br>
    세션 CreationTime : <%=session.getAttribute("time") %><br>
    세션 MaxInactiveIntrval : <%=session.getMaxInactiveInterval() %><br>
    <% long sessiontime = nowtime - session.getCreationTime(); %>
    세션이 만들어진 이후 지난 시간 : <%=sessiontime/1000 %>초

<font color=blue><hr>
    <% long inactiveinterval = nowtime - beforetime; %>
    서버에 반응을 보이지 않는 시간 : <%=inactiveinterval/1000 %>초 <br>
    위 시간이 <%=session.getMaxInactiveInterval() %> 초를 지나면
    이전 세션이 무효화되고 새로운 세션이 생성</font><br>

<% beforetime = nowtime; %>
</body>
</html>
