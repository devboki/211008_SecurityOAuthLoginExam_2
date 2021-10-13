<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>CODE</title>
</head>
<body>

<style>
a { 
	color : blue;
	font-size : 12px;
	font-weight : bold;
	text-decoration : none;
}
div { 
	color : red;
	font-weight : bold;
	font-size : 20px;
}
input {
	width : 300px;
}
form {
	font-size : 12px;
}
</style>

<div>코드를 받았습니다</div><br />

<form action="https://oauth2.googleapis.com/token" method="post" enctype="application/x-www-form-urlencoded">
	code : <input type="text" name="code" value="4/0AX4XfWhD2UnCkYkpbOOGkVad9fydseJTvVqG6trkMCW-EjVLnMnnwVJTmchlkFTmi_Fhzw"><br />
	client_id : <input type="text" name="client_id" value="414804857670-0geph95alpe2i9h4fia9leroqmrla70j.apps.googleusercontent.com"><br />
	client_secret : <input type="text" name="client_secret" value="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"><br />
	redirect_uri : <input type="text" name="redirect_uri" value="http://localhost:8888/code"><br />
	grant_type : <input type="text" name="grant_type" value="authorization_code"><br />
	<input type="submit" value="token 받기">
</form>
<br />

<a href="/">INDEX</a>


<!-- code 데이터 추출
[1] http://localhost:8888/code?state=state_parameter_passthrough_value&code=4/0AX4XfWhD2UnCkYkpbOOGkVad9fydseJTvVqG6trkMCW-EjVLnMnnwVJTmchlkFTmi_Fhzw&scope=https://www.googleapis.com/auth/calendar%20https://www.googleapis.com/auth/calendar.readonly
[2] 4/0AX4XfWhD2UnCkYkpbOOGkVad9fydseJTvVqG6trkMCW-EjVLnMnnwVJTmchlkFTmi_Fhzw

sample code
 POST /token HTTP/1.1
 Host: oauth2.googleapis.com
 Content-Type: application/x-www-form-urlencoded

 code=4/P7q7W91a-oMsCeLvIaQm6bTrgtp7&
 client_id=your_client_id&
 client_secret=your_client_secret&
 redirect_uri=https%3A//oauth2.example.com/code&
 grant_type=authorization_code
 
 [1] POST /token : form action path [ https://oauth2.googleapis.com/token ]
 [2] Host : form action host [ https://oauth2.googleapis.com ]
 [3] Content-Type : enctype
-->
</body>
</html>