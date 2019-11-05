<%@page import="com.rs.fer.bean.User"%>
<%@page import="com.rs.fer.service.FERServiceImpl"%>
<%@page import="com.rs.fer.service.FERService"%>
<script>
	function validateForm() {
		var form = document.DashboardForm;
		var errorMessages = '';
		if (form.Address1.value == '') {
			errorMessages = 'Please enter Address 1<br>';
		}
		if (form.Street.value == '') {
			errorMessages += 'Please enter Street(Area)<br>';
		}
		if (form.City.value == '') {
			errorMessages += 'Please enter City<br>';
		}
		if (form.State.value == '') {
			errorMessages += 'Please enter State<br>';
		}
		if (form.Pincode.value == '') {
			errorMessages += 'Please enter Pincode<br>';
		}
		if (errorMessages != '') {
			var errorTrIdObj = document.getElementById('errorTrId');
			var errorTdIdObj = document.getElementById('errorTdId');
			errorTdIdObj.innerHTML = errorMessages;
			errorTrIdObj.style.display = '';
			errorTdIdObj.style.color = 'red';
		} else {
			submitForm('Review.jsp');
			form.submit();
		}
	}
</script>
<jsp:include page="layout/Header.jsp" />
<%
	FERService ferservice = new FERServiceImpl();

	int id = Integer.parseInt(session.getAttribute("id").toString());
	User user = (User) session.getAttribute("user");
	user.setEmail(request.getParameter("emailId"));
	user.setMobile_number(request.getParameter("mobileNumber"));
	out.println("<table align='center' border='1' height='400px' width='250px'>");
	out.println("<tr>");
	out.println("<td colspan='2' align='center'>Update Address</td>");
	out.println("</tr>");
	out.println("<tr id='errorTrId' style='display: none'>");
	out.println("<td colspan='2' align='left' id='errorTdId'></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Address 1 <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='Address1' value= " + user.getAddress().getLine_1() + "></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Address 2</td>");
	out.println("<td><input type='text' name='Address2' value=" + user.getAddress().getLine_2() + "></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Street(area) <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='Street' value=" + user.getAddress().getStreet() + "></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>City <font color='red'>*</font></td>");
	out.println("<td><input type='text'name='City' value= " + user.getAddress().getCity() + "></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>State <font color='red'>*</font></td>");
	out.println("<td><input type='text'name='State' value=" + user.getAddress().getState() + "></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td>Pincode <font color='red'>*</font></td>");
	out.println("<td><input type='text' name='Pincode' value=" + user.getAddress().getPincode() + "></td>");
	out.println("</tr>");
	out.println("<tr>");
	out.println("<td align='center' colspan='2'>");
	out.println("<input type='button' value='Next'  onClick='validateForm()'> &nbsp; &nbsp;");
	out.println("</td>");
	out.println("</tr>");
	out.println("</table>");
%>
<jsp:include page="layout/Footer.html" />