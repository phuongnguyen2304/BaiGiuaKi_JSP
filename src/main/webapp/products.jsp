<%@ page import="Bai1.JSP.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--

  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 1:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Sản Phẩm</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>
<%!
    private String name;


%><%
    List<Product> productList = new ArrayList<>();


    productList.add(new Product("Bánh",55000,"Bánh1","https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    productList.add(new Product("Sữa",35000,"Sữa TH", "https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    productList.add(new Product("Bim", 10000,"Bim Poca","https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    productList.add(new Product("Nước giải khát",15000,"Trà bí đao","https://th.bing.com/th/id/OIP.NLRzBPRrXbPI1EzIUCWADwHaEK?w=302&h=180&c=7&r=0&o=5&dpr=1.3&pid=1.7"));
    request.setAttribute("customers1", productList);
%>
<h2>Danh Sách Sản Phẩm</h2>
<table border="1">
    <tr>
        <th>Tên Sản Phẩm</th>
        <th>Mô Tả</th>
        <th>Giá</th>
        <th>Ảnh</th>
    </tr>
    <c:forEach var="products" items="${customers1}">
        <tr>
            <td>${products.name}</td>
            <td>${products.price}</td>
            <td>${products.description}</td>
            <td><img src="${products.imageURL}"/>></td>
        </tr>

    </c:forEach>
</table>

</body>
</html>
