<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv=Content-Type" content="text/html; charset=EUC-KR">
    <title>JSP 예제 application.jsp</title>
</head>
<body>

<%! int count =0; %>

<%
    String scount=(String) application.getAttribute("count");

    if(scount != null){
        count = Integer.parseInt(scount);
    } else {
        count = 0;
    }

    application.setAttribute("count", Integer.toString(++count));
    application.log("현재까지의 조회 수 : " + count);
%>

    서버 컨테이터 정보 : <%=application.getServerInfo() %><p>
    현재까지 조회 수 : <%=count %>


</body>
</html>
