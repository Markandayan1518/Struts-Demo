<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>Register Here</title>
</head>
<body ng-app="RegisterApp" ng-controller="RegisterController">
	<form action="Register" method="post" role="form">
		<div class="form-group">
			User Name:<input type="text" name="registerModel.userName"
				ng-model="userName" />
			<s:fielderror fieldName="registerModel.userName" cssStyle="color:red"></s:fielderror>
			<br />
		</div>
		<div class="form-group">
			Password :<input type="password" name="registerModel.password" />
			<s:fielderror fieldName="registerModel.password" cssStyle="color:red"></s:fielderror>
			<br />
		</div>
		<div class="form-group">
			Full Name:<input type="text" name="registerModel.fullName"
				ng-model="fullName" />
			<s:fielderror fieldName="registerModel.fullName" cssStyle="color:red"></s:fielderror>
			<br />
		</div>
		<div class="form-group">
			Email ID :<input type="text" name="registerModel.emailId" />
			<s:fielderror fieldName="registerModel.emailId" cssStyle="color:red"></s:fielderror>
			<br />
		</div>
		<div class="form-group">
			Gender :<input type="radio" name="registerModel.gender"
				ng-model="gender" value="Male" />Male &nbsp; <input type="radio"
				name="registerModel.gender" ng-model="gender" value="Female" />Female
			</p>
		</div>
		<div class="form-group">
			<input type="submit" value="Register">
		</div>
	</form>
	<br />
	<p>Suggested User Id: {{getUserId() | lowercase}}</p>
	Already Registered.
	<a href="<s:url action='LoginHere' />">Login Here</a>
</body>
<script src="${pageContext.request.contextPath}/js/angular.min.js"></script>
<script>
	angular.module("RegisterApp", []).controller("RegisterController",
			function($scope) {
				$scope.getUserId = function() {
					return $scope.fullName + "_" + $scope.gender;
				};
			});
</script>
</html>