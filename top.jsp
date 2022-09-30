<table border="0" width="1447" height="116">
	<tr>
		<td height="49" width="182">&nbsp;</td>
		<td height="49" width="554">&nbsp;</td>
		<td height="49" width="540">
		
		<%
		String email=(String)session.getAttribute("username");
		%>		
		<html><font color=blue><b>Hello <%=email %><br>

		
		
		
		</td>
		<td height="49" width="151"><a href="signout.jsp">SignOut</a></td>
	</tr>
	<tr>
		<td height="57" width="182">&nbsp;</td>
		<td height="57" width="554">
		<form method="POST" action="--WEBBOT-SELF--">
			<!--webbot bot="SaveResults" U-File="fpweb:///_private/form_results.csv" S-Format="TEXT/CSV" S-Label-Fields="TRUE" -->
			<p><input type="text" name="T1" size="20"><input type="submit" value="web search" name="search">&nbsp;
			<input type="text" name="T2" size="20"><input type="reset" value="search" name="B2"></p>
		</form>
		<p>&nbsp;</td>
		<td height="57" width="540">&nbsp;</td>
		<td height="57" width="151">&nbsp;</td>
	</tr>
</table>
