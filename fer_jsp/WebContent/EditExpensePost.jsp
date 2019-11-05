<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	Expense expense = (Expense) session.getAttribute("expense");

	expense.setExpense_type(request.getParameter("expenseType"));
	expense.setDate(request.getParameter("date"));
	expense.setPrice(Float.parseFloat(request.getParameter("price")));
	expense.setNo_of_items(Integer.parseInt(request.getParameter("noOfItems")));
	expense.setTotal(Float.parseFloat(request.getParameter("total")));
	expense.setBy_whom(request.getParameter("byWhom"));

	boolean isEditExpense = ferservice.editExpense(expense);

	if (isEditExpense) {
		out.println("expenses edited Successfully");
	} else {
		out.println("Failed to edit expense...");
	}
%>
<jsp:include page="layout/Footer.html" />