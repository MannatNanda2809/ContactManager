<%-- 
    Document   : allcontacts
    Created on : Dec 24, 2018, 7:08:28 PM
    Author     : Mannat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Contacts</title>
    </head>
    <body>
        <table border="1">
            <td><a href="contact.jsp">Contact Info</a></td>
            <td><a href="${pageContext.request.contextPath}/AllContacts">All Contacts</a></td>            
        </table>
        <br />
        <h3>List of Contacts</h3>
        <br />
        <table border="1">
            <tr>
                <th>Contact ID</th>
                <th>Contact Name</th>
                <th>Address</th>
                <th>Phone</th>
                <th>Company</th>
            </tr>
            <c:forEach items="${requestScope.list}" var="contact">
                <tr>
                    <td><a href="${pageContext.request.contextPath}/GetContact?id=${contact.contactId}">${contact.contactId}</a></td>
                    <td>${contact.name}</td>
                    <td>${contact.address}</td>
                    <td>${contact.phone}</td>
                    <td>${contact.company}</td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
