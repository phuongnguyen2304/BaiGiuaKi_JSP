<%@ page import="java.util.List" %>
<%@ page import="Bai16.Patient" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: ThinkpadX1
  Date: 12/5/2024
  Time: 3:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh Sách Bệnh Nhân</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<%!

%><%
    List<Patient> patientList = new ArrayList<>();
    patientList.add(new Patient("Văn Nam",22,"Viêm Phế Quản","2024-10-30","Đã Xuất Viện"));
    patientList.add(new Patient("Lan Anh",18,"Viêm Phổi","2024-12-04","Đang Điều Trị"));
    patientList.add(new Patient("Bảo Ngọc",15,"Đau Mắt Đỏ","2024-12-01","Đã Xuất Viện"));
    patientList.add(new Patient("Linh",12,"Cảm Cúm","2024-10-24","Đã Xuất Viện"));
    patientList.add(new Patient("Phương Anh",25,"Đau Dạ Dày","2024-12-05","Đang Điều Trị"));
    request.setAttribute("patients",patientList);
%>
<h2>Danh Sách Bệnh Nhân</h2>
<table border="1">
    <tr>
        <th>Tên</th>
        <th>Tuổi</th>
        <th>Bệnh Lý</th>
        <th>Ngày Nhập Viện</th>
        <th>Trạng Thái</th>
    </tr>
    <c:forEach var="patient" items="${patients}">
        <tr>
            <td>${patient.name}</td>
            <td>${patient.age}</td>
            <td>${patient.disease}</td>
            <td>${patient.admissionDate}</td>
            <td>${patient.status}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
