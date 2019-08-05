<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>New Loan</h1>
<table>
	<tr>
		 <td>Customer ID:</td>
         <td><form:label path="cId"></form:label></td>
         <td><form:input path="cId"/></td>
   	</tr>
   	<tr>
   		 <td>Book ID:</td>
         <td><form:label path="bid"></form:label></td>
         <td><form:input path="bid"/></td>
   	</tr>
    <tr>
         <td><input type="submit" value="Loan Book!"/></td>
    </tr>
    <tr>
    	<td><a href="../index.html">Home</a></td>
	    <td><a href="/showBooks">List Books</a></td>
	    <td><a href="/showCustomers">List Customers</a></td>
	    <td><a href="/showLoans">List Loans</a></td>
	 </tr>
</table>
</body>
</html>