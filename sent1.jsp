<%@ page import="java.sql.*"%>
<%! Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
	<table border="1">
		<tr>
			<td>S.no</td>
			<td>Receiver</td>
			<td>Subject</td>
			<td>Message</td>
			<td>Sender</td>
			<td>Date</td>
		</tr>
	

<%
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql:///330database","root","root123");
	 ps=con.prepareStatement("select * from sentdetail");
	 rs=ps.executeQuery();
	 while(rs.next())
	 {
%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
	
	
	
	
<%
	 }
%>
	</tr>
</table>