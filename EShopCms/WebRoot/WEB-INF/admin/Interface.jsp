<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.*" %>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.codec.binary.*" %>
<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><s:head/>
 
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><s:property value="configBean.getSiteName()"/><s:property value="configBean.getSiteTitle()"/>管理系统</title>   
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style>
* {margin:0; padding:0; outline:none}
body {font:10px Verdana,Arial; margin:25px; background:#fff url(images/bg.gif) repeat-x; color:#091f30}

.sortable {width:100%; border-left:1px solid #c6d5e1; border-top:1px solid #c6d5e1; border-bottom:none; margin:0 auto 15px}
.sortable th {background:url(images/header-bg.gif); height:25px; text-align:left; color:#cfdce7; border:1px solid #fff; border-right:none; font-size:12px;
text-align:center; vertical-align:middle;}
.sortable th h3 {font-size:10px; padding:6px 8px 8px}
.sortable td {padding:4px 6px 6px; border-bottom:1px solid #c6d5e1; border-right:1px solid #c6d5e1}
.sortable .head h3 {background:url(images/sort.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .desc, .sortable .asc {background:url(images/header-selected-bg.gif)}
.sortable .desc h3 {background:url(images/desc.gif) 7px center no-repeat; cursor:pointer; padding-left:18px}
.sortable .asc h3 {background:url(images/asc.gif) 7px  center no-repeat; cursor:pointer; padding-left:18px}
.sortable .head:hover, .sortable .desc:hover, .sortable .asc:hover {color:#fff}
.sortable .evenrow td {background:#fff}
.sortable .oddrow td {background:#ecf2f6}
.sortable td.evenselected {background:#ecf2f6}
.sortable td.oddselected {background:#dce6ee}

#controls {width:980px; margin:0 auto; height:25px}
#perpage {float:left; width:200px}
#perpage select {float:left; font-size:11px}
#perpage span {float:left; margin:2px 0 0 5px}
#navigation {float:left; width:580px; text-align:center}
#navigation img {cursor:pointer}
#text {float:left; width:200px; text-align:right; margin-top:2px}


body,td,th {
	font-size: 12px;
}
a:link {
	color: #666666;
}
a:visited {
	color: #666666;
}
a:hover {
	color: #666666;
}
a:active {
	color: #666666;
}
</style>
</head>

<body>
<div align="center"> 二次开发接口说明以及如何使用(更多接口请关注官方网站)</div>
<table  border="00" cellspacing="1" cellpadding="0" id="table" class="sortable">
 <thead> <tr>
    <th width="28%">接口文件</th>
    <th width="38%">接口参数</th>
    <th width="22%">接口说明</th>
    <th width="12%">备注</th>
  </tr></thead>
  <tbody>
  </tbody>
  <tr>
    <td align="left" valign="top">proAPI.jspx</td>
    <td align="left" valign="top"><p>userId 需要返回某用户的商品时，传入 为空则所有用户商品</p>
    <p>productId 获得某具体的商品时，传入 为空则所有商品</p>
    <p>channelId 获得某频道商品时候，传入 为空则所有频道商品</p>
    <p>classId 获得某栏目商品时，传入 为空所有栏目商品</p>
    <p>barCode 或得条形码商品时，传入 </p>
    <p>productName 获得商品名称时传入</p>
    <p>producerId 根据厂商或得</p>
    <p>minPrice 根据最低价格获得</p>
    <p>maxPrice 根据最高价格获得</p>
    <p>APIpage 商品分页时候页码传入</p>
    <p>APIpageSize 每页显示商品的个数</p></td>
    <td align="left" valign="top"><p>参数全为空时，返回所有的商品 所有的参数</p>
    <p>为选择商品限制</p></td>
    <td align="left" valign="top">返回数据格式:
    <img src="API/proAPI.jpg" />    </td>
  </tr>
  <tr>
    <td align="left" valign="top">newsAPI.jspx</td>
    <td align="left" valign="top">channelID;<br>
classID;<br>
title;<br>
author;<br>
editor;<br>
keyword;<br>
APIpage ;<br>
 APIpageSize;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top"><img src="API/newAPI.jpg" width="382" height="383"></td>
  </tr>
  <tr>
    <td align="left" valign="top">photoAPI.jspx</td>
    <td align="left" valign="top"><img src="API/PhotoAPI.jpg" width="181" height="146"></td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top"><img src="API/PhotoAPI.jgp.jpg" width="609" height="446"></td>
  </tr>
  <tr>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
    <td align="left" valign="top">&nbsp;</td>
  </tr>
</table>

<div id="controls">
		<div id="perpage">
			<select onChange="sorter.size(this.value)">
			<option value="5">5</option>
            <option value="1">1</option>
				<option value="10" selected="selected">10</option>
<option value="2" >2</option>
				<option value="20">20</option>
				<option value="50">50</option>
				<option value="100">100</option>
			</select>
			<span>选择您的每页的列表数目</span>
		</div>
		<div id="navigation">
			<img src="images/first.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1,true)" />
			<img src="images/previous.gif" width="16" height="16" alt="First Page" onClick="sorter.move(-1)" />
			<img src="images/next.gif" width="16" height="16" alt="First Page" onClick="sorter.move(1)" />
			<img src="images/last.gif" width="16" height="16" alt="Last Page" onClick="sorter.move(1,true)" />
		</div>
		<div id="text">当前页：<span id="currentpage"></span> 总页之<span id="pagelimit"></span></div>
	</div>
    
<script type="text/javascript" src="../jsFunction/config.js"></script>
<script type="text/javascript" src="../jQuery/jquery-latest.js"></script>
<script type="text/javascript" src="../jQuery/jquery.messager.js"></script>
<script type="text/javascript" src="../jQuery/jquery.ui.draggable.js"></script>
<script type="text/javascript" src="../jQuery/jquery.alerts.js"></script>
<script type="text/javascript" src="../jQuery/jquery-1.2.6.min.js"></script>
<script type="text/javascript" src="../jQuery/jquery.corner.js"></script>
<script type="text/javascript" src="../jQuery/jVal.js"></script>

<script language="javascript">
function setPassIt(id,isHot,isEs)
{
window.location.href='setProduct.jspx?productId='+id+'&channelId=<s:property value="getChannelId()"/>&isHot='+isHot+'&isEs='+isEs;
}

</script>
<script type="text/javascript"  src="../jQuery/script.js">
		</script>   
<script language="javascript">


  var sorter = new TINY.table.sorter("sorter");
    
	sorter.head = "head";
	sorter.asc = "asc";
	sorter.desc = "desc";
	sorter.even = "evenrow";
	sorter.odd = "oddrow";
	sorter.evensel = "evenselected";
	sorter.oddsel = "oddselected";
	sorter.paginate = true;
	sorter.currentid = "currentpage";
	sorter.limitid = "pagelimit";
	sorter.init("table",1);
	sorter.size(20);
	 
	 
  </script>



    <s:include value="button.jsp"/>

</body>
</html>
