<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主要内容区main</title>
<link rel="icon" href="images/pande.png">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/css.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/main.css" />
<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#searchmain{ font-size:12px;}
#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF; float:left}
#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
#search form input.text-but{height:24px; line-height:24px; width:55px; background:url("#") no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
#search a.add{ background:url("#") no-repeat -3px 7px #548fc9; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF; float:right}
#search a:hover.add{ text-decoration:underline; color:#d2e9ff;}
#main-tab{ border:1px solid #eaeaea; background:#FFF; font-size:12px;}
#main-tab th{ font-size:12px; background:url("#") repeat-x; height:32px; line-height:32px;}
#main-tab td{ font-size:12px; line-height:40px;}
#main-tab td a{ font-size:12px; color:#548fc9;}
#main-tab td a:hover{color:#565656; text-decoration:underline;}
.bordertop{ border-top:1px solid #ebebeb}
.borderright{ border-right:1px solid #ebebeb}
.borderbottom{ border-bottom:1px solid #ebebeb}
.borderleft{ border-left:1px solid #ebebeb}
.gray{ color:#dbdbdb;}
td.fenye{ padding:10px 0 0 0; text-align:right;}
.bggray{ background:#f9f9f9}

</style>
</head>
<script>
    function delUser(a) {
        if (confirm("您确定删除吗？")) {
            document.getElementById('del'+a).submit()
        }
    }
    function changePageSize() {
        //获取下拉框的值
        var pageSize = $("#changePageSize").val();

        //向服务器发送请求，改变没页显示条数
        location.href = "${pageContext.request.contextPath}/member/findAll.do?page=1&size="
            + pageSize;
    }
</script>

<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：账户管理&nbsp;&nbsp;>&nbsp;&nbsp;账户列表</td>
  </tr>
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
  		<tr>
   		 <td width="90%" align="left" valign="middle">
	         <form method="post" action="${pageContext.request.contextPath}/users/search.do">
	         <span>手机号：</span>
	         <input type="text" name="phone" value="" class="text-word">
	         <input type="hidden" name="c" value="a"/>
                 <input type="hidden" name="cpage" value="1"/>
	         <input name="" type="submit" value="查询" class="text-but">
	         </form>
<%--         </td>--%>
<%--  		  <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a href="manager_add.jsp" target="mainFrame" onFocus="this.blur()" class="add">新增成员</a></td>--%>
<%--  		</tr>--%>
	</table>
    </td>
  </tr>
  
  <tr>
    <td align="left" valign="top">
    
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab" >
      <tr>
        <th align="center" valign="middle" class="borderright">编号</th>
          <th align="center" valign="middle" class="borderright">id</th>
        <th align="center" valign="middle" class="borderright">手机号</th>
        <th align="center" valign="middle" class="borderright">密码</th>
<%--        <th align="center" valign="middle">操作</th>--%>
      </tr>
     
      <c:forEach items="${pageInfo.list}" var="user" varStatus="status">
      <tr class="bggray" onMouseOut="this.style.backgroundColor='#f9f9f9'" onMouseOver="this.style.backgroundColor='#edf5ff'" >
        <td align="center" valign="middle" class="borderright borderbottom"> ${status.index+1 }</td>
        <td align="center" valign="middle" class="borderright borderbottom">${user.login_id }</td>
        <td align="center" valign="middle" class="borderright borderbottom">${user.phone}</td>
        <td align="center" valign="middle" class="borderright borderbottom">${user.password}</td>
<%--        <td align="center" valign="middle" class="borderright borderbottom"></td>--%>
      </tr>
      </c:forEach>
     
    </table>
    
    </td>
  </tr>


    <tr>

        <div class="box-tools pull-right">

            <td align="left" valign="top" class="fenye">
                <div class="box-footer">
                    <div class="pull-left">
                        <div class="form-group form-inline">
                            总共${pageInfo.pages}页，共${pageInfo.total}条数据。 每页
                            <select class="form-control" id="changePageSize"  onchange="changePageSize()">
                                <option id="option1">6</option>
                                <option id="option2">8</option>
                                <option id="option3">10</option>
                                <option id="option4">12</option>
                                <option id="option5">14</option>
                            </select> 条
                        </div>
                    </div>
                </div>

                <a href="${pageContext.request.contextPath}/users/findAll.do?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>>

                <a href="${pageContext.request.contextPath}/users/findAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a>>

                <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
                    <a href="${pageContext.request.contextPath}/users/findAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>>
                </c:forEach>

                <a href="${pageContext.request.contextPath}/users/findAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a>>

                <a href="${pageContext.request.contextPath}/users/findAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
            </td>

        </div>

    </tr>
</table>
</body>
</html>