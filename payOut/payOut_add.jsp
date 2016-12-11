<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>支出添加</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="<%=basePath%>css/calendar.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<%=basePath%>js/calendar.js"></script>
<script type="text/javascript" src="<%=basePath%>js/calendar-setup.js"></script>
<script type="text/javascript" src="<%=basePath%>js/calendar-zh.js"></script>
<link href="<%=basePath%>css/common_add.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/common_btn.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function sub(){
	var payOutName = document.getElementById("payOutName").value;
	var payOutMoney = document.getElementById("payOutMoney").value;
	var payOutDate = document.getElementById("payOutDate").value;
	var reg = /(^[1-9][0-9]+$)|(^[1-9]$)|(^[0-9]+\.[0-9]{0,2}$)/;
	if(payOutName == ""){
		    alert("请输入支出名称");
		    return false;
		}
	if(payOutMoney == ""){
		alert("请输入支出金额");
		return false;
	}
	if(!reg.test(payOutMoney)){
	    alert("请输支出合法的金额");
	    return false;
	}
	if(payOutDate == ""){
		alert("请输入收入时间");
		return false;
	}else{
	      return true;
		}
}
</script>
  </head>
  
  <body>
    <form action="payOutAdd" method="post" name="payOut_add" id="payOut_add">
<table width="99%" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2" class="title_s">支出添加</td>
  </tr>
  <tr>
    <td width="10%" class="tr_s">支出名称:</td>
    <td width="89%" class="tr_s"><input name="payOutName" type="text" id="payOutName" size="30"/>
      <span class="mark">*</span></td>
  </tr>
  <tr>
    <td class="tr_s">支出金额:</td>
    <td class="tr_s"><input type="text" name="payOutMoney" id="payOutMoney" size="30"/>
      <span class="mark">*</span></td>
  </tr>
  <tr>
    <td class="tr_s">支出日期:</td>
       <td class="tr_s"><input type="text" name="payOutDate" id="payOutDate" size="30" onclick="return showCalendar('payOutDate', 'y-mm-dd');"/>
      <span class="mark">*</span></td>
  </tr>
  <tr>
    <td colspan="2" class="tr_s">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="submit" type="submit" class="btn" id="submit" value="添加" onclick="return sub()"/>
	<input name="reset" type="reset" class="btn" id="reset" value="重置"/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span class="mark" >注:(带有*必填)</span></td>
  </tr>
</table>
</form>
  </body>
</html>
