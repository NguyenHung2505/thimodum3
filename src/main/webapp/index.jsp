<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form method="post">
    <input type="text" name="name" placeholder="Nhập tên cần tìm">
    <input type="hidden" name="action" value="search">
    <input type="submit" value="tìm kiếm">
</form>
<h1>Danh sach</h1>
<c:forEach var="item" items="${products}">
    <h3>${item.id}, ${item.name}, ${item.price}, ${item.quantity}
        <c:if test="${item.price > 200}">
            - Khuyễn mãi 10%
        </c:if>
        <c:if test="${item.price < 200}">
            - Khuyễn mãi 20%
        </c:if></h3>
</c:forEach>
</body>
</html>