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

<h1>List of Books</h1>
<table>
  <tr>
   <th>Book ID</th>
   <th>Title</th>
   <th>Author</th>
  </tr>
  <tr>
    <b:forEach items="${books}" var="book">
      <tr> 
        <td>${Book.bid}</td>
        <td>${Book.title}</td>
        <td>${Book.author}</td>
      </tr>
    </b:forEach>
  </tr>
  <tr>
    	<td><a href="../index.html">List Loans</a></td>
	    <td><a href="/addBook">Add Book</a></td>
	    <td><a href="/showCustomers">List Customers</a></td>
	    <td><a href="/showLoans">List Loans</a></td>
	    <td><a href="/logout">Logout</a></td>
	 </tr>
</table>
</body>
</html>