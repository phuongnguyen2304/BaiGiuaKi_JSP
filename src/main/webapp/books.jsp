<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="Bai4.Book" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 4:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Sách Thư Viện</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Book> bookList = new ArrayList<>();
    bookList.add(new Book("Java Programming", "James Gosling", "Programming", 1996));
    bookList.add(new Book("Trốn Lên Mái Nhà Để Khóc", "Lam", "Tâm trạng", 2022));
    bookList.add(new Book("Clean Code", "Robert C. Martin", "Programming", 2008));
    bookList.add(new Book("Đừng Cố Giả Vờ Ổn", "Dae - Ho Choi", "Tâm trạng", 2023));
    request.setAttribute("books", bookList);
%>
<h2>Danh Sách Sách Thư Viện</h2>
<table border="1">
    <tr>
        <th>Tên Sách</th>
        <th>Tác Giả</th>
        <th>Thể Loại</th>
        <th>Năm Xuất Bản</th>
    </tr>
    <c:forEach var="book" items="${books}">
        <tr>
            <td>${book.name}</td>
            <td>${book.author}</td>
            <td>${book.genre}</td>
            <td>${book.year}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
