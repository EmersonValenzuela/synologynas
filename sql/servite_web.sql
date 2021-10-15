-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-10-2021 a las 20:45:16
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `servite_web`
--
CREATE DATABASE IF NOT EXISTS `servite_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `servite_web`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `anuncios`
--

CREATE TABLE `anuncios` (
  `id_anuncio` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `descripcion` text NOT NULL,
  `enlace` varchar(50) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `anuncios`
--

INSERT INTO `anuncios` (`id_anuncio`, `titulo`, `descripcion`, `enlace`, `foto`, `fecha`) VALUES
(1, 'MMAIN SAC', '<p>\r\n	Empresa dedicada a producir productos echos 100% en acero inoxidable,tenemos como prioridad brindarte el servicio y producto en optimas condiciones. Fabricamos todo tipo de productos en material en acero inoxidable , especialistas en soldadura.</p>\r\n', 'mmainsac.com', '2f5d2-captura.jpg', '2018-06-08'),
(2, 'Empanaderia Marcelino', '<p>\r\n	Somos una empresa dedicada al rubro de servicio de alimentos. Nuestra especialidad es la elaboraci&oacute;n de los deliciosos y diferentes variedades de exquisitas empanadas, bocaditos postres, produci&eacute;ndolos durante todo el a&ntilde;o.En Empanaderia Marcelino nos dedicamos a la venta de productos de alta calidad con un sabor distinto del tradicional y agradable al paladar.</p>\r\n', 'empanaderiamarcelino.com', '48b52-captura2.jpg', '2018-06-08'),
(3, 'Herra Center', '<p>\r\n	En&nbsp;Herra Center&nbsp;nos dedicamos a una variedad de servicios en soldadura, carpinter&iacute;a met&aacute;lica y herrar&iacute;a. Tambi&eacute;n realizamos trabajos en hierro para la fabricaci&oacute;n diversos de objetos o bien la restauraci&oacute;n de algunos elementos o proyectos.&nbsp;</p>\r\n', 'herracentersac.com', '68025-captura4.jpg', '2018-06-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_servicios`
--

CREATE TABLE `categorias_servicios` (
  `id_categoria_servicio` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `sub_titulo` varchar(50) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias_servicios`
--

INSERT INTO `categorias_servicios` (`id_categoria_servicio`, `titulo`, `sub_titulo`, `foto`, `id_estado`, `fecha`) VALUES
(1, 'Reparación de laptop', '', '8397f-7.png', 1, '2018-05-28 23:31:38'),
(2, 'Reparación de celulares', '', '3df66-5.png', 0, '2018-05-28 23:31:55'),
(3, 'Reparación de ipad - tablet', '', 'd2003-reparacion_ipad_tablet.jpg', 0, '2018-05-28 23:32:27'),
(4, 'Reparación de proyectores', '', '9bb21-8.png', 0, '2018-05-28 23:33:03'),
(5, 'Reparación de smart TV', '', '12cb9-reparacion_smart_tv.jpg', 0, '2018-05-28 23:33:30'),
(6, 'Reparación de all in one', '', '05857-reparacion_all_in_one.jpg', 0, '2020-12-22 21:14:00'),
(7, 'Recuperación de datos', '', 'ec566-4.png', 0, '2018-05-28 23:38:31'),
(8, 'Mantenimiento de server y redes', '', '79877-1.png', 1, '2018-05-29 00:43:29'),
(9, 'Servicio de reballing', '', '1d315-reballing.jpg', 0, '2018-06-03 19:22:13'),
(10, 'Instalación de cámaras', '', '61a82-instalacion_camaras.jpg', 0, '2018-06-03 19:20:48'),
(11, 'Instalación de intercomunicadores', '', 'c5e78-instalacion_intercomunicadores.jpg', 0, '2018-06-03 19:23:10'),
(13, 'Desarrollo de sistemas', '', 'ada95-desarrollo_sistemas.jpg', 0, '2018-06-03 19:23:19'),
(14, 'Desarrollo de aplicaciones', '', '18c48-desarrollo_aplicaciones.jpg', 0, '2018-06-03 19:23:23'),
(15, 'Desarrollo web', '', '92821-desarrollo_web.jpg', 0, '2018-06-03 19:23:39'),
(16, 'Reparación de fotocopiadora e impresoras', '', '0f998-fotocopiadora_impresora.jpg', 0, '2018-06-03 20:35:14'),
(17, 'Reportarnos tu problema', '', '8ef21-2.png', 0, '2018-06-03 20:35:09'),
(19, 'Instalacion de Discos Duros', '', 'discoduro.png', 0, '2019-08-20 22:35:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_templates`
--

CREATE TABLE `categorias_templates` (
  `id_categoria_template` int(11) NOT NULL,
  `titulo` varchar(70) NOT NULL,
  `foto` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias_templates`
--

INSERT INTO `categorias_templates` (`id_categoria_template`, `titulo`, `foto`) VALUES
(1, 'Corporativo', '08479-diseno-web-madrid-corporativa.jpg'),
(2, 'Personalizados', '5ae73-web.jpg'),
(3, 'Creativo', '91eb2-2-cornerd.jpg'),
(4, 'Tecnología', '31dd2-mock_itt.jpg'),
(5, 'Educación', '9221b-9f4b1ca13e3111b1807305b36ee621c5.jpg'),
(6, 'Entretenimiento', '76ce9-0qoqnbe.jpg'),
(7, 'Movil', '5c109-mobile-development-4.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias_videojuegos`
--

CREATE TABLE `categorias_videojuegos` (
  `id_categoria_videojuego` int(11) NOT NULL,
  `categoria_videojuego` varchar(30) NOT NULL,
  `foto` varchar(150) NOT NULL,
  `descripcion` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias_videojuegos`
--

INSERT INTO `categorias_videojuegos` (`id_categoria_videojuego`, `categoria_videojuego`, `foto`, `descripcion`) VALUES
(1, 'Educativos', 'b434e-juegos-educativos-02-ined21.jpg', 'Juegos para el buen aprendizaje de los niños , estos juegos ayudan a ejercitar la mente de los niños mientras disfrutan de una manera muy divertida.'),
(2, 'Otros Juegos', '81de4-598ba58bc0e9c.jpeg', 'Mucha Grasa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contador`
--

CREATE TABLE `contador` (
  `id_contador` tinyint(1) NOT NULL,
  `contado` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contador`
--

INSERT INTO `contador` (`id_contador`, `contado`) VALUES
(1, 1180562);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `id_estado` int(1) NOT NULL,
  `estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`id_estado`, `estado`) VALUES
(1, 'Activo'),
(2, 'Inactivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos`
--

CREATE TABLE `fotos` (
  `id_foto` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `foto` varchar(150) NOT NULL,
  `id_tipo_foto` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `fotos`
--

INSERT INTO `fotos` (`id_foto`, `titulo`, `foto`, `id_tipo_foto`) VALUES
(1, 'Reparación<br> de laptop', 'f028a-1.jpg', 1),
(2, 'Reparación<br> de celulares', 'ad533-2.jpg', 1),
(3, 'Reparación<br> de tablet', '910c4-3.jpg', 1),
(4, '<p>\n	&nbsp; DISE&Ntilde;O Y DESARROLLO</p>\n<p>\n	&nbsp; PAGINAS WEB</p>\n', '74f08-pexels-photo-251225.jpeg', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes_presentacion`
--

CREATE TABLE `imagenes_presentacion` (
  `id_imagen_presentacion` int(11) NOT NULL,
  `foto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `id_seccion` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `juegos`
--

CREATE TABLE `juegos` (
  `id_juegos` int(11) NOT NULL,
  `juegos` varchar(60) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `descripcion` text NOT NULL,
  `id_categoria_videojuego` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `juegos`
--

INSERT INTO `juegos` (`id_juegos`, `juegos`, `foto`, `descripcion`, `id_categoria_videojuego`) VALUES
(1, 'SUMA ALIEN', '8743f-imagen_sumaalien.jpg', '<p>\r\n	JUEGO EDUCATIVO PARA EL BUEN APRENDISAJE</p>\r\n', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perfiles_usuarios`
--

CREATE TABLE `perfiles_usuarios` (
  `id_perfil_usuario` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `foto` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fondo` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `estado_civil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `play_juego`
--

CREATE TABLE `play_juego` (
  `id_play_juego` int(11) NOT NULL,
  `nombre_swf` varchar(80) NOT NULL,
  `archivo_swf` varchar(200) NOT NULL,
  `id_juegos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `producto` varchar(40) NOT NULL,
  `marca` varchar(150) NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `precio_por_mayor` double(9,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `producto`, `marca`, `precio`, `id_categoria`, `foto`, `precio_por_mayor`) VALUES
(1, 'Auricular REAI BASS', '805112310876', '20.00', 1, '74cad-1528136513976-894880328.jpg', 15.00),
(2, 'Auricular SPORTS', '6975616104562', '20.00', 1, 'd3a8f-15281367887501156859149.jpg', 15.00),
(3, 'Auricular MIC', '7804625560580', '20.00', 1, '7837a-15281370286841436727331.jpg', 15.00),
(4, 'Mini Dual USB 3.1A', '-', '8.00', 1, '525c6-15281377189601901638673.jpg', 5.00),
(5, 'Cable USB ipad', '-', '25.00', 1, 'cca1e-1528138183213-776326947.jpg', 0.00),
(6, 'Cable USB Iphone 3G - 4S', '-', '10.00', 1, '55840-1528138394239-1817408380.jpg', 0.00),
(7, 'Cargador USB (Carro)', '-', '10.00', 1, 'af954-1528138562000434670766.jpg', 0.00),
(8, 'Display Port Adapter', '-', '45.00', 1, '90b23-15281396146222012144441.jpg', 0.00),
(9, 'USB 4 Puertos', '-', '25.00', 1, '4a0e5-1528139953280-1424756748.jpg', 0.00),
(10, 'USB Flash Drive 32GB', '7526805885190', '35.00', 1, '4f720-1528140274192-224968209.jpg', 0.00),
(11, 'USB Cargador (Carro)', '6933138634325', '25.00', 1, '16383-1528140566764-934088885.jpg', 0.00),
(12, 'Triple USB Charger', '6392477409450', '45.00', 1, 'e72b6-1528140770769647431261.jpg', 0.00),
(13, 'Dual USB LDNIO', '-', '45.00', 1, 'b7434-15281410104261616342297.jpg', 0.00),
(14, 'Auricular Stereo 5M', '7755678107270', '30.00', 1, '58240-1528141595061-1621511924.jpg', 0.00),
(15, 'Mouse Inalambrico  MD', '6290132555316', '35.00', 1, 'd5032-1528141860676-394190926.jpg', 0.00),
(16, 'Mouse Optico', '6970344731103', '25.00', 1, '60d6e-15281421104581073863516.jpg', 0.00),
(17, 'USB Multifuncional', '-', '20.00', 1, '0abf6-1528142413527-2032002908.jpg', 0.00),
(18, 'USB Audio Controller', '-', '30.00', 1, 'b9ace-1528142529848405808993.jpg', 0.00),
(19, 'Cable Lock', '-', '30.00', 1, 'ac0be-152814266439497814007.jpg', 0.00),
(20, 'Cable High Speed', '-', '73.00', 1, 'c089b-1528142934865-1192962733.jpg', 0.00),
(21, 'Cable Connection Series', '-', '35.00', 1, 'c615c-15281430235061511092584.jpg', 0.00),
(22, 'Cable 3 Pines', '-', '20.00', 1, 'c387b-15281434167022041148704.jpg', 0.00),
(23, 'Adaptador de CA', '-', '38.00', 1, '54d07-1528143770992779739549.jpg', 0.00),
(24, 'Cable de Datos y Carga Rapida', '6290132553459', '23.00', 1, '9d986-15281439450352033529139.jpg', 0.00),
(25, 'Cable de Red Telefono', '-', '15.00', 1, '3e597-15281441201841981495783.jpg', 0.00),
(26, 'Auricular BASS', '-', '20.00', 1, 'c9855-1528144906843-624445939.jpg', 0.00),
(27, 'Protector de Teclado', '-', '25.00', 1, 'b899b-1528145124730-92131419.jpg', 0.00),
(28, 'Teclado Skin', '027242849914', '19.00', 1, 'c85e2-15281452785611753266448.jpg', 0.00),
(29, 'Cargador(carro)', '-', '8.00', 1, '029af-1528145472794962712670.jpg', 0.00),
(30, 'Pad Mouse', '-', '16.00', 1, 'cfeb6-1528145573049-456236108.jpg', 0.00),
(31, 'Cable de Poder 2Pin', '-', '15.00', 1, '6caa3-1528145907903-1589161258.jpg', 0.00),
(32, 'Cable de Poder 2Pin(Buena)', '-', '20.00', 1, 'e6c0b-15281461833771638689344.jpg', 0.00),
(33, 'Cable para Impresora', '-', '20.00', 1, '08a19-1528146440279-1639010678.jpg', 0.00),
(34, 'Cable de Poder Computadora(3PIN)', '-', '20.00', 1, 'd8d7f-1528146779226531945817.jpg', 0.00),
(35, 'Cable VGA 1.8 M', '-', '20.00', 1, '2bdba-1528146886885-1095867667.jpg', 0.00),
(36, 'Mouse Optico SEISA', '6290132551097', '25.00', 1, '69a1a-1528147060648-2134282953.jpg', 0.00),
(37, 'Cargador dual usb con Cable(iphone)', '6933138602003', '75.00', 1, '80606-1528147241372921306197.jpg', 0.00),
(38, 'Display VGA - HDMI', '-', '85.00', 1, 'b067d-1528147393281-1457370645.jpg', 0.00),
(39, 'USP 6 Port Desktop Charger', '6933138654736', '55.00', 1, '4132d-1528147540925-1536510346.jpg', 0.00),
(40, 'Cable de Datos y Carga Rapida', '-', '25.00', 1, 'bc655-1528147824463-1083837864.jpg', 0.00),
(41, 'Cable de Datos y Carga Rapida(entrada a)', '-', '15.00', 1, 'acdf7-1528148190168-1188989761.jpg', 0.00),
(42, 'Adaptador USB ', '-', '10.00', 1, '70590-15281485541381903373322.jpg', 0.00),
(43, 'Cable USB', '-', '15.00', 1, 'dc23c-1528148637078929954829.jpg', 0.00),
(44, 'Seguro maxell', '-', '20.00', 1, 'a6d56-1528148893672413085957.jpg', 0.00),
(45, 'Cargador', '-', '35.00', 1, '1528151213747-1516914385.jpg', 0.00),
(46, 'Cable 3 colores', '-', '10.00', 1, '1528152351421-2086033074.jpg', 0.00),
(47, 'Cable Auxiliar(E-S)', '-', '15.00', 1, '15281526022091871684309.jpg', 0.00),
(48, 'Cable Av', '-', '15.00', 1, '15281527233651670202974.jpg', 0.00),
(49, 'Cargador + Cable', '-', '15.00', 1, '1528152897100-2077777966.jpg', 0.00),
(50, 'Cargadores', '-', '15.00', 1, '1528152982762-669412921.jpg', 0.00),
(51, 'Cargador PI-35 12v', '-', '15.00', 1, '1528153365717203993939.jpg', 0.00),
(52, 'Cargador Logitech 13v', '-', '15.00', 1, '1528153511155-1776871430.jpg', 0.00),
(53, 'Cargador', '-', '15.00', 1, '1528155515988-2083735045.jpg', 0.00),
(54, 'Cargador', '-', '15.00', 1, '1528155572082-391324348.jpg', 0.00),
(55, 'Cable de Datos y Recarga Asus', '-', '55.00', 1, '1528155644436-933391353.jpg', 0.00),
(56, 'Adaptador Audio + Video', '-', '20.00', 1, '1528155724839-611955730.jpg', 0.00),
(57, 'Conector Pulpo', '-', '15.00', 1, '', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `titulo` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `sub_titulo` varchar(45) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `foto` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `titulo`, `sub_titulo`, `descripcion`, `fecha`, `foto`) VALUES
(1, 'App Restaurante', '', '', '2018-05-27 08:20:52', 'c05ac-restaurant-app-500x375.jpg'),
(2, 'Juegos Educativos', '', '', '2018-05-27 08:21:09', '6a190-snake_battle_ui_design.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `descripcion` text COLLATE utf8_spanish_ci NOT NULL,
  `foto` varchar(170) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `id_categoria_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `titulo`, `descripcion`, `foto`, `fecha`, `id_categoria_servicio`) VALUES
(3, 'Derrame de líquido', 'Es un Servicio Avanzado a equipos con problemas y fallas complejas, como equipos que accidentalmente se ha \r\nderramado l&iacute;quido, o no encienden, fallas de video, etc.\r\n	\r\nSomos expertos y tenemos la experiencia suficiente para dejar tu equipo en nuestras manos, \r\nes por eso que nuestra filosof&iacute;a es la reparaci&oacute;n de tu equipo, no la de hacer \r\ncambio de tus componentes. Somos especialistas en equipos marca APPLE, SONY VAIO,\r\n HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.\r\n', '886cb-1.jpg', '2018-05-30 05:27:01', 1),
(4, 'Problema de virus', 'Laptop lenta, aparecen archivos extra&ntilde;os, programas instalados nuevos no conocidos, \r\nerrores de pantalla azul, p&aacute;gina de inicio cambiada, quiere decir que tu laptop tiene virus,\r\n recuerda que al no limpiar el sistema de un virus, troyano o spyware puede causar corrupci&oacute;n de datos, \r\nerrores de sistema o agujeros de seguridad\r\n\r\nAlgunos virus o spyware necesitan herramientas especiales y el conocimiento profesional para\r\n eliminarlos adecuadamente, es por eso que si tu laptop tiene alguno de estos sintomas, \r\nVisitanos en SERVITEC para que limpiar todo rastro de virus que tenga tu equipo.\r\n\r\n', 'af66f-2.png', '2018-05-30 05:27:17', 1),
(5, 'Solo encienden los led', '<p>\r\n	Solo encienden y parpadean los LED de bloqueo o encendido pero no da imagen. Esto es resultado de que tu laptop necesita una atenci&oacute;n apropiada y r&aacute;pida. Es recomendado que lleves tu laptop a reparaci&oacute;n para que te den soluci&oacute;n a la falla que presenta. En SERVITEC volvemos a la vida tu equipo muerto, realizamos un diagn&oacute;stico completo para verificar el problema y darle a nuestros clientes la soluci&oacute;n m&aacute;s efectiva para que la laptop ya no presente m&aacute;s problemas.</p>\r\n', 'b1feb-3.png', '2018-05-30 05:28:01', 1),
(6, 'Sobrecalentamiento de laptop', 'La laptop calienta de una manera exagerada, esta es una se&ntilde;al de alarma la cual requiere \r\nuna atenci&oacute;n especial de parte del usuario y es el momento de acudir a nuestro Centro de servicios\r\n t&eacute;cnico especialista para poder prevenir a tiempo un problema m&aacute;s grave.\r\n	\r\nCon nuestro diagn&oacute;stico adecuado y correcto podremos prevenir da&ntilde;os\r\n graves a tu equipo y ahorrarte gastos innecesarios en su reparaci&oacute;n. \r\nSomos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, \r\nCOMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.\r\n', '76588-4.png', '2018-05-30 05:28:30', 1),
(7, 'Fallas en Sistema Operativo', '\r\n	La laptop est&aacute; lenta, no pasa de inicio de sistema, se traba, de repente surge pantalla azul o morada, se repiten\r\n las letras cuando escribes, no abre un programa. Estos son algunos de los problemas m&aacute;s comunes que puede ocasionar\r\n un sistema operativo. \r\n	somos especialistas en revisar, diagnosticar y reparar las fallas que los sistemas operativos puedan presentar. Nuestra experiencia\r\n nos permite ofrecer a nuestros clientes las mejores soluciones acorde a los diferentes modelos de laptops. Somos especialistas en equipos\r\n marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.\r\n', '4f921-5.png', '2018-05-30 05:28:53', 1),
(8, 'Bisagras quebradas', '<p>\r\n	El uso constante de tu equipo muchas veces conlleva un desgaste en alguna de sus piezas. Este es el caso de las bisagras, las cuales permiten abrir y cerrar la pantalla de tu laptop Si las bisagras ya se encuentran flojas o est&aacute;n quebradas, en SERVITEC te las sustituimos Sustituimos las bisagras da&ntilde;adas por las originales, directamente del chasis del mismo modelo de laptop. Si no poseemos bisagras para su modelo o el cliente lo desea, se las elaboramos. Las bisagras son elaboradas con el dise&ntilde;o id&eacute;ntico de las originales y con el mismo material. Tambi&eacute;n vendemos bisagras a t&eacute;cnicos que reparan Laptops. Garantizamos confiabilidad y profesionalismo al momento de la reparaci&oacute;n. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', '512de-6.png', '2018-05-30 05:29:04', 1),
(9, 'Pantalla Quebrada', '<div>\r\n	Botaste tu laptop y se quebr&oacute; la pantalla? Muchos usuarios piensan que una pantalla quebrada o da&ntilde;ada es el fin del equipo. En SERVITEC somos importadores directos de pantallas de todos los tama&ntilde;os, marcas, modelos y tecnolog&iacute;as para equipos electr&oacute;nicos que la requieran con la especializaci&oacute;n en laptops, iPad y iPhone.</div>\r\n<div>\r\n	&nbsp;</div>\r\n<div>\r\n	Disponemos de pantallas de 7&quot;, 8&quot;, 9&quot;, 10.1&quot;, 11.1&quot;, 11.6&quot;, 14&quot;, 15.5&quot;, 15.6&quot;, 16.4&quot;, 17&quot; 18.5&quot; y 20&quot;, de tecnolog&iacute;as LCD, ULTRA LED, FULL HD, ULTRA HD para laptops marca APPLE, HP, Compaq, Dell, Toshiba, Sony Vaio, Apple, MacBook Pro, Mac Book Air, Samsung, Asus, Gateway, Acer, Lenovo, MCI, IBM. Ofrecemos la venta e instalaci&oacute;n o solamente la venta de la pantalla. Atendemos a t&eacute;cnicos.</div>\r\n', '66191-8.png', '2018-05-30 05:29:15', 1),
(10, 'No funciona el teclado', '<div>\r\n	Si a tu teclado le faltan algunas teclas, si has derramado l&iacute;quido sobre el teclado o le fallan teclas, tr&aacute;elo a nuestras sucursales de SERVITEC.</div>\r\n<div>\r\n	Reparamos teclados de laptops marcas HP, Compaq, Dell, Toshiba, Sony Vaio, Apple, MacBook Pro, Mac Book Air, Samsung, Asus, Gateway, Acer, Lenovo, MCI, IBM.</div>\r\n', '79007-9.png', '2018-05-30 05:29:26', 1),
(11, 'Puertos no funcionan', '<p>\r\n	El touchpad de tu laptop siempre est&aacute; sujeto a un uso intensivo. La mayor&iacute;a de los touchpads se han dise&ntilde;ado para su durabilidad para soportar el desgaste diario de la vida &uacute;til, sin embargo pueden ocasionarse diferentes problemas por el uso diario:<br />\r\n	<br />\r\n	El puntero del mouse se mueve solo, el clic derecho no me despliega las opciones del men&uacute;, el clic izquierdo no funciona, tengo que presionar fuerte el t&aacute;ctil para que responda. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', 'c076a-27459647_2064973830405182_1369452421351476736_n.jpg', '2018-05-30 05:29:38', 1),
(12, 'Falla en micrófono de iPhone o Gala', '<p>\r\n	Cuando desea usar el iPhone en modo Ipod y no se escucha o el sonido es deficiente, al conectar los auriculares se observa que el sonido se distorsiona o solamente se oye en uno de los dos auriculares, te escuchan mal o no te escuchan.<br />\r\n	<br />\r\n	Cuando est&aacute; teniendo problemas con el audio, ll&eacute;valo a nuestro Centro de Servicio T&eacute;cnico Especializado, nosotros nos encargaremos de la reparaci&oacute;n de tu iphone o Galaxy.</p>\r\n', '740eb-27459528_2064976613738237_2723241816324959935_n.jpg', '2018-05-30 05:31:43', 2),
(13, 'Sobrecalentamiento de iPhone o Gala', '<p>\r\n	El iPhone o Galaxy ha comenzado a calentar de manera anormal cuando se est&aacute; haciendo una llamada o utilizando una aplicaci&oacute;n. Estas se&ntilde;ales no son normales cuando se trata de un iPhone.<br />\r\n	<br />\r\n	Ll&eacute;valo a revisi&oacute;n a SERVITEC donde r&aacute;pidamente nuestro Centro de Servicio T&eacute;cnico Especializado se encargar&aacute; de solucionar el problema que provoca el sobrecalentamiento.</p>\r\n', '4af74-27459847_2064980473737851_7204501677807897203_n.jpg', '2018-05-30 05:31:53', 2),
(14, 'Botón Home o inicio dañado', '<p>\r\n	El bot&oacute;n Home del iPhone no funciona, est&aacute; muy duro, atascado o funciona de forma intermitente, o es el caso de que tu iPhone o Galaxy no encienda o apague correctamente.<br />\r\n	<br />\r\n	En LAPTOP&acute;S VALDEZ nuestro Centro de Servicio T&eacute;cnico especializado puede reparar este tipo de problemas lo m&aacute;s pronto posible para que sigas disfrutando de tu Smartphone.</p>\r\n', '4c49e-27459952_2064977173738181_5611556495870060369_n.jpg', '2018-05-30 05:32:07', 2),
(15, 'Touch quebrado de iPhone o Galaxy', '<p>\r\n	El iPhone o Galaxy tiene dos pantallas: la pantalla exterior de cristal protectora y la pantalla t&aacute;ctil (tambi&eacute;n llamada digitalizadora). Cuando la pantalla de iPhone o Galaxy presenta quebraduras tenemos que distinguir entre dos posibilidades de da&ntilde;o: a) rotura del screen (LCD) o sea la pantalla de cristal liquido, y b) rotura del elemento t&aacute;ctil de el iPhone o Galaxy. Sin embargo se necesita un diagn&oacute;stico para determinar la falla.<br />\r\n	<br />\r\n	En SERVITEC nos encargamos de reparar y reemplazar si fuera necesario la pantalla quebrada o da&ntilde;ada.</p>\r\n', '45987-27540225_2064981380404427_4680897200397219326_n-1-.jpg', '0000-00-00 00:00:00', 2),
(16, 'Problemas con el Jack de tu iPhone ', '<p>\r\n	Si su puerto de carga se afloja, ha dejado de funcionar o no se conecta adecuadamente al itunes, est&aacute; en la necesidad de una reparaci&oacute;n en nuestro Centro de Servicio T&eacute;cnico especializado donde contamos con repuestos originales de la marca Apple para sustituci&oacute;n de las partes da&ntilde;adas.</p>\r\n', 'a6b2b-27544990_2064978520404713_523693709031372102_n.jpg', '0000-00-00 00:00:00', 2),
(17, 'Problemas por contacto con líquidos', '<p>\r\n	Cont&aacute;cto con agua u otro l&iacute;quido, una de las causas de aver&iacute;a m&aacute;s comunes en el iPhone se produce por mojado en agua u otros l&iacute;quidos similares. A causa de esto pueden da&ntilde;arse los componentes internos de tu Galaxy o iPhone por lo cu&aacute;l necesita una revisi&oacute;n para diagnosticar posibles fallas.</p>\r\n', '7f317-27545424_2064964530406112_3881693782960830525_n.jpg', '0000-00-00 00:00:00', 2),
(18, 'Problemas en batería de Smartphone', '<p>\r\n	Se carga la bater&iacute;a completamente pero esta dura menos de lo normal, esto signifca que la bater&iacute;a tiene problemas.<br />\r\n	<br />\r\n	En nuestro Centro de Servicio T&eacute;cnico Especializado, contamos con herramientas y procesos de f&aacute;brica para solucionar los diversos problemas que tienen que ver con la carga de la bater&iacute;a de tu iPhone o Galaxy.</p>\r\n', '0cd9d-27657275_2064977573738141_6795704299933926289_n.jpg', '0000-00-00 00:00:00', 2),
(19, 'Problemas de cámara de iPhone o Galaxy', '<p>\r\n	Las fotograf&iacute;as se toman pixeleadas o simplemente la c&aacute;mara no responde.<br />\r\n	<br />\r\n	Si detecta esta falla, tr&aacute;elo a reparar a LAPTOP&acute;S VALDEZ, nuestro Centro de Servicio T&eacute;cnico Especializado est&aacute; completamente equipado con piezas originales de Apple y Samsung, por lo que su c&aacute;mara funcionar&aacute; tan bien como cuando lo compr&oacute;.</p>\r\n', '72d93-27750398_2064978000404765_4434019552316678089_n.jpg', '0000-00-00 00:00:00', 2),
(20, 'No reconoce WIFI', '<p>\r\n	Cuando se producen p&eacute;rdida de datos o problemas de cobertura de la se&ntilde;al.<br />\r\n	<br />\r\n	En LAPTOP&acute;S VALDEZ, reparamos los problemas de cobertura del iPhone o Galaxy cuando falla la se&ntilde;al o hay poca cobertura por fallo en el terminal.</p>\r\n', '29161-27752386_2064969757072256_4565688104165593316_n.jpg', '0000-00-00 00:00:00', 2),
(21, 'LCD quebrado de iPhone o Galaxy', '<p>\r\n	Muchas veces los usuarios dicen: &ldquo;se me rompi&oacute; la pantalla&rdquo;, ignorando el hecho de que la pantalla LCD realmente est&aacute; cubierta por un cristal transparente que es el que se rompe en la mayor&iacute;a de los casos. Cuando se rompe el cristal es muy probable que tu iPhone siga en funcionamiento, sin embargo, cuando se da&ntilde;a la pantalla LCD simplemente estar&aacute; apagada (gris), eso sin mencionar que para que se da&ntilde;e la pantalla LCD, antes debe romperse el cristal transparente que la recubre, aunque no siempre sea as&iacute;. En LAPTOPS VALDEZ contamos con un centro t&eacute;cnico especialista para solucionar tu problema.</p>\r\n', 'a77ab-27858474_2064973270405238_6387942666261111162_n.jpg', '0000-00-00 00:00:00', 2),
(22, 'Se reinicia tu iPhone o Galaxy', '<p>\r\n	El iPhone o Galaxy no enciende, simplemente se queda con la pantalla negra y no responde, o enciende pero se reinicia.<br />\r\n	<br />\r\n	Esta es una se&ntilde;al de alarma que le indica al usuario que es urgente una revisi&oacute;n del Smartphone, diagnosticando as&iacute; el problema que se presenta y evitando a futuro mayores fallas y gastos.</p>\r\n', '02bf7-27858827_2064982163737682_9053984592749709960_n.jpg', '0000-00-00 00:00:00', 2),
(23, 'Cambio de Touch o pantalla táctil quebrada', '<p>\r\n	Cuando la pantalla est&aacute; quebrada, del iPhone o Galaxy no significa necesariamente que la pantalla dej&oacute; de funcionar. La pantalla t&aacute;ctil contiene varias capas, y si la quebradura alcanza una capa espec&iacute;fica, entonces las se&ntilde;ales el&eacute;ctricas pueden ser interrumpidas. En LAPTOPS VALDEZ contamos con un centro t&eacute;cnico especialista para solucionar tu problema.</p>\r\n', '1aa4c-29597967_2092114287691136_7486815832493788989_n-1-.jpg', '0000-00-00 00:00:00', 2),
(24, 'Pantalla de touch quebrada', '<p>\r\n	Muchos usuarios piensan que cuando la pantalla se quiebra, se debe cambiar toda la pieza del iPad o Galaxy Tab. No es as&iacute;, la pantalla est&aacute; cubierta por un cristal transparente sensibilizado que es en la mayor&iacute;a de los casos el &uacute;nico que se quiebra; cuando el cristal o touch se quiebra es muy probable que tu iPad o Galaxy Tab contin&uacute;e en funcionamiento, eso no significa que no la debas cambiar. En LAPTOP&acute;S VALDEZ, realizamos el cambio de touch de iPad iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air y Galaxy Tab de todos los modelos.</p>\r\n', 'd47fc-1.png', '0000-00-00 00:00:00', 3),
(25, 'Touch+ LCD quebrado de tu iPad o Galaxy Tab', 'El iPad o Galaxy Tab tienen dos pantallas o cristales: la pantalla exterior es el cristal protector y la pantalla t&aacute;ctil (tambi&eacute;n llamada digitalizadora). Cuando la pantalla del iPad o la Galaxy Tab presenta rotura, tenemos que distinguir entre dos posibilidades de da&ntilde;o: La rotura del screen (LCD) o sea la pantalla de cristal l&iacute;quido, y la rotura del elemento t&aacute;ctil del iPad o Galaxy Tab.<br />\r\n<br />\r\nSin embargo, se necesita un diagn&oacute;stico para determinar la magnitud de la quebradura. En LAPTOPS VALDEZ nos encargamos de reemplazar con piezas nuevas, originales y en &oacute;ptimo funcionamiento si fuera necesario el cristal Touch y el cristal LCD quebrado o da&ntilde;ado para que tu equipo contin&uacute;e funcionando perfectamente.\r\n', '2a5e5-2.png', '2018-05-30 10:00:00', 3),
(26, 'No Funciona el Touch de tu iPad o Galaxy Tab', '<p>\r\n	Cuando utilizas tu iPad o Galaxy Tab y la imagen se congela, el touch no funciona completamente o funciona por partes y por momentos, esto es resultado de fallas de f&aacute;brica, lo m&aacute;s recomendable es revisar si es necesario realizar el cambio de la pieza para que tu iPad o Galaxy Tab funcione perfectamente.<br />\r\n	<br />\r\n	En LAPTOP&acute;S VALDEZ somos especialistas en la reparaci&oacute;n o reemplazo de Touch Pad da&ntilde;ados de iPad y Tablet, realizamos el cambio del t&aacute;ctil en casos de accidentes por ca&iacute;das o roturas del cristal. Los repuestos que utilizamos para las reparaciones son originales y nuevos acorde al modelo de la Galaxy Tab &ndash; iPad para garantizar el m&aacute;ximo rendimiento.</p>\r\n', '5b098-3.png', '0000-00-00 00:00:00', 3),
(27, 'Accidente de líquidos con tu iPhone o Galaxy Tab', '<p>\r\n	Tu iPad o Galaxy Tab se te cay&oacute; al agua, o hizo contacto con otro l&iacute;quido, una de las causas de aver&iacute;a m&aacute;s comunes en las iPad o en las Galaxy Tab se produce por mojado en agua u otros l&iacute;quidos similares. A causa de esto pueden da&ntilde;arse los componentes internos por lo cual se necesita una revisi&oacute;n para diagnosticar posibles fallas.<br />\r\n	<br />\r\n	En LAPTOP&acute;S VALDEZ, somos especialistas en la reparaci&oacute;n de fallas a nivel microelectr&oacute;nico como las que se pueden producir cuando un l&iacute;quido llega a la parte interna.</p>\r\n', '1a60a-4.png', '0000-00-00 00:00:00', 3),
(28, 'Reparación de Boton Home', '<p>\r\n	El bot&oacute;n Home del iPad o Galaxy Tab no funciona, no responde, est&aacute; muy duro, atascado o funciona de forma intermitente, o es el caso de que no encienda o apague correctamente.<br />\r\n	<br />\r\n	En SERVITEC nuestro Centro de Servicio T&eacute;cnico especializado puede reparar este tipo de problemas lo m&aacute;s pronto posible para que sigas disfrutando de tu iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air y Galaxy Tab de todos los modelos.</p>\r\n', 'c737f-5.png', '0000-00-00 00:00:00', 3),
(29, 'Cambio de batería', '<p>\r\n	En las iPad o Galaxy Tab es muy com&uacute;n de que nuestra bater&iacute;a no est&aacute; cargando. Es el momento en que nuestros especialistas t&eacute;cnicos realicen el diagn&oacute;stico correcto para verificar la configuraci&oacute;n del sistema de rendimiento de la bater&iacute;a y verificar las entradas de alimentaci&oacute;n de voltaje que permite que la bater&iacute;a est&eacute; en &oacute;ptimas condiciones, como el cargador, puerto de acoplamiento de espiga del cargador. Realizamos reparaciones de iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air, Galaxy Tab 2, Galaxy Tab 3, Galaxy Tab 4, de todos los modelos.</p>\r\n', '03ea5-6.png', '0000-00-00 00:00:00', 3),
(30, 'Se reinicia sola tu iPad o Galaxy', '<p>\r\n	El iPad o Galaxy Tab no enciende, simplemente se queda con la pantalla negra y no responde, o enciende pero se reinicia.<br />\r\n	<br />\r\n	Esta es una se&ntilde;al de alarma que le indica al usuario que es urgente una revisi&oacute;n. Nosotros diagnosticamos el problema que presenta, d&aacute;ndote una soluci&oacute;n inmediata y evitando a futuro mayores fallas y gastos en reparaci&oacute;n de tu iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air y Galaxy Tab de todos los modelos.</p>\r\n', 'ae8bc-7.png', '0000-00-00 00:00:00', 3),
(31, 'Deformación en tu iPad o Galaxy', '<p>\r\n	La bater&iacute;a de tu iPad o Galaxy Tab est&aacute; hinchada y se mantiene caliente cuando est&aacute; encendida. Este problema tiene soluci&oacute;n, en LAPTOP&acute;S VALDEZ somos importadores directos de partes y repuestos nuevos y originales de iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air , Galaxy Tab 2, Galaxy Tab 3, Galaxy Tab 4</p>\r\n', '1b280-9.png', '0000-00-00 00:00:00', 3),
(32, 'Desbloqueo de iPad y Galaxy Tab', '<p>\r\n	Olvidaste tu contrase&ntilde;a? Te das cuenta que no puedes hacer nada que te haga ingresar o quitar la contrase&ntilde;a de tu iPad o tu Galaxy Tab. Tr&aacute;ela a nuestro Centro de Servicio T&eacute;cnico donde con procesos de f&aacute;brica y bajo tu autorizaci&oacute;n desbloqueamos la Bios de tu equipo. Somos profesionales en solucionar este tipo de fallas o bloqueos en iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air y Galaxy Tab 2, Galaxy tab 3, Galaxy tab 4.</p>\r\n', '07fb6-10.png', '0000-00-00 00:00:00', 3),
(33, 'Problemas en cámara', '<p>\r\n	Las fotograf&iacute;as se toman pixeleadas o simplemente la c&aacute;mara no responde. Si detectas esta falla, tr&aacute;elo a reparar a SERVITEC, nuestro Centro de Servicio T&eacute;cnico Especializado est&aacute; completamente equipado con piezas originales de Apple y Samsung, por lo que su c&aacute;mara de tu iPad o Galaxy Tab funcionar&aacute; tan bien como cuando fue comprada.</p>\r\n', '4cca4-11.png', '0000-00-00 00:00:00', 3),
(34, 'Problemas en los puertos', '<p>\r\n	Si el puerto de carga se afloja, o no reconoce los dispositivos conectados, entonces est&aacute;s en la necesidad de una reparaci&oacute;n o sustituci&oacute;n de puertos o Jack en nuestro Centro de Servicio T&eacute;cnico especializado donde contamos con repuestos originales, nuevos para iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air, Galaxy tab2, Galaxy Tab 3, Galaxy Tab 4.</p>\r\n', '9c3a9-13.png', '0000-00-00 00:00:00', 3),
(35, 'Pantalla de touch quebrada', '<p>\r\n	Muchos usuarios piensan que cuando la pantalla se quiebra, se debe cambiar toda la pieza del iPad o Galaxy Tab. No es as&iacute;, la pantalla est&aacute; cubierta por un cristal transparente sensibilizado que es en la mayor&iacute;a de los casos el &uacute;nico que se quiebra; cuando el cristal o touch se quiebra es muy probable que tu iPad o Galaxy Tab contin&uacute;e en funcionamiento, eso no significa que no la debas cambiar. En SERVITEC, realizamos el cambio de touch de iPad iPad 1, iPad 2, iPad 3, iPad 4, iPad mini, iPad Air y Galaxy Tab de todos los modelos.</p>\r\n', 'd5932-14.png', '0000-00-00 00:00:00', 3),
(36, '<h3>Distorsi&oacute;n en el v&Iacute;deo</h3>', '<p>\r\n	&iquest;Distorsi&oacute;n en video?, ya hiciste los ajustes necesarios, pero no es suficiente? no lo da&ntilde;es m&aacute;s, tr&aacute;elo a los especialistas, nuestro Centro de Servicio T&eacute;cnico resolver&aacute; tu problema.</p>\r\n', 'c2437-1.png', '2021-02-16 06:29:31', 4),
(37, 'Imagen borrosa', '<p>\r\n	Proyecci&oacute;n desenfocada? no bastan los ajustes que trae por defecto? esto sucede muy a menudo, sin embargo tenemos la soluci&oacute;n.</p>\r\n', 'c8ec2-2.png', '0000-00-00 00:00:00', 4),
(38, 'Imagen con puntos', '<p>\r\n	&iquest;Aparecen puntos en la proyecci&oacute;n? esta es una falla que no puedes pasar por desapercibido, en SERVITEC, contamos con un Centro de Servicio T&eacute;cnico Especialista.</p>\r\n', 'def78-3.png', '0000-00-00 00:00:00', 4),
(39, '<h3>Mensaje de \"sin se&ntilde;al\"</h3>', '<p>\r\n	&iquest;Qu&eacute; hacer cuando de repente aparece en pantalla el mensaje de &ldquo;Sin Se&ntilde;al&rdquo;, a los minutos se conecta y luego vuelve a aparecer el mismo mensaje? Tra&eacute;lo a LAPTOP&acute;S VALDEZ, donde nuestro Centro de Servicio T&eacute;cnico es especialista en diagnosticar y reparar fallas a nivel de fabricante.<br />\r\n	<br />\r\n	Somos especialistas en reparar proyectores marca BENQ, PHILIPS, SONY, EPSON, 3M, BOXLIGHT, HITACHI, INFOCUS, VIVITEK. Contamos con repuestos como: Motor de imagen, &Oacute;ptica, placa base, entrada de audio y de video, lentes, l&aacute;mparas, filtro de aire, etc.</p>\r\n', 'cdeb3-5.png', '2021-02-16 06:31:09', 4),
(40, 'Se apaga o se reinicia solo', '<p>\r\n	El proyector se apaga al poco tiempo de encendido y ya no enciende, o se apaga y se reinicia solo y esto sucede cada cierto intervalo de tiempo, esa es una clara se&ntilde;al que tu proyector necesita una revisi&oacute;n.<br />\r\n	<br />\r\n	En nuestro Centro de Servicio T&eacute;cnico Especializado brindamos soluciones t&eacute;cnicas para las fallas m&aacute;s complejas que se pueden presentar. Realizamos reparaciones de circuitos impresos, problemas de alimentaci&oacute;n, convergencias, sustituci&oacute;n de l&aacute;mparas, lentes, sistemas de refrigeraci&oacute;n y ventilaci&oacute;n y somos especialistas en proyectores marca BENQ, PHILIPS, SONY, EPSON, 3M, BOXLIGHT, HITACHI, INFOCUS, VIVITEK y contamos con repuestos como: Motor de imagen, &Oacute;ptica, placa base, entrada de audio y de video, lentes, l&aacute;mparas, filtro de aire, etc.</p>\r\n', 'cfe8e-6.png', '0000-00-00 00:00:00', 4),
(41, '<h3>&iquest;Falla la lampara?</h3>', '<p>\r\n	&iquest;En el momento menos indicado te ha pasado que tu proyector &uacute;nicamente enciende los LED? Nuestro Centro de Servicio T&eacute;cnico es especialista en diagnosticar y reparar proyectores de toda marca y modelo que presentan problemas con la l&aacute;mpara.<br />\r\n	<br />\r\n	Somos especialistas en reparar proyectores marca BENQ, PHILIPS, SONY, EPSON, 3M, BOXLIGHT, HITACHI, INFOCUS, VIVITEK. Contamos con repuestos como: Motor de imagen, &Oacute;ptica, placa base, entrada de audio y de video, lentes, l&aacute;mparas, filtro de aire, etc.</p>\r\n', '318a6-27654519_2064971800405385_3358007118294241108_n.jpg', '2021-02-16 06:32:44', 4),
(42, '&iquest;Tu Proyector se Recalienta?', '<p>\r\n	El proyector calienta de una manera exagerada, esta es una se&ntilde;al de alarma la cual requiere una atenci&oacute;n especial de parte del usuario y es el momento de acudir a nuestro Centro de Servicio T&eacute;cnico Especialista para poder prevenir a tiempo un problema m&aacute;s grave. Con nuestro diagn&oacute;stico adecuado y correcto podremos prevenir da&ntilde;os graves a tu equipo y ahorrarte gastos innecesarios en su reparaci&oacute;n.<br />\r\n	<br />\r\n	Somos especialistas en proyectores marca BENQ, PHILIPS, SONY, EPSON, 3M, BOXLIGHT, HITACHI, INFOCUS, VIVITEK. Contamos con repuestos como: Motor de imagen, &Oacute;ptica, placa base, entrada de audio y de video, lentes, l&aacute;mparas, filtro de aire, etc.</p>\r\n', 'bc8b1-27654880_2064981823737716_5027413451397611287_n.jpg', '2021-02-16 06:33:09', 4),
(43, 'Imagen Distorcionada', '<p>\r\n	La imagen de tu Smar Tv aparece con rayas horizontales o verticales, se muestran puntos negros o blancos, se ve distorsionada o aparecen manchas oscuras. Nuestro Centro de Servicio T&eacute;cnico Especializado previene a tiempo un problema m&aacute;s grave en tu Smart Tv.<br />\r\n	<br />\r\n	Con nuestro diagn&oacute;stico adecuado y correcto podremos prevenir da&ntilde;os graves y ahorrarte gastos innecesarios en su reparaci&oacute;n. Somos especialistas en equipos marca SAMSUNG, PHILIPS, PANASONIC, LOEWE, etc.</p>\r\n', 'dd940-1.png', '2018-06-04 21:05:21', 5),
(44, '¿Se apaga solo?', '<p>\r\n	El Smart Tv se enciende normalmente pero se apaga a minutos de estar encendido. Nuestro Centro de Servicio T&eacute;cnico es especialista en la reparaci&oacute;n de fallas a nivel fabricante en los Smart Tv, ya sea debido a un problema de software como de hardware.<br />\r\n	<br />\r\n	Somos especialistas en equipos marca SAMSUNG, PHILIPS, PANASONIC, LOEWE, etc.</p>\r\n', '0ba57-27545027_2064968923739006_4934401040379220653_n.jpg', '2018-06-04 21:07:50', 5),
(45, 'Tv no da imagen', '<p>\r\n	&iquest;El Smart Tv no da imagen, &uacute;nicamente parpadean los LED, se apaga a minutos de estar encendido el equipo, se siente un olor a circuito quemado. Nuestro Centro de Servicio T&eacute;cnico es especialista en diagnosticar y reparar equipos que presentan esta falla, ya sea debido a un problema de software como de hardware.<br />\r\n	<br />\r\n	Somos especialistas en equipos marca SAMSUNG, PHILIPS, PANASONIC, LOEWE, etc.</p>\r\n', '9ca64-27657010_2064974597071772_6291660699836683084_n.jpg', '2018-06-04 21:06:44', 5),
(46, '¿Dañaste tu Pantalla?', '<p>\r\n	Accidentalmente golpeaste tu Smart TV y se quebr&oacute; la pantalla? Muchos usuarios piensan que una pantalla quebrada o da&ntilde;ada es el fin del equipo. En ServiTec-Peru somos importadores directos de pantallas de todos los tama&ntilde;os, marcas y modelos.</p>\r\n', '67bca-27657775_2064976823738216_3051267303014330401_n.jpg', '2018-06-04 21:09:44', 5),
(47, '<h3>&iquestOlvidaste la contrase&ntildea de tu PC?', '<p>\r\n	Olvidaste la contrase&ntilde;a de tu PC? Te das cuenta que no puedes hacer nada que te haga ingresar o quitar la contrase&ntilde;a.&nbsp;<br />\r\n	<br />\r\n	Tr&aacute;ela a nuestro Centro de Servicio T&eacute;cnico Especialista donde con procesos de f&aacute;brica y bajo tu autorizaci&oacute;n desbloqueamos la Bios de TU EQUIPO. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', '60bc8-1.png', '2021-02-13 02:55:41', 6),
(48, '<h3>&iquestPantalla Azul?<h/3>', '<p>\r\n	La Pc est&aacute; lenta, no pasa de inicio de sistema, se traba, de repente surge pantalla azul o morada, se repiten las letras cuando escribes, no abre un programa, estos son algunos de los problemas m&aacute;s comunes que puede ocasionar un sistema operativo.&nbsp;<br />\r\n	En ServiTec-Peru somos especialistas en revisar, diagnosticar y reparar las fallas que los sistemas operativos puedan presentar. Nuestra experiencia nos permite ofrecer a nuestros clientes las mejores soluciones acorde a los diferentes modelos de All In One. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', '6300d-2.png', '2021-02-13 02:54:43', 6),
(49, '<h3>Reparaci&oacuten de Placas</h3>', '<p>\r\n	Realizamos instalaci&oacute;n y reparaci&oacute;n de motherboards, que es un Servicio Avanzado de equipos con problemas complejos. Somos expertos y tenemos la experiencia suficiente para dar soluci&oacute;n a tu equipo.<br />\r\n	Reparaci&oacute;n de laptop a nivel componente cuando:<br />\r\n	- El equipo no enciende.<br />\r\n	- El equipo se enciende, luego se apaga.<br />\r\n	- Enciende pero no muestra video.<br />\r\n	- Equipo no presenta energ&iacute;a, no enciende ning&uacute;n LED.<br />\r\n	- Equipo Da&ntilde;ado por derrame de l&iacute;quidos (caf&eacute;, cerveza, Agua, etc.)<br />\r\n	- Presenta Corto Circuito o alg&uacute;n componente quemado.<br />\r\n	- El equipo no carga la bater&iacute;a.<br />\r\n	En caso que la falla sea grave y no tenga reparaci&oacute;n, le ofrecemos el remplazo de la motherboard a un precio especial. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', 'bcace-3.png', '2021-02-13 08:39:08', 6),
(50, '<h3>&iquestNo da Imagen?</h3>', '<p>\r\n	Cuando se enciende la PC no da imagen en pantalla, al presionar el power enciende el led pero no da video, enciende y carga la Bios, se escucha cuando enciende, tiene unos destellos en la pantalla pero no da imagen, o no da imagen pero se escucha un sonido de alerta de la Bios.&nbsp;<br />\r\n	En ServiTec-Peru somos especialistas en la reparaci&oacute;n de los problemas m&aacute;s complejos que las Pc All In One pueden presentar. Somos especialistas en la reparaci&oacute;n de equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', '43a2c-4.png', '2021-02-13 02:53:57', 6),
(51, '<h3>Pantalla Da&ntildeada</h3>', '<p>\r\n	Muchos usuarios piensan que una pantalla da&ntilde;ada o quebrada es el fin del equipo. En ServiTec-Peru somos importadores directos de pantallas de todos los tama&ntilde;os, marcas, modelos y tecnolog&iacute;as para equipos electr&oacute;nicos que la requieran con la especializaci&oacute;n en laptops, Pc all in one, iPad y iPhone.&nbsp;<br />\r\n	Disponemos de pantallas de 7&quot;, 8&quot;, 9&quot;, 10.1&quot;, 11.1&quot;, 11.6&quot;, 14&quot;, 15.5&quot;, 15.6&quot;, 16.4&quot;, 17&quot; 18.5&quot; y 20&quot;, de tecnolog&iacute;as LCD, ULTRA LED, FULL HD, ULTRA HD para Pc All In One marca HP, Compaq, Dell, Toshiba, Sony Vaio, Apple, MacBook Pro, Mac Book Air, Samsung, Asus, Gateway, Acer, Lenovo, MCI, IBM.&nbsp;<br />\r\n	Ofrecemos la venta e instalaci&oacute;n o solamente la venta de la pantalla.</p>\r\n', '4f360-5.png', '2021-02-13 02:48:48', 6),
(52, '<h3>&iquestTu All in One Se Apaga Sola?</h3>', '<p>\r\n	&iquestUtilizas la Pc y de repente se apaga sola y tarda en encender nuevamente? &iquesto se reinicia y resetea el Bios?&nbsp;<br />\r\n	Somos ServiTec-Peru, un Centro de Servicio T&eacute;cnico Especialista que posee la experiencia suficiente para dejar tu equipo en excelentes condiciones <br /> Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.<br /> Nuestra filosof&iacute;a es la reparaci&oacute;n de tu equipo, no la de hacer cambio de tus componentes.</p>\r\n', 'e9bb3-6.png', '2021-02-13 05:37:08', 6),
(53, '<h3>&iquestVirus?</h3>', '<p>\r\n	Si tu equipo experimenta lentitud al ejecutar programas o al iniciar el sistema operativo, se cierran las ventanas de programas o de internet, el sistema se congela o muestra ServiTec-Peru detenemos la infecci&oacute;n de sus archivos. Le creamos una copia de seguridad de sus archivos en DVD y eliminamos virus sin formatear o con formato. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG. Vendemos, instalamos y configuramos software de seguridad para su equipo (firewall, Antivirus)</p>\r\n', 'cff5b-7.png', '2021-02-13 02:53:09', 6),
(54, 'Sobrecalentamiento', '<p>\r\n	La Pc calienta de una manera exagerada, esta es una se&ntilde;al de alarma la cual requiere una atenci&oacute;n especial de parte del usuario y es el momento de acudir a nuestro Centro de servicios t&eacute;cnico especialista de ServiTec-Peru para prevenir a tiempo un problema m&aacute;s grave. Con nuestro diagn&oacute;stico adecuado y correcto podremos prevenir da&ntilde;os graves a tu equipo y ahorrarte gastos innecesarios en su reparaci&oacute;n. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', '8e4b9-27544770_2064980653737833_4065978251753776498_n.jpg', '2018-06-04 21:36:04', 6),
(55, 'No Enciende', '<p>\r\n	La Pc no da imagen, no tiene signos de inicializaci&oacute;n de sistema, &uacute;nicamente parpadean los LED, se escucha que el sistema inicia pero no da imagen, se apaga a minutos de estar encendido el equipo, se siente un olor a circuito quemado. Nuestro Centro de servicio t&eacute;cnico es especialista en diagnosticar y reparar laptops que presentan esta falla, ya sea debido a un problema de software como de hardware. Somos especialistas en equipos marca APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG.</p>\r\n', '45368-27752041_2064974367071795_9042548738706959795_n.jpg', '2018-06-04 21:37:30', 6),
(56, '¿Necesitas Reballing?', '<p>\r\n	&iquest;Has tenido alg&uacute;n problema de estos? Tu equipo enciende pero no da imagen en la pantalla, enciende y se apaga instant&aacute;neamente, muestra mala calidad en la imagen, se sobrecalienta, se apaga sin previo aviso, se reinicia constantemente, cuando la apagas, se enciende sola, tiene fallas de conexi&oacute;n con el WI-FI.<br />\r\n	<br />\r\n	En ServiTec-Peru, contamos con el &uacute;nico Centro de Servicio T&eacute;cnico altamente calificado y capaz de realizar trabajos de Reballing BGA, o microelectr&oacute;nica, reparando as&iacute; defectos de fabricante que pueda traer tu equipo como cualquier problema de software (errores de sistema operativo, virus, drivers, sistema de archivos, etc.). Todas tus reparaciones tienen garant&iacute;a. Con precios especiales a t&eacute;cnicos y mayoristas.</p>\r\n', 'f23b1-27540795_2064980307071201_2765953604004908229_n.jpg', '2018-06-04 21:39:34', 9),
(58, 'Desarrollo de Pagina Web', '<p>\r\n	<u>ESTRATEGIA</u></p>\r\n<p>\r\n	Identificamos tus necesidades, entendemos tus objetivos de comunicaci&oacute;n y aprendemos acerca de tu negocio.</p>\r\n<p>\r\n	<u>ARQUITECTURA DE LA INFORMACI&Oacute;N</u></p>\r\n<p>\r\n	Estructuramos y clasificamos el contenido del sitio web para que el usuario encuentre la informaci&oacute;n que busca a menor cantidad de clics posible.</p>\r\n<p>\r\n	<u>EXPERIENCIA USUARIA</u></p>\r\n<p>\r\n	Podemos generar emociones en nuestros clientes mediante una experiencia de usuario bien lograda. . La experiencia est&aacute; estrechamente ligada a las emociones y en staff creativa sabemos como potenciarlas.</p>\r\n<p>\r\n	<u>DISE&Ntilde;O WEB</u></p>\r\n<p>\r\n	Transportamos la personalidad de tu marca de un mundo real a un mundo digital. Aprovechamos al m&aacute;ximo los recursos de dise&ntilde;o para potenciar la experiencia de usuario y que viva tu marca.</p>\r\n<p>\r\n	<u>DESARROLLO</u></p>\r\n<p>\r\n	En STAFF CREATIVA incorporamos las &uacute;ltimas tecnolog&iacute;as y elementos a su sitio web para hacerlo vers&aacute;til y flexible.</p>\r\n<p>\r\n	<u>ADMINISTRADOR DE CONTENIDOS</u></p>\r\n<p>\r\n	Generamos un administrador de contenidos, f&aacute;cil de usar, dise&ntilde;ado para permitir a personas sin experiencia en programaci&oacute;n poder controlar y editar el contenido de su sitio web, incluyendo texto, im&aacute;genes, v&iacute;deos.</p>\r\n<p>\r\n	<u>RESPONSIVE DESIGN</u></p>\r\n<p>\r\n	En staff desarrollamos su sitio web con esta tecnolog&iacute;a para que sea amigable al entorno de dispositivos m&oacute;viles del usuario.</p>\r\n<p>\r\n	<u>SEO</u></p>\r\n<p>\r\n	El Posicionamiento Web es el conjunto de t&eacute;cnicas que permiten que su sitio web aparezca de forma natural y gradual dentro de los resultados org&aacute;nicos de b&uacute;squeda de Google con la mayor cantidad de t&eacute;rminos relacionados a su &aacute;rea de negocio. Hacemos que su sitio web no sea invisible en internet.</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '1559a-web1.png', '2018-06-04 02:34:25', 15),
(60, 'Servidores y Redes', '<section>\r\n	<div data-aos=\"flip-left\">\r\n		<h1 data-aos=\"flip-flip-&gt;up\">\r\n			<span style=\"font-size:14px;\">SERVIDORES</span></h1>\r\n		<p>\r\n			Contamos con a&ntilde;os de experiencia en servidores de todo tipo de arquitecturas, plataformas tecnol&oacute;gicas y generaciones.</p>\r\n		<p>\r\n			Ofrecemos soporte t&eacute;cnico los 365 d&iacute;as del a&ntilde;o en recuperaci&oacute;n de raid, informaci&oacute;n y configuraciones de servidore.&nbsp;Realizamos la configuraci&oacute;n de acuerdo a tus requerimientos empresariales en cuanto a espacio en disco, tipo de discos que necesites y capacidad de almacenamiento.</p>\r\n		<h1 data-aos=\"flip-flip-&gt;up\">\r\n			<span style=\"font-size:14px;\">REDES</span></h1>\r\n		<p data-aos=\"flip-up\">\r\n			En ServiTec-Peru te brindamos soluciones de conectividad para empresas, que garanticen las comunicaciones de forma &oacute;ptima y segura. Conectamos toda la red de computadoras en una red LAN o en m&uacute;ltiples locaciones. Dise&ntilde;amos e implementamos redes por medio f&iacute;sico o inal&aacute;mbrico y mixtas de acuerdo a las necesidades.</p>\r\n		<p data-aos=\"flip-up\">\r\n			Ofrecemos soluciones de conectividad inal&aacute;mbrica para sus dispositivos, redes inal&aacute;mbricas de alto rendimiento amplia cobertura y seguras, acorde con las nuevas tecnolog&iacute;as.</p>\r\n	</div>\r\n</section>\r\n<section>\r\n	<div data-aos=\"flip-left\">\r\n		<h1 data-aos=\"flip-flip-&gt;up\">\r\n			<span style=\"font-size:14px;\">CABLEADO ESTRUCTURADO</span></h1>\r\n		<p data-aos=\"flip-up\">\r\n			ServiTec-Peru siempre en la b&uacute;squeda de ofrecer lo mejor para sus clientes, est&aacute; preparado para brindar soluciones con los &uacute;ltimos est&aacute;ndares vigentes. Dise&ntilde;amos e instalamos redes de cableado estructurado, seg&uacute;n est&aacute;ndar internacionales en sus &uacute;ltimas versiones TIA/EIA-568-C.2 para la categor&iacute;a 6 e ISO/IEC 11801:2002 para la categor&iacute;a 7/clase para la categor&iacute;a 7.</p>\r\n	</div>\r\n</section>\r\n<p>\r\n	&nbsp;</p>\r\n', '1f158-79877-1.png', '2018-06-04 22:13:10', 8),
(61, 'Recuperacion de Datos', '<p>\r\n	Los discos duros pueden sufrir muchos tipos de fallas, ocasionadas por m&uacute;ltiples razones, como: Golpes, apagados forzosos del equipo, da&ntilde;o de sectores, calentamiento, borrado accidental de informaci&oacute;n, formateo por error, p&eacute;rdidas por instalaci&oacute;n de sistemas operativos o programas, da&ntilde;o por virus, corrupci&oacute;n l&oacute;gica, errores entrada o salida, Input u Output).<br />\r\n	<br />\r\n	Por ello, en ServiTec-Peru contamos con diversas soluciones para dar respuesta a estas amenazas y vulnerabilidades de los sistemas y dispositivos inform&aacute;ticos. Contamos con un Centro T&eacute;cnico Especializado altamente calificado e &iacute;ntegro para realizar trabajos de recuperaci&oacute;n de datos a nivel de software.<br />\r\n	<br />\r\n	Profundizamos a un nivel de microelectr&oacute;nica seg&uacute;n sea el da&ntilde;o de los dispositivos de almacenamiento, asegur&aacute;ndoles a nuestros clientes que la informaci&oacute;n recuperada de su equipo es estrictamente confidencial para nosotros. Brindamos el servicio de Recuperaci&oacute;n de datos de Discos Duros interfase EIDE, IDE, SERIAL ATA (SATA), SCSI-SAS, USB, memorias flash, MMC, SD, Memory Stick, etc, cualquier combinaci&oacute;n de discos &uacute;nicos o arreglos RAID, JBOD O DIN&Aacute;MICOS, marcas Seagate, Western Digital, Toshiba, Hitachi, Samsung, de sistemas operativos Windows, MacOs, Linux y sistema de archivos NTFS-FAT16-FAT32-Ext/2/3/4/x-HFS-HFS+-XFS.</p>\r\n', 'd2033-ec566-4.png', '2018-06-04 22:15:28', 7),
(62, 'Camaras de Vídeo Vigilancia', '<div>\r\n	ServiTec-Peru brinda la mejor asesor&iacute;a, la misma que permitir&aacute; elegir el Sistema de seguridad adecuado seg&uacute;n sus necesidades. Adem&aacute;s, contamos con personal t&eacute;cnico especializado debidamente identificado</div>\r\n<ul>\r\n	<li>\r\n		<div>\r\n			Realizamos instalaciones y mantenimiento de c&aacute;maras de seguridad, alarmas, video portero, intercomunicadores y racks, en todo lima y provincias. contamos con t&eacute;cnicos calificados.</div>\r\n	</li>\r\n</ul>\r\n<div>\r\n	<ul>\r\n		<li>\r\n			Suministros &nbsp;de c&aacute;maras an&aacute;logas, c&aacute;maras IP, c&aacute;maras HD, c&aacute;maras esp&iacute;as, accesorios de instalaci&oacute;n, cable UTP, video balun, cable HDMI.</li>\r\n	</ul>\r\n	<ul>\r\n		<li>\r\n			Realizamos cotizaciones sin costo alguno para hogares y empresas.</li>\r\n		<li>\r\n			Nuestro departamento t&eacute;cnico y comercial le pueden asesorar sobre el sistema m&aacute;s id&oacute;neo, resolver las dudas que tenga y ayudarle con la configuraci&oacute;n y puesta en marcha de su sistema de v&iacute;deo vigilancia.</li>\r\n	</ul>\r\n	<ul>\r\n		<li>\r\n			Con la instalaci&oacute;n de c&aacute;maras de seguridad CCTV (Circuito Cerrado de Televisi&oacute;n y Video DIGITAL) con servidores DVR, usted ser&aacute; capaz de visualizar y grabar en tiempo real todo lo que acontece, sin necesidad de estar en el lugar</li>\r\n	</ul>\r\n	<ul>\r\n		<li>\r\n			Soluciones de cableado estructurado para CCTV, al&aacute;mbrico e INALAMBRICO.</li>\r\n		<li>\r\n			Soluciones que le dar&aacute;n tranquilidad, y le ayudar&aacute;n a tener mayor control y productividad en su Negocio, casa, oficina.</li>\r\n	</ul>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '32565-61a82-instalacion_camaras.jpg', '2018-06-04 22:38:25', 10),
(63, 'Instalación de Intercomunicadores', '<p>\r\n	En ServiTec-Peru somos conocedores de las diferentes necesidades de nuestros clientes, hemos adaptado nuestros servicios de acuerdo a sus requerimientos de seguridad y comunicaci&oacute;n electr&oacute;nica, siempre ofreci&eacute;ndole la mejor soluci&oacute;n poniendo&nbsp;a su disposici&oacute;n nuestros servicios de&nbsp;reparaci&oacute;n, instalaci&oacute;n y mantenimiento preventivo y/o correctivo&nbsp;de sus equipos de seguridad e intercomunicaci&oacute;n. Contamos con el personal t&eacute;cnico calificado y un amplio stock de repuestos de todas las marcas para ofrecerles la mejor soluci&oacute;n a sus necesidades.</p>\r\n<p>\r\n	&ldquo; El mantenimiento adecuado tiende a prolongar la vida &uacute;til de sus equipos y as&iacute; obtener una duraci&oacute;n aceptable de los mismos durante m&aacute;s tiempo&rdquo;</p>\r\n', 'c06e8-c5e78-instalacion_intercomunicadores.jpg', '2018-06-04 22:53:49', 11),
(64, 'Desarrollo de Sistemas', '<p>\r\n	En Servitec-Peru contamos cun una amplia experiencia en proyectos de desarrollo de software en las empresas. Nuestros desarrolladores tienen la capacidad para proponer la arquitectura y tipo de software m&aacute;s conveniente para los objetivos de su empresa:</p>\r\n<p>\r\n	Aplicaciones m&oacute;biles (Android / iOs)</p>\r\n<p>\r\n	Portales Web: intranet, extranets, comercio electr&oacute;nico</p>\r\n<p>\r\n	Cliente / servidor</p>\r\n<p>\r\n	Sistemas de informaci&oacute;n gerencial</p>\r\n<p>\r\n	&nbsp;Servicios de Desarrollo de Software</p>\r\n<p>\r\n	Auditor&iacute;a y documentaci&oacute;n de sistemas existentes (ingenier&iacute;a reversa)</p>\r\n<p>\r\n	An&aacute;lisis y explotaci&oacute;n de base de datos</p>\r\n<p>\r\n	Dise&ntilde;o de interfaces de usuario y bases de datos</p>\r\n<p>\r\n	Programaci&oacute;n de aplicaciones</p>\r\n<p>\r\n	Desarrollo de dashboards para toma de decisiones y reportes de indicadores de gesti&oacute;n</p>\r\n<p>\r\n	Control de calidad de software</p>\r\n<p>\r\n	Optimizaci&oacute;n de aplicaciones</p>\r\n<p>\r\n	Implementaci&oacute;n, instalaci&oacute;n e integraci&oacute;n de aplicaciones empresariales</p>\r\n<p>\r\n	Entrenamiento de usuarios</p>\r\n<p>\r\n	Herramientas y metodolog&iacute;as</p>\r\n<p>\r\n	Nuestro equipo de consultor&iacute;a tiene amplio dominio de las herramientas y metodolog&iacute;as de desarrollo m&aacute;s usadas en la construcci&oacute;n de software:</p>\r\n<p>\r\n	Lenguajes de programaci&oacute;n: Visual Studio .NET, Java, ASP.NET, C#, VB.NET, ASP, PHP, HTML, Power Builder, Visual Basic 6, Sharepoint, ABAP</p>\r\n<p>\r\n	Bases de datos: Microsoft SQL Server, Oracle, MySQL</p>\r\n<p>\r\n	Metodolog&iacute;as: PMBOK, SCRUM</p>\r\n<p>\r\n	Frameworks: MVC, SPRING, ZendFramework, Laravel</p>\r\n<p>\r\n	Gestores de contenido: Drupal, WordPress</p>\r\n', '52aad-ada95-desarrollo_sistemas.jpg', '2018-06-04 23:19:41', 13),
(65, 'Desarollo de Aplicaciones', '<p>\r\n	Vivimos en un mundo digital y m&oacute;vil&nbsp;<br />\r\n	Cada d&iacute;a m&aacute;s personas se conectan a trav&eacute;s de dispositivos m&oacute;viles. Nuestro equipo est&aacute; especializado en desarrollo de aplicaciones m&oacute;viles para iOS, Android y Windows Phone</p>\r\n<p>\r\n	ServiTec-Peru cuenta con un equipo muy talentoso y con mucha experiencia en el desarrollo de aplicaciones web y m&oacute;viles, realizadas de acuerdo a las necesidades del cliente.&nbsp;Asesoramos y Estudiamos cada caso para brindar la soluci&oacute;n m&oacute;vil m&aacute;s adecuada, basados en su necesidad y su audiencia.</p>\r\n<p>\r\n	<strong>- APP EMPRESARIALES</strong></p>\r\n<p>\r\n	Desarrollamos aplicaciones que ayuden a resolver una necesidad puntual de su negocio con sus clientes o sus colaboradores</p>\r\n<p>\r\n	<strong>- AN&Aacute;LISIS DE DATOS</strong></p>\r\n<p>\r\n	Le ayudamos a entender el comportamiento de sus usuarios en sus aplicaciones m&oacute;viles, y daremos datos que le permitir&aacute;n tomar decisiones importantes para su negocio</p>\r\n<p>\r\n	<strong>- MARKETING M&Oacute;VIL</strong></p>\r\n<p>\r\n	Contamos con el equipo y las herramientas para lograr la mayor cantidad de descargas posibles de su aplicaci&oacute;n a trav&eacute;s de estrateg&iacute;a de Marketing m&oacute;vil</p>\r\n', '578f8-18c48-desarrollo_aplicaciones-1-.jpg', '2018-06-04 23:27:43', 14);
INSERT INTO `servicios` (`id_servicio`, `titulo`, `descripcion`, `foto`, `fecha`, `id_categoria_servicio`) VALUES
(66, 'REPARACIÓN DE FOTOCOPIADORA E IMPRESORAS', '<p>\r\n	En ServiTec-Peru, nos esforzamos cada vez m&aacute;s para poderles brindar productos y servicios de calidad. Contamos con un Departamento de Servicio T&eacute;cnico conformado por profesionales con una vasta experiencia en reparaci&oacute;n, nuestro Centro de servicio cuenta con equipos de prueba y medici&oacute;n e instrumental&nbsp; adecuados para una correcta evaluaci&oacute;n, reparaci&oacute;n y mantenimiento de sus equipos, ademas nuestro stock permanente de repuestos asegura una rapida reparaci&oacute;n y entrega de sus equipos. Solicite nuestros servicios y ser&aacute; atendido de manera inmediata por un t&eacute;cnico especialista.</p>\r\n<p>\r\n	Diagnostico:</p>\r\n<p>\r\n	Al presentar un equipo una falla en su normal funcionamiento, usted puede trasladar su equipo a nuestro centro de servicio o solicitar de manera inmediata un tecnico especialista para brindarle una evaluaci&oacute;n tecnica del estado del&nbsp; mismo. Este servicio en la mayoria de los casos no tiene costo para el area metropolitana de Lima.</p>\r\n<p>\r\n	Mantenimiento Preventivo:</p>\r\n<p>\r\n	El desgaste interno de piezas producto del normal funcionamiento de su equipo segun el nivel de trabajo al cual es sometido y el nivel de polvo del ambiente donde se encuentra su equipo, determina la frecuencia del mantenimiento requerido por su maquina. La peridiocidad de este mantenimiento es determinado previa evaluaci&oacute;n tecnica. La finalidad de este servicio es prevenir y minimizar la probabilidad de fallas, mediante el reemplazo o ajuste oportuno de aquellos elementos que sufran desgaste en su equipo. La solicitud y atenci&oacute;n de este servicio puede ser de manera puntual o mediante programas de mantenimiento previa suscripci&oacute;n de contrato.</p>\r\n<p>\r\n	Mantenimiento Correctivo:&nbsp;</p>\r\n<p>\r\n	Brindamos el servicio de atenci&oacute;n de emergencia ante un desperfecto presentado en cualquier equipo de nuestros clientes, este servicio, que puede incluir la provisi&oacute;n de repuestos o no, est&aacute; disponible en diversos horarios de cobertura y tiempos de respuesta y soluci&oacute;n, llegando incluso a proveer equipos de respaldo, dependiendo de la cobertura contratada por nuestro cliente.</p>\r\n<p>\r\n	Reparaciones:</p>\r\n<p>\r\n	Las reparaciones son brindadas previo diagnostico del estado de su equipo, en la mayoria de los casos son efectuadas ON SITE; &nbsp;Sin embargo, en el caso de presentarse fallas en equipos que por su naturaleza necesiten ser atendidas en nuestros laboratorios, dichos equipos son trasladados por personal de nuestra empresa para su reparaci&oacute;n respectiva de acuerdo a los procedimientos establecidos por el cliente. De presentarse estos casos, nuestro departamento de servicio contemplara la posibilidad de que se coloque un equipo de respaldo o backup con caracter&iacute;sticas similares, mientras dure la reparaci&oacute;n, lo que permitir&aacute; el normal desarrollo de las actividades de sus usuarios​</p>\r\n<p>\r\n	&nbsp;</p>\r\n<p>\r\n	&nbsp;</p>\r\n', '15fc7-0f998-fotocopiadora_impresora.jpg', '2018-06-04 23:42:27', 16),
(67, 'No vuelva a perder información', 'Sabemos lo importante que es el cuidar su información por eso Servitec Perú siempre esta en busca de nuevas tecnologías para que le puedan brindar a usted un mejor servicio.\r\nCon los discos duros \r\nNAS no perderá su información otra vez ya que al ponerlo en su servidor Synology NAS\r\nse crea una copia automática de toda la información guardada en el disco. ', 'discoduro.png', '2019-08-21 04:16:56', 19),
(69, 'Espacio lleno en el Disco', 'Si usted cuenta con mucha información ya sea personal o empresarial y no desea perderla, aquí tenemos la solución, Pruebe con alta tecnologia uasada en Europa, Discos Duros NAS,  ', 'discolleno.png', '2019-08-21 04:11:20', 19),
(71, 'Conectar a quickconnect DDNS', '<p>\r\nPierdes la conectividad o requieres una conectividad para trabajar en grupo desde cualquier lugar , Sistemas de seguridad de la información, backup,  Drive , web server , file server, etc tenemos la solución.\r\n\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n\r\n</p>', 'synology13.png', '2021-08-05 00:05:45', 19),
(72, 'No enciende su synology', '<p>\r\nEl equipo cuenta con parámetros de resistencia eléctrica que puede dañar la fuente o placa del equipo, pudiendo tener solución.\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema.\r\n\r\n</p>', 'synology1.png', '2021-08-04 04:06:27', 19),
(73, '¿No Reconoce el synology?', '<p>\r\nLas dificultades de reconocimiento de discos puede ser causa de diferentes factores , electrónicos, físicos, etc y elementos que pueden ser sensibles que evitan la lectura o reconocimiento de discos.\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n\r\n</p>', 'synology2.png', '2021-08-04 04:15:23', 19),
(74, '¿fallas en su Synology? ', '<p>\r\nLos equipos synology  son de alta gama cuenta con herramientas del sistema operativo que auto identifica fallas del hardware para evitar su obsolescencia programada. \r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n</p>', 'synology3.png', '2021-08-04 23:04:57', 19),
(75, '¿ Expandir espacio ? ', '<p>\r\nYa tienes todo el potencial en tu casa , negocio o empresa y quieres evitar riesgos de colapsar tu información. Requieres expandir tu capacidad de almacenamiento sin evitar riesgos de dañar los datos o discos por la sensibilidad del uso constante. \r\n\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema.\r\n\r\n</p>', 'synology4.png', '2021-08-04 23:04:57', 19),
(76, '¿no enciende los led ? ', '<p>\r\nLos led son parte fundamental del reconocimiento del estado del equipo y sus componentes, dando lecturas  variadas como, el requerimiento de un mantenimiento preventivo, o daños de algún componente . \r\n\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n\r\n</p>', 'synology6.png', '2021-08-04 23:13:51', 19),
(77, '¿instalación de synology ?', '<p>\r\nNo sabes que hacer con tu synology, no sabes como instalar tenemos la solución según tus necesidades , y darte todo el potencial que requieras con tu propio ecosistema informático para tu casa , oficina , empresa o corporación.\r\n\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n\r\n</p>', 'synology5.png', '2021-08-04 23:13:51', 19),
(78, 'Synology con Errores de configuración', '<p>\r\nel Synology nas cuentn con señales led, que identifica el estado del equipo y daños en sus diferentes niveles de procesamiento para actuar de forma oportuna sin poner en riesgo su información.\r\n\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n\r\n</p>', 'synology7.png', '2021-08-04 23:27:05', 19),
(79, 'error de redundancia en el Synology', '<p>\r\nLos equipos synology son usados  y configurados de forma redundante , con pariedad o un solo raid, logrando un mayor rendimiento del almacenamiento y seguridad de la información.\r\n\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n\r\n\r\n</p>', 'synology8.png', '2021-08-04 23:27:05', 19),
(80, 'Problemas de paridad Synology', '<p>\r\nal adquirir un synology y al configurar el equipo, en los diferentes tipos de formato , se tiene que tener en cuenta la adecuada instalación en el inicio de su operatividad del equipo, de no hacerlo de forma adecuada pone en riesgo su información y la paridad de los discos.\r\n\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema.\r\n\r\n</p>', 'synology9.png', '2021-08-04 23:39:15', 19),
(81, 'Conectar remoto por Internet', '<p>\r\nLos servicios de synology contempla configuraciones y parámetros de red, estos elementos y otra serie de factores, pueden ser sensibles evitando su conectividad .\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema\r\n\r\n\r\n</p>', 'synology10.png', '2021-08-04 23:39:15', 19),
(82, 'No enciende el nas ', '<p>\r\nEl equipo cuenta con parámetros de resistencia eléctrica que puede dañar la fuente o placa del equipo, pudiendo tener solución.\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema.\r\n\r\n\r\n</p>', 'synology11.png', '2021-08-04 23:39:15', 19),
(83, 'Placa daña de synology ', '<p>\r\nEl synology cuenta con una fabricación por obsolescencia programada pudiendo tener solución según el diagnostico y reanudando su operatividad.\r\nContáctate y Llévalo a revisión a SERVITEC donde rápidamente nuestro Centro de Servicio Técnico Especializado se encargará de solucionar el problema.\r\n\r\n\r\n\r\n</p>', 'synology12.png', '2021-08-04 23:39:15', 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios_extras`
--

CREATE TABLE `servicios_extras` (
  `id_servicio_extra` int(11) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `sub_titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `foto` varchar(200) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `servicios_extras`
--

INSERT INTO `servicios_extras` (`id_servicio_extra`, `titulo`, `sub_titulo`, `descripcion`, `foto`, `fecha`) VALUES
(1, 'Reparación Microelectrónica', 'Reparación Microelectrónica (Breve Descripcion)', '<p>\r\n	En SERVITEC contamos con un laboratorio microelectr&oacute;nico multimarca, t&eacute;cnicas avanzadas y tecnolog&iacute;a de punta para cualquier cambio de micro transistores, condensadores, mosfet, fusibles, bobinas, etc, en los dispositivos de &uacute;ltima tecnolog&iacute;a. Reparamos y Cambiamos Chip de Videos integrados en marcas NVIDIA y ATI, nuevos o generaciones pasadas en todas las marcas. Ofrecemos soluciones eficaces a nuestros clientes de forma responsable y con un alto nivel de calidad en el servicio.<br />\r\n	<br />\r\n	Nuestras reparaciones son realizadas por expertos en nuestro Centro de Servicio T&eacute;cnico Especializado con herramientas de alta complejidad y disponemos de maquinaria de &uacute;ltima generaci&oacute;n para reparaci&oacute;n y soldado autom&aacute;tico de chip. SERVITEC, es innovaci&oacute;n, calidad, tecnolog&iacute;a al servicio de usted.</p>\r\n', 'c9efe-reparacion-microelectronica.png', '2018-05-29 19:38:10'),
(2, 'Reparación Motherboard', 'Reparación Motherboard(Breve Descripcion)', '<p>\r\n	Es un Servicio Avanzado a equipos con problemas y fallas complejas, como equipos que no encienden, fallas de video, etc. Somos expertos y tenemos la experiencia suficiente para dejar tu equipo en nuestras manos, es por eso que nuestra filosof&iacute;a en LAPTOP&acute;S VALDEZ es la reparaci&oacute;n de tu equipo, no la de hacer cambio de tus componentes.<br />\r\n	<br />\r\n	Reparaci&oacute;n de laptop a nivel componente:<br />\r\n	Contamos con el servicio de reparaci&oacute;n cuando la laptop presenta los siguientes s&iacute;ntomas:<br />\r\n	- El equipo no enciende.<br />\r\n	- El equipo se enciende, luego se apaga.<br />\r\n	- Enciende pero no muestra video.<br />\r\n	- Equipo no presenta energ&iacute;a, no enciende ning&uacute;n LED<br />\r\n	- Equipo da&ntilde;ado por derrame de l&iacute;quidos (caf&eacute;, cerveza, Agua, etc.)<br />\r\n	- Presenta corto circuito o alg&uacute;n componente quemado.<br />\r\n	- El equipo no carga la bater&iacute;a.<br />\r\n	- En caso que la falla sea grave y no tenga reparaci&oacute;n, le ofrecemos el remplazo de la motherboard a un precio especial.</p>\r\n', '06d6a-6.png', '2018-05-29 20:06:44'),
(3, 'Recuperación de Datos', 'Recuperación de Datos(Breve Descripcion)', '<p>\r\n	Es un servicio que garantiza el buen funcionamiento de tu equipo, manteniendo t&uacute; port&aacute;til trabajando sin ning&uacute;n problema. Tu laptop necesita configuraci&oacute;n si presenta alguna de las siguientes fallas:<br />\r\n	<br />\r\n	- Virus en sistema<br />\r\n	- Sistema operativo lento<br />\r\n	- Bloqueo o errores inesperados<br />\r\n	- Se&ntilde;ales de errores frecuentes<br />\r\n	- Equipo lento al iniciar<br />\r\n	<br />\r\n	Garantizamos confiabilidad y profesionalismo al momento de la reparaci&oacute;n. Conf&iacute;a tu informaci&oacute;n a los expertos, ya que se generan los backups en servidores adem&aacute;s la privacidad total de tu informaci&oacute;n. El uso, el manejo de informaci&oacute;n en exceso, navegar en internet, hardware, etc. Provocan que tu equipo cada vez sea m&aacute;s lento, es por eso que te recomendamos realizar este servicio por lo menos una vez al a&ntilde;o.</p>\r\n', 'c8479-7.png', '2018-05-29 20:09:18'),
(4, 'Actualización de Software', 'Actualización de Software(Breve Descripcion)', '<p>\r\n	SERVITEC te ofrece la venta, instalaci&oacute;n y actualizaci&oacute;n de las &uacute;ltimas licencias de software, para que tu laptop siempre se encuentre actualizada y disponible a cualquier tarea que necesites realizar.<br />\r\n	<br />\r\n	Venta e instalaci&oacute;n de software antivirus.<br />\r\n	Distribuimos las principales marcas de antivirus. Contamos con paquetes de oficina para empresas, individuos y estudiantes (Microsoft office 2010). Venta e instalaci&oacute;n de licencias de sistema operativo (Windows, Linux), reinstalaci&oacute;n de unidades de seguridad y programas en networks (minilaptops), e instalaci&oacute;n de software libre, Licencias GNU. Le instalamos dos o m&aacute;s sistemas operativos a su equipo.</p>\r\n', '4dbe2-1.png', '2018-05-29 20:10:29'),
(5, 'Eliminación de Virus', 'Eliminación de Virus(Breve Descripcion)', '<p>\r\n	Si tu equipo experimenta lentitud al ejecutar programas o al iniciar el sistema operativo, se cierran las ventanas de programas o de internet, el sistema se congela o muestra errores constantemente, entonces tu equipo sufre de infecci&oacute;n de virus.<br />\r\n	<br />\r\n	En SERVITEC detenemos la infecci&oacute;n de los archivos, creamos una copia de seguridad de los archivos en DVD, eliminamos virus sin formatear o con formato y vendemos, instalamos y configuramos software de seguridad para su equipo (firewall, Antivirus)</p>\r\n', 'c6607-3.png', '2018-05-29 20:11:24'),
(6, 'Limpieza interna', 'Limpieza interna(Breve Descripcion)', '<p>\r\n	Es unos de los servicio preventivos m&aacute;s importantes que debemos realizar a nuestro equipo, ya que no sabemos que las consecuencias por falta de este servicio pueden ocasionar graves da&ntilde;os a los componentes.<br />\r\n	<br />\r\n	El polvo en una laptop puede sobrecalentar tu equipo, da&ntilde;ar componentes y en consecuencia disminuir la vida de tu equipo, provocando a la larga una inversi&oacute;n mayor. Aumenta la vida &uacute;til de tu equipo, en SERVITEC tu equipo es o m&aacute;s importante, es por eso que te ofrecemos lo siguiente:<br />\r\n	<br />\r\n	- Limpieza de tarjetas madres:<br />\r\n	Eliminando todo el polvo que se adhiera a los componentes electr&oacute;nicos que puedan da&ntilde;ar t&uacute; equipo.<br />\r\n	- Limpieza de &aacute;reas de enfriamiento:<br />\r\n	Limpieza y mantenimiento de disipadores de calor, cambio de membranas, o pastas t&eacute;rmicas para una mejor conducci&oacute;n de calor y evitar que tu equipo se apague por sobrecalentamiento.<br />\r\n	- Limpieza de sensores:<br />\r\n	Para evitar que estos se atoren y provoquen fallas.<br />\r\n	- Limpieza de unidades lectoras:<br />\r\n	Mantenimientos a unidades &oacute;pticas (DVD&acute;s, CDRW, etc.) para aumentar el tiempo de vida de estos dispositivos.<br />\r\n	- Limpieza a unidades externas:<br />\r\n	Limpieza de teclado para eliminar la suciedad que se acumula entre la membrana y la tecla. Limpieza de pantalla, carcasas, chasis, etc.<br />\r\n	Te recomendamos realizar este servicio por lo menos 2 veces al a&ntilde;o, dependiendo del uso y lugares donde expongas tu equipo. Recuerda que el polvo es uno de los principales agentes da&ntilde;inos y al no darle mantenimiento a tu equipo provocar&aacute; da&ntilde;os y costos mayores</p>\r\n', '2fefc-4.png', '2018-05-29 20:12:30'),
(7, 'Cambio de cincha de video', 'Cambio de cincha de video(Breve Descripcion)', '<p>\r\n	En SERVITEC, tenemos soluciones para todas las marcas y modelos de PC / All in One. Ofrecemos la venta e instalaci&oacute;n de cualquier tipo de repuestos o la reparaci&oacute;n de cualquier tipo de falla de PC / All in One.</p>\r\n', '14e0d-5.png', '2018-05-29 20:13:43'),
(8, 'Cambio de unidades ópticas', 'Cambio de unidades ópticas(Breve Descripcion)', '<p>\r\n	Si la unidad &oacute;ptica de CD o DVD de tu laptop ya no puede leer los discos, es hora de cambiar su unidad.<br />\r\n	<br />\r\n	Tr&aacute;enos tu laptop a una de nuestras sucursales. Tenemos unidades originales para todas las marcas y modelos de laptops.</p>\r\n', '16cfa-2.png', '2018-05-29 20:14:36'),
(9, 'Cambio de chasis', 'Cambio de chasis(Breve Descripcion)', '<p>\r\n	Los accidentes suceden&hellip; y a veces nuestra laptop sufre alg&uacute;n da&ntilde;o por ello. Si tu laptop presenta alg&uacute;n da&ntilde;o f&iacute;sico en el chasis, en SERVITEC podemos cambiar el chasis por uno en excelente estado.<br />\r\n	<br />\r\n	Contamos con chasis originales de diversas marcas como APPLE, SONY VAIO, HP, DELL, TOSHIBA, COMPAQ, LENOVO, ACER, ASUS, MSI, GATEWAY, IBM, SAMSUNG. Contamos con el servicio de importaci&oacute;n de chasis y piezas para tu laptop.</p>\r\n', '37d45-cambio-de-chasis.png', '2018-05-29 20:16:23'),
(10, 'Reparación de cargadores y fuentes de poder', 'Reparación de cargadores y fuentes de poder(Breve Descripcion)', '<p>\r\n	En SERVITEC, contamos con los servicios de reparaci&oacute;n a nivel microelectr&oacute;nica de cargadores originales o gen&eacute;ricos y fuentes de poder para laptops, impresoras, iphone, Galaxy, proyectores, consolas, Smart tv, All In One y otros.<br />\r\n	<br />\r\n	Algunos de los problemas m&aacute;s frecuentes que se pueden presentar con el cargador de tu equipo son:<br />\r\n	<br />\r\n	- &quot;Mi mascota se comi&oacute; el cable&quot;<br />\r\n	- &quot;Mi fuente de poder se cay&oacute; al suelo y ahora no carga&quot;<br />\r\n	- &quot;Siempre enrollo mi cable del cargador, y se quebr&oacute;&quot;<br />\r\n	- &quot;Al tratar de conectar el cargador veo chispas.&quot;<br />\r\n	<br />\r\n	Por ser importadores directos de partes y repuestos, contamos con amplio inventario de cargadores originales y nuevos para laptops de toda marca y modelo.</p>\r\n', '2e949-8.png', '2018-05-29 20:17:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `templates`
--

CREATE TABLE `templates` (
  `id_template` int(11) NOT NULL,
  `titulo` varchar(70) NOT NULL,
  `descripcion` text NOT NULL,
  `url` tinytext NOT NULL,
  `id_categoria_template` int(11) NOT NULL,
  `foto` varchar(120) NOT NULL,
  `precio` decimal(9,2) NOT NULL,
  `descuento` tinytext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `templates`
--

INSERT INTO `templates` (`id_template`, `titulo`, `descripcion`, `url`, `id_categoria_template`, `foto`, `precio`, `descuento`) VALUES
(1, 'Palas', '', 'http://abusinesstheme.com/demo/palas/', 1, '978fb-preview.jpg', '399.00', ''),
(2, 'AbTheme', '', 'http://abusinesstheme.com/demo/abt/', 1, '4c7ce-preview-1-.jpg', '399.00', ''),
(3, 'Insomnia', '', 'https://html.dankov-themes.com/insomnia', 1, '342bd-insomnia_preview_590x300.jpg', '399.00', ''),
(4, 'Voyo', '', 'http://abusinesstheme.com/demo/voyo/', 1, '2f504-preview-2-.jpg', '399.00', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_fotos`
--

CREATE TABLE `tipos_fotos` (
  `id_tipo_foto` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_fotos`
--

INSERT INTO `tipos_fotos` (`id_tipo_foto`, `titulo`) VALUES
(1, 'Slider');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `nick` varchar(25) COLLATE utf8_spanish_ci NOT NULL,
  `user` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `pass` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `nick`, `user`, `pass`, `fecha`) VALUES
(1, 'Roberto Mendoza', 'roberto', 'roberto', '123321', '2018-06-19 16:02:37'),
(2, 'Axel Sifuentes', 'Axelion', 'axel', '123321', '2018-06-19 16:02:43'),
(3, 'Noel Moriano Quispe', 'Mariano_Noel', 'noel', 'servite321', '2018-06-19 16:01:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `videojuegos`
--

CREATE TABLE `videojuegos` (
  `id_videojuegos` int(11) NOT NULL,
  `videojuego` varchar(60) NOT NULL,
  `id_categoria_videojuego` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `url_pedido` tinytext NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  ADD PRIMARY KEY (`id_anuncio`);

--
-- Indices de la tabla `categorias_servicios`
--
ALTER TABLE `categorias_servicios`
  ADD PRIMARY KEY (`id_categoria_servicio`);

--
-- Indices de la tabla `categorias_templates`
--
ALTER TABLE `categorias_templates`
  ADD PRIMARY KEY (`id_categoria_template`);

--
-- Indices de la tabla `categorias_videojuegos`
--
ALTER TABLE `categorias_videojuegos`
  ADD PRIMARY KEY (`id_categoria_videojuego`);

--
-- Indices de la tabla `contador`
--
ALTER TABLE `contador`
  ADD PRIMARY KEY (`id_contador`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`id_estado`);

--
-- Indices de la tabla `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id_foto`);

--
-- Indices de la tabla `imagenes_presentacion`
--
ALTER TABLE `imagenes_presentacion`
  ADD PRIMARY KEY (`id_imagen_presentacion`);

--
-- Indices de la tabla `juegos`
--
ALTER TABLE `juegos`
  ADD PRIMARY KEY (`id_juegos`);

--
-- Indices de la tabla `perfiles_usuarios`
--
ALTER TABLE `perfiles_usuarios`
  ADD PRIMARY KEY (`id_perfil_usuario`);

--
-- Indices de la tabla `play_juego`
--
ALTER TABLE `play_juego`
  ADD PRIMARY KEY (`id_play_juego`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `servicios_extras`
--
ALTER TABLE `servicios_extras`
  ADD PRIMARY KEY (`id_servicio_extra`);

--
-- Indices de la tabla `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_template`);

--
-- Indices de la tabla `tipos_fotos`
--
ALTER TABLE `tipos_fotos`
  ADD PRIMARY KEY (`id_tipo_foto`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  ADD PRIMARY KEY (`id_videojuegos`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `anuncios`
--
ALTER TABLE `anuncios`
  MODIFY `id_anuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `categorias_servicios`
--
ALTER TABLE `categorias_servicios`
  MODIFY `id_categoria_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `categorias_templates`
--
ALTER TABLE `categorias_templates`
  MODIFY `id_categoria_template` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categorias_videojuegos`
--
ALTER TABLE `categorias_videojuegos`
  MODIFY `id_categoria_videojuego` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `contador`
--
ALTER TABLE `contador`
  MODIFY `id_contador` tinyint(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `id_estado` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `imagenes_presentacion`
--
ALTER TABLE `imagenes_presentacion`
  MODIFY `id_imagen_presentacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `juegos`
--
ALTER TABLE `juegos`
  MODIFY `id_juegos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `perfiles_usuarios`
--
ALTER TABLE `perfiles_usuarios`
  MODIFY `id_perfil_usuario` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `play_juego`
--
ALTER TABLE `play_juego`
  MODIFY `id_play_juego` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT de la tabla `servicios_extras`
--
ALTER TABLE `servicios_extras`
  MODIFY `id_servicio_extra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `templates`
--
ALTER TABLE `templates`
  MODIFY `id_template` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tipos_fotos`
--
ALTER TABLE `tipos_fotos`
  MODIFY `id_tipo_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `videojuegos`
--
ALTER TABLE `videojuegos`
  MODIFY `id_videojuegos` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
