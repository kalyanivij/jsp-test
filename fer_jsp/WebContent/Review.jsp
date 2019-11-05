<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<%@page import="com.rs.fer.bean.User"%>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	int id = Integer.parseInt(session.getAttribute("id").toString());

	User user = (User) session.getAttribute("user");
	user.getAddress().setLine_1(request.getParameter("Address1"));
	user.getAddress().setLine_2(request.getParameter("Address2"));
	user.getAddress().setStreet(request.getParameter("Street"));
	user.getAddress().setCity(request.getParameter("City"));
	user.getAddress().setState(request.getParameter("State"));
	user.getAddress().setPincode(Integer.parseInt(request.getParameter("Pincode")));

	session.setAttribute("user", user);
	out.println("<table align='center' border='1' height='400px' width='250px'>");
	out.println("<tr>");
	out.println("<td colspan='2' align='center'>Review</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>First Name</td>");
	out.println("<td>" + user.getFirst_name() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Middle Name</td>");
	out.println("<td>" + user.getMiddle_name() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Last Name</td>");
	out.println("<td>" + user.getLast_name() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Email Id</td>");
	out.println("<td>" + user.getEmail() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Mobile Number</td>");
	out.println("<td>" + user.getMobile_number() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Address 1</td>");
	out.println("<td>" + user.getAddress().getLine_1() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Address 2</td>");
	out.println("<td>" + user.getAddress().getLine_2() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Street(area)</td>");
	out.println("<td>" + user.getAddress().getStreet() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>City</td>");
	out.println("<td>" + user.getAddress().getCity() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>State</td>");
	out.println("<td>" + user.getAddress().getState() + "</td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Pincode</td>");
	out.println("<td>" + user.getAddress().getPincode() + "</td>");
	out.println("</tr>");

	out.println("<tr>");
	out.println("<td align='center' colspan='2'>");
	out.println(
			"<input type='button' value='Next' onClick=\"javascript:submitForm('Status.jsp')\"> &nbsp; &nbsp;");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
%>
<jsp:include page="layout/Footer.html" />
