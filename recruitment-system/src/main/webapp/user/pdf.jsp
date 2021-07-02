<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>生成word文档</title>
</head>
<body lang=ZH-CN style='tab-interval:21.0pt'>
<div class="header_area">
    <div class="header_border">
        <div class="container">
            <div class="row">
                <div class="full_menu clearfix">
                    <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                        <div class="header_heaft_area">
                            <div class="header_left_all">
                                <div class="mean_al_dv">
                                    <div class="littele_menu">当前角色: <a href="${pageContext.request.contextPath}/position/findAll.do?c=u&cpage=1">求职者 <i class="fa fa-caret-down"></i></a> </div>
                                    <ul class="option">
                                        <li><a href="${pageContext.request.contextPath}/position/findBySome.do?hr.hr_id=${user.login_id}&c=h">招聘者</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                        <div class="header_right_area">
                            <ul>
                                <li>
                                    <a class="account" href="${pageContext.request.contextPath}/notice/findAll.do?c=u">资讯</a>
                                </li>
                                <li>
                                    <a class="wishlist" href="${pageContext.request.contextPath}/candidate/find.do?id=${user.login_id}&c=u">个人信息</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="new_menu">

                        <div class="drp-menu">

                            <div class="col-md-3 pr pl">
                                <div class="all_catagories">
                                    <div class="enable_catagories">
                                        <i class="fa fa-bars"></i>
                                        <span>岗位分类</span>
                                        <i class="fa fa-angle-down"></i>
                                    </div>
                                </div>
                                <div class="catagory_menu_area">
                                    <div class="catagory_mega_menu">
                                        <div class="cat_mega_start">
                                            <ul class="list">
                                                <li class="next_area">
                                                    <a class="item_link" href="${pageContext.request.contextPath}/position/findAll.do?c=u&cpage=1">
                                                                    <span class="link_content">
                                                                    <span class="link_text">

                                                                        全部

                                                                    </span>
                                                                </span>
                                                    </a>
                                                </li>
                                                <c:forEach  items="${categorys }" var="categoryMapf" varStatus="status">
                                                    <c:if test="${categoryMapf.value.level==1}">
                                                        <li class="next_area">
                                                            <a class="item_link" href="#">
                                                                    <span class="link_content">
                                                                    <span class="link_text">

                                                                            ${categoryMapf.value.name}

                                                                    </span>
                                                                </span>
                                                            </a>
                                                            <ul class="electronics_drpdown">
                                                                <li class="parent">

                                                                    <div class="mega_menu">
                                                                        <c:forEach  items="${categorys }" var="categoryMapc" varStatus="status">
                                                                            <c:if test="${categoryMapc.value.father_id==categoryMapf.value.id}">
                                                                                <div class="mega_menu_coloumn">
                                                                                    <a href="${pageContext.request.contextPath}/position/findByCategory_id.do?id=${categoryMapc.value.id}">${categoryMapc.value.name}</a>
                                                                                </div>
                                                                            </c:if>
                                                                        </c:forEach>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </li>
                                                    </c:if>
                                                </c:forEach>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--menu area start-->
                            <div class="col-md-9 pl">
                                <div class="menu_area">
                                    <div class="menu" style="background-color: #366B61">
                                        <form name="form1" action="${pageContext.request.contextPath}/position/findBySome.do">
                                            <nav>
                                                <ul style="color: #d5ded7">
                                                    <li>薪水:<input type="text" name="salary_requirement" value=""></li>
                                                    <li>经验:<input type="text" name="work_experience" value=""></li>
                                                    <li>学历:<input type="text" name="education_requirement" value=""></li>
                                                    <%--                                                            <li>市:--%>
                                                    <%--                                                                <select id="fc" οnchange="selectCity()">--%>
                                                    <%--                                                                    <option value="0">全国</option>--%>
                                                    <%--                                                                    <c:forEach  items="${citys}" var="cityf" varStatus="status">--%>
                                                    <%--                                                                        <c:if test="${cityf.value.level==1}">--%>
                                                    <%--                                                                            <option value="${cityf.value.id}">${cityf.value.name}</option>--%>
                                                    <%--                                                                        </c:if>--%>
                                                    <%--                                                                    </c:forEach>--%>
                                                    <%--                                                                </select>--%>
                                                    <%--                                                            </li>--%>
                                                    <li>区:
                                                        <select id="city" name="city.id">
                                                            <option value="0">不限</option>
                                                            <c:forEach  items="${citys}" var="city" varStatus="status">
                                                                <%--                                                                        &&cityf.value.id==city.value.father_id--%>
                                                                <c:if test="${city.value.level==2}">
                                                                    <option value="${city.value.id}">${city.value.name}</option>
                                                                </c:if>
                                                            </c:forEach>

                                                        </select>
                                                    </li>
                                                    <input type="hidden" name="category.id" value="${category_id}">
                                                    <input type="hidden" name="c" value="u">
                                                    <%--                                                            <li>地区:<input type="text" name="city" value=""></li>--%>
                                                    <li><input type="submit" value="查询"></li>
                                                </ul>
                                            </nav>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--header top area end-->
</div>
<div class="word">
    <h1>${d.c_name}</h1>
    <h5>${d.email}</h5>
    <h5>${d.birthday}</h5>
    <h5>${d.phone}</h5>
    <div class="name-border">
        <span class="s1">${d.sex}</span>
    </div>
    <br>
    <div class="in-border">个人优势</div>
    <div>${d.personal_advantage}</div>
    <br>
    <div class="in-border">实习经历</div>
    <div>${d.internship_experience}</div>
    <br>
    <ol>
        <li>个人优势:<br>${d.project_experience}</li>
        <li>教育经历:<br>${d.educational_experience}</li>
        <li>资格证书:<br>${d.qualification}</li>
        <li>服务经历:<br>${d.service_experience}</li>
        <li>社交主页:<br>${d.social_home}</li>
    </ol>
</div>
<input type="button" value="导出简历">
<script src="https://cdn.bootcss.com/jquery/2.2.4/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/js/FileSaver.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/user/js/jquery.wordexport.js"></script>
<script>
    $(function(){
        $("input[type='button']").click(function(event) {
            $(".word").wordExport('生成word文档');
        });
    })
</script>
</body>
</html>
