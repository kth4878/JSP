<%@ page contentType="text/html;charset=EUC-KR" language="java" pageEncoding="EUC-KR" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html"; charset="EUC-KR">
    <title>JSP 예제 request2</title>
</head>
<body>

<h2> 학생 정보 입력</h2>

<form method="psot" action="request2.jsp">

    학번 : <input type="test" name="studentNum"><p>
    전공 : <select multiple name="major">
    <option selected value="전산과">전산과</option>
    <option value="국문과">국문과</option>
    <option value="기계과">기계과</option>
    <option value="자유전공과">자유전공과</option>
    <option value="경영학과">경영학과</option>
</select><p>

    <input type="submit" value="보내기">

</form>


</body>
</html>
