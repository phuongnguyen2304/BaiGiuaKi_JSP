<%@ page import="java.util.List" %>
<%@ page import="Bai11.Attendance" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/5/2024
  Time: 8:49 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Bảng Chấm Công Nhân Viên</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Attendance> attendanceList = new ArrayList<>();
    attendanceList.add(new Attendance("Nguyên Phương","2024-12-05",10,"Đã Hoàn Tất"));
    attendanceList.add(new Attendance("Văn Nam","2024-12-01",6,"Thiếu"));
    attendanceList.add(new Attendance("Ngọc Thơm","2024-12-04",7,"Đã Hoàn Tất"));
    attendanceList.add(new Attendance("Văn Dân","2024-12-03",8,"Đã Hoàn Tất"));
    attendanceList.add(new Attendance("Linh","2024-10-30",5,"Thiếu"));
    attendanceList.add(new Attendance("Bảo Ngọc","2024-12-02",12,"Đã Hoàn Tất"));
    request.setAttribute("attendanceList",attendanceList);
%>
<h2>Bảng Chấm Công Nhân Viên</h2>
<table border="1">
    <tr>
        <th>Tên Nhân Viên</th>
        <th>Ngày Làm Việc</th>
        <th>Số Giờ Làm</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="attendance" items="${attendanceList}">
        <tr>
            <td>${attendance.employeeName}</td>
            <td>${attendance.workDate}</td>
            <td>${attendance.hoursWorked}</td>
            <td>${attendance.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
