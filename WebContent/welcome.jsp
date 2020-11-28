<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<head>
<link rel ="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>WelCome</title>
</head>
<body>
<%@ include file="menu.jsp" %>
	<%!
		String greeting = "웹 쇼핑몰에 오신 것을 환영합니다.";
		String tagline = "Welcome to Web Market!";
	%>
	<div class="jumbotron">
		<div class = "container">
			<h1 class="display-3">
				<%=greeting%>
			</h1>
		</div>
	</div>
	<div class="container">
		<div class = "text-center">
			<h3>
				<%=tagline%>
			</h3>
			<%
			Date day = new java.util.Date();
			String am_pm;
			int h = day.getHours();
			int m = day.getMinutes();
			int s = day.getSeconds();
			if(h <= 12){
				am_pm = "AM";
			}
			else{
				am_pm = "PM";
				h=h-12;
			}
			String CT =h + ":" + m + ":" + s + " " + am_pm;
			out.println("현재 접속 시각: " + CT + "\n");
			%>	
			<%
				response.setIntHeader("Refresh", 5);
			%>
		
		</div>
		<hr>
	</div>
	<%@ include file="footer.jsp" %>
</body>
</html>