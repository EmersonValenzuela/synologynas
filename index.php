<!DOCTYPE html>

<?php
	$con = mysqli_connect('localhost', 'root','','servitec_visitas') or ('no encontramos base de datos');
	$conn = mysqli_connect('localhost',  'root', '','servite_web') or ('no encontramos base de datos');
	if (!function_exists('getShortedString')) {
		function getShortedString($text, $length=null)
		{
			$formatedString = ucwords($text);
	
			if ($length != null) {
				if (strlen($formatedString) <= $length) {
					return $formatedString;
				} else {
					$y = substr($formatedString, 0, $length) . '...';
					return $y;
				}
			} else {
				return $formatedString;
			}
		}
	}
?>

<!-- Mirrored from forest.themenum.com/crown/index4.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Feb 2021 16:33:42 GMT -->
<head>
<meta charset=UTF-8>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Synology Nas | Servitec Peru</title>
<link rel="icon" href="images/icon.png" type="image/x-icon">

<link href='../../fonts.googleapis.com/css4673.css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css' />

<!-- Styles -->
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" /><!-- Bootstrap -->
<link rel="stylesheet" href="css/themify-icons.css" type="text/css" /><!-- Icons -->
<link rel="stylesheet" href="css/all.css" type="text/css" /><!-- Icons -->
<link rel="stylesheet" href="css/owl.carousel.css" type="text/css" /><!-- Owl Carousal -->
<link rel="stylesheet" href="css/animate.css" type="text/css" /><!-- Owl Carousal -->

<link rel="stylesheet" href="css/style.css" type="text/css" /><!-- Style -->	
<link rel="stylesheet" href="css/responsive.css" type="text/css" /><!-- Responsive -->	
<link rel="stylesheet" href="css/blue.css" type="text/css" /><!-- blue -->	




</head>
<body id="home" class="background bg1">

<div class="theme-layout boxed">
	<header class="dark sticky">
		<div class="container">
			<div class="logo">
				<a href="https://servitecperu.com/web/" title=""> <img src="images/logo-servitec.png" alt="" width="50%"></a>
			</div>
			<nav>
				<div class="menu">
					<span class="open-nav"><i class="ti-menu"></i></span>
					<ul>
						<li><a href="#home" class="smooth" title="">Inicio</a></li>
						
						<li><a href="#features" class="smooth" title="">Nosotros</a></li>
						<li><a href="#service" class="smooth" title="">Servicios</a></li>
                        
						<li><a href="#team" class="smooth" title="">Equipo</a></li>
						<li><a href="#contact-us" class="smooth" title="">Contáctanos</a></li>
					</ul>
				</div><!-- Menu -->
			</nav>
		</div>
	</header><!-- Header -->
	<section class="block remove-bottom main-header">
		<div class="fixed-img sec-bg10"></div>
		<div class="container">
			<div class="row">
				<div class="header-sec">
					<div class="col-md-6">
						<div class="app-header-info">
							<span>REPARACIÓN Y VENTA DE </span>
							<h1>SERVIDOR NAS</h1>
							<h2>¿Disco Duro Nas dañado? ¿No enciende?</h2> <h2>¡Tenemos la solución!</h2>
							<!--<ul class="download-btns">
								<li>
									<a href="#" title="" class="fill"><i class="ti-apple"></i><span>Download on the</span><br/>App Store</a>
								</li>
								<li>
									<a href="#" title="" class="border"><i class="ti-android"></i><span>Andriod app on</span><br/>Play Store</a>
								</li>
							</ul>-->
						</div>
					</div>
					<div class="col-md-6">
						<div class="trial-form">
							<form method="post">
								<span>EQUIPO A REPARAR</span>
								<input name="dispositivo" type="text"  placeholder="Equipo a reparar" />
								<textarea name="problema" placeholder="Problema que presenta" rows="2" cols="2"></textarea>
								<span>INFORMACIÓN PERSONAL</span>
								<input name="nombres" type="text"  placeholder="Nombre y Apellido" />
								<input name="tel" type="text"  placeholder="N° de Telefono" />
								<span>¿DÓNDE TE VISITAMOS?</span>
								<div class="form-select">
									<select name="id_distrito"  id="">
										<option value="" disabled="disabled" selected="selected">--Seleccione Distrito--</option>
										<?php
										$sqls=mysqli_query($con,"
											SELECT * FROM distritos 
											order by distritos asc ");
										while ($row=mysqli_fetch_array($sqls)) {
											?>
											<option value="<?=$row['id_distrito']?>">
											<?=$row['distritos']?>
											</option>
											<?php  
										}
										?>
									</select>
									</div>
									<br>
								<input  name="direccion" type="text"  placeholder="Dirección: Av. Jr. o Calle y N°" />
								<input  type="submit" value="Enviar Consulta" name="confirmar" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</div><!-- Header Sec -->
	</section>
	
	<section class="block no-padding dark">
		<ul class="clients" id="carousal">
			<li><a href="#" title=""><img src="images/1.png" alt="" height="150"/></a></li>
			<li><a href="#" title=""><img src="images/2.png" alt="" height="150"></a></li>
			<li><a href="#" title=""><img src="images/3.png" alt="" height="150"/></a></li>
			<li><a href="#" title=""><img src="images/4.png" alt="" height="150"/></a></li>
			<li><a href="#" title=""><img src="images/5.png" alt="" height="150"/></a></li>
			<li><a href="#" title=""><img src="images/6.png" alt=""height="150"/></a></li>
		</ul>
	</section>
	

<!--	
	<section class="block dark">
		<div class="layer">
			<div class="fixed-img sec-bg2"></div>
			<div class="container">
				<div class="text-block">
					<h3>Like what you see here?</h3>
					<p>Your team will be thankful</p>
					
				</div><!-- Text Block -->
		<!--	</div>
		</div>
	</section>-->
	
	<section class="block no-padding dark"  id="features">
		<div class="container">
			<div class="tab">
			<div class="fancy-tab-area">
				<div class="fixed-img sec-bg3"></div>
		<!--			<div class="fancy-tabs">
						<ul class="tabs">
							<li><a href="#"><i class="ti-layout-media-center-alt"></i><br />Themes</a></li>
							<li><a href="#"><i class="ti-layout-tab-window"></i><br />Drag & Drop</a></li>
							<li><a href="#"><i class="ti-layout-media-overlay"></i><br />User friendly</a></li>
							<li><a href="#"><i class="ti-layout-media-right-alt"></i><br />Customizable</a></li>
							<li><a href="#"><i class="ti-layout-slider"></i><br />Responsive</a></li>
						</ul> <!-- / tabs --> 
					</div>
				</div>
				<div class="tab_content">
					<div class="tabs_item">
						<h3>¿Quiénes somos?</h3>
						<p>Somos una empresa que brinda servicios informáticos de forma integral en la asesoría y consultoría en hardware y software, tanto para usuarios domésticos, negocios y empresas corporativas. Prestamos nuestros servicios en forma altamente personalizada, comprendiendo que cada empresa es única, creando una solución a la medida de tus necesidades. Logrando identificar y entender las necesidades de nuestros clientes para ofrecerle la mejor solución.</p>
						<a href="https://www.servitecperu.com/web/inicio.php" title="" class="round-btn big">Saber más</a>
			<!--	    <img src="images/resource/mockup-tab1.png" alt="" />
					</div> <!-- / tabs_item -->

					<div class="tabs_item">
						<h3>Super Flexiable & easy to customize</h3>
						<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,</p>
						<a href="#" title="" class="round-btn big">View Complete Features</a>
						<img src="images/resource/mockup-tab2.png" alt="" />
					</div> <!-- / tabs_item -->

					<div class="tabs_item">
						<h3>HTML5 & Css3 validated Code</h3>
						<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,</p>
						<a href="#" title="" class="round-btn big">View Complete Features</a>
						<img src="images/resource/mockup-tab3.png" alt="" />
					</div> <!-- / tabs_item -->
					<div class="tabs_item">
						<h3>Super Retina Ready Design</h3>
						<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,</p>
						<a href="#" title="" class="round-btn big">View Complete Features</a>
						<img src="images/resource/mockup-tab4.png" alt="" />
					</div> <!-- / tabs_item -->
					<div class="tabs_item">
						<h3>Clean & Commented COde Quality</h3>
						<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour,</p>
						<a href="#" title="" class="round-btn big">View Complete Features</a>
						<img src="images/resource/mockup-tab5.png" alt="" />
					</div> <!-- / tabs_item -->
				</div> <!-- / tab_content -->
			</div> <!-- / tab -->
		</div>
	</section>
	
	<section class="block no-padding dark"  id="service">
		<div class="layer">
			<div class="fixed-img sec-bg4"></div>
			<div class="container">
				<div class="prdct-mock">
					<div class="row">
						<div class="col-md-6">
							<img src="images/ims.png" alt="" class="img-responsive"/>
						</div>
						<div class="col-md-6">
							<h3>¿Cuáles son los usos normales de un <strong>Synology Nas</strong>?</h3>
							<p>Utilice Synology NAS como un dispositivo de almacenamiento en su entorno de virtualización.</p>
							<p>Proporcione sincronización y uso compartido perfecto de archivos a través de Windows, macOS y Linux.</p>
						</div>
					</div>
				</div><!-- Product Mockup -->
			</div>
		</div>
	</section>

	
	<section class="block remove-top dark">
		<div class="container">
			<div class="heading">
				<span>HECHOS</span>
				<h2>Algunos datos interesantes sobre SERVITECPERU</h2>
				
			</div><!-- Heading -->
			<div class="top-margin">
				<div class="row">
					<div class="col-md-3">
						<div class="cool-facts">
							<i class="ti-calendar"></i>
							<h5>Conferencia</h5>
							<h4 class="count" style="color:yellow">1,954</h4>
						</div><!-- Cool Facts -->
					</div>
					<div class="col-md-3">
						<div class="cool-facts">
							<i class="ti-apple"></i>
							<h5>Aplicación movil</h5>
							<h4 class="count" style="color:yellow">432</h4>
						</div><!-- Cool Facts -->
					</div>
					<div class="col-md-3">
						<div class="cool-facts">
							<i class="ti-cup"></i>
							<h5>Ganar premios</h5>
							<h4 class="count" style="color:yellow">2,891</h4>
						</div><!-- Cool Facts -->
					</div>
					<div class="col-md-3">
						<div class="cool-facts">
							<i class="ti-announcement"></i>
							<h5>Clientes felices</h5>
							<h4 class="count" style="color:yellow">3,460</h4>
						</div><!-- Cool Facts -->
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section class="block remove-top dark"  id="blog">
		<?php
		$c=1;
           $sqli=mysqli_query($conn,"
            SELECT *
            FROM `servicios` 
            WHERE id_categoria_servicio = 19 and id_servicio= 72 or id_servicio = 77  or id_servicio = 67 ORDER BY `id_servicio` DESC");
           while ($row=mysqli_fetch_array($sqli)){
           ?>
		<div class="cool-features">	
			<div class="prdct-mockup">
				<a target="_blank" href="https://servitecperu.com/web/detalle_especialidad.php?id_servicio=<?php echo $row['id_servicio'];?>&id_categoria_servicio=19">
				<img src="images/services/<?=$row['foto']?>" alt="" width="100%"/>
		   </a>
			</div>
			<i class="ti-arrows-horizontal"></i>
			<div class="prdct-mockup-info">
				<span><?=$c++?></span>
				<h3><?=utf8_encode($row['titulo'])?></h3>
				<p><?= utf8_encode($row['descripcion']);?></p>
			</div>
		</div><!-- Cool Features -->
		    
		<?php
          
		   }
		?>
	</section>
	
	<section class="block remove-top dark">
		<div class="container">
			<div class="heading">
				<span>+ Servicios</span>
				<h2>Más servicios</h2>
				
			</div><!-- Heading -->
			<div class="top-margin">
				<div class="row">
				<?php
	
           $sqli=mysqli_query($conn,"
            SELECT *
            FROM `servicios` 
            WHERE id_categoria_servicio = 19 and id_servicio= 69 or id_servicio = 71  or id_servicio = 74 or id_servicio = 73 or id_servicio = 75 or id_servicio = 76 or id_servicio = 78 or id_servicio = 79 or id_servicio = 80 or id_servicio = 81 or id_servicio = 82 or id_servicio = 83 ORDER BY `id_servicio` DESC");
           while ($row=mysqli_fetch_array($sqli)){
           ?>
					<div class="col-md-6">
						<div class="blog-post-sec">
							<div class="blog">
								<div class="post-thumb">
									<img src="images/services/<?=$row['foto']?>" alt="" height="300" />
									<a href="https://servitecperu.com/web/detalle_especialidad.php?id_servicio=<?php echo $row['id_servicio'];?>&id_categoria_servicio=19" title=""><i class="ti-link"></i></a>
								</div>
								<h3><a target="_blank" href="https://servitecperu.com/web/detalle_especialidad.php?id_servicio=<?php echo $row['id_servicio'];?>&id_categoria_servicio=19" title=""><?=utf8_encode($row['titulo'])?></a></h3>
								<p style="!important;font-weight:500;text-overflow:ellipsis;"><?= utf8_encode(getShortedString($row['descripcion'],115))?></p>
							</div>
						</div><!-- Blog Post -->
					</div>
					<?php } ?>
				</div>
			</div>
		</div>
	</section>
	
	
	<section class="block dark">
		<div class="layer">
			<div class="fixed-img sec-bg6"></div>
			<div class="container">
				<div class="text-block2">
					<span>¿Necesitas un Experto para tu servidor Synology Nas u otro dispositivo? </span>
					<a target="_blank" href="https://www.servitecperu.com/web/contacto.php" title="" style="color:#FFF100" class="round-btn big">CONTÁCTANOS</a>
				</div>
			</div>
		</div>
	</section>
	
	<section class="block dark" id="team">
		<div class="container">
			<div class="heading">
				<span>Equipo</span>
				<h2>Todos los proyectos son gestionados e implementados por personal propio de Servitec. No subcontratamos.</h2>
				
			</div><!-- Heading -->
			<div class="team-area">
				<div class="row">
				<?php
										$sqls=mysqli_query($con,"
											SELECT * FROM usuarios where id_usuario= 3 or id_usuario= 16 
											order by id_usuario asc ");
										while ($row=mysqli_fetch_array($sqls)) {
											?>
					<div class="col-md-6">
						<div class="team flip">
							<div class="team-details">
								<h3><?=$row['nombres']?></h3>
								<span>Ingeniero Informático</span>

							</div>
							<div class="team-avatar">
								<img src="images/carrousel/<?=$row['foto']?>" alt="" />
							</div>
						</div>
					</div><?php }?>
				</div>
				<div class="row">
				<?php
										$sqls=mysqli_query($con,"
											SELECT * FROM usuarios where id_usuario= 26 or id_usuario= 27
											order by id_usuario asc ");
										while ($row=mysqli_fetch_array($sqls)) {
											?>
					<div class="col-md-6">
						<div class="team flip">
							<div class="team-details">
								<h3><?=$row['nombres']?></h3>
								<span>Ingeniero Informático</span>

							</div>
							<div class="team-avatar">
								<img src="images/carrousel/<?=$row['foto']?>" alt="" />
							</div>
						</div>
					</div><?php }?>
				</div>
			</div>
		</div>
	</section>
	
	<section class="block remove-top dark" id="contact-us">
		<div class="container">
			<div class="heading">
				<span>Contáctanos</span>
				<h2>¡CONTÁCTENOS y obtén nuestros servicios en los mejores precios!</h2>
				<h2>¡Somos SERVITEC!</h2>
				
			</div><!-- Heading -->
			<div class="row">
				<div class="col-md-6">
					<div id="contact"  class="get-in-touch">
						<div id="message"></div>
						<form method="post">	
							<div class="row">
								<div class="col-md-12">
									<input name="name" type="text" id="name" class="input-style" placeholder="Nombres" name="name" />
								</div>
								<div class="col-md-12">
									<input name="email" type="text" id="email" class="input-style" placeholder="Email" name="email"/>
								</div>
								<div class="col-md-12">
									<input name="number" type="text" id="email" class="input-style" placeholder="Número Celular" name="email"/>
								</div>
								<div class="col-md-12">
									<textarea  id="comments" class="input-style" placeholder="Consulta" name="consulta"></textarea>
									
									<input type="submit" class="submit"  name="enviar" value="Enviar" />
								</div>
							</div>
						</form>
					</div><!-- Contact Form -->
				</div>
				<div class="col-md-6">
					<div class="location">
						<div class="map-location">
							<div class="pointer" style="left:24%; top:65%;">
								<span>+</span>
								<div class="address">
									<ul>
										<li>Perú - Lima - Chorrilos</li>
										<li>Teléfonos 941 801 827 / 972 252 744</li>
									</ul>
								</div>
							</div>
						</div><!-- Map Location -->
						<ul class="company-address">
							<li><i class=" ti-location-pin "></i>Av. Defensores del Morro (ex Av. Huaylas) 13 Nº266 Chorrillos - Lima <br>Av. Jiron Arguedas 102, Chorrillos - Lima</li>
							<li><i class=" ti-mobile"></i>+51 941 801 827 / 972 252 744</li>
							<li><i class=" ti-email"></i>contactos@servitec-peru.com</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="whatsapp-escritorio">
      <a class="btn-whatsapp" target="_blank"
        href="https://api.whatsapp.com/send?phone=51967787226&text=Me%20interesa%20saber%20m%C3%A1s%20sobre%20el%20precio%20de%20sus%20productos"
        style="background-color: #009345;"><i class="fab fa-whatsapp"></i><label>Atención Inmediata <br>
          <span>967787226</span></label></a>
    </div>

    <div class="whatsapp-movil">
      <div class="btn-whatsapp btn-atencion">
        <p>Atenci&oacute;n inmediata:</p>
      </div>
      <button class="btn-whatsapp" id="cambiar">
        <a target="_blank"
          href="https://api.whatsapp.com/send?phone=51967787226&text=Me%20interesa%20saber%20m%C3%A1s%20sobre%20el%20precio%20de%20sus%20productos"><i
            class="fab fa-whatsapp"></i></a>
      </button>
    </div>
	
	<!--<div class="bottom-line">
		<span>Copyright - Registered 2015 by themenum</span>
	</div>-->
</div>

<!-- Script -->
<script type="text/javascript"  src="js/modernizr.js"></script><!-- Modernizer -->
<script src="js/jquery-2.1.1.js"></script><!-- Jquery -->
<script type="text/javascript"  src="js/script.js"></script><!-- Script -->
<script type="text/javascript"  src="js/bootstrap.min.js"></script><!-- Bootstrap -->
<script type="text/javascript"  src="js/owl.carousel.min.js"></script><!-- Owl Carousal -->
<script type="text/javascript"  src="js/switcher.js"></script><!-- Style Switcher -->
<script type="text/javascript" src="js/jquery.jigowatt.js"></script><!-- AJAX Form Submit -->
<script type="text/javascript" src="js/waypoint.js"></script><!-- WayPoint -->
<script type="text/javascript"  src="js/onscreen.js"></script><!-- On Screen -->
<script type="text/javascript" src="js/html5lightbox.js"></script><!-- HTML -->
<script type="text/javascript" src="js/slick.min.js"></script><!-- Slick -->
<script type="text/javascript" src="js/scrolltopcontrol.js"></script><!-- ScrolltoTop -->

<script type="text/javascript">
	$(document).ready(function() {
	
	$("#carousal").owlCarousel({
		autoplay:true,
		smartSpeed:1000,
		loop:true,
		items:5,
		dots:false,
		margin:50,			    
		slideSpeed:2000,
		nav:false,
		responsiveClass:true,
		responsive: {
		0:{items:1},
		479:{items:2},
		768:{items:3},
		979:{items:4},
		1199:{items:5}
		}		    
	}); 
	
	//** Tabs **//
	(function ($) { 
	$('.tab ul.tabs').addClass('active').find('> li:eq(0)').addClass('current');
	$('.tab ul.tabs li a').click(function (g) { 
	var tab = $(this).closest('.tab'), 
	index = $(this).closest('li').index();
	tab.find('ul.tabs > li').removeClass('current');
	$(this).closest('li').addClass('current');
	tab.find('.tab_content').find('div.tabs_item').not('div.tabs_item:eq(' + index + ')').slideUp();
	tab.find('.tab_content').find('div.tabs_item:eq(' + index + ')').slideDown();
	g.preventDefault();
	} );
	})(jQuery);
	
	/*================== COUNTER =====================*/
	$('.count').counterUp({
	delay: 10,
	time: 2000
	});	
	
	
	$('.testimonial-slick').slick({
	centerMode: true,
	centerPadding: '1px',
	autoplay: true,
	infinite: true,
	speed: 500,
	slide: 'li',
	arrows: false,
	dots: true,
	slidesToShow: 3,
	responsive: [
		{
		  breakpoint: 768,
		  settings: {
			arrows: false,
			centerMode: true,
			centerPadding: '40px',
			slidesToShow: 1
		  }
		},
		{
		  breakpoint: 480,
		  settings: {
			arrows: false,
			centerMode: true,
			centerPadding: '40px',
			slidesToShow: 1
		  }
		}
	  ]
	});
	
	$('.item-shot').slick({
	  infinite: true,
	  slidesToShow: 4,
	  slide: 'li',
	  slidesToScroll: 2,
	  responsive: [
		{
		  breakpoint: 768,
		  settings: {
			arrows: false,
			centerMode: true,
			centerPadding: '40px',
			slidesToShow: 3
		  }
		},
		{
		  breakpoint: 480,
		  settings: {
			arrows: false,
			centerMode: true,
			centerPadding: '40px',
			slidesToShow: 1
		  }
		}
	  ]
	});
	
	$('.twitter-slide').slick({
	  infinite: true,
	  slidesToShow: 1,
	  slide: 'li',
	  slidesToScroll: 1
	});

});	
</script>
<?php
if(isset($_POST['confirmar'])){
    
    $nombres = $_POST['nombres'];
    $dispositivo= $_POST['dispositivo'];
    $tel = $_POST['tel'];
    $problema = $_POST['problema'];
    $direccion = $_POST['direccion'];


    
    if(empty($nombres) || empty($dispositivo) || empty($tel) || empty($problema)){
        echo "<script>alert('Ingrese todos sus datos');</script>";
    }else{
    
	// EXTRAER DISTRITO MEDIANTE CODIGO

$sqld = mysqli_query($con,"
    SELECT distritos FROM distritos where id_distrito = $_POST[id_distrito]; ");
    while ($rowd=mysqli_fetch_array($sqld)){
        $distritos = $rowd['distritos'];
    }
    //INSERTAR CLIENTES
    mysqli_query($con,"INSERT INTO `clientes`
    (`nombres`, `tel`, `dispositivo`, `problema`, `estado`,  `fechaat`, `direccion`, `id_distrito`, `lat`, `lng` ) 
    VALUES 
    ('$nombres','$tel', '$dispositivo', '$problema', 1, now(), '$direccion, $distritos', $_POST[id_distrito], '$_POST[lat]', '$_POST[lng]')
             ");
             
    $sql = mysqli_query($con,"SELECT `id_cliente` 
                        FROM `clientes` 
                        order by id_cliente 
                        desc limit 1");
    while ($row=mysqli_fetch_array($sql)){
        $id = $row['id_cliente'];
    }
//fin	
	

    $subject = "Servitec Synology Nas Consultas";
    
    $emailsSend = ["beto1perk@gmail.com"];
    
    $to = "$emailsSend[0]";

    $message = "
    <html>
    <head>
        <title>Email-Synology Nas Consultas</title>
    </head>
    <body>
    <p>Este <strong>mensaje de consulta</strong> fue enviado desde  https://servitecnas.site/</p>
    <table style='margin:0!important'>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Nombres y Apellidos:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$nombres."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>EQUIPO A REPARAR:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$dispositivo."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>PROBLEMA QUE PRESENTA:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$problema."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Cell:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$tel."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Dirección:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$direccion." ".$direccion."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>URL:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>http://admin.servitec.site/info_empleo.php?id=".$id."</td>
        </tr>

    </table>
    </body>
    </html>
    ";
    // Always set content-type when sending HTML email
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

    mail($to,$subject,$message,$headers);  
        
    $nameValue = "";
    $lastNameValue = "";
    $phoneValue = "";
    $emailValue = "";
    $messageValue =  "";

    echo `<script>
                if ( window.history.replaceState ) {
                window.history.replaceState( null, null, window.location.href );
            }
            </script>`; 

    header("location:index.php");

    }
}
?>

<?php
if (isset($_POST['enviar'])) {
    
    //VARIABLES
	$name = $_POST['name']; 
	$email = $_POST['email'];
	$coments = $_POST['consulta'];         
	$number = $_POST['number'];        

    
   $subject = "SERVITECNAS";
    
    $emailsSend = ["beto1perk@gmail.com"];
    
    $to = "$emailsSend[0]";

    $message = "
    <html>
    <head>
        <title>Email-Servitecnas Mensaje</title>
    </head>
    <body>
    <p>Este <strong>mensaje de consulta</strong> fue enviado desde  https://servitec-nas.site//</p>
    <table style='margin:0!important'>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Nombres y Apellidos:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$name."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Email:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$email."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Número de Celular:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$number."</td>
        </tr>
        <tr>
        <td style='margin:0!important;border:1px solid #444;background:#F9FF00;color:#000;padding:8px;'><b>Mensaje:</b></td>
        <td style='margin:0!important;border:1px solid #444;padding:8px;'>".$coments."</td>
        </tr>
    </table>
    </body>
    </html>
    ";
    // Always set content-type when sending HTML email
    $headers = "MIME-Version: 1.0" . "\r\n";
    $headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";

    mail($to,$subject,$message,$headers);  
        
    $nameValue = "";
    $lastNameValue = "";
    $phoneValue = "";
    $emailValue = "";
    $messageValue =  "";

    echo `<script>
                if ( window.history.replaceState ) {
                window.history.replaceState( null, null, window.location.href );
            }
            </script>`; 

    header("location:index.php");
}
?>






</body>

<!-- Mirrored from forest.themenum.com/crown/index4.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 10 Feb 2021 16:35:24 GMT -->
</html>
