<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%
	String userName = request.getParameter("userName");
	boolean isValidUserName = new FERServiceImpl().isUserNameAvailable(userName);
out.println(isValidUserName? "Y":"N");

%>
