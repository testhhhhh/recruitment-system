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
                            <h1>公司信息</h1>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <form action="${pageContext.request.contextPath}/company/insert.do">
                        <div class="col-md-6">
                            <div class="all_cntnt">
                                <div class="frm_content">
                                </div>
                                <div class="al_form-fields">
                                    <input name="h.hr_id" type="hidden" value="${user.login_id}">
                                    <p>
                                        <label>
                                            公司名称
                                            <span class="required">*</span>
                                        </label>
                                        <input name="name"  value="">
                                    </p>
                                    <p>
                                        <label>
                                            工商注册号
                                            <span class="required">*</span>
                                        </label>
                                        <input name="business_registration_number" value="">
                                    </p>
                                    <p>
                                        <label>
                                            规模
                                            <span class="required">*</span>
                                        </label>
                                        <select name="size">
                                            <option value="1">0-50</option>
                                            <option value="2">50-100</option>
                                            <option value="3">100-499</option>
                                            <option value="4">500-1000</option>
                                            <option value="5">1000-10000</option>
                                            <option value="6">10000以上</option>
                                        </select>
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
                                            融资阶段
                                            <span class="required">*</span>
                                        </label>
                                        <input name="financing_stage" value="">
                                    </p>
                                    <p>
                                        <label>
                                            地址
                                            <span class="required">*</span>
                                        </label>
                                        <input name="address" value="">
                                    </p>
                                </div>
                                <div class="form-action">
                                    <div class="new_act new_act_3">
                                        <%--                                        <a class="button_act button_act_3">修改</a>--%>
                                        <input class="button_act button_act_3" type="submit" value="创建">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <input name="c" type="hidden" value="h">
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


