<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
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
			submitForm('EditExpensePost.jsp');
		}
	}
</script>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	int expenseId = Integer.parseInt(request.getParameter("expenseId").toString());

	Expense expense = ferservice.getExpense(expenseId);
	session.setAttribute("expense", expense);

	out.println("<table align='center' border='1' height='400px' width='250px'>");
	out.println("<tr>");
	out.println("<td colspan='2' align='center'>Edit Expense</td>");
	out.println("</tr>");
	out.println("<tr id='errorTrId' style='display: none'>");
	out.println("<td colspan='2' align='left' id='errorTdId'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Expense Type <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='expenseType' value='" + expense.getExpense_type() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Date <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='date'  value='" + expense.getDate() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Price <font color='red'>*</font></td>");
	out.println("<td><input type='number' name='price'  value='" + expense.getPrice() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>No. Of Items <font color='red'>*</font></td>");
	out.println("<td><input type='number' name='noOfItems'  value='" + expense.getNo_of_items() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Total <font color='red'>*</font></td>");
	out.println("<td><input type='number' name='total'  value='" + expense.getTotal() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>By Whom <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='byWhom'  value='" + expense.getBy_whom() + "'></td>");
	out.println("</tr>");

	out.println("<tr>");
	out.println(
			"<td align='center' colspan='2'><input type='button' value='Edit Expense'  onClick='validateForm()'> &nbsp; &nbsp;</td>");

	out.println("</tr>");
	out.println("</table>");
%>
<jsp:include page="layout/Footer.html" />