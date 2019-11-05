<%@page import="com.rs.fer.bean.User"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<script>
	function validateForm() {
		var form = document.DashboardForm;
		var errorMessages = '';
		if (form.emailId.value == '') {
			errorMessages = 'Please enter Email Id<br>';
		}
		if (form.mobileNumber.value == '') {
			errorMessages += 'Please enter Mobile Number<br>';
		}
		if (errorMessages != '') {
			var errorTrIdObj = document.getElementById('errorTrId');
			var errorTdIdObj = document.getElementById('errorTdId');
			errorTdIdObj.innerHTML = errorMessages;
			errorTrIdObj.style.display = '';
			errorTdIdObj.style.color = 'red';
		} else {
			submitForm('Address.jsp');
			form.submit();
		}
	}
</script>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();
	int userId = Integer.parseInt(session.getAttribute("id").toString());
	User user = (User) session.getAttribute("user");
	user.setFirst_name(request.getParameter("firstName"));
	user.setMiddle_name(request.getParameter("middleName"));
	user.setLast_name(request.getParameter("lastName"));
	session.setAttribute("user", user);
	out.println("<table align='center' border='1' height='400px' width='250px'>");
	out.println("<tr>");
	out.println("<td colspan='2' align='center'>Update ContactInfo</td>");
	out.println("</tr>");
	out.println("<tr id='errorTrId' style='display: none'>");
	out.println("<td colspan='2' align='left' id='errorTdId'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Email Id <font color='red'>*</font></td>");
	out.println("<td><input type='email' name='emailId'  value='" + user.getEmail() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Mobile Number <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='mobileNumber' value='" + user.getMobile_number() + "'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td align='center' colspan='2'>");
	out.println("<input type='button' value='Next'  onClick='validateForm()'> &nbsp; &nbsp;");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
	
%>
<jsp:include page="layout/Footer.html" />