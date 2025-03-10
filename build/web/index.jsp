<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action ="CalServlet">
            a:<input type="number" name="a" value="" /><br>
            b:<input type="number" name="b" value="" /><br>
            c:<input type="number" name="c" value="" /><br>
            <input type="submit" value="Calculator" />
        </form>
        
        <c:set var="data" value="${requestScope.data}"></c:set>
        <c:set var="x1" value="${data.getInfo().getX1()}"></c:set>
        <c:set var="x2" value="${data.getInfo().getX2()}"></c:set>
        <c:set var="flag" value="${data.getInfo().getFlag()}"></c:set>
        <c:set var="msg" value="${data.getMsg()}"></c:set>
        <c:if test="${msg!=null}">
            <<h2 style=" color: red">${msg}</h2>
            
        </c:if>    
            <c:choose>
                <c:when test="${flag == '1'}">
                    <h2>x1=x2=${x1}</h2>
                </c:when>
                <c:when test="${flag == '2'}">
                    <h2>x1=${x1};x2=${x2}</h2>
                </c:when>
                <c:when test="${flag == '3'}">
                    <h2>x1=${x1};</h2>
                </c:when>
            </c:choose>
        
                
            
    </body>
</html>
