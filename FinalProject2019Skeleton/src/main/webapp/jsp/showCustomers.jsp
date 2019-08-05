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

<h1>List of Customers</h1>
<table>
  <tr>
   <th>Loan ID</th>
   <th>Book ID</th>
   <th>Title</th>
   <th>Author</th>
  </tr>
  <tr>
    <c:forEach items="${customers}" 
                 var="customer">
      <tr> 
        <td>${loan.lid}</td>
        <td>${book.bid}</td>
        <td>${book.title}</td>
        <td>${book.author}</td>
      </tr>
    </c:forEach>
  </tr>
</table>

</body>
</html>