<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>
<c:if test="${category != null}"> Edit Category</c:if>
<c:if test="${category == null}"> Create New Category</c:if>
</title>

</head>
<body>
	<jsp:include page="header.jsp" />
	<div align="center">
		<h2>
			<c:if test="${category != null}">Edit category</c:if>
			<c:if test="${category == null}">Create New category</c:if>
		</h2>
	</div>

	<div align="center">
	
	<c:if test="${category != null}">
		<form action="update_category" method="post" onsubmit="return validateFormInput()">
		<input type = "hidden" name = "categoryId" value ="${category.categoryId}">
	</c:if>
	<c:if test="${category == null}">
		<form action="create_category" method="post" onsubmit="return validateFormInput()">
	</c:if>
	
			<table>
				<tr>
					<td align="right">Name:</td>
					<td align="left"><input type="text" id="name"
						name="fullname" size="20" value="${category.name}" /></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit"
						value="Save" /> <input type="button" value="Cancel"
						onclick="javascript: history.go(-1)" /></td>
				</tr>

			</table>

		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
<script type="text/javascript">
	function validateFormInput() {
		
		var fieldName = document.getElementById("name");

		if (fieldName.value.length == 0) {
			alert("category name is required!");
			fieldName.focus();
			return false;
		}

	}
</script>
</html>