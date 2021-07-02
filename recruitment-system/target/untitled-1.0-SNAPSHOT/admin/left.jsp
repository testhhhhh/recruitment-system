<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>左侧导航menu</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/css.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/sdmenu.js"></script>
<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
</script>
<style type=text/css>
html{ SCROLLBAR-FACE-COLOR: #538ec6; SCROLLBAR-HIGHLIGHT-COLOR: #dce5f0; SCROLLBAR-SHADOW-COLOR: #2c6daa; SCROLLBAR-3DLIGHT-COLOR: #dce5f0; SCROLLBAR-ARROW-COLOR: #2c6daa;  SCROLLBAR-TRACK-COLOR: #dce5f0;  SCROLLBAR-DARKSHADOW-COLOR: #dce5f0; overflow-x:hidden;}
body{overflow-x:hidden; background:url("#") left top repeat-y #f2f0f5; width:194px;}
</style>
</head>
<body onselectstart="return false;" ondragstart="return false;" oncontextmenu="return false;">
<div id="left-top">
	<%--<div><img src="${pageContext.request.contextPath}/header/${member.memberHeader}" width="44" height="44" /></div>--%>
    <span>用户：${login_password.phone }<br>角色：管理员</span>
</div>
    <div style="float: left" id="my_menu" class="sdmenu">

      <div class="collapsed">
          <%--          删查--%>
        <span>账号管理</span>
        <a href="${pageContext.request.contextPath}/users/findAll.do?c=a&cpage=1" target="mainFrame" onFocus="this.blur()">账号列表</a>
        <a href="manager_add.jsp" target="mainFrame" onFocus="this.blur()">添加账号</a>
<%--        <a href="manager_update.jsp" target="mainFrame" onFocus="this.blur()">更新密码</a>--%>
      </div>

        <div>
            <%--         查--%>
            <span>应聘者管理</span>
            <a href="${pageContext.request.contextPath}/candidate/findAll.do?c=a&cpage=1" target="mainFrame" onFocus="this.blur()">应聘者列表</a>
        </div>


        <div>
            <%--         查--%>
            <span>招聘者管理</span>
            <a href="${pageContext.request.contextPath}/hr/findAll.do?c=a&cpage=1" target="mainFrame" onFocus="this.blur()">招聘者列表</a>
        </div>


      <div>
          <%--          删查--%>
        <span>公司管理</span>
        <a href="${pageContext.request.contextPath}/company/findAll.do?c=a&cpage=1&flag=1" target="mainFrame" onFocus="this.blur()">公司列表</a>
        <a href="${pageContext.request.contextPath}/company/findAll.do?c=c&cpage=1&flag=0" target="mainFrame" onFocus="this.blur()">公司审核</a>
      </div>


        <div>
            <%--          增删改查--%>
            <span>类别管理</span>
            <a href="${pageContext.request.contextPath}/category/findAll.do?c=a&cpage=1" target="mainFrame" onFocus="this.blur()">类别列表</a>
            <a href="category_add.jsp" target="mainFrame" onFocus="this.blur()">添加类别</a>
        </div>


        <div>
            <%--          删查--%>
            <span>岗位管理</span>
            <a href="${pageContext.request.contextPath}/position/findAll.do?c=a&cpage=1" target="mainFrame" onFocus="this.blur()">岗位列表</a>
        </div>

        <%--          删查--%>
      <div>
        <span>简历管理</span>
        <a href="${pageContext.request.contextPath}/resume/findAll.do?c=a&cpage=1" target="mainFrame" onFocus="this.blur()">简历列表</a>
      </div>


      <div>
<%--          增删改查--%>
        <span>资讯管理</span>
          <a href="${pageContext.request.contextPath}/notice/findAll.do?c=a&cpage=1" target="mainFrame" onFocus="this.blur()">资讯列表</a>
          <a href="notice_add.jsp" target="mainFrame" onFocus="this.blur()">编辑资讯</a>
      </div>

      <div>
        <span>系统监控</span>
        <a href="${pageContext.request.contextPath}/druid/sql.html" target="mainFrame" onFocus="this.blur()">SQL监控</a>
      </div>
    </div>
</body>
</html>