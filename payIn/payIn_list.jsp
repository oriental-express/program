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
    
    <title>收入查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link href="<%=basePath%>css/common_view.css" rel="stylesheet" type="text/css" />
<link href="<%=basePath%>css/common_btn.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
        function payInDelete(id){
             if(confirm("确定删除吗?")){
            	   location.href = "payInDelete?id="+id;
            	   return true;
                 }
             else{
                    return false;
                 }
             
            }
        function payInGet(id){
                if(confirm("确定修改吗?")){
                        location.href = "payInGet?id="+id;
                        return true;
                    }
                else{
                        return false;
                    }
            }
</script>
  </head>
  
  <body>
    <table width="99%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <th colspan="6" class="title">支出管理</th>
  </tr>
  <tr>
    <td class="td" width="9%">编号</td>
    <td class="td" width="30%">支出名称</td>
    <td class="td" width="20%">支出金额</td>
    <td class="td" width="20%">支出日期</td>
    <td class="td" width="10%">修改</td>
    <td class="td" width="10%">删除</td>
  </tr>
  <s:iterator value="payIns" var="payIn" status="index">
  <tr>
    <td class="td"><s:property value="#index.Index+1"/></td>
    <td class="td"><s:property value="#payIn.payInName"/></td>
    <td class="td"><s:property value="#payIn.payInMoney"/></td>
    <td class="td"><s:property value="#payIn.payInDate"/></td>
    <td class="td"><input type="button" name="update" id="update" value="修改" class="btn" onclick="return payInGet(<s:property value="#payIn.id"/>)"/></td>
    <td class="td"><input type="button" name="delete" id="delete" value="删除" class="btn" onclick="return payInDelete(<s:property value="#payIn.id"/>)"/></td>
  </tr>
</s:iterator>
</table>
  </body>
</html>
