<%-- 
    Document   : contact
    Created on : Dec 24, 2018, 7:34:27 PM
    Author     : Mannat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact Form</title>
    </head>
    <body>
        <table border="1">
            <td><a href="contact.jsp">Contact Info</a></td>
            <td><a href="${pageContext.request.contextPath}/AllContacts">All Contacts</a></td>            
        </table>
        <br />

        <form action="${pageContext.request.contextPath}/ContactServlet" method="POST">
            <table>
                <tr>
                    <td>Contact ID:</td>
                    <td><input type="text" name="id" value="${contact.contactId}"/></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value="${contact.name}"/></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address" value="${contact.address}" /></td>
                </tr>
                <tr>
                    <td>Phone:</td>
                    <td><input type="text" name="phone" value="${contact.phone}" /></td>
                </tr>
                <tr>
                    <td>Company:</td>
                    <td><input type="text" name="company" value="${contact.company}" /></td>
                </tr>
                <tr>
                    <td colspan="2"><input type="Submit" name="operation" value="Add" />
                    <input type="Submit" name="operation" value="Edit" />
                    <input type="Submit" name="operation" value="Delete" />
                    <input type="Submit" name="operation" value="Search" /></td>
                </tr>                
            </table>
        </form>
    </body>
</html>
