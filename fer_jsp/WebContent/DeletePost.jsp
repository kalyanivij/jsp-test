<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	int expenseId = Integer.parseInt(request.getParameter("expenseId").toString());

	boolean isDeleteExpense = ferservice.deleteExpense(expenseId);

	if (isDeleteExpense) {
		out.println("Expense deleted successfully");
	} else {
		out.println("Failed to delete expense...");
	}
%>
<jsp:include page="layout/Footer.html" />