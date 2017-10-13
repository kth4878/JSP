<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv=Content-Type" content="text/html; charset=EUC-KR">
    <title>JSP 예제 pagecontext.jsp</title>
</head>
<body>

<h2> pageContext 예제</h2>

<%pageContext.getOut().println("include.jsp을 추가"); %>
<hr>
<% pageContext.include("include.jsp"); %>

</body>
</html>

-------------------------include.jsp----------------------------

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv=Content-Type" content="text/html; charset=EUC-KR">
    <title>include.jsp</title>
</head>
<body>

<font color="blue">
    다른 파일을 삽입하는 include(), 제어권을 넘기는 forward() 메소드 제공
</font>

</body>
</html>
