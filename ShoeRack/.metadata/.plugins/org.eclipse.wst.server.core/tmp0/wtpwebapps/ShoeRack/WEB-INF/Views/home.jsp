
<%@ include file="header.jsp" %>
<html>
<head>
<script>
$(document).ready(function () {
    $('#myCarousel').carousel({
        interval: 10000
    })
    $('.fdi-Carousel .item').each(function () {
        var next = $(this).next();
        if (!next.length) {
            next = $(this).siblings(':first');
        }
        next.children(':first-child').clone().appendTo($(this));

        if (next.next().length > 0) {
            next.next().children(':first-child').clone().appendTo($(this));
        }
        else {
            $(this).siblings(':first').children(':first-child').clone().appendTo($(this));
        }
    });
});
</script>
<link rel="stylesheet" href="Resources/css/index.css">
</head>
<body style="background-color:#45D4FF">
<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="Resources/Images/shoes01.jpg" alt="shoes" width="660" height="345">
      </div>

      <div class="item">
        <img src="Resources/Images/shoes02.jpg" alt="shoes" width="660" height="345">
      </div>
    
      <div class="item">
        <img src="Resources/Images/shoes03.jpg" alt="shoes" width="660" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
 <div class="container">
        <div class="row">
            <div class="span12">
                <div class="well">
                    <div id="myCarousel" class="carousel fdi-Carousel slide">
                     <!-- Carousel items -->
                        <div class="carousel fdi-Carousel slide" id="eventCarousel" data-interval="0">
                            <div class="carousel-inner onebyone-carosel">
                                <div class="item active">
                                 <div class="item">
                                    <div class="col-md-4">
                                        <a href="#"><img src="Resources/Images/office.jpg" class="img-responsive center-block"></a>
                                        <div class="text-center">1</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-4">
                                        <a href="#"><img src="Resources/Images/wedges.jpg" class="img-responsive center-block"></a>
                                        <div class="text-center">2</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-4">
                                        <a href="#"><img src="Resources/Images/sports.jpg" class="img-responsive center-block"></a>
                                        <div class="text-center">3</div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="col-md-4">
                                        <a href="#"><img src="Resources/Images/travel_adventure.jpg" class="img-responsive center-block"></a>
                                        <div class="text-center">4</div>
                                    </div>
                                </div>
                            </div>
                            <a class="left carousel-control" href="#eventCarousel" data-slide="prev"></a>
                            <a class="right carousel-control" href="#eventCarousel" data-slide="next"></a>
                        </div>
                        <!--/carousel-inner-->
                    </div><!--/myCarousel-->
                </div><!--/well-->
            </div>
        </div>
    </div>
  </div>
</body>
</html>
<%@ include file="footer.jsp" %>