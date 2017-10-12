<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html"; charset="EUC-KR">
    <title>JSP 예제 request3</title>
</head>
<body>

<%@ page import="java.util.Enumeration" %>
<% request.setCharacterEncoding("euc-kr"); %>

<h2> 취미와 가보고 싶은 국가 결과 </h2>
<%
    //Enumeration e = request.getParameterNames();

    Enumeration<String> e = request.getParameterNames();

    while(e.hasMoreElements()){
        //String name = (String) e.nextElement();
        String name = e.nextElement();
        String [] data = request.getParameterValues(name);
        if(data != null){
            for(String eachdata : data)
                out.println(eachdata + " ");
        }
        out.println("<p>");
    }
%>

</body>
</html>
