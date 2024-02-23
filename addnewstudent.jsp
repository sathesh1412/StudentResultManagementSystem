
<%@page import="java.sql.*" %>

<%
 String course = request.getParameter("course");
String rollno = request.getParameter("rollnum");
String name = request.getParameter("name");
String fathername = request.getParameter("fathername");
String gender = request.getParameter("gender");


try{
	 Class.forName("com.mysql.jdbc.Driver");
	   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentresultDB","root","stks123$");
		Statement st = con.createStatement();
	st.executeUpdate("insert into student values('"+course+"', '"+rollno+"', '"+name+"', '"+fathername+"', '"+gender+"')");
	response.sendRedirect("adminHome.jsp");
}
catch(Exception e)
{
	out.println(e);
}


%>