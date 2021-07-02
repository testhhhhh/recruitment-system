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
        <!--header area end-->
        <!-- mobile-menu-area-start -->
        <!--social design arae end-->
        <!-- shop area start-->
        <div class="shop_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="shop_menu shop_menu_tk ">
<%--                            <ul class="cramb_area cramb_area_2 cramb_area_ktp">--%>
<%--                                <li><a href="index.jsp">Home /</a></li>--%>
<%--                                <li><a href="#">My Account</a></li>--%>
<%--                            </ul>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- shop area end-->
        <!--my account area start-->
        <div class="my_account_area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="account_heading">
                            <h1>简历信息</h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <form action="${pageContext.request.contextPath}/candidate/update.do" method="post">
                    <div class="col-md-6">
                        <div class="all_cntnt">
                            <div class="frm_content">
                            </div>
                                <div class="al_form-fields">
                                    <input name="candidate_id" type="hidden" value="${d.candidate_id}">
                                    <p>
                                        <label>
                                        姓名
                                        <span class="required">*</span>
                                        </label>
                                        <input name="c_name" readonly value="${d.c_name}">
                                    </p>
                                    <p>
                                        <label>
                                        性别
                                        <span class="required">*</span>
                                        </label>
                                        <input name="sex" value="${d.sex}">
                                    </p>
                                    <p>
                                        <label>
                                        出生日期
                                        <span class="required">*</span>
                                        </label>
                                        <input name="birthday" value="${d.birthday}">
                                    </p>
                                    <p>
                                        <label>
                                        邮箱
                                        <span class="required">*</span>
                                        </label>
                                        <input name="email" value="${d.email}">
                                    </p>
                                    <p>
                                        <label>
                                        电话
                                        <span class="required">*</span>
                                        </label>
                                        <input name="phone" value="${d.phone}">
                                    </p>
                                </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="all_cntnt">
                            <div class="frm_content">
                            </div>
                                <div class="al_form-fields">
                                    <p>
                                        <label>
                                        个人优势
                                        <span class="required">*</span>
                                        </label>
                                        <input name="personal_advantage" value="${d.personal_advantage}">
                                    </p>
                                    <p>
                                        <label>
                                        实习经历
                                        <span class="required">*</span>
                                        </label>
                                        <input name="internship_experience" value="${d.internship_experience}">
                                    </p>
                                    <p>
                                        <label>
                                        项目经历
                                        <span class="required">*</span>
                                        </label>
                                        <input name="project_experience" value="${d.project_experience}">
                                    </p>
                                    <p>
                                        <label>
                                        教育经历
                                        <span class="required">*</span>
                                        </label>
                                        <input name="educational_experience" readonly value="${d.educational_experience}">
                                    </p>
                                    <p>
                                        <label>
                                        资格证书
                                        <span class="required">*</span>
                                        </label>
                                        <input name="qualification" readonly value="${d.qualification}">
                                    </p>
                                    <p>
                                        <label>
                                            服务经历
                                            <span class="required">*</span>
                                        </label>
                                        <input name="service_experience" readonly value="${d.service_experience}">
                                    </p>
                                    <p>
                                        <label>
                                            社交主页
                                            <span class="required">*</span>
                                        </label>
                                        <input name="social_home" readonly value="${d.social_home}">
                                    </p>
                                </div>
                                <div class="form-action">
                                    <div class="new_act new_act_3">
<%--                                        <a class="button_act button_act_3">修改</a>--%>
                                        <input class="button_act button_act_3" type="submit" value="修改">
                                        <a href="${pageContext.request.contextPath}/candidate/find.do?id=${d.candidate_id}&c=s">预览</a>
                                    </div>
                                </div>
                        </div>
                    </div>
                        <input name="c" type="hidden" value="u">
                    </form>
                <div class="new-meta">
                    <a class=" btn btn-default btn-default-tf" href="">
                    <i class="fa fa-pencil"></i>
                    </a>
                </div>
            </div>
        </div>
        </div>
        <!--my account area end-->
        <!--newsletter area start-->

        <!--newsletter area end-->
        <!--footer top area start-->
        <!--footer middle area end-->
        <!--footer bottom area start-->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog modal-dialog-2">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="modal-product">
                            <div class="row">
                                <div class="new_port new_port_2">
                                    <div class="port_pix">
                                        <img src="img/product-pic/product_pic_2.jpg" alt="">
                                    </div>
                                </div>
                                <div class="elav_titel elav_titel_2">
                                    <div class="elv_heading elv_heading_therteen">
                                        <h3>Donec non est at</h3>
                                    </div>
                                    <div class="elav_info">
                                        <div class="price_box price_box_pb">
                                            <span class="spical-price spical-price-nk">$250.00</span>
                                        </div>
                                        <form class="cart-btn-area cart-btn-area-dec" action="#">
                                            <a class="see-all" href="#">See all features</a><br>
                                            <input type="number" value="1">
                                            <button class="add-tocart add-tocart-2" type="submit">Add to cart</button>
                                        </form>
                                    </div>
                                    <div class="evavet_description evavet_description_dec">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce posuere metus vitae arcu imperdiet, id aliquet ante scelerisque. Sed sit amet sem vitae urna fringilla tempus.</p>
                                    </div>
                                    <div class="elavetor_social">
                                        <h3 class="widget-title">Share this product</h3>
                                        <br>
                                        <ul class="social-link social-link-bbt">
                                            <li><a class="fb" data-original-title="facebook" href="#" title="" data-toggle="tooltip"><i class="fa fa-facebook"></i></a></li>
                                            <li><a class="twit" data-original-title="twitter" href="#" title="" data-toggle="tooltip"><i class="fa fa-twitter"></i></a></li>
                                            <li><a class="pinter" data-original-title="pinterest" href="#" title="" data-toggle="tooltip"><i class="fa fa-pinterest"></i></a></li>
                                            <li><a class="google+" href="#" title="Google+" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-google-plus"></i></a></li>
                                            <li><a class="lindin" href="#" title="LinkedIn" data-target="#productModal" data-toggle="tooltip"><i class="fa fa-linkedin"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--modal content end-->







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


