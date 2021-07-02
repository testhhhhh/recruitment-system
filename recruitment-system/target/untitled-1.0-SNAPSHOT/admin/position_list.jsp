<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>社团列表main</title>
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
 #img{
     height:100px;
     width:100px;
     border-radius: 50%;
     box-shadow:0 0 9px 3px #999;
 }
</style>
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
            location.href = "${pageContext.request.contextPath}/position/findAll.do?page=1&size="
                + pageSize;
        }
    </script>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：应聘者管理&nbsp;&nbsp;>&nbsp;&nbsp;应聘者列表</td>
  </tr>
  
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="search">
  		<tr>
   		 <td width="90%" align="left" valign="middle">
<%--	         <form method="post" action="Search">--%>
<%--	         <span>：</span>--%>
<%--	         <input type="text" name="c_name" value="" class="text-word">--%>
<%--                 <input type="hidden" name="c" value="a"/>--%>
<%--                 <input type="hidden" name="cpage" value="1"/>--%>
<%--	         <input name=""    type="submit" value="查询" class="text-but">--%>
<%--	         </form>--%>
         </td>
<%--  		  <td width="10%" align="center" valign="middle" style="text-align:right; width:150px;"><a href="positionmunity_add.jsp" target="mainFrame" onFocus="this.blur()" class="add">添加社团</a></td>--%>
  		</tr>
	</table>
    </td>
  </tr>
  
  <tr>
    <td align="left" valign="top">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
      <tr>
        <th align="center" valign="middle" class="borderright">编号</th>
          <th align="center" valign="middle" class="borderright">id</th>
        <th align="center" valign="middle" class="borderright">岗位名称</th>
        <th align="center" valign="middle" class="borderright">职位描述</th>
        <th align="center" valign="middle" class="borderright">工作经验</th>
        <th align="center" valign="middle" class="borderright">学历要求</th>
        <th align="center" valign="middle" class="borderright">资薪要求</th>
        <th align="center" valign="middle" class="borderright">发布时间</th>
          <th align="center" valign="middle" class="borderright">招聘者</th>
          <th align="center" valign="middle" class="borderright">城市</th>
          <th align="center" valign="middle" class="borderright">类名</th>
          <th align="center" valign="middle" class="borderright">地址</th>


        <th align="center" valign="middle">操作</th>
      </tr>
      <c:forEach items="${pageInfo.list }" var="position" varStatus="status">
      <tr onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <td align="center" valign="middle" class="borderright borderbottom">${status.index+1 }</td>
        <td align="center" valign="middle" class="borderright borderbottom">${position.position_id}</td>
        <td align="center" valign="middle" class="borderright borderbottom">${position.name}</td>
        <td align="center" valign="middle" class="borderright borderbottom">${position.work_requirement}</td>
        <td align="center" valign="middle" class="borderright borderbottom">${position.work_experience}</td>
		<td align="center" valign="middle" class="borderright borderbottom">${position.education_requirement}</td>
        <td align="center" valign="middle" class="borderright borderbottom">${position.salary_requirement }</td>
        <td align="center" valign="middle" class="borderright borderbottom">${position.release_time}</td>
          <td align="center" valign="middle" class="borderright borderbottom">${position.hr.name }</td>
          <td align="center" valign="middle" class="borderright borderbottom">${position.city.name }</td>
          <td align="center" valign="middle" class="borderright borderbottom">${position.category.name }</td>
          <td align="center" valign="middle" class="borderright borderbottom">${position.address }</td>
<%--        <td align="center" valign="middle" class="borderright borderbottom"><img id="img" src="../images/${position.positionmunity_photo}"></td>--%>
<%--        <td align="center" valign="middle" class="borderbottom"><a href="${pageContext.request.contextPath}/positionmunityInfo?id=${position.positionmunityId}" target="mainFrame" onFocus="this.blur()" class="add">编辑</a>--%>
<%--            <span class="gray">&nbsp;|&nbsp;</span>--%>
        <td align="center" valign="middle" class="borderright borderbottom">
            <form id="del${status.index}" method="post" action="${pageContext.request.contextPath}/position/delete.do">
                <input type="hidden" name="id" value="${position.position_id}" />
                <input type="hidden" name="c" value="admin" />
                <a style="display: block;margin-top: -20px; margin-bottom: -10px" target="mainFrame" onFocus="this.blur()" class="add" onclick="delUser(${status.index});" >删除</a>
            </form>
        </td>
      </tr>
      </c:forEach>
    </table></td>
    </tr>

    <tr>

    <div class="box-tools pull-right">

    <td align="left" valign="top" class="fenye">
        <div class="box-footer">
            <div class="pull-left">
                <div class="form-group form-inline">
                    总共${pageInfo.pages}页，共${pageInfo.total}条数据。 每页
                    <select class="form-control" id="changePageSize"  onchange="changePageSize()">
                        <option id="option1">1</option>
                        <option id="option2">2</option>
                        <option id="option3">3</option>
                        <option id="option4">4</option>
                        <option id="option5">5</option>
                    </select> 条
                </div>
            </div>
        </div>

           <a href="${pageContext.request.contextPath}/position/findAll.do?page=1&size=${pageInfo.pageSize}" aria-label="Previous">首页</a>>

           <a href="${pageContext.request.contextPath}/position/findAll.do?page=${pageInfo.pageNum-1}&size=${pageInfo.pageSize}">上一页</a>>

        <c:forEach begin="1" end="${pageInfo.pages}" var="pageNum">
            <a href="${pageContext.request.contextPath}/position/findAll.do?page=${pageNum}&size=${pageInfo.pageSize}">${pageNum}</a>
        </c:forEach>>

        <a href="${pageContext.request.contextPath}/position/findAll.do?page=${pageInfo.pageNum+1}&size=${pageInfo.pageSize}">下一页</a>>

        <a href="${pageContext.request.contextPath}/position/findAll.do?page=${pageInfo.pages}&size=${pageInfo.pageSize}" aria-label="Next">尾页</a>
    </td>

    </div>

    </tr>

</table>
</body>
</html>