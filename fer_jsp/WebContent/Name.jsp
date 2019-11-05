<%@page import="com.rs.fer.bean.User"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<script>
	function validateForm() {
		var form = document.DashboardForm;
		var errorMessages = '';
		if (form.firstName.value == '') {
			errorMessages = 'Please enter First Name<br>';
		}
		if (form.lastName.value == '') {
			errorMessages += 'Please enter Last Name<br>';
		}

		if (errorMessages != '') {
			var errorTrIdObj = document.getElementById('errorTrId');
			var errorTdIdObj = document.getElementById('errorTdId');
			errorTdIdObj.innerHTML = errorMessages;
			errorTrIdObj.style.display = '';
			errorTdIdObj.style.color = 'red';
		} else {
			submitForm('Contact.jsp');
		}
	}
</script>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	int id = Integer.parseInt(session.getAttribute("id").toString());
	User user = ferservice.getUser(id);
	session.setAttribute("user", user);
	out.println("<table align='center' border='1' height='400px' width='250px'>");
	out.println("<tr>");
	out.println("<td colspan='2' align='center'>Update Personal Name Info</td>");
	out.println("</tr>");
	out.println("<tr id='errorTrId' style='display: none'>");
	out.println("<td colspan='2' align='left' id='errorTdId'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>First Name <font color='red'>*</font></td>");
	out.println("<td><input type='text'name='firstName' value='" + user.getFirst_name() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Middle Name</td>");
	out.println("<td><input type='text' name='middleName' value='" + user.getMiddle_name() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Last Name <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='lastName' value='" + user.getLast_name() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println(
			"<td align='center' colspan='2'><input type='button' value='Next' onClick='validateForm()'> &nbsp; &nbsp;</td>");
	out.println("</tr>");
	out.println("</table>");
%>
<jsp:include page="layout/Footer.html" />