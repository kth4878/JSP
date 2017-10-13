<%@ page contentType="text/html;charset=EUC-KR" language="java" %>
<html>
<head>
    <meta http-equiv=Content-Type" content="text/html; charset=EUC-KR">
    <title>JSP예제 sendredirect.jsp</title>
</head>
<body>

<%
    String URL = "http://search.naver.com/search.naver?where=nexearch";
    String keyword = request.getParameter("word");
    URL += "&" + "query=" + keyword;
    response.sendRedirect(URL);
%>

</body>
</html>
