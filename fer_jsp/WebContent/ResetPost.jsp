
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();

	int id = Integer.parseInt(session.getAttribute("id").toString());
	String currentPassword = request.getParameter("currentPassword");
	String newPassword = request.getParameter("newPassword");
	String confirmPassword = request.getParameter("confirmPassword");

	boolean isReset = ferservice.resetPassword(id, currentPassword, newPassword);

	if (isReset) {

		out.println("password changed successfully");

	} else {
		out.println("password is not changed");

	}
%>
<jsp:include page="layout/Footer.html" />