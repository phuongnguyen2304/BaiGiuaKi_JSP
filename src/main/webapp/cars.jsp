<%@ page import="java.util.List" %>
<%@ page import="Bai14.Car" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/5/2024
  Time: 2:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Xe Hơi</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Car> carList = new ArrayList<>();
    carList.add(new Car("Toyota Camry", "Toyota", 700000000, "Còn hàng"));
    carList.add(new Car("Honda Civic", "Honda", 600000000, "Hết hàng"));
    carList.add(new Car("Mazda 3", "Mazda", 650000000, "Còn hàng"));
    carList.add(new Car("Ford Ranger", "Ford", 800000000, "Còn hàng"));
    request.setAttribute("cars",carList);
%>
<table border="1">
    <tr>
        <th>Tên Xe</th>
        <th>Hãng Sản Xuất</th>
        <th>Giá Bán</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="car" items="${cars}">
        <tr>
            <td>${car.name}</td>
            <td>${car.manufacturer}</td>
            <td>${car.price}</td>
            <td>${car.status}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
