<%@ include file="templates/header.jsp" %>
<div>	
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
					<img src="./resources/images/cam30.jpg" alt="" style="width: 100%;"
						style="height:80%">
				</div>

				<div class="item">
					<img src="./resources/images/cam33.jpg" alt="" style="width: 100%;"
						style="height:50%">
				</div>

				<div class="item">
					<img src="./resources/images/cam32.jpg" alt="" style="width: 100%;"
						style="height:50%">
				</div>
			</div>

			<!-- Left and right controls -->
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="right carousel-control" href="#myCarousel"
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>
	</div>

	<div class="container" style="margin-top: 70px;">


		<img src="./resources/images/cam5.jpg" class="img-circle"
			alt="Cinque Terre" width="304" height="236"
			style="margin-left: 50px;" /> <img src="./resources/images/cam6.jpg"
			class="img-circle" alt="Cinque Terre" width="304" height="236"
			style="margin-left: 50px;" /> <img src="./resources/images/cam7.jpg"
			class="img-circle" alt="Cinque Terre" width="304" height="236"
			style="margin-left: 50px;" />
	</div>

<%@ include file="templates/footer.jsp" %>