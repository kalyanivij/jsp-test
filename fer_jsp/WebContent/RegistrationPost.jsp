<%@page import="com.rs.fer.bean.User"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<%
	FERService ferservice = new FERServiceImpl();

	User user = new User();
	user.setFirst_name(request.getParameter("firstName"));
	user.setMiddle_name(request.getParameter("middleName"));
	user.setLast_name(request.getParameter("lastName"));
	user.setEmail(request.getParameter("emailId"));
	user.setUsername(request.getParameter("userName"));
	user.setPassword(request.getParameter("password"));
	user.setMobile_number(request.getParameter("mobileNumber"));

	boolean isRegister = false;
	boolean isUserNameAvailable = ferservice.isUserNameAvailable(user.getUsername());
	if (isUserNameAvailable) {

		isRegister = ferservice.registeration(user);
	}
	String nextPath = null;
	if (isRegister) {
		out.println("Registered successfully. Login to continue");
		nextPath = "Login.html";
	} else {
		if (!isUserNameAvailable) {
			out.println("Given username already exists, try a new one.");
		}
		out.println("Registeration failed, Please try again...");
		nextPath = "Registeration.jsp";
	}
%>
<jsp:include page="<%=nextPath%>" />
