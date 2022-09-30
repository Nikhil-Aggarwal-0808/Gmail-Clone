<%@ page import="java.sql.*"%>
<%! Connection con;
	PreparedStatement ps;
	ResultSet rs;
%>
<body>
	<script>
		function getXMLObject() //XML OBJECT
			{
				var xmlHttp = false;
				try 
				{
					xmlHttp = new ActiveXObject("Msxml2.XMLHTTP") // For Old Microsoft Browsers
				}
				catch (e)
				{
					try
					{
						xmlHttp = new ActiveXObject("Microsoft.XMLHTTP") // For Microsoft IE 6.0+
					}
					catch (e2) 
					{
						xmlHttp = false // No Browser accepts the XMLHTTP Object then false
					}
				}
				if (!xmlHttp && typeof XMLHttpRequest != 'undefined') 
				{
					xmlHttp = new XMLHttpRequest(); //For Mozilla, Opera Browsers
				}
				return xmlHttp; // Mandatory Statement returning the ajax object created
			}

			var xmlhttp = new getXMLObject();	//xmlhttp holds the ajax object

			function statuscheck(a)
			{
	//var getdate = new Date(); //Used to prevent caching during ajax call

					if(xmlhttp) 
					{ 
				
						xmlhttp.open("GET","inbox3.jsp?id="+a); //gettime will be the servlet name
						xmlhttp.onreadystatechange = handleServerResponse;
						xmlhttp.send();
					}
					document.getElementById('check').style.background-color=aqua;
				
			}

			function handleServerResponse() 
			{
				if (xmlhttp.readyState == 4) 
				{
					if(xmlhttp.status == 200) 
					{
						//document.getElementById("disp").innerHTML=xmlhttp.responseText; //Update the HTML Form element 
					let status=xmlhttp.responseText;	
					}
					else 
					{
						alert("Error during AJAX call. Please try again");
					}
				}
			}
	</script>
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
	 ps=con.prepareStatement("select * from messdetail");
	 rs=ps.executeQuery();
	 while(rs.next())
	 {
%>
	<tr onclick="statuscheck(<%=rs.getString(1)%>)" <% if(rs.getString(7).equals("true")){%> style= "background-color:aqua"<%}%> id="check">
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
	</body>