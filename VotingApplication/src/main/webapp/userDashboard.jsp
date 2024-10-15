<%@page import="com.jsp.VotingApplication.Entity.CandidateList"%>
<%@page import="java.util.List"%>
<%@page import="com.jsp.VotingApplication.Entity.Voter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user dashboard</title>
<style type="text/css">
* {
	padding: 0px;
	margin: 0px;
}
body{
        height: 95vh;
    }
    #nav{
        height: 8em;
        background-color: rgb(0, 255, 145);
        box-shadow: 5px 5px 10px rgb(47, 47, 47);
        display: flex;
        flex-direction: row;
        justify-content: flex-start;
        justify-content: flex-start;
        justify-content: space-evenly;
        clip-path: polygon(100% 0%, 0% 0% , 0.00% 96.95%, 1.00% 96.62%, 2.00% 96.12%, 3.00% 95.48%, 4.00% 94.69%, 5.00% 93.77%, 6.00% 92.72%, 7.00% 91.57%, 8.00% 90.32%, 9.00% 88.99%, 10.00% 87.60%, 11.00% 86.17%, 12.00% 84.72%, 13.00% 83.25%, 14.00% 81.80%, 15.00% 80.38%, 16.00% 79.01%, 17.00% 77.71%, 18.00% 76.49%, 19.00% 75.37%, 20.00% 74.36%, 21.00% 73.47%, 22.00% 72.73%, 23.00% 72.13%, 24.00% 71.68%, 25.00% 71.40%, 26.00% 71.28%, 27.00% 71.32%, 28.00% 71.53%, 29.00% 71.90%, 30.00% 72.43%, 31.00% 73.11%, 32.00% 73.93%, 33.00% 74.88%, 34.00% 75.95%, 35.00% 77.13%, 36.00% 78.39%, 37.00% 79.73%, 38.00% 81.13%, 39.00% 82.57%, 40.00% 84.03%, 41.00% 85.49%, 42.00% 86.94%, 43.00% 88.35%, 44.00% 89.70%, 45.00% 90.99%, 46.00% 92.19%, 47.00% 93.29%, 48.00% 94.27%, 49.00% 95.13%, 50.00% 95.84%, 51.00% 96.41%, 52.00% 96.82%, 53.00% 97.06%, 54.00% 97.15%, 55.00% 97.07%, 56.00% 96.82%, 57.00% 96.42%, 58.00% 95.86%, 59.00% 95.14%, 60.00% 94.29%, 61.00% 93.31%, 62.00% 92.22%, 63.00% 91.02%, 64.00% 89.74%, 65.00% 88.38%, 66.00% 86.97%, 67.00% 85.53%, 68.00% 84.07%, 69.00% 82.61%, 70.00% 81.17%, 71.00% 79.77%, 72.00% 78.43%, 73.00% 77.16%, 74.00% 75.98%, 75.00% 74.90%, 76.00% 73.95%, 77.00% 73.12%, 78.00% 72.44%, 79.00% 71.91%, 80.00% 71.54%, 81.00% 71.32%, 82.00% 71.28%, 83.00% 71.39%, 84.00% 71.67%, 85.00% 72.12%, 86.00% 72.71%, 87.00% 73.45%, 88.00% 74.33%, 89.00% 75.34%, 90.00% 76.46%, 91.00% 77.68%, 92.00% 78.98%, 93.00% 80.35%, 94.00% 81.77%, 95.00% 83.22%, 96.00% 84.68%, 97.00% 86.14%, 98.00% 87.57%, 99.00% 88.96%, 100.00% 90.28%); 
        }
        button{
            width: 12em;
            height: 2.5em;
            border: none;
            outline: none;
            border-radius: 20px;
            margin-top: 20px;
            cursor: pointer;
            background-image: linear-gradient(90deg,rgb(255, 214, 7),orange);
            box-shadow: -2px -2px 5px black;
        }
        button:hover{
            box-shadow: 2px 2px 5px black;
        }
        a{
            text-decoration: none;
            font-size: larger;
            font-weight: bolder;
        }
    #signUp{
        height: 90%;
        display: flex;
        flex-direction: row;
        padding: 34px;
        column-gap: 18px;
    }
    .divs{
        width: 50%;
        height: 100%;
        border-radius: 17px;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        overflow: hidden;
    }
    .divs:nth-child(2){
       background-color:#55B4B0;
    }
    table,tr,th,td{
        border: 3px groove rgb(0, 106, 255);
        border-collapse: collapse;
    }
    #candiProfile{
            width: 22em;
            height: 3em;
            border-radius: 25px;
            background-image: linear-gradient(90deg,deepskyblue,rgb(222, 238, 252));
            display: flex;
            flex-direction: row;
            align-items: center;
            box-shadow: 2px 2px 5px rgb(117, 116, 116);
            justify-content: flex-start;
            column-gap: 10px;
            transition: 0.3s;
    }
    #candiProfile:hover{
      transform: translateY(-5px);
      box-shadow: 0px 5px 10px rgb(70, 70, 70);
    }
    #votButt{
        width: 5em;
        height: 2em;
        background-color: dodgerblue;
        outline: none;
        border: none;
        border-radius: 3px;
        color: aliceblue;
        font-weight: bolder;
        box-shadow: 0px 5px 10px black;
    }
    form{
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }
    #doVote{
          padding-left: 460px;
          transition:ease-in 0.4s;
          color: transparent;
          letter-spacing: 6px;
    }
    .divs:hover #doVote{
        padding-left: 0px;
        color: black;
        text-shadow: 2px 2px 2px rgb(94, 94, 94);
    }
</style>
</head>
<body>
	<%
	Voter vtr = (Voter) request.getAttribute("voter");
	%>
    <div id="nav">
        <button><a href="VoterHomePage.jsp">Home</a></button>
        <button><a href=""><%=vtr.getFirstName()%></a></button>
        <button><a href="ApplyCandidate.jsp">ApplyCandidate</a></button>
        <button><a href="VoterHomePage.jsp">Logout</a></button>
    </div>
    <div id="signUp">
        <div class="divs">
            <h1>Voter Details</h1>
            <img style="width: 12rem;height: 12rem;border-radius: 100%;" src="candi.jpg" alt="">
            <table>
                <tr style="background-image: linear-gradient(90deg,rgb(0, 255, 26),rgb(222, 238, 252));">
                    <th>ID</th>
                    <td><%=vtr.getId()%></td>
                </tr>
                <tr>
                    <th>Name</th>
                    <td><%=vtr.getFirstName()%></td>
                </tr>
                <tr style="background-image: linear-gradient(90deg,rgb(0, 255, 26),rgb(222, 238, 252));">
                    <th>Email Adress</th>
                    <td><%=vtr.getEmail()%></td>
                </tr>
                <tr>
                    <th>Aadhar Number</th>
                    <td><%=vtr.getAdhaar_num()%></td>
                </tr>
                <tr style="background-image: linear-gradient(90deg,rgb(0, 255, 26),rgb(222, 238, 252));">
                    <th>Date Of Birth</th>
                    <td><%=vtr.getDob()%></td>
                </tr>
                <tr>
                    <th>Gender</th>
                    <td><%=vtr.getGender()%></td>
                </tr>
                <tr style="background-image: linear-gradient(90deg,rgb(0, 255, 26),rgb(222, 238, 252));">
                    <th>Phone Number</th>
                    <td><%=vtr.getPhone()%></td>
                </tr>
                <tr>
                    <th>Status</th>

                    <%
                    if (vtr.getStatus().equalsIgnoreCase("not voted")) {
                    %>
                    <td style="color: red; font-weight: bolder;"><%=vtr.getStatus()%>
                    </td>
                    <%
                    } else {
                    %>
                    <td style="color: green; font-weight: bolder;"><%=vtr.getStatus()%>
                    </td>
                    <%
                    }
                    %>
                </tr>
            </table>
        </div>
        <div class="divs">
            <h1 style="text-shadow: 2px 2px 1px rgb(108, 108, 108);color: red;"><%=vtr.getFirstName()%></h1><br>
            <h2 id="doVote">Do Voting</h2><br>
            <%
				List<CandidateList> candList = (List) request.getAttribute("listOfCan");
				for (CandidateList can : candList) {
			%>
            <form action="addVote">
                <div id="candiProfile">
                    <img style="width: 4rem;height: 4em;border-radius: 100%;" src="candi.jpg" alt="candidate">
                    <label style="font-size: 20px;font-weight: bold;"><%=can.getcName()%></label>
                    <input type="radio" name="candidate" value="<%=can.getcEmail()%>">
                </div><br>
                <%
					}
					if (vtr.getStatus().equalsIgnoreCase("not voted")) {
				%>
                <input type="hidden" name="voter" value="<%=vtr.getEmail()%>">
				<input id="votButt" type="submit" value="Vote">
            </form>

            <%
				}
				String candName = (String) request.getAttribute("name");
				if (candName != null) {
				%>
				<h2 style="color: blue;"><%=vtr.getFirstName()%>
					you have voted to
					<%=candName%></h2>
				<%
				}
			%>
        </div>
    </div>
</body>
</html>