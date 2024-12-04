<%@ page import="java.util.List" %>
<%@ page import="Bai8.CartItem" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Giỏ Hàng</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<CartItem> cartItems = new ArrayList<>();
    cartItems.add(new CartItem("Bánh",53000,7));
    cartItems.add(new CartItem("Trà Quất",15000,8));
    cartItems.add(new CartItem("Sữa",35000,3));
    cartItems.add(new CartItem("Mì Tôm",8000,15));

    request.setAttribute("cartItems", cartItems);
    double total = 0;
    for (CartItem item : cartItems) {
        total += item.getQuantity() * item.getPrice();
    }
    request.setAttribute("total", total);
%>
<h2>Danh Sách Giỏ Hàng</h2>
<table border="1">
    <tr>
        <th>Sản Phẩm</th>
        <th>Số Lượng</th>
        <th>Giá Tiền</th>
        <th>Thành Tiền</th>
    </tr>
    <c:forEach var="item" items="${cartItems}">
        <tr>
            <td>${item.productName}</td>
            <td>${item.quantity}</td>
            <td>${item.price}</td>
            <td>${item.quantity * item.price}</td>
        </tr>
    </c:forEach>
    <tr>
        <td colspan="3">Tổng Cộng</td>
        <td>${total}</td>
    </tr>
</table>


</body>
</html>
