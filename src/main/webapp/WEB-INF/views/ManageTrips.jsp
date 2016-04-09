<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <style type="text/css">
        .imgPadding {
            padding-top: 30px;
        }

        .Lfloat {
            float: left;
        }

        .Rfloat {
            float: right;
        }

        figcaption {
            position: absolute;
            width: 100%;
            background-color: rgba(255, 255, 255, 0.5);
            padding-bottom: 10px;
            padding-top: 10px;
        }

        figure {
            position: relative;
        }

        .cap-bot figcaption {
            bottom: 0px;
        }

        .col-sm-4 {
            padding-bottom: 10px;
        }

        .glyphicon {
            padding-left: 10px;
            padding-right: 10px;
            color: rgba(255, 255, 255, 0.48);
        }

        .header .container {
            height: 500px;
        }

        h1 {
            color: rgba(97, 99, 122, 1);
        }

        .paddingBox {
            padding-top: 20px;
        }

        /* .paddingBox .btn { */
        /* 	width: 350px; */
        /* 	height: 250px; */
        /* } */
        .paddingBox .btn-lg {
            font-size: 210px;
            border-radius: 0px;
        }

        .btn-default {
            background-color: rgba(213, 216, 226, 1);
        }

        .borderTitle {
            border-bottom: 1px dotted darkblue;
        }

        #slider2 .head-info {
            margin: 0px;
        }

        .heightImage {
            height: 350px;
        }

    </style>

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<c:if test="${result == true}">
    <!-- header -->
    <div class="header">
        <!-- container -->
        <div class="container">
            <!-- banner Slider starts Here -->

            <script>
                // You can also use "$(window).load(function() {"
                $(function () {
                    // Slideshow 4
                    $("#slider3").responsiveSlides(
                            {
                                auto: true,
                                pager: false,
                                nav: false,
                                speed: 500,
                                namespace: "callbacks",
                                before: function () {
                                    $('.events').append(
                                            "<li>before event fired.</li>");
                                },
                                after: function () {
                                    $('.events').append(
                                            "<li>after event fired.</li>");
                                }
                            });

                });
            </script>
            <!--//End-slider-script -->
            <div id="top" class="callbacks_container">
                <ul class="rslides" id="slider3">
                    <li>
                        <div class="head-info">
                            <h1>
                                Where to go this summer?<span>faucibus eu semper ut,
									hendrerit</span>
                            </h1>
                            <p>Sollicitudin et elit sit amet, luctus placerat ipsum</p>
                        </div>
                    </li>
                    <li>
                        <div class="head-info">
                            <h1>
                                Aenean suscipit<span>Suspendisse venenatis volutpat </span>
                            </h1>
                            <p>Morbi id felis porttitor tellus viverra pulvinar.
                                Vestibulum</p>
                        </div>
                    </li>
                    <li>
                        <div class="head-info">
                            <h1>
                                Gestas vulputate<span>Morbi id felis porttitor tellus</span>
                            </h1>
                            <p>Morbi id felis porttitor tellus viverra pulvinar.ante
                                ipsum</p>
                        </div>
                    </li>
                </ul>
            </div>

        </div>
        <!-- container -->
    </div>

    <div class="container"
         style="background-color: white; padding-bottom: 20px">
        <div class="row">
            <div class="col-sm-8">
                <!-- body -->
                <div class="imgPadding">
                    <div class="row borderTitle">
                        <h1>Se di</h1>
                    </div>
                    <div class="row paddingBox">
                        <div class="col-sm-6 paddingBox">
                            <figure class="cap-bot maxWidth"> <span
                                    class="glyphicon glyphicon-plus btn btn-default btn-lg maxWidth"
                                    width="350" height="250"></span></figure>
                        </div>
                    </div>
                </div>
                <!-- //body -->

                <!-- body -->
                <div class="imgPadding">
                    <div class="row borderTitle">
                        <h1>Da di</h1>
                    </div>
                    <div class="row">
                        <div class="col-sm-6 paddingBox">
                            <figure class="cap-bot maxWidth"><img class="maxWidth"
                                                                  src="<c:url value="/resources/images/plane.jpg"/>"
                                                                  alt="The Pulpit Rock"
                                                                  width="350" height="250">
                                <figcaption> <span
                                        class="Lfloat"> <i class="glyphicon glyphicon-user"></i>8
							</span> <span class="Rfloat"> <a href="">View</a> <i
                                        class="glyphicon glyphicon-circle-arrow-right"></i>
							</span></figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-6 paddingBox">
                            <figure class="cap-bot maxWidth"><img class="maxWidth"
                                                                  src="<c:url value="/resources/images/plane.jpg"/>"
                                                                  alt="The Pulpit Rock"
                                                                  width="350" height="250">
                                <figcaption> <span
                                        class="Lfloat"> <i class="glyphicon glyphicon-user"></i>8
							</span> <span class="Rfloat"> <a href="">View</a> <i
                                        class="glyphicon glyphicon-circle-arrow-right"></i>
							</span></figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-6 paddingBox">
                            <figure class="cap-bot maxWidth"><img class="maxWidth"
                                                                  src="<c:url value="/resources/images/plane.jpg"/>"
                                                                  alt="The Pulpit Rock"
                                                                  width="350" height="250">
                                <figcaption> <span
                                        class="Lfloat"> <i class="glyphicon glyphicon-user"></i>8
							</span> <span class="Rfloat"> <a href="">View</a> <i
                                        class="glyphicon glyphicon-circle-arrow-right"></i>
							</span></figcaption>
                            </figure>
                        </div>
                        <div class="col-sm-6 paddingBox">
                            <figure class="cap-bot maxWidth"><img class="maxWidth"
                                                                  src="<c:url value="/resources/images/plane.jpg"/>"
                                                                  alt="The Pulpit Rock"
                                                                  width="350" height="250">
                                <figcaption> <span
                                        class="Lfloat"> <i class="glyphicon glyphicon-user"></i>8
							</span> <span class="Rfloat"> <a href="">View</a> <i
                                        class="glyphicon glyphicon-circle-arrow-right"></i>
							</span></figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
                <!-- //body -->
            </div>

            <div class="col-sm-4">

                <!-- banner Slider starts Here -->

                <script>
                    // You can also use "$(window).load(function() {"
                    $(function () {
                        // Slideshow 4
                        $("#slider2")
                                .responsiveSlides(
                                        {
                                            auto: true,
                                            pager: false,
                                            nav: false,
                                            speed: 800,
                                            namespace: "callbacks",
                                            before: function () {
                                                $('.events')
                                                        .append(
                                                                "<li>before event fired.</li>");
                                            },
                                            after: function () {
                                                $('.events')
                                                        .append(
                                                                "<li>after event fired.</li>");
                                            }
                                        });

                    });
                </script>
                <!--//End-slider-script -->

                <h1>Hinh anh</h1>
                <div id="top" class="callbacks_container heightImage">
                    <ul class="rslides" id="slider2">
                        <li>
                            <div class="head-info">
                                <img class="maxWidth" src="<c:url value="/resources/images/6.jpg"/>"
                                     alt="The Pulpit Rock" width="350" height="350">
                            </div>
                        </li>
                        <li>
                            <div class="head-info">
                                <img class="maxWidth" src="<c:url value="/resources/images/7.jpg"/>"
                                     alt="The Pulpit Rock" width="350" height="350">
                            </div>
                        </li>
                        <li>
                            <div class="head-info">
                                <img class="maxWidth" src="<c:url value="/resources/images/8.jpg"/>"
                                     alt="The Pulpit Rock" width="350" height="350">
                            </div>
                        </li>
                    </ul>
                </div>

                <h1>Booking</h1>
                <div>
                    <a href="http://ivivu.com/" target="_new">Ivivu</a>
                </div>

            </div>
        </div>

    </div>
</c:if>
<c:if test="${result != true}">
    <div class="container" style="margin-top: 150px">
        <h2 class="bg-danger col-sm-offset-4 col-sm-6">Cannot access this page, please <a href="/auth/Login">Log in</a>
        </h2>
    </div>
</c:if>
</body>
</html>