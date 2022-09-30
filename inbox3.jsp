<%@ page import="java.sql.*"%>
<%! Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
	
	

<%

	int Id=Integer.parseInt(request.getParameter("id"));
	Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection("jdbc:mysql:///330database","root","root123");
	 ps=con.prepareStatement("update messdetail set status='true' where messid='"+Id+"'");
	 ps.executeUpdate();
%>
	</tr>
</table>