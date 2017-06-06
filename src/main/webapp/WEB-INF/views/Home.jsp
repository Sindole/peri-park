
    <%@ include file="Header.jsp" %>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
jQuery(document).ready(function($) {
	 
    $('#myCarousel').carousel({
            interval: 3000
    });

    //Handles the carousel thumbnails
    $('[id^=carousel-selector-]').click(function () {
    var id_selector = $(this).attr("id");
    try {
        var id = /-(\d+)$/.exec(id_selector)[1];
        console.log(id_selector, id);
        jQuery('#myCarousel').carousel(parseInt(id));
    } catch (e) {
        console.log('Regex failed!', e);
    }
});
    // When the carousel slides, auto update the text
    $('#myCarousel').on('slid.bs.carousel', function (e) {
             var id = $('.item.active').data('slide-number');
            $('#carousel-text').html($('#slide-content-'+id).html());
    });
});

</script>
<style>
.hide-bullets {
    list-style:none;
    margin-left: -40px;
    margin-top:20px;
}

.thumbnail {
    padding: 0;
}

.carousel-inner>.item>img, .carousel-inner>.item>a>img {
    width: 100%;
} 
</style>

<title>Peripherals Park</title>

</head>
<body>

<div class="container">
    <div id="main_area">
        <!-- Slider -->
        <div class="row">
            <div class="col-sm-6" id="slider-thumbs">
                <!-- Bottom switcher of slider -->
  <table>  
  <tr>   
                <ul class="hide-bullets">
                
      
                    <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-0"> <img src="images/headset-mcolor.jpg">
                        </a></td>
                   
                   <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-1"><img src="images/keyboard-white.png"></a>
                    </td>

                    <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-2"><img src="images/mouse-ms.jpg"></a>
                    </td>

                  <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-3"><img src="images/printer-bg.jpg" height=300; width=200;></a>
                    </td>
</tr>
<tr>
                  <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-4"><img src="images/led-apple.jpg"></a>
                    </td>

                    <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-5"><img src="images/led-dell.JPG"></a>
                    </td>
                    
                   <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-6"><img src="images/led-lg.jpg"></a>
                   </td>

                   <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-7"><img src="images/led-samsung.jpg"></a>
                    </td>
</tr>
<tr>
                  <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-8"><img src="images/cpu-apple2.png"></a>
                    </td>

                   <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-9"><img src="images/cpu-dell.jpg"></a>
                    </td>
                    
                   <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-10"><img src="images/cpu-hp.jpg"></a>
                  </td>

                   <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-11"><img src="images/cpu-dell1.jpg"></a>
                    </td>
</tr>
<tr>
                  <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-12"><img src="images/laptop-dell.jpg"></a>
                    </td>
                    
                   <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-13"><img src="images/laptop-apple.jpg"></a>
                   </td>
                    
                    <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-14"><img src="images/laptop-hp.jpg"></a>
                   </td>

                  <td class="col-sm-3">
                        <a class="thumbnail" id="carousel-selector-15"><img src="images/laptop-lenovo-split.jpg"></a>
                    </td>
                    </tr>
    </table>                
                </ul>
            </div>
            <div class="col-sm-6">
                <div class="col-xs-12" id="slider">
                    <!-- Top part of the slider -->
                    <div class="row">
                        <div class="col-sm-12" id="carousel-bounding-box">
                            <div class="carousel slide" id="myCarousel">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="active item" data-slide-number="0">
                                        <img src="http://placehold.it/470x480&text=zero"></div>

                                    <div class="item" data-slide-number="1">
                                        <img src="http://placehold.it/470x480&text=1"></div>

                                    <div class="item" data-slide-number="2">
                                        <img src="http://placehold.it/470x480&text=2"></div>

                                    <div class="item" data-slide-number="3">
                                        <img src="http://placehold.it/470x480&text=3"></div>

                                    <div class="item" data-slide-number="4">
                                        <img src="http://placehold.it/470x480&text=4"></div>

                                    <div class="item" data-slide-number="5">
                                        <img src="http://placehold.it/470x480&text=5"></div>
                                    
                                    <div class="item" data-slide-number="6">
                                        <img src="http://placehold.it/470x480&text=6"></div>
                                    
                                    <div class="item" data-slide-number="7">
                                        <img src="http://placehold.it/470x480&text=7"></div>
                                    
                                    <div class="item" data-slide-number="8">
                                        <img src="http://placehold.it/470x480&text=8"></div>
                                    
                                    <div class="item" data-slide-number="9">
                                        <img src="http://placehold.it/470x480&text=9"></div>
                                    
                                    <div class="item" data-slide-number="10">
                                        <img src="http://placehold.it/470x480&text=10"></div>
                                    
                                    <div class="item" data-slide-number="11">
                                        <img src="http://placehold.it/470x480&text=11"></div>
                                    
                                    <div class="item" data-slide-number="12">
                                        <img src="http://placehold.it/470x480&text=12"></div>

                                    <div class="item" data-slide-number="13">
                                        <img src="http://placehold.it/470x480&text=13"></div>

                                    <div class="item" data-slide-number="14">
                                        <img src="http://placehold.it/470x480&text=14"></div>

                                    <div class="item" data-slide-number="15">
                                        <img src="http://placehold.it/470x480&text=15"></div>
                                </div>
                                <!-- Carousel nav -->
                                <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left"></span>
                                </a>
                                <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right"></span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--/Slider-->
        </div>

    </div>
</div>
<%@ include file="Footer.jsp" %>