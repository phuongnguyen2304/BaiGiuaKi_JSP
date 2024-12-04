<%@ page import="java.util.List" %>
<%@ page import="Bai5.Employee" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/4/2024
  Time: 7:15 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Nhân Viên</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Employee> employeeList = new ArrayList<>();
    employeeList.add(new Employee("Nguyên Phương","Tester","Nhân Viên",10000000,"Đang làm"));
    employeeList.add(new Employee("Thanh Nga","Kế Toán","Kế Toán Trưởng",20000000,"Đang làm"));
    employeeList.add(new Employee("Đình Kiên","Phòng Kỹ Thuật","Kỹ Sư",17000000,"Nghỉ việc"));
    employeeList.add(new Employee("Kim Thuỷ","Lập trình","Nhân viên",15000000,"Đang làm"));
    employeeList.add(new Employee("Linh Trang","Phòng Nhân Sự","Trưởng Phòng",14000000,"Nghỉ việc"));
    request.setAttribute("employees",employeeList);

%>
<h2>Danh Sách Nhân Viên</h2>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Phòng Ban</th>
        <th>Chức Vụ</th>
        <th>Lương</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="employee" items="${employees}">
        <tr>
            <td>${employee.name}</td>
            <td>${employee.department}</td>
            <td>${employee.position}</td>
            <td>${employee.salary}</td>
            <td>${employee.status}</td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
