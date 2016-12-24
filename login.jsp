    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <%@ page pageEncoding="UTF-8" %>
        <%@ page trimDirectiveWhitespaces="true" %>

        <!DOCTYPE html>
        <html lang="en">
        <head>
        <script src="resources/bower_components/jquery/dist/jquery.min.js" defer></script>
        <script src="resources/scripts/script.js" defer></script>
        <meta charset="UTF-8">
        <title>Cyclades - online</title>
        <link rel="stylesheet" href="resources/CSS/style.css">
        </head>
        <body>
        <form id="loginPage" name="frm" action="<c:url value='login'/>" method="post">

        <c:if test="${not empty param.login_error}">
            <span style="color: red; ">
            Your login attempt was not successful, try again.<br/><br/>
            <c:if test="${param.login_error==1}">
                Invalid username or password!
            </c:if>
            <c:if test="${param.login_error!=1}">
                <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
            </c:if>
            </span>
        </c:if>

        <div class="tableBlock">
        <div class="tableRow">
        <div class="tableCell header">User name:</div>
        <div class="tableCell"><input type="text" name="username" class="textBox"></div>
        </div>
        <div class="tableRow">
        <div class="tableCell header">Password:</div>
        <div class="tableCell"><input type="password" name="password" class="textBox"></div>
        </div>
        </div>
        <div class="tableBlock">
        <div class="tableRow">
        <div class="tableCell buttonCell"><input name="submit" type="submit" alt="Submit" class="button">
        </div>
        <div class="tableCell buttonCell"><input name="reset" type="reset" class="button"></div>
        <div class="tableCell header">Remember me:</div>
        <div class="tableCell"><input type="checkbox" name="password" class="checkBox"></div>
        </div>
        </div>
        <div id="regLink" class="tableBlock"><a href="">Registration</a></div>
        <input type="hidden" name="<c:out value="${_csrf.parameterName}"/>"
        value="<c:out value="${_csrf.token}"/>"/>
        </form>
        </body>
        </html>