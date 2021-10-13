<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>INDEX</title>
</head>
<body>

<style>
a { 
	color : blue;
	font-size : 20px;
	font-weight : bold;
	text-decoration : none;
}
</style>

<a href="https://accounts.google.com/o/oauth2/v2/auth?scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar.readonly%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar&access_type=offline&include_granted_scopes=true&response_type=code&state=state_parameter_passthrough_value&redirect_uri=http%3A%2F%2Flocalhost%3A8888%2Fcode&client_id=414804857670-0geph95alpe2i9h4fia9leroqmrla70j.apps.googleusercontent.com">구글 로그인</a>

<!-- sample code 
 https://accounts.google.com/o/oauth2/v2/auth?
 scope=https%3A//www.googleapis.com/auth/drive.metadata.readonly&
 access_type=offline&
 include_granted_scopes=true&
 response_type=code&
 state=state_parameter_passthrough_value&
 redirect_uri=https%3A//oauth2.example.com/code&
 client_id=client_id
 
code 값 수정
 [1] scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar.readonly%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar&
 [2] redirect_uri=http%3A%2F%2Flocalhost%3A8888%2Fcode&
 	[2-1] http://localhost:8888/code
 	[2-2] http%3A%2F%2Flocalhost%3A8888%2Fcode
 [3] client_id=414804857670-0geph95alpe2i9h4fia9leroqmrla70j.apps.googleusercontent.com
 
수정완료
 https://accounts.google.com/o/oauth2/v2/auth?
 scope=https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar.readonly%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar&
 access_type=offline&
 include_granted_scopes=true&
 response_type=code&
 state=state_parameter_passthrough_value&
 redirect_uri=http%3A%2F%2Flocalhost%3A8888%2Fcode&
 client_id=414804857670-0geph95alpe2i9h4fia9leroqmrla70j.apps.googleusercontent.com
-->

<!-- Calendar API list : 한줄로 encoding 후 sample code의 scope 값으로 붙여넣기
https://www.googleapis.com/auth/calendar.readonly
https://www.googleapis.com/auth/calendar
[1] https://www.googleapis.com/auth/calendar.readonly https://www.googleapis.com/auth/calendar
[2] https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar.readonly%20https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcalendar
-->

</body>
</html>