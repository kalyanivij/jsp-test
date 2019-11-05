<jsp:include page="layout/Header.jsp" />
<style>
* {
	box-sizing: border-box;
}

title {
	padding-top: 50px;
}

body {
	background-color: white;
	padding-top: 50px;
	text-color: purple;
}
</style>
<script>
	function validateForm() {
		var form = document.DashboardForm;
		var errorMessages = '';
		if (form.expenseType.value == '') {
			errorMessages = 'Please enter Expense Type<br>';
		}
		if (form.date.value == '') {
			errorMessages += 'Please enter Date<br>';
		}
		if (form.price.value == '') {
			errorMessages += 'Please enter Price<br>';
		}
		if (form.noOfItems.value == '') {
			errorMessages += 'Please enter No. Of Items<br>';
		}
		if (form.total.value == '') {
			errorMessages += 'Please enter Total<br>';
		}
		if (form.byWhom.value == '') {
			errorMessages += 'Please enter By Whom<br>';
		}
		if (errorMessages != '') {
			var errorTrIdObj = document.getElementById('errorTrId');
			var errorTdIdObj = document.getElementById('errorTdId');
			errorTdIdObj.innerHTML = errorMessages;
			errorTrIdObj.style.display = '';
			errorTdIdObj.style.color = 'red';
		} else {
			submitForm('AddExpensePost.jsp');
		}
	}
</script>
<table align="center" border="1" height="400px" width="250px">
	<tr>
		<td colspan='2' align="center">Add Expense</td>
	</tr>
	<tr id='errorTrId' style='display: none'>
				<td colspan='2' align="left" id='errorTdId'></td>
			</tr>
	<tr>
		<td>Expense Type <font color='red'>*</font></td>
		<td><input type="text" name='expenseType'></td>
	</tr>
	<tr>
		<td>Date <font color='red'>*</font></td>
		<td><input type="date" name='date'></td>
	</tr>
	<tr>
		<td>Price <font color='red'>*</font></td>
		<td><input type="number" name='price'></td>
	</tr>
	<tr>
		<td>No. Of Items <font color='red'>*</font></td>
		<td><input type="number" name='noOfItems'></td>
	</tr>
	<tr>
		<td>Total <font color='red'>*</font></td>
		<td><input type="number" name='total'></td>
	</tr>
	<tr>
		<td>By Whom <font color='red'>*</font></td>
		<td><input type="text" name='byWhom'></td>
	</tr>
	<tr>
		<td align='center' colspan='2'><input type='button'
			value='Save Expense' onClick="validateForm()"></td>
	</tr>
</table>
<jsp:include page="layout/Footer.html" />

