<%@page import="com.jsp.VotingApplication.Entity.Voter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Voters</title>
<style>
* {
	padding: 0px;
	margin: 0px;
}

body {
	height: 95vh;
}

#nav {
	height: 8em;
	background-color: rgb(0, 255, 145);
	box-shadow: 5px 5px 10px rgb(47, 47, 47);
	display: flex;
	flex-direction: row;
	justify-content: flex-start;
	justify-content: flex-start;
	justify-content: space-evenly;
	clip-path: polygon(100% 0%, 0% 0%, 0.00% 96.95%, 1.00% 96.62%, 2.00% 96.12%, 3.00%
		95.48%, 4.00% 94.69%, 5.00% 93.77%, 6.00% 92.72%, 7.00% 91.57%, 8.00%
		90.32%, 9.00% 88.99%, 10.00% 87.60%, 11.00% 86.17%, 12.00% 84.72%,
		13.00% 83.25%, 14.00% 81.80%, 15.00% 80.38%, 16.00% 79.01%, 17.00%
		77.71%, 18.00% 76.49%, 19.00% 75.37%, 20.00% 74.36%, 21.00% 73.47%,
		22.00% 72.73%, 23.00% 72.13%, 24.00% 71.68%, 25.00% 71.40%, 26.00%
		71.28%, 27.00% 71.32%, 28.00% 71.53%, 29.00% 71.90%, 30.00% 72.43%,
		31.00% 73.11%, 32.00% 73.93%, 33.00% 74.88%, 34.00% 75.95%, 35.00%
		77.13%, 36.00% 78.39%, 37.00% 79.73%, 38.00% 81.13%, 39.00% 82.57%,
		40.00% 84.03%, 41.00% 85.49%, 42.00% 86.94%, 43.00% 88.35%, 44.00%
		89.70%, 45.00% 90.99%, 46.00% 92.19%, 47.00% 93.29%, 48.00% 94.27%,
		49.00% 95.13%, 50.00% 95.84%, 51.00% 96.41%, 52.00% 96.82%, 53.00%
		97.06%, 54.00% 97.15%, 55.00% 97.07%, 56.00% 96.82%, 57.00% 96.42%,
		58.00% 95.86%, 59.00% 95.14%, 60.00% 94.29%, 61.00% 93.31%, 62.00%
		92.22%, 63.00% 91.02%, 64.00% 89.74%, 65.00% 88.38%, 66.00% 86.97%,
		67.00% 85.53%, 68.00% 84.07%, 69.00% 82.61%, 70.00% 81.17%, 71.00%
		79.77%, 72.00% 78.43%, 73.00% 77.16%, 74.00% 75.98%, 75.00% 74.90%,
		76.00% 73.95%, 77.00% 73.12%, 78.00% 72.44%, 79.00% 71.91%, 80.00%
		71.54%, 81.00% 71.32%, 82.00% 71.28%, 83.00% 71.39%, 84.00% 71.67%,
		85.00% 72.12%, 86.00% 72.71%, 87.00% 73.45%, 88.00% 74.33%, 89.00%
		75.34%, 90.00% 76.46%, 91.00% 77.68%, 92.00% 78.98%, 93.00% 80.35%,
		94.00% 81.77%, 95.00% 83.22%, 96.00% 84.68%, 97.00% 86.14%, 98.00%
		87.57%, 99.00% 88.96%, 100.00% 90.28%);
}

button {
	width: 12em;
	height: 2.5em;
	border: none;
	outline: none;
	border-radius: 20px;
	margin-top: 20px;
	cursor: pointer;
	background-image: linear-gradient(90deg, rgb(255, 214, 7), orange);
	box-shadow: -2px -2px 5px black;
}

button:hover {
	box-shadow: 2px 2px 5px black;
}

a {
	text-decoration: none;
	font-size: larger;
	font-weight: bolder;
}

#container {
	width: 100%;
	height: 100%;
	/* background-color: darkkhaki; */
	display: flex;
	align-items: center;
	flex-direction: column;
}

#innerCont {
	display: flex;
	justify-content: center;
	align-items: center;
}

table, tr, th, td {
	border: 3px groove blue;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<div id="nav">
		<button>
			<a href="VoterHomePage.jsp">Home</a>
		</button>
		<button>
			<a href="viewAllAdmins">View Admins</a>
		</button>
		<button>
			<a href="getVoters">View Voters</a>
		</button>
		<button>
			<a href="AllCandies">View Candidates</a>
		</button>
		<button>
			<a href="VoterHomePage.jsp">LogOut</a>
		</button>

	</div>
	<div id="container">
		<u><h1>Voters</h1></u><br>
		<div id="innerCont">
			<table>
				<tr
					style="background-image: linear-gradient(90deg, orange, rgb(114, 179, 237));">
					<th>Email</th>
					<th>Frst Name</th>
					<th>Last Name</th>
					<th>Date Of Birth</th>
					<th>Adhaar Number</th>
					<th>PanCard Number</th>
					<th>Password</th>
					<th>Mobile Number</th>
					<th>Adress</th>
					<th>Vote Status</th>
				</tr>
				<%
				    List<Voter> vtr= (List)request.getAttribute("getAllVoters");
				    for (Voter v : vtr) {
				%>
				<tr>
					<th><%=v.getEmail()%></th>
					<th><%=v.getFirstName() %></th>
					<th><%=v.getLastName() %></th>
					<th><%=v.getDob() %></th>
					<th><%=v.getAdhaar_num() %></th>
					<th><%=v.getPanNum() %></th>
					<th><%=v.getPassword() %></th>
					<th><%=v.getPhone() %></th>
					<th><%=v.getAdress() %></th>
					<%
					if(v.getStatus().equalsIgnoreCase("voted"))
					{
					%>
					<th style="color: green"><%=v.getStatus() %></th>
					<%
					}
					else
					{
					 %>
					 <th style="color: red"><%=v.getStatus() %></th>
					 <%
					}
					 %>
				</tr>
				<%
				}
				%>
			</table>
		</div>
	</div>
</body>
</html>