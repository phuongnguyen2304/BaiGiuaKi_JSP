<%@ page import="java.util.List" %>
<%@ page import="Bai12.Event" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/5/2024
  Time: 9:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Sự Kiện</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Event> eventList = new ArrayList<>();
    eventList.add(new Event("Ngày Nhà Giáo Việt Nam 20/11","2024-11-19 5:30PM","Hà Nội",70));
    eventList.add(new Event("Hội Nghị Công Nghệ Thông Tin","2024-12-02 10:00 AM","Hà Nội",200));
    eventList.add(new Event("Triển Lãm Sách","2024-10-30 8:30 AM","Hà Nội",250));
    eventList.add(new Event("20 Năm Thành Lập Trường","2024-11-30 9:00 AM","Hà Nội",150));
    request.setAttribute("events",eventList);
%>
<h2>Danh Sách Sự Kiện</h2>
<table border="1">
    <tr>
        <th>Tên Sự Kiện</th>
        <th>Ngày Giờ</th>
        <th>Địa Điểm</th>
        <th>Số Lượng Người Tham Gia</th>
    </tr>
    <c:forEach var="event" items="${events}">
        <tr>
            <td>${event.name}</td>
            <td>${event.dateTime}</td>
            <td>${event.location}</td>
            <td>${event.participants}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
