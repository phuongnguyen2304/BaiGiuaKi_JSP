<%@ page import="java.util.List" %>
<%@ page import="Bai13.Vote" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/5/2024
  Time: 10:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Bình Chọn</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Vote> voteList = new ArrayList<>();
    voteList.add(new Vote("Bạn thích mùa nào nhất?", new String[]{"Xuân", "Hạ", "Thu", "Đông"}, new int[]{150, 200, 100, 50}));
    voteList.add(new Vote("Bạn thích món ăn nào nhất?", new String[]{"Phở", "Bún Chả", "Bánh Mì", "Nem"}, new int[]{300, 150, 200, 100}));
    request.setAttribute("votes",voteList);
%>
<h2>Danh Sách Bình Chọn</h2>
<table border="1">
    <tr>
        <th>Câu Hỏi</th>
        <th>Các Lựa Chọn</th>
        <th>Tổng Số Lượt Bình Chọn</th>
    </tr>
 <c:forEach var="vote" items="${votes}">
     <tr>
     <td>${vote.question}</td>
     <td>
     <ul>
     <c:forEach var="choice" items="${vote.choices}">
         <li>${choice}</li>
     </c:forEach>
     </ul>
     </td>
     <td>
     <ul>
     <c:forEach var="count" items="${vote.counts}">
         <li>${count}</li>
     </c:forEach>
     </ul>
     </td>
     </tr>
 </c:forEach>
</table>

</body>
</html>
