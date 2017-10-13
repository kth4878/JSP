<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv=Content-Type" content="text/html; charset=EUC-KR">
    <title>JSP예제 out.jsp</title>
</head>
<body>
    <%@ page autoFlush="false" buffer="1kb" %>
    <h2>현재 autoFlush = <%=out.isAutoFlush()%></h2><p>

    <%
            for(int i=1; i<25; i++){
                out.println("남은 출력 버퍼 크기(out.getRemaining()) : " + out.getRemaining() + "<br>");
                    //autoFlush가 false이면 알아서 버퍼를 출력해야 한다.
                    if (out.getRemaining() < 50){
                        out.println("<br>");
                        out.flush();
                    }
            }
    %>

<hr>

    초기 출력 버퍼 크기 : <%=out.getBufferSize()%> byte<br>
    남은 출력 버퍼 크기 : <%=out.getRemaining()%> byte


</body>
</html>
