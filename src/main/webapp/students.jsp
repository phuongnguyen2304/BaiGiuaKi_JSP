<%@ page import="java.util.List" %>
<%@ page import="Bai3.Student" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 3:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Sinh Viên </title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<%!

%><%
    List<Student> studentList = new ArrayList<>();
    studentList.add(new Student("Nguyên Phương","SV023",6.9,"Đậu"));
    studentList.add(new Student("Ngọc Thơm","SV021",8.5,"Đậu"));
    studentList.add(new Student("Duy","SV022",4.0,"Rớt"));
    studentList.add(new Student("Văn Dân","SV025",8.0,"Đậu"));
    studentList.add(new Student("Chí Nhân","SV027",9.0,"Đậu"));
    request.setAttribute("students", studentList);


%>
<h2>Danh Sách Sinh Viên </h2>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Mã Số Sinh Viên</th>
        <th>Điểm Trung Bình</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="student" items="${students}">
        <tr>
            <td>${student.name}</td>
            <td>${student.studentID}</td>
            <td>${student.averageScore}</td>
            <td>${student.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
