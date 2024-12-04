<%@ page import="java.util.List" %>
<%@ page import="Bai2.Order" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 2:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Đơn Hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Order> orderList = new ArrayList<>();
    orderList.add(new Order(1,"2024-12-04","Nguyên Phương","Chưa giao"));
    orderList.add(new Order(2,"2024-11-30","Ngọc Thơm","Đã giao"));
    orderList.add(new Order(3,"2024-07-23","Phương","Đã giao"));
    orderList.add(new Order(4,"2024-12-01","Linh","Đã giao"));
    request.setAttribute("orders",orderList);



%>
<h2>Danh Sách Đơn Hàng</h2>
<table border="1">
    <tr> <th>Mã Đơn Hàng</th>
        <th>Ngày Đặt</th>
        <th>Khách Hàng</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="order" items="${orders}">
        <tr>
            <td>${order.orderID}</td>
            <td>${order.orderDate}</td>
            <td>${order.customerName}</td>
            <td>${order.status}</td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
