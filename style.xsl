<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
<!ENTITY nbsp   "&#160;">
<!ENTITY copy   "&#169;">
<!ENTITY reg    "&#174;">
<!ENTITY trade  "&#8482;">
<!ENTITY mdash  "&#8212;">
<!ENTITY ldquo  "&#8220;">
<!ENTITY rdquo  "&#8221;"> 
<!ENTITY pound  "&#163;">
<!ENTITY yen    "&#165;">
<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="utf-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
	<xsl:template match="/">
		
		<html lang="en">
			
			<head>
				<title>Kingsleague</title>
				<!-- Required meta tags -->
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
				
				<!-- Bootstrap CSS v5.2.1 -->
				<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
					integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
				<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
			</head>
			
			<body class="bg-dark">
				<a href="#" name="top"></a>
				<header class="container-fluid">
					<div class="row pt-2 align-items-center">
						<div class="col ps-5">
							<img src="img/logo.svg" class="img-fluid" width="80px" alt=""/>
						</div>
						<div class="col text-center">
							<h2 class="text-warning">KingsLeague</h2>
						</div>
						<div class="col text-end pe-5">
							<botton class="btn btn-warning ">Tienda</botton>
						</div>
					</div>
				</header>
				<main class="pt-3">
					<section class="container-fluid">
						<div class="row ">
							<xsl:for-each select="kingsleague/equipo">
								
								<div class=" col-3 col-md-2 col-xl-1 ">
									<div class="text-center rounded-pill" style="{gradiente}">
										<img src="{escudo}" class="img-fluid" alt="" onclick="hideall('{@abr}');"/>
										<p class="text-white"><xsl:value-of select="@abr"/></p>
									</div>
								</div>
							</xsl:for-each>
							
							
							
						</div>
					</section>
					<xsl:for-each select="kingsleague/equipo">
						
						<section  class="equipo container-fluid m-0 p-0" id="{@abr}">
							
							<div class="card border-0">
								<video autoplay="autoplay" loop="loop"  src=" {video} " poster="{poster}"></video>
								<div class="card-img-overlay d-flex justify-content-center align-items-center bg-dark bg-opacity-25">
									<div class="text-center bg-dark bg-opacity-50 rounded-pill p-5">
										<img src="{escudo}" alt="" width="200" />
										<h2 class="card-title text-white"><xsl:value-of select="@nombre"/> </h2>
									</div>
								</div>
							</div>
							
							
							
							
							<div class="container">
								<div class="row">
									<div class="col-4"></div>
									<div class="col-4">
										<div class="card mt-3  " style="{gradiente}">
											<img class="card-img-top img-fluid"
												src=" {presidente/imagen}"
												alt="Title" />
											<div class="card-body text-white text-center">
												<h4 class="card-title"><xsl:value-of select="presidente/@nombre"/></h4>
												<p class="card-text">Presidente</p>
											</div>
										</div>
									</div>
								</div>
								<div class="col-4"></div>
								
								
								<div class="row justify-content-center">
									<div class="col-6 col-md-4 col-xl-3 m-0">
										<div class="card mt-3 mb-3  " style="{gradiente}">
											<img class="card-img-top img-fluid"
												src="{entrenador/imagen}"
												alt="Title" />
											<div class="card-body text-white text-center">
												<h4 class="card-title"><xsl:value-of select="entrenador/@nombre"/></h4>
												<p class="card-text">Entrenador</p>
											</div>
										</div>
									</div>
									<xsl:for-each select="players/player">
										<div class="col-6 col-md-4 col-xl-3 m-0 d-flex">
											<div class="card mt-3 mb-3  position-relative  " style="{../../gradiente}">
												<img class="card-img-top img-fluid"
													src=" {imagen}"
													alt="Title" />
												<div class="card-body text-white text-center">
													<h4 class="card-title"><xsl:value-of select="@nombre"/></h4>
													<p class="card-text"><xsl:value-of select="demarcacion"/></p>
												</div>
												<xsl:if test="media">
													<button class="btn-warning position-absolute end-0 btn mt-2 me-2"> Media <br/> <xsl:value-of select="media"/></button>
												</xsl:if>
												
											</div>
										</div>
										
									</xsl:for-each>
								</div>
								
							</div>
						</section>
						
					</xsl:for-each>
				</main>
				<footer class="container-fluid text-center bg-secondary p-3">
					
					
					<h3 class="text-warning"> &copy; Elena Diaz Perez</h3>
					<a href="#top"> <i class="fa fa-arrow-circle-o-up text-warning position-fixed end-0 bottom-0 me-3 mb-3 fa-3x"
							aria-hidden="true"></i></a>
				</footer>
				<!-- Bootstrap JavaScript Libraries -->
				<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
					integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
					crossorigin="anonymous"></script>
				
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js"
					integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+"
					crossorigin="anonymous"></script>
				
					 <script>
                    function hideall(abr) {
                        document.querySelectorAll('.equipo').forEach(function(div) {
                            div.style.display = "none"
                        });
                        console.log(abr)
                        var divequipo = document.getElementById(abr);
                        divequipo.style.display = "block"
                    }
                	</script>   
			
				
			</body>
			
		</html>
		
	</xsl:template>
</xsl:stylesheet>