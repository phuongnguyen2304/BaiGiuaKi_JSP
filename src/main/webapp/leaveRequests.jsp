<%@ page import="java.util.List" %>
<%@ page import="Bai15.LeaveRequest" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/5/2024
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><title>Danh Sách Đơn Xin Nghỉ Phép</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<LeaveRequest> leaveRequestList = new ArrayList<>();
    leaveRequestList.add(new LeaveRequest("Văn Nam","2024-12-3","2024-12-06","Chờ Duyệt"));
    leaveRequestList.add(new LeaveRequest("Ngọc Thơm","2024-12-04","2024-12-07","Đã Duyệt"));
    leaveRequestList.add(new LeaveRequest("Văn Dân","2024-12-06","2024-12-09","Đã Duyệt"));
    leaveRequestList.add(new LeaveRequest("Tuấn Minh","2024-12-01","2024-12-10","Chờ Duyệt"));
    leaveRequestList.add(new LeaveRequest("Nguyên Phương","2024-12-20","2024-12-22","Đã Duyệt"));
    request.setAttribute("leaveRequests",leaveRequestList);
%>
<h2>Danh Sách Đơn Xin Nghỉ Phép</h2>
<table border="1">
    <tr>
        <th>Tên Nhân Viên</th>
        <th>Ngày Bắt Đầu</th>
        <th>Ngày Kết Thúc</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="leaveRequest" items="${leaveRequests}">
        <tr>
            <td>${leaveRequest.employeeName}</td>
            <td>${leaveRequest.startDate}</td>
            <td>${leaveRequest.endDate}</td>
            <td>${leaveRequest.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
