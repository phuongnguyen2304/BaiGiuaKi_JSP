<%@ page import="java.util.List" %>
<%@ page import="Bai10.Course" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/5/2024
  Time: 8:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Khoá Học</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Course> courseList = new ArrayList<>();
    courseList.add(new Course("Cơ Sở Dữ Liệu Nâng Cao","Lê Hồng Duy",48,3000000));
    courseList.add(new Course("Lập Trình Phân Tán","Cấn Tuấn Anh",50,3000000));
    courseList.add(new Course("Tiếng Anh Giao Tiếp","Hồng Nhung",60,4000000));
    courseList.add(new Course("Phát Triển Ứng Dụng Web","Cấn Tuấn Anh",40,3000000));
    courseList.add(new Course("Cơ Sở Dữ Liệu","Phí Tú",45,3000000));
    request.setAttribute("courses",courseList);
%>
<h2>Danh Sách Khóa Học</h2>
<table border="1">
    <tr>
        <th>Tên Khóa Học</th>
        <th>Giảng Viên</th>
        <th>Số Giờ Học</th>
        <th>Giá Tiền</th>
    </tr>
    <c:forEach var="course" items="${courses}">
        <tr>
            <td>${course.name}</td>
            <td>${course.instructor}</td>
            <td>${course.hours}</td>
            <td>${course.price}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
