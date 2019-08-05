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

<h1>List of Loans</h1>
<table>
  <tr>
   <th>Loan ID</th>
   <th>Customer ID</th>
   <th>Customer Name</th>
   <th>Book Title</th>
   <th>Author</th>
   <th>Due Date</th>
  </tr>
  <tr>
    <l:forEach items="${loans}" 
                 var="loan">
      <tr> 
        <td>${loan.lid}</td>
        <td>${customer.cId}</td>
        <td>${customer.cName}</td>
        <td>${book.bid}</td>
        <td>${book.author}</td>
        <td>${loan.dueDate}</td>
      </tr>
    </l:forEach>
  </tr>
  <tr>
    	<td><a href="../index.html">Home</a></td>
	    <td><a href="/showBooks">List Books</a></td>
	    <td><a href="/showCustomers">List Customers</a></td>
	    <td><a href="/showLoans">List Loans</a></td>
	    <td><a href="/deleteLoan">Delete Loan</a></td>
	    <td><a href="/logout">Logout</a></td>
	 </tr>
</table>
</body>
</html>