<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<script type="text/javascript">
function button_click(){
	 document.write("<center><table><tr><td> </td><th>호랑이</th><th>독수리</th><th>사과</th><th>딸기</th></tr>");
	 document.write("<tr><th>남자</th><td>${MTiger}</td><td>${MEagle}</td><td>${MApple}</td><td>${MStraw}</td></tr>");
	 document.write("<tr><th>여자</th><td>${WTiger}</td><td>${WEagle}</td><td>${WApple}</td><td>${WStraw}</td></tr></table>");
	 document.write("<div>설문조사 총 참여자수 <br/>${TotalCount} 명</div> </center>")
}
function changeText(){
    var choice=document.getElementById("optionName")
	if(choice.selectedIndex==1){
	document.getElementById("radio1").innerHTML="사과"
	document.getElementById("radio2").innerHTML="딸기"
	}
	else
	{
	document.getElementById("radio1").innerHTML="호랑이"
	document.getElementById("radio2").innerHTML="독수리"
		}
}
</script>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body style="text-align:center;">
<h1>설 문 조 사</h1>
<form action="/insertProc" method="post">

<%int a=0; %>
<%if(session.getAttribute("check") == "OK"){%>
<%if(a==0){%>
	설문을 참가하였습니다.<br/>
	<button onclick="button_click();">결과보기</button>
<%} %>
<%}else{%>
성별
<input type="radio" name="gender" value="m" checked/>남
<input type="radio" name="gender" value="w"/>여
<br/><br/>
<select name="content1" onchange="changeText()" id="optionName">
	<option value="1">당신이 좋아하는 동물은?</option>
	<option value="2">당신이 좋아하는 과일은?</option>
</select>
<br/>
<br/>
<input type="radio" name="q1" value="1" checked><label id ="radio1">호랑이</label>
<input type="radio" name="q1" value="2"><label id ="radio2">독수리</label><br/>
<button type="submit">제출</button>
<%} %>
</form>
</body>
</html>