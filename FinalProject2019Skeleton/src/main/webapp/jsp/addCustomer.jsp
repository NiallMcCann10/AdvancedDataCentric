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

<h1>Add New Customer</h1>
<table>
	<tr>
		<td>Cust Name:</td>
         <td><form:label path="cId"></form:label></td>
         <td><form:input path="cId"/></td>
   	</tr>
   	<tr>
   		<td>Loan Period (Days):</td>
         <td><form:label path="loanPeriod"></form:label></td>
         <td><form:input path="loanPeriod"/></td>
   	</tr>
    <tr>
         <td><input type="submit" value="Add"/></td>
    </tr>
    <tr>
    	<td><a href="../index.html">Home</a></td>
	    <td><a href="/addBook">Add Books</a></td>
	    <td><a href="/addCustomers">Add Customers</a></td>
	    <td><a href="/newLoan">New Loan</a></td>
	 </tr>
</table>
</body>
</html>