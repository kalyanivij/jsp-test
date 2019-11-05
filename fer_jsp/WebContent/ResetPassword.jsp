<script>
	function validateForm() {
		var form = document.DashboardForm;
		var errorMessages = '';
		if (form.currentPassword.value == '') {
			errorMessages = 'Please enter Current Password<br>';
		}
		if (form.newPassword.value == '') {
			errorMessages += 'Please enter New Password<br>';
		}
		if (form.confirmPassword.value == '') {
			errorMessages += 'Please enter Confirm Password<br>';
		}
		if (errorMessages != '') {
			var errorTrIdObj = document.getElementById('errorTrId');
			var errorTdIdObj = document.getElementById('errorTdId');
			errorTdIdObj.innerHTML = errorMessages;
			errorTrIdObj.style.display = '';
			errorTdIdObj.style.color = 'red';
		} else {
			submitForm('ResetPost.jsp');
			form.submit();
		}
	}
</script>
<jsp:include page="layout/Header.jsp" />
<table align="center" border="1" height="400px" width="250px">
	<tr>
		<td colspan='2' align="center">Reset Password</td>
	</tr>
	<tr id='errorTrId' style='display: none'>
		<td colspan='2' align="left" id='errorTdId'></td>
	</tr>
	<tr>
		<td>id</td>
		<td><input type="text" name='id'></td>
	</tr>
	<tr>
		<td>Current Password <font color='red'>*</font></td>
		<td><input type="password" name='currentPassword'></td>
	</tr>
	<tr>
		<td>New Password <font color='red'>*</font></td>
		<td><input type="password" name='newPassword'></td>
	</tr>
	<tr>
		<td>Confirm Password <font color='red'>*</font></td>
		<td><input type="password" name='confirmPassword'></td>
	</tr>

	<tr>
		<td align='center' colspan='2'><input type='button'
			value='Submit' onClick='validateForm()'></td>
	</tr>
</table>
<jsp:include page="layout/Footer.html" />
