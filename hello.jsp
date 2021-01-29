<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Hello JSP</title>
</head>
<body>
    <div>
        <c:if test="${click == false}" >
            <c:out value="${message}" />
            <form method="post" action="/">
                <input type="radio" name="animal" value="dog"/>いぬ<br>
                <input type="radio" name="animal" value="cat"/>ねこ<br>
                <input type="radio" name="animal" value="rabbit"/>うさぎ<br>
                <input type="submit" value="Click" />
            </form>
        </c:if>
    </div>
    <div>
        <c:if test="${click == true}" >
            <c:choose>
                <c:when test="${chosenAnimal == 1}">わん</c:when>
                <c:when test="${chosenAnimal == 2}">にゃん</c:when>
                <c:when test="${chosenAnimal == 3}">...?</c:when>
            </c:choose>
        </c:if>
    </div>
</body>
</html>