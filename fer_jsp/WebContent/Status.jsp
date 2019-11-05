<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<%@page import="com.rs.fer.bean.User"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();

		int updateUser = Integer.parseInt(session.getAttribute("id").toString());

		User user = (User) session.getAttribute("user");
		session.setAttribute("user", user);

		boolean isUpdate = ferservice.updateUser(user);

		if (isUpdate) {

			out.println("Updated successfully");

		} else {
			out.println("Update is not successful");

		}
		%>
<jsp:include page="layout/Footer.html" />
