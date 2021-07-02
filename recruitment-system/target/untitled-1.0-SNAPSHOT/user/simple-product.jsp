<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>资讯内容</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- all css here -->
    <!-- bootstrap v3.3.6 css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/bootstrap.min.css">
    <!-- animate css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/animate.css">
    <!-- jquery-ui.min css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/jquery-ui.min.css">
    <!-- meanmenu css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/meanmenu.min.css">
    <!-- nivo slider css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/lib/css/nivo-slider.css" type="text/css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/lib/css/preview.css" type="text/css" />
    <!-- owl.carousel css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/owl.carousel.css">
    <!-- font-awesome css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/font-awesome.min.css">
    <!-- style css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/style.css">
    <!-- responsive css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/user/css/responsive.css">
    <!-- modernizr js -->
    <script src="${pageContext.request.contextPath}/user/js/vendor/modernizr-2.8.3.min.js"></script>
    <style type="text/css">
        .our-services{background-color: #d5ded7;padding-bottom: 10px; margin-bottom: -80px;margin-top: -60px;}
        #container { width:80%; margin:30px auto; text-align:left; padding:10px; border:1px solid #ccc; height:250px; position:relative; overflow:hidden; font:16px Verdana, Geneva, sans-serif; color:#fff; text-align:left;}
        .noticeList { width:80%; list-style:inside; position:absolute; top:270px; left:10px;}
        .noticeList li { padding-bottom:5px;}
        .noticeList li a { color:#606060; text-decoration:none;}
        .noticeList li a:hover { color:#09F;}
        #news
            /*width:300px;*/
            /* height:100px;*/
            /* margin:20px auto;*/
            /* background-color:rgb(236, 231, 159);*/
            /* border:#039 solid 1px;*/
            /* overflow:hidden;!*这里必须设置哦，否则滚动会消失的，如果设置为scroll，更容易明白原理*!*/
        { width:80%; margin:30px auto; text-align:left; padding:10px; border:1px solid #ccc; height:250px; position:relative; overflow:hidden; font:16px Verdana, Geneva, sans-serif; color:#fff; text-align:left;}

        #news li{
            line-height:30px; padding-bottom:5px;
        }
        #news li a { color:#606060; text-decoration:none;}
        #news li a:hover { color:#09F;}

    </style>
</head>
<body>


<!--header top area start-->
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

<!--about us area-->

<section class="about_our_team_area">
    <div class="container">
        ${notice.content}
    </div>
</section>


<!--about us end-->


<!-- all js here -->
<!-- jquery latest version -->
<script src="${pageContext.request.contextPath}/user/js/vendor/jquery-1.12.0.min.js"></script>
<!-- bootstrap js -->
<script src="${pageContext.request.contextPath}/user/js/bootstrap.min.js"></script>
<!-- nivo slider js -->
<script src="${pageContext.request.contextPath}/user/lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/user/lib/home.js" type="text/javascript"></script>
<!-- owl.carousel js -->
<script src="${pageContext.request.contextPath}/user/js/owl.carousel.min.js"></script>
<!-- meanmenu js -->
<script src="${pageContext.request.contextPath}/user/js/jquery.meanmenu.js"></script>
<!-- jquery-ui js -->
<script src="${pageContext.request.contextPath}/user/js/jquery-ui.min.js"></script>
<!-- easing js -->
<script src="${pageContext.request.contextPath}/user/js/jquery.easing.1.3.js"></script>
<!-- mixitup js -->
<script src="${pageContext.request.contextPath}/user/js/jquery.mixitup.min.js"></script>
<!-- jquery.countdown js -->
<script src="${pageContext.request.contextPath}/user/js/jquery.countdown.min.js"></script>
<!-- wow js -->
<script src="${pageContext.request.contextPath}/user/js/wow.min.js"></script>
<!-- popup js -->
<script src="${pageContext.request.contextPath}/user/js/jquery.magnific-popup.min.js"></script>
<!-- plugins js -->
<script src="${pageContext.request.contextPath}/user/js/plugins.js"></script>
<!-- main js -->
<script src="${pageContext.request.contextPath}/user/js/main.js"></script>
</body>
</html>


