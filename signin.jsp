<%@ page import="java.sql.*"%>
<%
        String username=request.getParameter("username");
		String pass1=request.getParameter("pass1");
		boolean b=false;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///330database","root","root123");
			PreparedStatement ps1=con.prepareStatement("select username,pass1 from signin where username='" +username+"'");
			ResultSet rs = ps1.executeQuery();
			while(rs.next())
			{
				if(username.equals(rs.getString(1))&& pass1.equals(rs.getString(2)))
				{
					session=request.getSession();
					session.setAttribute("username",username);
					b=true;
					break;
				}
			}
			if(!b)
			{
%>
<html><font color="blue" style='position:absolute; top:64px; left:800px'>incorrect username or password</font></html>
<jsp:include page="index.html"/>
<%
			}
			else
			{
%>
				<jsp:include page="maininbox.jsp"/>
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