<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<script type="text/javascript">
function button_click(){
	 document.write("<center><table><tr><td> </td><th>ȣ����</th><th>������</th><th>���</th><th>����</th></tr>");
	 document.write("<tr><th>����</th><td>${MTiger}</td><td>${MEagle}</td><td>${MApple}</td><td>${MStraw}</td></tr>");
	 document.write("<tr><th>����</th><td>${WTiger}</td><td>${WEagle}</td><td>${WApple}</td><td>${WStraw}</td></tr></table>");
	 document.write("<div>�������� �� �����ڼ� <br/>${TotalCount} ��</div> </center>")
}
function changeText(){
    var choice=document.getElementById("optionName")
	if(choice.selectedIndex==1){
	document.getElementById("radio1").innerHTML="���"
	document.getElementById("radio2").innerHTML="����"
	}
	else
	{
	document.getElementById("radio1").innerHTML="ȣ����"
	document.getElementById("radio2").innerHTML="������"
		}
}
</script>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body style="text-align:center;">
<h1>�� �� �� ��</h1>
<form action="/insertProc" method="post">

<%int a=0; %>
<%if(session.getAttribute("check") == "OK"){%>
<%if(a==0){%>
	������ �����Ͽ����ϴ�.<br/>
	<button onclick="button_click();">�������</button>
<%} %>
<%}else{%>
����
<input type="radio" name="gender" value="m" checked/>��
<input type="radio" name="gender" value="w"/>��
<br/><br/>
<select name="content1" onchange="changeText()" id="optionName">
	<option value="1">����� �����ϴ� ������?</option>
	<option value="2">����� �����ϴ� ������?</option>
</select>
<br/>
<br/>
<input type="radio" name="q1" value="1" checked><label id ="radio1">ȣ����</label>
<input type="radio" name="q1" value="2"><label id ="radio2">������</label><br/>
<button type="submit">����</button>
<%} %>
</form>
</body>
</html>