<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv=Content-Type" content="text/html; charset=EUC-KR">
    <title>JSP 예제 error.jsp</title>
</head>
<body>

<%@ page isErrorPage="true" %>
<h1> 예외처리 페이지</h1>

    오류 문자열[exception.toString()] : <%=exception.toString()%> <br>
    오류 메세지[exception.getMessage()] : <%=exception.getMessage()%> <br>

</body>
</html>
