<%@ page import="java.sql.*, java.util.Date"%>
<%! Connection con=null;%>
<% String receiver=request.getParameter("receiver");
    String subject=request.getParameter("subject");
    String message=request.getParameter("message");
    String sender=(String)session.getAttribute("username");
	Date d=new Date();
	String dd =d.toString();
	String status="false";
    boolean b=false;
    try{
        Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql:///330database","root","root123");
			PreparedStatement ps=con.prepareStatement("insert into messdetail(receiver,subject,message,sender,date,status)values(?, ?, ? , ?, ?, ?)");
            ps.setString(1,receiver);
			ps.setString(2,subject);
			ps.setString(3,message);
			ps.setString(4,sender);
			ps.setString(5,dd);
			ps.setString(6,status);
			ps.executeUpdate(); 
			ps=con.prepareStatement("insert into sentdetail(receiver,subject,message,sender,date,status)values(?, ?, ? , ?, ?, ?)");
            ps.setString(1,receiver);
			ps.setString(2,subject);
			ps.setString(3,message);
			ps.setString(4,sender);
			ps.setString(5,dd);
			ps.setString(6,status);
			ps.executeUpdate(); 
			response.sendRedirect("maininbox.jsp");
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