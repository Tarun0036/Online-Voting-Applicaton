<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HomePage</title>
<style>
* {
	padding: 0px;
	margin: 0px;
}

        body{
            height: 95vh;
            background-image: url(./homepage.jpg);
            background-size: cover;
            margin: 0px;
            padding: 15px;
            background-repeat: no-repeat;
        }
        #nav{
            height: 4.5em;
            /* background-color: aquamarine; */
            display: flex;
            flex-direction: row;
            justify-content: space-between;
        }
        .navs:nth-child(1){
            width:10em;
            height: 100%;
            /* background-color: blue; */
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .navs:nth-child(2){
            width:38em;
            height: 100%;
            /* background-color: rgb(0, 255, 72); */
            display: flex;
            flex-direction: row;
            justify-content: flex-end;
            justify-content: space-evenly;
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
       
        h1{
            font-size: 3.8rem;
            text-shadow: 2px 2px 2px rgb(255, 140, 0);
        }
        #para{
             width: 34em;
             height: 6em;
             /* background-color: rgb(255, 65, 65); */
             font-size: 1.25rem;
        }
</style>
</head>
<body>
	<div id="nav">
		<div class="navs">
			<img style="width: 5em; height: 100%;" src="./logo1.jpg">
		</div>
		<div class="navs">
			<button>
				<a href="VoterRig.jsp">VoterRegistration</a>
			</button>
			<button>
				<a href="SignIn.jsp">VoterLogin</a>
			</button>
			<button>
				<a href="AdminSignIn.jsp">AdminLogin</a>
			</button>
		</div>
	</div>
	<h1>Online Voting Application</h1>
	<div id="para">
		<p> voting system is a set of rules that determine how elections
			and referendums are conducted and how their results are determined.
			Electoral systems are used in politics to elect governments, while
			non-political elections may take place in business, non-profit
			organisations and informal organisations.</p>
	</div>
	<button>
		<a href="VoterRig.jsp">VoterRegistration</a>
	</button>
</body>
</html>