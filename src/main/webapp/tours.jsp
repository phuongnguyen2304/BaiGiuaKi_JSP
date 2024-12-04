<%@ page import="java.util.List" %>
<%@ page import="Bai9.Tour" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 10:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Tour Du Lịch</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Tour> tourList = new ArrayList<>();
    tourList.add(new Tour("Tour Nha Trang","Nha Trang","2024-12-09",4500000,"Còn Chỗ"));
    tourList.add(new Tour("Tour Huế","Huế","2024-12-24",7000000,"Hết Chỗ"));
    tourList.add(new Tour("Tour Đà Lạt","Đà Lạt","2025-01-04",15000000,"Còn Chỗ"));
    tourList.add(new Tour("Tour Hà Nội","Hà Nội","2025-02-10",8000000,"Còn Chỗ"));
    tourList.add(new Tour("Tour Trung Quốc","Trung Quốc","2025-01-18",25000000,"Hết Chỗ"));
    request.setAttribute("tours",tourList);
%>
<h2>Danh Sách Tour Du Lịch</h2>
<table border="1">
    <tr>
        <th>Tên Tour</th>
        <th>Địa Điểm</th>
        <th>Ngày Khởi Hành</th>
        <th>Giá</th>
        <th>Tình Trạng</th>
    </tr>
    <c:forEach var="tour" items="${tours}">
        <tr>
            <td>${tour.name}</td>
            <td>${tour.location}</td>
            <td>${tour.startDate}</td>
            <td>${tour.price}</td>
            <td>${tour.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
