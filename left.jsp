<html>
	<head>
		<style>
			.div-modal{
				top: 15rem;
				visibility: visible;
				position: absolute;
				
				left: 50rem;

			}
		</style>
	</head>
	<body>
		<style>
			.div-modal{
				width:40%;
				height:40%;
				visibility:hidden;
			}
			span{
				cursor:pointer;
			}
		</style>
		<script>
			function show(){
				let modal=document.getElementById("modal");
				modal.style.visibility="visible";
			}
			function hide(){
				let modal=document.getElementById("modal");
				modal.style.visibility="hidden";
			}
		</script>
<table border="0" width="247" height="390">
	<tr>
		<td height="44" width="237" align="center"><button onclick="show()">Compose</button></a></td>
	</tr>
	<tr>
		<td height="38" width="237" align="center"><a href="inbox1.jsp">Inbox</a></td>
	</tr>
	<tr>
		<td height="42" width="237" align="center"><a href="sent2.jsp">Sent</a></td>
	</tr>
	<tr>
		<td height="36" width="237" align="center"><a href="draft1.jsp">Draft</a></td>
	</tr>
	<tr>
		<td height="38" width="237" align="center"><a href="starred1.jsp">Starred</a></td>
	</tr>
	<tr>
		<td height="37" width="237" align="center"><a href="trash1.jsp">Trash</a></td>
	</tr>
	<tr>
		<td height="40" width="237" align="center">&nbsp;</td>
	</tr>
	<tr>
		<td height="78" width="237" align="center">&nbsp;</td>
	</tr>
</table>
<div id="modal" class="div-modal" >
	<span onclick="hide()">&times;</span>
	<form method="post" action="composemail.jsp">
		<table>
			<tr>
				<td>
					<p>
					
					</p>
				</td>
			</tr>
			<tr>
				<td>To
					<input type="text" name="receiver">
				</td>
			</tr>
			<tr>
				<td>
					Subject <input type="text" name="subject">
				</td>
			</tr>
			<tr>
				<td>
					Message
				</td>
			</tr>
			<tr>
				<td>
					<textarea name="message"></textarea>
				</td>
			</tr>
			<tr>
				<td><input type="submit" value="send" />
				<input type="button" value="discard" />
				<input type="button" value="draft"></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>