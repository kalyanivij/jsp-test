<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
* {
	box-sizing: border-box;
}

title {
	padding-top: 50px;
}

body {
	background-color: white;
	padding-top: 100px;
	text-color: purple;
}
</style>
<title>Family Expense Report</title>
<script>
	function submitForm(nextPath) {
		var form = document.DashboardForm;
		form.action = nextPath;
		form.submit();
	}
</script>
</head>
<body>
	<form name="DashboardForm" method="post">

		<table align="center" border="1" height="400px" width="400px">
			<tr padding='50px'>
				<td align="center" colspan='2'>Family Expense Report &nbsp;
					User:${username}</td>
			</tr>
			<tr>
				<td align="center"><br> <a
					href="javascript:submitForm('AddExpense.jsp')"> Add Expense</a><br>
					<br> <a href="javascript:submitForm('EditExpense.jsp')">Edit
						Expense</a><br> <br> <a
					href="javascript:submitForm('DeleteExpense.jsp')">Delete
						Expense</a><br> <br> <a
					href="javascript:submitForm('ExpenseReport.jsp')"> Expense
						Report</a><br> <br> <a
					href="javascript:submitForm('ResetPassword.jsp')">Reset
						Password</a><br> <br> <a
					href="javascript:submitForm('Name.jsp')">Update
						Personal</a><br> <br></td>

				<td align="center">