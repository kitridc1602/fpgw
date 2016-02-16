<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KITRI</title>
</head>
<body>

	<div>
		<div style="width: 350px; margin-top: 200px; margin-left: auto; margin-right: auto;">
			<form action="${root }/main/login.html" method="post">
				<table>
					<tr>
						<td colspan="3">
							<h4>KITRI DC16th Team No.2 Final Project</h4>
						<td>
					</tr>
					<tr>
						<td align="right">아이디</td>
						<td>
							<input type="text" id="id" name="id" value="kitri01">
						</td>
						<td rowspan="2">
							<input type="submit" id="btnlogin" name="btnlogin" value="로그인" style="height: 50px;">
						</td>
					</tr>
					<tr>
						<td align="right">비밀번호</td>
						<td>
							<input type="password" id="pwd" name="pwd" value="kitri">
						</td>
					</tr>
					<tr>
						<td colspan="2"  align="right">
							<c:if test="${sessionScope.success == 'failed' }">
								<h6 style="color: red;">입력정보를 다시 확인하시오.</h6>
							</c:if>
						</td>
						<td>
						</td>
					</tr>
				</table>
			</form>
		</div>
	</div>


</body>
</html>