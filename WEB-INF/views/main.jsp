<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page pageEncoding="UTF-8" %>
<%@ page trimDirectiveWhitespaces="true" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <script src="resources/bower_components/jquery/dist/jquery.js" defer></script>
    <script src="resources/scripts/script.js" defer></script>
    <meta charset="UTF-8">
    <title>Cyclades - online</title>
    <link rel="stylesheet" href="/resources/CSS/style.css">
</head>
<body>
<div id="loginPage">
    <form action="<c:url value="/logout"/>" method="post">
        <input type="submit" value="Logoff"/>
        <security:csrfInput/>
    </form>
</div>
</body>
</html>

