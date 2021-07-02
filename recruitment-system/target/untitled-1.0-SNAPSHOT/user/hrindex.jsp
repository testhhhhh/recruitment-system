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
                                            <div class="littele_menu">当前角色: <a href="${pageContext.request.contextPath}/position/findBySome.do?hr.hr_id=${user.login_id}&c=h">招聘者 <i class="fa fa-caret-down"></i></a> </div>
                                            <ul class="option">
                                                <a href="${pageContext.request.contextPath}/position/findAll.do?c=u&cpage=1">求职者 <i class="fa fa-caret-down"></i></a>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 col-lg-6 col-sm-6 col-xs-12">
                                <div class="header_right_area">
                                    <ul>
                                        <li>
                                            <a class="account" href="${pageContext.request.contextPath}/user/hr_company.jsp">注册公司信息</a>
                                        </li>
                                        <li>
                                            <a class="wishlist" href="${pageContext.request.contextPath}/user/hr_position.jsp">发布岗位</a>
                                        </li>
                                    </ul>
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


