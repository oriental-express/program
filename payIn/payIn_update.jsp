<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib  uri="/struts-tags" prefix="s"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>收入更改</title>
    
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
	var payInName = document.getElementById("payInName").value;
	var payInMoney = document.getElementById("payInMoney").value;
	var payInDate = document.getElementById("payInDate").value;
    var reg = /(^[1-9][0-9]+$)|(^[1-9]$)|(^[0-9]+\.[0-9]{0,2}$)/;
	if(payInName == ""){
		    alert("请输入收入名称");
		    return false;
		}
	if(payInMoney == ""){
		alert("请输入收入金额");
		return false;
	}
	if(!reg.test(payInMoney)){
		    alert("请输入合法的金额");
		    return false;
		}
	if(payInDate == ""){
		alert("请输入收入时间");
		return false;
	}else{
		return true;
	}
}
</script>
  </head>
  
  <body>
   <form method="post" name="payIn_update" id="payIn_update" action="payInUpdate">
<table width="99%" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="2" class="title_s">修改收入</td>
  </tr>
  <tr>
    <td width="10%" class="tr_s">收入名称:</td>
    <td width="89%" class="tr_s"><input name="payInName" type="text" id="payInName" size="30" value="<s:property value="payIn.payInName"/>"/>
      <span class="mark">*</span></td>
  </tr>
  <tr>
    <td class="tr_s">收入金额:</td>
    <td class="tr_s"><input type="text" name="payInMoney" id="payInMoney" size="30" value="<s:property value="payIn.payInMoney"/>"/>
      <span class="mark">*</span></td>
  </tr>
  <tr>
    <td class="tr_s">收入日期:</td>
    <td class="tr_s"><input type="text" name="payInDate" id="payInDate" size="30" onclick="return showCalendar('payInDate', 'y-mm-dd');" value="<s:property value="payIn.payInDate"/>"/>
      <span class="mark">*</span></td>
  </tr>
  <tr>
    <td colspan="2" class="tr_s">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="submit" type="submit" class="btn" id="submit" value="添加" onclick="return sub()"/>
	<input type="hidden" name="id" id="id" value="<s:property value="payIn.id"/>"/>
	<input name="reset" type="reset" class="btn" id="reset" value="重置"/>
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<span class="mark" >注:(带有*必填)</span></td>
  </tr>
</table>
</form>
  </body>
</html>
