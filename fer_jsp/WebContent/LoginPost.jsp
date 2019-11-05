<%@page import="com.rs.fer.service.FERService"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%
	FERService ferservice = new FERServiceImpl();

	String username = request.getParameter("Username");
	String password = request.getParameter("Password");

	int id = ferservice.login(username, password);

	if (id > 0) {
		session.setAttribute("username", username);
		session.setAttribute("id", id);
%>
<jsp:include page="layout/Header.jsp" />
<%
	out.println("Welcome to the user:" + username);
%>
<jsp:include page="layout/Footer.html" />
<%
	} else {
		out.println("Login failed due to incorrect username/password, Please try again...");
%>
<jsp:include page="Login.html" />
<%
	}
%>