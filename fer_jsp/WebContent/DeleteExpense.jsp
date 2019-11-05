<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.rs.fer.service.FERService"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	int id = Integer.parseInt(session.getAttribute("id").toString());
	List<Expense> expenses = ferservice.getExpenses(id);

	out.println("SelectExpense:<select name='expenseId'>");
	if (expenses != null && !expenses.isEmpty()) {
		int value = 0;
		String desc = null;
		for (Expense expense : expenses) {
			value = expense.getId();
			desc = expense.getExpense_type() + ", " + expense.getDate() + ", " + expense.getTotal();
			out.println("<option value='" + value + "'>" + desc + "</option>");
		}
	}
	out.println("</select><br><br>");
	out.println(
			"<input type='button' value='Delete' onClick=\"javascript:submitForm('DeletePost.jsp')\"> &nbsp; &nbsp;");
%>
<jsp:include page="layout/Footer.html" />
