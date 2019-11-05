
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
* {
	box-sizing: border-box;
}

body {
	background-color: white;
	text-color: purple;
}
</style>
<title>Registeration</title>
<script>
	function validateForm() {
		var form = document.RegistrationForm;
		var errorMessages = '';
		if (form.firstName.value == '') {
			errorMessages = 'Please enter First Name<br>';
		}
		if (form.lastName.value == '') {
			errorMessages += 'Please enter Last Name<br>';
		}
		if (form.emailId.value == '') {
			errorMessages += 'Please enter EmailId<br>';
		}
		if (form.userName.value == '') {
			errorMessages += 'Please enter User Name<br>';
		}
		if (form.password.value == '') {
			errorMessages += 'Please enter Password<br>';
		}
		if (form.mobileNumber.value == '') {
			errorMessages += 'Please enter Mobile Number<br>';
		}
		if (errorMessages != '') {
			//alert(errorMessages);
			var errorTrIdObj = document.getElementById('errorTrId');
			var errorTdIdObj = document.getElementById('errorTdId');
			errorTdIdObj.innerHTML = errorMessages;
			errorTrIdObj.style.display = '';
			errorTdIdObj.style.color = 'red';
		} else {
			form.submit();
		}
	}
	function validateUserName(userName) {
		alert(userName);
		var xhttp = new XMLHttpRequest();
		var url = "FERAJAX.jsp?userName=" + userName;
		xhttp.onreadystatechange = function() {
			if (this.readyState == 4 && this.status == 200) {
				var response = this.responseText.trim();
				alert('.' + response + '.');
				var userNameMsgTrIdObj = document
						.getElementById('userNameMsgTrId');
				var userNameMsgTdIdObj = document
						.getElementById('userNameMsgTdId');

				if (response == 'Y') {
					userNameMsgTdIdObj.innerHTML = "Username is available";
					userNameMsgTrIdObj.style.color = "green";
				}
				else
				{
					userNameMsgTdIdObj.innerHTML= "Username is not available";
					userNameMsgTrIdObj.style.color = "red";
				}

				userNameMsgTrIdObj.style.display = "";
			}

		};
		xhttp.open("GET", url, true);
		xhttp.send();
	}
</script>
</head>
<body>
	<header align='center'>
		<p>
			<font size='15'>Create a New Account</font>
		</p>
		<p>
			<font size='5'>It's quick and easy</font>
	</header>
	<form name='RegistrationForm' action="RegistrationPost.jsp"
		method="post">
		<img src="register.jpg.jpg" width="800" height="400"
			alt="lets save money" />
		<table align="right" border="1" height="400px" width="300px">
			<tr>
				<td colspan='2' align="center">Registeration</td>
			</tr>
			<tr id='errorTrId' style='display: none'>
				<td colspan='2' align="left" id='errorTdId'></td>
			</tr>
			<tr>
				<td>First Name <font color='red'>*</font></td>
				<td><input type="text" name='firstName'
					value="<%=request.getParameter("firstName")%>"><br></td>
			</tr>
			<tr>
				<td>Middle Name</td>
				<td><input type="text" name='middleName'><br></td>
			</tr>
			<tr>
				<td>Last Name <font color='red'>*</font></td>
				<td><input type="text" name='lastName'><br></td>
			</tr>
			<tr>
				<td>EmailId <font color='red'>*</font></td>
				<td><input type="text" name='emailId'><br></td>
			</tr>
			<tr>
				<td>User Name <font color='red'>*</font></td>
				<td><input type="text" name='userName'
					onChange="javascript:validateUserName(this.value)"><br></td>
			</tr>
			<tr id="userNameMsgTrId" style="display: none">
				<td colspan="2" id="userNameMsgTdId"></td>
			</tr>
			<tr>
				<td>Password <font color='red'>*</font></td>
				<td><input type="password" name='password'><br></td>
			</tr>
			<tr>
				<td>Mobile Number <font color='red'>*</font></td>
				<td><input type="number" name='mobileNumber'><br></td>
			</tr>
			<tr>
				<td align='center' colspan='2'><input type="button"
					value='Register' onClick="validateForm()"><br></td>
			</tr>
		</table>
	</form>

</body>
</html>