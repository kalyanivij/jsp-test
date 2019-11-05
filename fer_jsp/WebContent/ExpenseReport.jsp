<script>
	function validateForm() {
		var form = document.DashboardForm;
		var errorMessages = '';
		if (form.expenseType.value == '') {
			errorMessages = 'Please enter Expense Type<br>';
		}
		if (form.fromDate.value == '') {
			errorMessages += 'Please enter From Date<br>';
		}
		if (form.toDate.value == '') {
			errorMessages += 'Please enter To Date<br>';
		}
		if (errorMessages != '') {
			var errorTrIdObj = document.getElementById('errorTrId');
			var errorTdIdObj = document.getElementById('errorTdId');
			errorTdIdObj.innerHTML = errorMessages;
			errorTrIdObj.style.display = '';
			errorTdIdObj.style.color = 'red';
		} else {
			submitForm('ExpenseReportPost.jsp');
		}
	}
</script>
<jsp:include page="layout/Header.jsp" />
<table align="center" border="1" height="400px" width="250px">
	<tr>
		<td colspan='2' align="center">Expense Report</td>
	</tr>
	<tr id='errorTrId' style='display: none'>
		<td colspan='2' align="left" id='errorTdId'></td>
	</tr>
	<tr>
		<td>Expense Type <font color='red'>*</font></td>
		<td><input type="text" name='expenseType'></td>
	</tr>
	<tr>
		<td>From Date <font color='red'>*</font></td>
		<td><input type="date" name='fromDate'></td>
	</tr>
	<tr>
		<td>To Date <font color='red'>*</font></td>
		<td><input type="date" name='toDate'></td>
	</tr>

	<tr>
		<td align='center' colspan='2'><input type='button'
			value='Get Expense' onClick='validateForm()'> &nbsp; &nbsp;</td>
	</tr>
</table>
<jsp:include page="layout/Footer.html" />