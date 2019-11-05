<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="java.util.List"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	int id = Integer.parseInt(session.getAttribute("id").toString());
	String expense_type = request.getParameter("expenseType");
	String fromDate = request.getParameter("fromDate");
	String toDate = request.getParameter("toDate");
	List<Expense> expenses = ferservice.expenseReport(expense_type, fromDate, toDate);
	if (expenses != null && !expenses.isEmpty()) {
		out.println("<table align='center' border='1' height='75px width='50px' cellpadding='1px'>");
		out.println("<tr>");
		out.println("<th>Expense Type</th>");
		out.println("<th>Date</th>");
		out.println("<th>Price</th>");
		out.println("<th>No. Of Items</th>");
		out.println("<th>Total</th>");
		out.println("<th>By Whom</th>");
		out.println("<th>Action</th>");
		out.println("</tr>");
		for (Expense expense : expenses) {
			out.println("<tr>");
			out.println("<td><input type='text' name='expenseType' value='" + expense.getExpense_type()
					+ "'></td>");
			out.println("<td><input type='date' name='date'  value='" + expense.getDate() + "'></td>");
			out.println("<td><input type='number' name='price' value='" + expense.getPrice() + "'></td>");
			out.println(
					"<td><input type='number' name='noOfItems' value='" + expense.getNo_of_items() + "'></td>");
			out.println("<td><input type='number' name='total' value='" + expense.getTotal() + "'></td>");
			out.println("<td><input type='text' name='byWhom' value='" + expense.getBy_whom() + "'></td>");
			out.println("</tr>");
		}
		out.println("</table>");
	}
%>
<jsp:include page="layout/Footer.html" />
