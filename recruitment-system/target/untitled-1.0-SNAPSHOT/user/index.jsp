<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home</title>
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
        <div class="about_us_area">
            <div class="about_main">
                <div class="container">
                    <div class="row">
                        <c:forEach items="${pageInfo.list }" var="position" varStatus="status">
                            <div class="col-md-4">
                            <div class="about_all">
                                <div class="single_about">
                                    <div class="about_content" style="padding-left: 20px;margin-bottom: 10px;">
                                        <div class="about_text" style="margin-top: 10px;margin-left: 0px">
                                            <span style="font-size: 20px ; color: #366B61"><a href="${pageContext.request.contextPath}/position/findById.do?id=${position.position_id}&c=u">${position.name}</a></span>

                                            <c:forEach  items="${citys }" var="cityMap" varStatus="status">
                                                <c:if test="${cityMap.value.id==position.city.father_id}">
                                                    [<span style="font-size: small">${cityMap.value.name }</span>-
                                                </c:if>
                                            </c:forEach>
                                            <span style="font-size: small">${position.city.name }</span>]<br>
                                            <span style="font-size: small">${position.hr.company.name }</span>|
                                            <span style="font-size: small">${position.hr.company.financing_stage}</span>|
                                            <span style="font-size: small">${position.hr.company.size}</span><br>
                                        </div>
                                        <div class="about_prgph" style="font-size: medium;color: #366B61">


                                            <span style="font-size: small">${position.education_requirement}</span>|
                                            <span style="font-size: small">${position.work_experience}</span>|
                                            <span style="color: #b94a48;font-size: 25px">${position.salary_requirement }</span> <span style="font-size: smaller">/月</span><br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
        <!--about us end-->
        <script type="text/javascript" language="javascript">

            var cityInfo = [["请选择市区","太原市","吕梁市","临汾市","运城市","阳泉市"],
                ["请选择市区","西安市","咸阳市","汉中市","延安市","榆林市"],
                ["请选择市区","南昌市","九江市","鹰潭市","上饶市","景德镇市"],
                ["请选择市区","成都市","绵阳市","雅安市","乐山市","眉山市"]];

            /*二级联动一般使用onchange事件*/
            function selectCity(){
                /*获取省份下拉框的对象*/
                var pro = document.getElementById("fc").valueOf();
                alert(pro);
                /*获取市区下拉框的对象*/
                var cit = document.getElementById("city");
                /*得到对应得城市数组，selectedIndex表示下拉框列表的索引值*/
                var selectParam = cityInfo[pro.selectedIndex-1];
                /*将城市列表的选项只留下第一个提示选项*/
                cit.length = 1;
                for(var i=0;i<selectParam.length;i++){
                    /*第一个selectParam[i]表示城市option中的value值，第二个selectParam[i]表示文本信息*/
                    cit[i] = new Option(selectParam[i],selectParam[i]);
                }
            }
        </script>


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
<%--<form action="${pageContext.request.contextPath}/position/findByWE.do" method="post">--%>
<%--    <select name="work_experience">--%>
<%--        <option value="不限">不限</option>--%>
<%--        <option value="在校生">在校生</option>--%>
<%--        <option value="应届生">应届生</option>--%>
<%--        <option value="一年以内">一年以内</option>--%>
<%--        <option value="1-3年">1-3年</option>--%>
<%--        <option value="3-5年">3-5年</option>--%>
<%--        <option value="5-10年">5-10年</option>--%>
<%--        <option value="10年以上">10年以上</option>--%>
<%--    </select>--%>
<%--</form>--%>

