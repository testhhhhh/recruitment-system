
<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--    pageEncoding="UTF-8"%>--%>
<%--     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">--%>
<%--<html lang="en-US">--%>
<%--<head>--%>
<%--<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />--%>
<%--<title>添加公告main</title>--%>
<%--<link rel="icon" href="images/pande.png">--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/css.css" />--%>
<%--<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/main.css" />--%>
<%--<style>--%>
<%--body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}--%>
<%--#searchmain{ font-size:12px;}--%>
<%--#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF}--%>
<%--#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}--%>
<%--#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}--%>
<%--#search form input.text-but{height:24px; line-height:24px; width:55px; background:url("#") no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}--%>
<%--#search a.add{ background:url("#") no-repeat 0px 6px; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF}--%>
<%--#search a:hover.add{ text-decoration:underline; color:#d2e9ff;}--%>
<%--#main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}--%>
<%--#main-tab th{ font-size:12px; background:url("#") repeat-x; height:32px; line-height:32px;}--%>
<%--#main-tab td{ font-size:12px; line-height:40px;}--%>
<%--#main-tab td a{ font-size:12px; color:#548fc9;}--%>
<%--#main-tab td a:hover{color:#565656; text-decoration:underline;}--%>
<%--.bordertop{ border-top:1px solid #ebebeb}--%>
<%--.borderright{ border-right:1px solid #ebebeb}--%>
<%--.borderbottom{ border-bottom:1px solid #ebebeb}--%>
<%--.borderleft{ border-left:1px solid #ebebeb}--%>
<%--.gray{ color:#dbdbdb;}--%>
<%--td.fenye{ padding:10px 0 0 0; text-align:right;}--%>
<%--.bggray{ background:#f9f9f9; font-size:14px; font-weight:bold; padding:10px 10px 10px 0; width:120px;}--%>
<%--.main-for{ padding:10px;}--%>
<%--.main-for input.text-word{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; padding:0 10px;}--%>
<%--.main-for select{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666;}--%>
<%--.main-for input.text-but{ width:100px; height:40px; line-height:30px; border: 1px solid #cdcdcd; background:#e6e6e6; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#969696; float:left; margin:0 10px 0 0; display:inline; cursor:pointer; font-size:14px; font-weight:bold;}--%>
<%--#addinfo a{ font-size:14px; font-weight:bold; background:url("#") no-repeat 0 1px; padding:0px 0 0px 20px; line-height:45px;}--%>
<%--#addinfo a:hover{ background:url("#") no-repeat 0 1px;}--%>
<%--</style>--%>
<%--    <!-- 配置文件 -->--%>
<%--    <script type="text/javascript" src="../ueditor/ueditor.config.js"></script>--%>
<%--    <!-- 编辑器源码文件 -->--%>
<%--    <script type="text/javascript" src="../ueditor/ueditor.all.js"></script>--%>
<%--    <!-- 实例化编辑器 -->--%>
<%--    <script type="text/javascript">--%>

<%--        var ue = UE.getEditor('container');--%>


<%--    </script>--%>
<%--</head>--%>
<%--<body>--%>
<%--<!--main_top-->--%>
<%--<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">--%>
<%--  <tr>--%>
<%--    <td width="99%" align="left" valign="top">您的位置：社团管理&nbsp;&nbsp;>&nbsp;&nbsp;添加公告</td>--%>
<%--  </tr>--%>
<%--  <tr>--%>
<%--    <td align="left" valign="top" id="addinfo">--%>
<%--    <a  target="mainFrame"  class="">添加公告</a>--%>
<%--    <c:if test="${param.rs =='success' }"><font -size="4px"; color=blue>&nbsp;&nbsp;&nbsp;<b>添加成功</b></font></c:if>--%>
<%--    <c:if test="${param.rs =='fail' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>添加失败，请重新尝试</b></font></c:if>--%>
<%--    <c:if test="${param.rs =='exist' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>公告名已存在</b></font></c:if>--%>
<%--    <c:if test="${param.rs =='mNotIn' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>请填写正确信息</b></font></c:if>--%>
<%--    </td>--%>
<%--  </tr>--%>
<%--  <tr>--%>
<%--    <td align="left" valign="top">--%>
<%--    <form method="post" action="${pageContext.request.contextPath}/Regist?ope=notice">--%>
<%--    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">--%>
<%--&lt;%&ndash;      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td align="right" valign="middle" class="borderright borderbottom bggray">公告id：</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td align="left" valign="middle" class="borderright borderbottom main-for">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input type="text" name="noticeId" value="" class="text-word">&ndash;%&gt;--%>
<%--&lt;%&ndash;        </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--        <td align="right" valign="middle" class="borderright borderbottom bggray">公告名称：</td>--%>
<%--        <td align="left" valign="middle" class="borderright borderbottom main-for">--%>
<%--        <input type="text" name="noticeName" value="" class="text-word">--%>
<%--        </td>--%>
<%--        </tr>--%>
<%--      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--        <td align="right" valign="middle" class="borderright borderbottom bggray">公告时间：</td>--%>
<%--        <td align="left" valign="middle" class="borderright borderbottom main-for">--%>
<%--        <input type="date" name="noticeTime" value="" class="text-word">--%>
<%--        </td>--%>
<%--      </tr>--%>
<%--    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--        <td align="right" valign="middle" class="borderright borderbottom bggray">社团id：</td>--%>
<%--        <td align="left" valign="middle" class="borderright borderbottom main-for">--%>
<%--            <input type="text" name="communityId" value="" class="text-word">--%>
<%--        </td>--%>
<%--    </tr>--%>

<%--      <tr>--%>
<%--      	<td>--%>
<%--      		 <input name="lru" type="hidden" value="regist"/>--%>
<%--      	</td>--%>
<%--      </tr>--%>
<%--      --%>
<%--&lt;%&ndash;      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td align="right" valign="middle" class="borderright borderbottom bggray">&nbsp;</td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        <td align="left" valign="middle" class="borderright borderbottom main-for">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input name="" type="submit" value="提交" class="text-but">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <input name="" type="reset" value="重置" class="text-but"></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </tr>&ndash;%&gt;--%>
<%--    <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--        <td align="right" valign="middle" class="borderright borderbottom bggray">公告内容：</td>--%>
<%--        <td align="left" valign="middle" class="borderright borderbottom main-for">--%>
<%--            &lt;%&ndash;            <script id="container" name="content" type="text/plain" style="width:500px;height:500px;">&ndash;%&gt;--%>
<%--            &lt;%&ndash;            这里写你的初始化内容&ndash;%&gt;--%>
<%--            &lt;%&ndash;            </script>&ndash;%&gt;--%>

<%--        </td>--%>
<%--    </tr>--%>



<%--    </table>--%>
<%--        <input name="" type="submit" value="提交" class="text-but">--%>
<%--        <input name="" type="reset" value="重置" class="text-but">--%>
<%--         <script id="container" name="content" type="text/plain" style="width:500px;height:500px;">--%>
<%--            这里写你的初始化内容--%>
<%--         </script>--%>


<%--    </form>--%>


<%--</table>--%>
<%--</body>--%>
<%--</html>--%>


<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html lang="en-US">
<head>
    <meta charset="UTF-8">
    <title>ueditor demo</title>
</head>
<body>
<!-- 加载编辑器的容器 -->



<form method="post" action="${pageContext.request.contextPath}/notice/add.do?c=a">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
        <input type="hidden" name="notice_id" value="0" class="text-word"/>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom bggray">资讯标题：</td>
        </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom main-for">
                <input type="text" name="title" value="" class="text-word">
            </td>
        </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom bggray">资讯内容：</td>
        </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom main-for">
                <div id="container" name="content" type="text/plain" style="width:1000px;height:1000px;">

                </div>
            </td>
        </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom bggray">资讯时间：</td>
        </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom main-for">
                <input type="date" name="release_time" value="" class="text-word">
            </td>
        </tr>


        <tr>
            <td>
<%--                <input name="c" type="hidden" value="a"/>--%>
            </td>
        </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom main-for">
                <input name="" type="submit" value="提交" class="text-but">
        </tr>
        <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
            <td align="left" valign="middle" class="borderright borderbottom main-for">
                <input name="" type="reset" value="重置" class="text-but"></td>
        </tr>
    </table>
</form>
</body>

<!-- 配置文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/1.4.3/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/ueditor/1.4.3//ueditor.all.js"></script>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    var ue = UE.getEditor('container');
</script>
</html>
