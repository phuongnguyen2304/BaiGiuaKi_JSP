<%@ page import="java.util.List" %>
<%@ page import="Bai6.Ticket" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 9:02 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Vé Xem Phim</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Ticket> ticketList = new ArrayList<>();
    ticketList.add(new Ticket("V06","Mèo Ma Bê Tha","9:00 AM",60000));
    ticketList.add(new Ticket("V09","Chiến Địa Tử Thi","10:00 PM",90000));
    ticketList.add(new Ticket("V86","Quỷ Treo Đầu","11:00 PM",120000));
    ticketList.add(new Ticket("V05","Công Tử Bạc Liêu","10:00 AM", 80000));
    ticketList.add(new Ticket("V04","Tết Âm Hồn","12:00 PM",150000));
    ticketList.add(new Ticket("V03","Đời Nhạt","9:30 AM",100000));
    request.setAttribute("tickets",ticketList);


%>
<h2>Danh Sách Vé Xem Phim</h2>
<table border="1">
    <tr>
        <th>Mã Vé</th>
        <th>Tên Phim</th>
        <th>Suất Chiếu</th>
        <th>Giá Vé</th>
    </tr>
    <c:forEach var="ticket" items="${tickets}">
        <tr>
            <td>${ticket.ticketID}</td>
            <td>${ticket.movieName}</td>
            <td>${ticket.showTime}</td>
            <td>${ticket.price}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
