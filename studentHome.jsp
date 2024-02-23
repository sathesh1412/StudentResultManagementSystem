<%@page import="java.sql.*" %>

<%

String rollno = request.getParameter("rollno");
if(rollno!=null){
	
try{
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentresultDB","root","stks123$");
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from student inner join result where student.rollno = result.rollno and student.rollno='"+rollno+"'");
	if(rs.next()){
%>




<img src="logo.png"  align="left"width="150" height="150">
<center><img src="gtn.jpg" width="150" height="150">
<img src="apj sir.png" align="right"  width="150" height="150"></center>
    <a href="dgiOneView.html">Back to home</a>
  <hr class="new1">
<style>
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: -webkit-linear-gradient(left, #25c481, #25b7c4);
  background: linear-gradient(to right, #25c481, #25b7c4);
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
        <th>GTN ARTS AND SCIENCE COLLEGE</th>
          <th>Course Name: <%=rs.getString(1) %></th>
          <th><center>RollNo: <%=rs.getString(2) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(3) %></th>
          <th>Father Name:  <%=rs.getString(4) %></th>
          <th>Gender:  <%=rs.getString(5) %></th>
          <th><a titlt="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid #726E6D;
  padding: 15px;
  color:black;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background: #625D5D;
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #D1D0CE;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Pass Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>NAS101</td>
        <td colspan="2">Artificial Intelligence </td>
        <td>Theory</td>
        <td>100</td>
        <td> 35 </td>
        <td> <%=rs.getString(7) %></td>
      </tr>
      <tr>
        <td>NAS102</td>
        <td colspan="2">Programming in Java</td>
        <td>Theory</td>
        <td>100</td>
        <td>35</td>
        <td> <%=rs.getString(8) %> </td>
      </tr>
      <tr>
        <td>NAS103</td>
        <td colspan="2">Computer Networks</td>
        <td>Theory</td>
        <td>100</td>
        <td> 35 </td>
        <td>  <%=rs.getString(9) %></td>
      </tr>
      <tr>
        <td>NEE101</td>
        <td colspan="2">Database Management </td>
        <td>Theory</td>
        <td>100</td>
        <td> 35 </td>
        <td>  <%=rs.getString(10) %></td>
      </tr>
      <tr>
        <td>NEC101</td>
        <td colspan="2">Operating System</td>
        <td>Theory</td>
        <td>100</td>
        <td> 35 </td>
        <td>  <%=rs.getString(11) %> </td>
      </tr>
      <tr>
        <td>NAS152</td>
        <td colspan="2">Web Development</td>
        <td>Theory</td>
        <td>100</td>
        <td>35</td>
        <td>  <%=rs.getString(12) %> </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>600</td>
        <td>180</td>
        <td><% int sum=rs.getInt(7)+rs.getInt(8)+rs.getInt(9)+rs.getInt(10)+rs.getInt(11)+rs.getInt(12); out.println(sum); %> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100)/600); %> %</td>
      </tr>
  </table>
    <hr class="new1">
</body>
<%
}
else{
		response.sendRedirect("errorDgiOneView.html");
	}
}

catch(Exception e){

}
}
%>
	
   