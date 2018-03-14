<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="url" %>
<%@include file="/WEB-INF/pages/header.jsp" %>

<html>
<link rel="stylesheet" href="<%=request.getContextPath()%>src/main/webapp/WEB-INF/resources/css/productform.css"/>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>  
<h3 style="margin-bottom: 25px; text-align: center;">Product Form</h3>

<div class="container-wrapper">
<div class="container">
<url:url var="url" value="/admin/product/saveproduct"></url:url>
<form:form action="${url }" modelAttribute="product" method="post" enctype="multipart/form-data">

<div class="form-group">
<label for="id">Product Id</label>
<form:input path="id"  disabled="true"></form:input>
<form:errors path="id" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
<label for="name">Enter Product name</label>
<form:input path="name"></form:input>
<form:errors path="name" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
<label for="description">Enter Description</label>
<form:input path="description"></form:input>
<form:errors path="description" cssStyle="color:red"></form:errors>
</div>
<br>

<div class="form-group">
<label for="manufacturer">Product Manufacturer</label>
<form:input  path="manufacturer"></form:input>
<form:errors path="manufacturer" cssStyle="color:red"></form:errors>
</div>
<br>

<div class="form-group">
<label for="price">Product Price</label>
<form:input  path="price"></form:input>
<form:errors path="price" cssStyle="color:red"></form:errors>
</div>
<br>

<div class="form-group">
<label for="unitInStock">Unit In Stock</label>
<form:input  path="unitInStock"></form:input>
<form:errors path="unitInStock" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
<label for="category">Select Category</label>
<c:forEach items="${categories }" var="c">
 
<form:radiobutton path="category.cid" value="${c.cid }"/>${c.categoryDetails }

</c:forEach>
<form:errors path="category" cssStyle="color:red"></form:errors>
</div>
<br>
<div class="form-group">
<label for="image">Upload Image</label>
<input type="file" name="image" >
</div>
<c:if test="${product.id==0}">
<c:set value="ADD" var="val"></c:set>
</c:if>

<c:if test="${product.id !=0}">
<c:set value="EDIT" var="val"></c:set>
</c:if>

<input type="submit" value="${val}">

</form:form>
</div></div>
</center>


</body>
<%@ include file="footer.jsp" %>
</html>


