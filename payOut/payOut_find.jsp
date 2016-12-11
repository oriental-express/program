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
    
    <title>支出查找</title>
    
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
<link href="<%=basePath%>css/common_view.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/common_btn.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function payOutDelete(id){
    if(confirm("确定删除吗?")){
   	   location.href = "payOutDelete?id="+id;
   	   return true;
        }
    else{
           return false;
        }
    
   }
function payOutGet(id){
       if(confirm("确定修改吗?")){
               location.href = "payOutGet?id="+id;
               return true;
           }
       else{
               return false;
           }
   }
		        function payOutFind(){
		                var payInDate = document.getElementById("payOutDate").value;
		                location.href = "payOutFind?payOutDate="+payInDate;
		            }
</script>
	</head>
  
  <body>
   <table width="99%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="6" class="title">支出查询</th>
  </tr>
  <tr>
    <td colspan="6" class="td"> 
	支出日期:
	<input type="text" name="payOutDate" id="payOutDate" onclick="return showCalendar('payOutDate', 'y-mm-dd');" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input name="find" type="button" class="btn" id="find" value="查询" onclick="payOutFind()"/>
   </td>
  </tr>
  <tr>
    <td class="td" width="9%">编号</td>
    <td class="td" width="30%">支出名称</td>
    <td class="td" width="20%">支出金额</td>
    <td class="td" width="20%">支出日期</td>
    <td class="td" width="10%">修改</td>
    <td class="td" width="10%">删除</td>
  </tr>
 <s:iterator value="payOutList" var="payOut" status="index">
  <tr>
    <td class="td"><s:property value="#index.Index+1"/></td>
    <td class="td"><s:property value="#payOut.payOutName"/></td>
    <td class="td"><s:property value="#payOut.payOutMoney"/></td>
    <td class="td"><s:property value="#payOut.payOutDate"/></td>
    <td class="td"><input type="button" name="update" id="update" value="修改" class="btn" onclick="return payOutGet(<s:property value="#payOut.id"/>)"/></td>
    <td class="td"><input type="button" name="delete" id="delete" value="删除" class="btn" onclick="return payOutDelete(<s:property value="#payOut.id"/>)"/></td>
  </tr>
</s:iterator>
</table>
  </body>
</html>
