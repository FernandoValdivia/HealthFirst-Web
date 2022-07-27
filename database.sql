-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2022 a las 03:33:27
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de datos: `healthfirst`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blogs`
--

CREATE TABLE `blogs` (
  `id_blog` int(11) NOT NULL,
  `descripcion_blog` varchar(1500) DEFAULT NULL,
  `fecha_blog` varchar(255) DEFAULT NULL,
  `imagen_blog` varchar(255) DEFAULT NULL,
  `titulo_blog` varchar(255) DEFAULT NULL,
  `idioma_blog` varchar(255) DEFAULT NULL,
  `rol_blog` varchar(255) DEFAULT NULL,
  `link_blog` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `blogs`
--

INSERT INTO `blogs` (`id_blog`, `descripcion_blog`, `fecha_blog`, `imagen_blog`, `titulo_blog`, `idioma_blog`, `rol_blog`, `link_blog`) VALUES
(1, 'Son pocas las personas que no utilizan a diario su teléfono inteligente o smartphone en el día a día. Y no, no solo para comunicarse con los suyos. Con un smartphone podemos reservar entradas para un espectáculo, podemos comprar ropa e incluso pagar en comercios si lo tenemos asociado a nuestra tarjeta. Además, con los teléfonos inteligentes se han abierto muchas vías de negocio interesantes, como por ejemplo el de las farmacias online.', '2021-06-21', 'https://res.cloudinary.com/health-first/image/upload/v1656729404/Blogs/Blog1_qyqwfw.jpg', 'El boom de las farmacias online en los nuevos tiempos', 'Español', 'ADMIN', 'https://www.noticiasensalud.com/farmacologia/2021/06/21/el-boom-de-las-farmacias-online-en-los-nuevos-tiempos/'),
(2, 'Impulsado por la pandemia y la evolución de las necesidades de los consumidores, el comercio electrónico de farmacias, como Galileo 61, continúa su rápido crecimiento y se vuelve cada vez más digital.', '2022-07-01', 'https://res.cloudinary.com/health-first/image/upload/v1656729404/Blogs/Blog2_slasvh.jpg', 'El auge de las farmacias online', 'Español', 'ADMIN', 'https://www.europapress.es/comunicados/empresas-00908/noticia-comunicadoel-auge-farmacias-online-20220630142945.html'),
(3, 'Un informe del BBVA Research indica que el gasto con tarjetas ha incrementado en el rubro de salud, pero ha caído en el uso de alojamientos, pasajes y restaurantes. Por otro lado, los gastos relacionados con alojamiento, pasajes y excursiones, así como transportes, restaurantes, y moda y belleza mostraron un retroceso en las últimas semanas.', '2021-29-01', 'https://res.cloudinary.com/health-first/image/upload/v1656729404/Blogs/Blog3_hi36fa.jpg', 'Gasto en farmacias se aceleró al inicio de este 2021', 'Español', 'ADMIN', 'https://rpp.pe/economia/economia/gasto-en-farmacias-se-acelero-al-inicio-de-este-2021-tarjetas-de-credito-coronavirus-en-peru-noticia-1317829 \n'),
(4, 'La evolución de las ventas en estos canales muestra que las farmacias aumentaron sus ventas online un 2,2% en 2020 y un 3,1% en 2021. La tendencia anual a febrero sitúa el crecimiento en un 5,6%, lo que supone 2,5% más con respecto al pasado año.', '2022-04-13', 'https://res.cloudinary.com/health-first/image/upload/v1656729404/Blogs/Blog4_pdotsg.png', 'Las ventas online en farmacia aumentan un 2,5% y disminuyen en parafarmacias', 'Español', 'ADMIN', 'https://www.eleconomista.es/salud/noticias/11716943/04/22/Aumentan-un-25-las-ventas-online-en-farmacias-y-disminuyen-en-parafarmacias.html'),
(5, 'La Asociación Peruana de Farmacias del Perú (Aspefar) reportó que desde la publicación de la Ley de Medicamentos Genéricos, más de 200 farmacias independientes quebraron. Solicitarán al Minsa la evaluación de la norma.', '2022-03-26', 'https://res.cloudinary.com/health-first/image/upload/v1656729404/Blogs/Blog5_kawswo.jpg', 'La estrategia de las farmacias independientes ante la subida de precios', 'Español', 'ADMIN', 'https://gestion.pe/economia/farmacias-independientes-la-estrategia-de-negocio-que-impulsan-ante-la-subida-de-precios-noticia/'),
(6, 'Pharmacy Daily has reported all of the important pharmacy industry stories in Australia every weekday since 2007. Headlines and stories from our most recent issues are below, and you can use the search function at right to look for older stories.', '2022-07-17', 'https://res.cloudinary.com/health-first/image/upload/v1656730609/Blogs/Blog6_t9zvwj.png', 'Pharmacy industry news', 'Inglés', 'ADMIN', 'https://pharmacydaily.com.au/news');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carritos`
--

CREATE TABLE `carritos` (
  `id_carrito` int(11) NOT NULL,
  `cantidad_producto_carrito` varchar(255) DEFAULT NULL,
  `imagen_producto_carrito` varchar(255) DEFAULT NULL,
  `nombre_producto_carrito` varchar(255) DEFAULT NULL,
  `precio_producto_carrito` varchar(255) DEFAULT NULL,
  `monto_producto_carrito` varchar(255) DEFAULT NULL,
  `id_usuario_carrito` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carritos`
--

INSERT INTO `carritos` (`id_carrito`, `cantidad_producto_carrito`, `imagen_producto_carrito`, `nombre_producto_carrito`, `precio_producto_carrito`, `monto_producto_carrito`, `id_usuario_carrito`) VALUES
(19, '1', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Guantes3_tbqaym.jpg', 'Guantes quirurgicos blancos', '0.99', '0.99', '2'),
(21, '1', 'https://res.cloudinary.com/health-first/image/upload/v1638951599/Productos/Mascarilla8_lse6ep.jpg', 'Mascarilla quirurgica', '0.05', '0.05', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrusels`
--

CREATE TABLE `carrusels` (
  `id_carrusel` int(11) NOT NULL,
  `imagen_carrusel` varchar(255) DEFAULT NULL,
  `titulo_carrusel` varchar(255) DEFAULT NULL,
  `descripcion_carrusel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `carrusels`
--

INSERT INTO `carrusels` (`id_carrusel`, `imagen_carrusel`, `titulo_carrusel`, `descripcion_carrusel`) VALUES
(1, 'https://res.cloudinary.com/health-first/image/upload/v1657165864/Carruseles/carrousel1_imkcqe.jpg', 'https://res.cloudinary.com/health-first/image/upload/v1656472743/Carruseles/TituloCarrusel1_zivam9.png', 'https://res.cloudinary.com/health-first/image/upload/v1657076488/Carruseles/SubTitulo1_zwqnzu.png'),
(2, 'https://res.cloudinary.com/health-first/image/upload/v1657165864/Carruseles/carrousel2_tn2dbq.jpg', 'https://res.cloudinary.com/health-first/image/upload/v1656635302/Carruseles/TituloCarrusel2_hy7apy.png', 'https://res.cloudinary.com/health-first/image/upload/v1657076335/Carruseles/SubTitulo2_axhwj3.png'),
(3, 'https://res.cloudinary.com/health-first/image/upload/v1657165864/Carruseles/carrousel3_unbull.jpg', 'https://res.cloudinary.com/health-first/image/upload/v1656635302/Carruseles/TituloCarrusel3_twy8eg.png', 'https://res.cloudinary.com/health-first/image/upload/v1657076335/Carruseles/SubTitulo3_fir1eo.png'),
(4, 'https://res.cloudinary.com/health-first/image/upload/v1657165864/Carruseles/carrousel4_f7rkfl.jpg', 'https://res.cloudinary.com/health-first/image/upload/v1656635302/Carruseles/TituloCarrusel4_er0ck9.png', 'https://res.cloudinary.com/health-first/image/upload/v1657076336/Carruseles/SubTitulo4_ghtuu9.png'),
(5, 'https://res.cloudinary.com/health-first/image/upload/v1657165864/Carruseles/carrousel5_qjqdgn.jpg', 'https://res.cloudinary.com/health-first/image/upload/v1656635302/Carruseles/TituloCarrusel5_uq9zem.png', 'https://res.cloudinary.com/health-first/image/upload/v1657076390/Carruseles/SubTitulo5_yzyq44.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos`
--

CREATE TABLE `contactos` (
  `id_contacto` int(11) NOT NULL,
  `correo_contacto` varchar(255) DEFAULT NULL,
  `estado_contacto` varchar(255) DEFAULT NULL,
  `fecha_contacto` varchar(255) DEFAULT NULL,
  `mensaje_contacto` varchar(255) DEFAULT NULL,
  `nombre_contacto` varchar(255) DEFAULT NULL,
  `telefono_contacto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contactos`
--

INSERT INTO `contactos` (`id_contacto`, `correo_contacto`, `estado_contacto`, `fecha_contacto`, `mensaje_contacto`, `nombre_contacto`, `telefono_contacto`) VALUES
(89, 'harold_joseph_07@hotmail.com', 'REVISADO', '1950-01-01', 'asdasdasdasdsadasdasdsadsadsadsad', 'xddddxddd', '900000000'),
(91, 'harold_joseph_07@hotmail.com', 'REVISADO', '2022-07-10', 'XDDDDDDDD', 'Harold J Arias Sotelo', '916541436'),
(92, 'luis.valdivia@tecsup.edu.pe', 'REVISADO', '2022-07-13', 'Tengo problemas con comprar un producto', 'Luis Fernando Valdivia Murillo', '968121790'),
(93, 'harold_joseph_07@hotmail.com', 'PENDIENTE', '2022-07-16', 'asdasdasd', 'dxdxdx,Harold J Arias Sotelo', '916541436'),
(94, 'harold_joseph_07@hotmail.com', 'PENDIENTE', '2022-07-16', NULL, 'Harold J Arias Sotelo', '916541436'),
(95, 'harold_joseph_07@hotmail.com', 'PENDIENTE', '2022-07-16', 'asdasdasdasdsadsa', 'Harold J Arias Sotelo', '916541436'),
(96, 'harold_joseph_07@hotmail.com', 'PENDIENTE', '2022-07-16', 'asdasdsadsadsad', 'Harold J Arias Sotelo', '916541436'),
(97, 'harold_joseph_07@hotmail.com', 'PENDIENTE', '2022-07-16', 'asdasdasdasdsadasd', 'Harold J Arias Sotelo', '916541436'),
(98, 'harold_joseph_07@hotmail.com', 'PENDIENTE', '2022-07-18', 'hola, tu frente con mis bo...', 'Harold J Tarf', '916541436');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id_favorito` int(11) NOT NULL,
  `id_usuario_favorito` varchar(255) DEFAULT NULL,
  `imagen_producto_favorito` varchar(255) DEFAULT NULL,
  `nombre_producto_favorito` varchar(255) DEFAULT NULL,
  `precio_producto_favorito` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `categoria_producto` varchar(255) DEFAULT NULL,
  `descripcion_producto` varchar(255) DEFAULT NULL,
  `imagen_producto` varchar(255) DEFAULT NULL,
  `nombre_producto` varchar(255) DEFAULT NULL,
  `precio_producto` double NOT NULL,
  `stock_producto` int(11) NOT NULL,
  `tipo_producto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `categoria_producto`, `descripcion_producto`, `imagen_producto`, `nombre_producto`, `precio_producto`, `stock_producto`, `tipo_producto`) VALUES
(1, 'Alcohol', 'Alcohol Gel NEX 200ml', 'https://res.cloudinary.com/health-first/image/upload/v1638949855/Productos/Alcohol1_zxgbuu.jpg', 'Alcohol Gel', 1.55, 100, 'Alcohol_Gel'),
(2, 'Alcohol', 'Alcohol Gel NEX 700ml', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Alcohol2_fbek7a.jpg', 'Alcohol Gel', 2.55, 150, 'Alcohol_Gel'),
(3, 'Alcohol', 'Alcohol Liquido Betafar 500ml', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Alcohol3_d7fjm1.jpg', 'Alcohol Liquido', 5.55, 200, 'Alcohol_Liquido'),
(4, 'Alcohol', 'Alcohol Liquido Betafar 250ml', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Alcohol4_kzcitd.jpg', 'Alcohol Liquido', 3.59, 350, 'Alcohol_Liquido'),
(5, 'Facial', 'Facial plastificado de lentes', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Facial1_s00lhu.jpg', 'Facial de lentes', 1.11, 350, 'Facial_Lentes'),
(6, 'Facial', 'Facial plastificado de vincha', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Facial2_i0qzmv.jpg', 'Facial de vincha', 2.09, 200, 'Facial_Vincha'),
(7, 'Guante', 'Guantes de tela blanca', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Guantes1_bjwr6y.jpg', 'Guantes de tela blanca', 3.49, 150, 'Guante_Tela'),
(8, 'Guante', 'Guantes de tela oscura', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Guantes2_kosq1c.jpg', 'Guantes de tela oscura', 3.79, 160, 'Guante_Tela'),
(9, 'Guante', 'Guantes quirurgicos blancos', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Guantes3_tbqaym.jpg', 'Guantes quirurgicos blancos', 0.99, 500, 'Guante_Quirurgico'),
(10, 'Guante', 'Guantes de quirurgicos azules', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Guantes4_hmiovf.jpg', 'Guantes de quirurgicos azules', 1.29, 450, 'Guante_Quirurgico'),
(11, 'Mascarilla', 'Mascarilla deportiva negra', 'https://res.cloudinary.com/health-first/image/upload/v1638949712/Productos/Mascarilla1_qutjen.jpg', 'Mascarilla deportiva', 5.59, 300, 'Mascarilla_Deportiva'),
(12, 'Mascarilla', 'Mascarilla deportiva gris', 'https://res.cloudinary.com/health-first/image/upload/v1638949712/Productos/Mascarilla2_iayqas.jpg', 'Mascarilla deportiva', 5.85, 250, 'Mascarilla_Deportiva'),
(13, 'Mascarilla', 'Mascarilla KN95', 'https://res.cloudinary.com/health-first/image/upload/v1638949712/Productos/Mascarilla3_wodpoh.jpg', 'Mascarilla KN95', 1.09, 600, 'Mascarilla_KN95'),
(14, 'Mascarilla', 'Mascarilla KN95 negra', 'https://res.cloudinary.com/health-first/image/upload/v1638949712/Productos/Mascarilla4_qwtq55.jpg', 'Mascarilla KN95 negra', 1.29, 550, 'Mascarilla_KN95'),
(15, 'Mascarilla', 'Mascarilla de tela oscura', 'https://res.cloudinary.com/health-first/image/upload/v1638949712/Productos/Mascarilla5_i06amk.jpg', 'Mascarilla de tela', 1.99, 500, 'Mascarilla_Tela'),
(16, 'Mascarilla', 'Mascarilla de tela clara', 'https://res.cloudinary.com/health-first/image/upload/v1638949712/Productos/Mascarilla6_vshodx.jpg', 'Mascarilla de tela', 2.11, 525, 'Mascarilla_Tela'),
(17, 'Mascarilla', 'Mascarilla quirurgica', 'https://res.cloudinary.com/health-first/image/upload/v1638949713/Productos/Mascarilla7_kuzwnz.jpg', 'Mascarilla quirurgica', 0.59, 525, 'Mascarilla_Quirurgica'),
(18, 'Mascarilla', 'Mascarilla quirurgica', 'https://res.cloudinary.com/health-first/image/upload/v1638951599/Productos/Mascarilla8_lse6ep.jpg', 'Mascarilla quirurgica', 0.60, 350, 'Mascarilla_Quirurgica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id_testimonio` int(11) NOT NULL,
  `descripcion_testimonio` varchar(255) DEFAULT NULL,
  `rol_testimonio` varchar(255) DEFAULT NULL,
  `usuario_testimonio` varchar(255) DEFAULT NULL,
  `fecha_testimonio` varchar(255) DEFAULT NULL,
  `imagen_testimonio` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id_testimonio`, `descripcion_testimonio`, `rol_testimonio`, `usuario_testimonio`, `fecha_testimonio`, `imagen_testimonio`) VALUES
(1, 'Ésta página me pareció muy interesante además que tiene todo lo que busco y necesito para mi día a día en el trabajo, sobre todo tiene precios muy accesibles y el diseño es genial!', 'User', 'Jesús Sideral', '2021-12-07', 'https://res.cloudinary.com/health-first/image/upload/v1638940028/Usuarios/testimonial-avatar1_edvv9z.png'),
(2, 'Aquí pude encontrar lo que necesito para mi tienda en el Mercado Central porque suelo brindarles a mis empleados varias mascarillas al mes.', 'User', 'Javier Lujan', '2021-12-07', 'https://res.cloudinary.com/health-first/image/upload/v1638940028/Usuarios/testimonial-avatar1_edvv9z.png'),
(3, 'Que gran facilidad para navegar en la página, además que me gustaron los productos que ofrecen en la tienda, me encanta el diseño del logo, es muy moderno.', 'USER', 'Ivan Oscco', '2021-12-07', 'https://res.cloudinary.com/health-first/image/upload/v1638940028/Usuarios/testimonial-avatar1_edvv9z.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiendas`
--

CREATE TABLE `tiendas` (
  `id_tienda` int(11) NOT NULL,
  `direccion_tienda` varchar(255) DEFAULT NULL,
  `distrito_tienda` varchar(255) DEFAULT NULL,
  `imagen_tienda` varchar(255) DEFAULT NULL,
  `nombre_tienda` varchar(255) DEFAULT NULL,
  `pais_tienda` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tiendas`
--

INSERT INTO `tiendas` (`id_tienda`, `direccion_tienda`, `distrito_tienda`, `imagen_tienda`, `nombre_tienda`, `pais_tienda`) VALUES
(1, 'PRÓXIMAMENTE', 'ATE', 'https://res.cloudinary.com/health-first/image/upload/v1658203311/Tiendas/Store-fc_fdkwnp.jpg', 'PRÓXIMAMENTE', 'Perú_AT'),
(2, 'PRÓXIMAMENTE', 'SANTA ANITA', 'https://res.cloudinary.com/health-first/image/upload/v1658203311/Tiendas/Store-fc_fdkwnp.jpg', 'PRÓXIMAMENTE', 'Perú_SA'),
(3, 'PRÓXIMAMENTE', 'CERCADO DE LIMA', 'https://res.cloudinary.com/health-first/image/upload/v1658203311/Tiendas/Store-fc_fdkwnp.jpg', 'PRÓXIMAMENTE', 'Perú_CL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `fecha` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `rol` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `apellido`, `email`, `fecha`, `imagen`, `nombre`, `password`, `rol`, `telefono`, `username`) VALUES
(1, 'Arias', 'harold_joseph_07@hotmail.com', '2001-07-07', 'https://cdn.discordapp.com/attachments/794674813805395969/999736531810009159/unknown.png', 'Harold', '$2a$10$LXuuT.XGQPibOxwZG6kr4OQz1x7HihgvCY0q14zlLJZrU10TPuuT.', 'ADMIN', '916541436', 'HaroldArias07'),
(2, 'Valdivia', 'luis.valdivia@tecsup.edu.pe', '1950-02-01', 'https://cdn.discordapp.com/attachments/794674813805395969/999736697266917386/unknown.png', 'Luis', '$2a$10$hM019pBeaw3Zoye5YVBGAuw65GIXo9I64Mxnh03xuc5NLjhPtigyy', 'ADMIN', '900000001', 'FernandoValdivia01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indices de la tabla `carritos`
--
ALTER TABLE `carritos`
  ADD PRIMARY KEY (`id_carrito`);

--
-- Indices de la tabla `carrusels`
--
ALTER TABLE `carrusels`
  ADD PRIMARY KEY (`id_carrusel`);

--
-- Indices de la tabla `contactos`
--
ALTER TABLE `contactos`
  ADD PRIMARY KEY (`id_contacto`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id_favorito`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id_testimonio`);

--
-- Indices de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  ADD PRIMARY KEY (`id_tienda`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY  (`email`),
  ADD UNIQUE KEY  (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carritos`
--
ALTER TABLE `carritos`
  MODIFY `id_carrito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `carrusels`
--
ALTER TABLE `carrusels`
  MODIFY `id_carrusel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contactos`
--
ALTER TABLE `contactos`
  MODIFY `id_contacto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id_favorito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id_testimonio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tiendas`
--
ALTER TABLE `tiendas`
  MODIFY `id_tienda` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
COMMIT;
