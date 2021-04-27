<%@ 
	page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Hello World</title>
</head>
<body>

	<!-- 
		scriptlet tag: used to write or insert java codes in JSP.
		In sriptlet tag we can only declare fields(variables) not methods.
		Is placed inside _jspService() method so get memory at each request.
	-->
	<%
		int a=4;
		int b=6;
		out.println("4+6 = "+(a+b));
	%>
	
	<!-- Expression Tag: used to output contents to output stream without out.print() -->
	<p><%= "This is from expression tag" %></p>
	
	<!-- 
		Declaration tag: it is used to declare fields(variables) and methods(functions).
		Is placed outside _jspService() method so doesn't get memory at each request.
	-->
	<p>
		<%! 
			int data=10;
			boolean isEven(int num){
				return num%2==0? true:false;
			}
		%>
	</p>
	<%= "Is 10 even? "+isEven(data) %>
</body>
</html>