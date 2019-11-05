
<%@page import="com.rs.fer.bean.Expense"%>
<%@page import="com.rs.fer.service.FERService"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	Expense expense = new Expense();

	expense.setExpense_type(request.getParameter("expenseType"));
	expense.setDate(request.getParameter("date"));
	expense.setPrice(Float.parseFloat(request.getParameter("price")));
	expense.setNo_of_items(Integer.parseInt(request.getParameter("noOfItems")));
	expense.setTotal(Float.parseFloat(request.getParameter("total")));
	expense.setBy_whom(request.getParameter("byWhom"));
	expense.setUserid(Integer.parseInt(session.getAttribute("id").toString()));

	boolean isAddExpense = ferservice.addExpense(expense);

	if (isAddExpense) {
		out.println("Expense added successfully");
	} else {
		out.println("Failed to add expense...");
	}
%>
<jsp:include page="layout/Footer.html" />

