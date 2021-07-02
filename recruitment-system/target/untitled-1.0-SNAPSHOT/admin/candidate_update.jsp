<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户信息修改</title>
<link rel="icon" href="../images/pande.png">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/css.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/main.css" />
<style>
body{overflow-x:hidden; background:#f2f0f5; padding:15px 0px 10px 5px;}
#searchmain{ font-size:12px;}
#search{ font-size:12px; background:#548fc9; margin:10px 10px 0 0; display:inline; width:100%; color:#FFF}
#search form span{height:40px; line-height:40px; padding:0 0px 0 10px; float:left;}
#search form input.text-word{height:24px; line-height:24px; width:180px; margin:8px 0 6px 0; padding:0 0px 0 10px; float:left; border:1px solid #FFF;}
#search form input.text-but{height:24px; line-height:24px; width:55px; background:url("#") no-repeat left top; border:none; cursor:pointer; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666; float:left; margin:8px 0 0 6px; display:inline;}
#search a.add{ background:url("#") no-repeat 0px 6px; padding:0 10px 0 26px; height:40px; line-height:40px; font-size:14px; font-weight:bold; color:#FFF}
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
.bggray{ background:#f9f9f9; font-size:14px; font-weight:bold; padding:10px 10px 10px 0; width:120px;}
.main-for{ padding:10px;}
.main-for input.text-word{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; padding:0 10px;}
.main-for select{ width:310px; height:36px; line-height:36px; border:#ebebeb 1px solid; background:#FFF; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#666;}
.main-for input.text-but{ width:100px; height:40px; line-height:30px; border: 1px solid #cdcdcd; background:#e6e6e6; font-family:"Microsoft YaHei","Tahoma","Arial",'宋体'; color:#969696; float:left; margin:0 10px 0 0; display:inline; cursor:pointer; font-size:14px; font-weight:bold;}
#addinfo a{ font-size:14px; font-weight:bold; background:url("#") no-repeat 0 1px; padding:0px 0 0px 20px; line-height:45px;}
#addinfo a:hover{ background:url("#") no-repeat 0 1px;}
#img{
  height:100px;
  width:100px;
  border-radius: 50%;
  box-shadow:0 0 9px 3px #999;
}
</style>
  <script type="application/javascript">
    function getFileContext() {
      var reader=new FileReader();
      //需要的参数是图片
      var file=document.querySelector("#myFile").files;
      // 没有返回值，将其结果储存在result中，无法判断文件是否读完
      reader.readAsDataURL(file[0]);
      reader.onload=function () {
        //    展示出来：得到的reader.result为二进制文件base64  data:image/jpeg;base64...
        console.log(reader.result);
        document.querySelector("#img").src=reader.result;
      }
    }
  </script>
</head>
<body>
<!--main_top-->
<table width="99%" border="0" cellspacing="0" cellpadding="0" id="searchmain">
  <tr>
    <td width="99%" align="left" valign="top">您的位置：应聘者管理&nbsp;&nbsp;>&nbsp;&nbsp;应聘者信息</td>
  </tr>
  <tr>
    <td align="left" valign="top" id="addinfo">
    <a  target="mainFrame"  class="">修改应聘者信息</a>
        <c:if test="${msg =='namewrong' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>没有此应聘者信息，请先添加</b></font></c:if>
	    <c:if test="${msg =='success' }"><font -size="4px"; color=blue>&nbsp;&nbsp;&nbsp;<b>更新成功</b></font></c:if>
    	<c:if test="${msg =='fail' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>更新失败，请重新尝试</b></font></c:if>
    	<c:if test="${msg =='wrong' }"><font -size="4px"; color=red>&nbsp;&nbsp;&nbsp;<b>错误</b></font></c:if>

 	</td>
  </tr>
  <tr>
    <td align="left" valign="top">
       <!-- 上传文件时 要改enctype="multipart/from-data-->
    <form action="${pageContext.request.contextPath}/candidate/update.do" method="post">
    <table width="100%" border="0" cellspacing="0" cellpadding="0" id="main-tab">
      <%--<tr style="height:80px;">
        <td align="center" valign="middle" class="borderright borderbottom bggray">
          <img src="${pageContext.request.contextPath}/header/${member.memberHeader}" width="60px" height="60px" style="border-radius: 50%;">
        </td>
         <td align="left" valign="middle" class="borderright borderbottom main-for" colspan="3">
            <input name="header" type="file" value="" >
         </td>
      </tr>--%>

      <tr>
        <td align="left" valign="middle" class="borderright borderbottom main-for" colspan="4" style="border-left:none; border-right:none;"></td>
      </tr>

      <tr>
        <td align="right" valign="middle" class="borderright borderbottom bggray">应聘者id：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text" readonly="true" name="dId" value="${d.candidate_id}" class="text-word">

        <td align="right" valign="middle" class="borderright borderbottom bggray">姓名：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text" name="dName" value="${d.c_name }" class="text-word">
        </td>
      </tr>
        <tr>
        <td align="right" valign="middle" class="borderright borderbottom bggray">性别：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text"  readonly="true" name="dCreaterId" value="${d.sex}" class="text-word">

        <td align="right" valign="middle" class="borderright borderbottom bggray">出生日期：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text"  readonly="true" name="dCreaterName" value="${d.birthday }" class="text-word">
        </td>
        </tr>
        <tr>
        <td align="right" valign="middle" class="borderright borderbottom bggray">电子邮箱：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text"  readonly="true" name="dCreateDate" value="${d.email }" class="text-word">

        <td align="right" valign="middle" class="borderright borderbottom bggray">电话号码：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text" name="dNum" value="${d.phone}" class="text-word">
        </td>
        </tr>
        <tr>
        <td align="right" valign="middle" class="borderright borderbottom bggray">个人优势：</td>
        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text" name="dRange" value="${d.personal_advantage }" class="text-word">

        <td align="right" valign="middle" class="borderright borderbottom bggray">实习经历：</td>
            <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
        <input type="text" name="dRange" value="${d.internship_experience }" class="text-word">


<%--            <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--&lt;%&ndash;        <input type="text" name="dClassName" value="${d.dClassName }" class="text-word">&ndash;%&gt;--%>
<%--          <select name="dClass" id="level1" class="text-word">--%>
<%--            <option value="${d.dClassId}" >&nbsp;&nbsp;${d.dClassName}</option>--%>
<%--            <option value="1001" >&nbsp;&nbsp;科技创新</option>--%>
<%--            <option value="1002" >&nbsp;&nbsp;理论研究</option>--%>
<%--            <option value="1003" >&nbsp;&nbsp;社会服务</option>--%>
<%--            <option value="1004" >&nbsp;&nbsp;试运行</option>--%>
<%--            <option value="1005" >&nbsp;&nbsp;体育竞技</option>--%>
<%--          </select>--%>
<%--        </td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--        &lt;%&ndash;<td align="right" valign="middle" class="borderright borderbottom bggray">是否创建社团：</td>--%>
<%--        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--        <input type="text" name="iscreat" value="${member.iscreatd }" class="text-word">&ndash;%&gt;--%>

<%--        <td align="right" valign="middle" class="borderright borderbottom bggray">详细信息：</td>--%>
<%--        <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--        <input type="text" name="dInfo" value="${d.dInfo }" class="text-word">--%>
<%--&lt;%&ndash;        <select name="power" id="level">&ndash;%&gt;--%>
<%--&lt;%&ndash;          <option value="0" >&nbsp;&nbsp;普通成员</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;          <option value="1" >&nbsp;&nbsp;管理员</option>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </select>&ndash;%&gt;--%>
<%--        </td>--%>
<%--          <td align="right" valign="middle" class="borderright borderbottom bggray">上传图片：</td>--%>
<%--          <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">--%>
<%--          <input type="file" name="myFile" id="myFile" onchange="getFileContext()" value="../images/${d.d_photo}" class="text-word">--%>
<%--          <td><img id="img" src="../images/${d.d_photo}" class="text-word"></td>--%>
<%--          </td>--%>
        </tr>

          <tr>
              <td align="right" valign="middle" class="borderright borderbottom bggray">项目经历：</td>
              <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                  <input type="text"  readonly="true" name="dCreateDate" value="${d.project_experience }" class="text-word">

              <td align="right" valign="middle" class="borderright borderbottom bggray">教育经历：</td>
              <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                  <input type="text" name="dNum" value="${d.educational_experience}" class="text-word">
              </td>
          </tr>
          <tr>
              <td align="right" valign="middle" class="borderright borderbottom bggray">资格证书：</td>
              <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                  <input type="text"  readonly="true" name="dCreateDate" value="${d.qualification }" class="text-word">

              <td align="right" valign="middle" class="borderright borderbottom bggray">服务经历：</td>
              <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                  <input type="text" name="dNum" value="${d.service_experience}" class="text-word">
              </td>
          </tr>
          <tr>
              <td align="right" valign="middle" class="borderright borderbottom bggray">社交主页：</td>
              <td align="left" valign="middle" class="borderright borderbottom main-for" onMouseOut="this.style.backgroundColor='#ffffff'" onMouseOver="this.style.backgroundColor='#edf5ff'">
                  <input type="text"  readonly="true" name="dCreateDate" value="${d.social_home}" class="text-word">

          </tr>

          <input type="hidden"  readonly="true" name="c" value="a" class="text-word">
      <tr>
        <td align="center" valign="middle" class="borderright borderbottom main-for" colspan="2" style="padding-left:38%; border-right:none;">
          <input name="" type="submit" value="更新" class="text-but" >
        </td>
        <td align="center" valign="middle" class="borderright borderbottom main-for" colspan="2" style="padding-right:38%; border-right:none;">
              <input name="" type="reset" value="重置" class="text-but" >
        </td>
      </tr>

    </table>
<%--      <c:if test="${param.msg =='ok' }"><script>alert("修改成功")</script></c:if>--%>
    </form>
    </td>
    </tr>
</table>
</body>
</html>