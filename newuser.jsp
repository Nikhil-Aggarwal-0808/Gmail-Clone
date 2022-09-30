<%@ page import="java.sql.*"%>
<%
		String fname =request.getParameter("fname");
        String lname =request.getParameter("lname");
        String pass2=request.getParameter("pass2");
        String username=request.getParameter("username");
		String pass1=request.getParameter("pass1");
		boolean b=false;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///330database","root","root123");
			PreparedStatement ps=con.prepareStatement("insert into signin values(?, ?, ?, ?, ?)");
            ps.setString(1,fname);
            ps.setString(2,lname);
			ps.setString(3,username);
			ps.setString(4,pass1);
			ps.setString(5,pass2);
			PreparedStatement ps1=con.prepareStatement("select username,fname,lname from signin where username='" +username+"'");
			ResultSet rs = ps1.executeQuery();
			while(rs.next())
			{
				if(username.equals(rs.getString(1)))
				{
					b=true;
					break;
				}
			}
			if(b)
			{
%>
<html><font color="blue" style='position:absolute; top:64px; left:800px'>username already exists</font></html>
<jsp:include page="newuser.html"/>
<%
			}
			else
			{
				ps.executeUpdate();
%>
				<jsp:include page="index.html"/>
<%
		}
		}
		catch(SQLException e){
			out.print(e);
		}
		catch(ClassNotFoundException e){
			out.print(e);
		}
		catch(NumberFormatException e){
			out.print(e);
		}
		
%>