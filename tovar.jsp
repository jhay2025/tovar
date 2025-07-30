<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title data-key="pageTitle">Tovar Restaurant - Sabor Latino</title>
    <!-- Enlace a Font Awesome para iconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Enlace a Google Fonts para Montserrat -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;700&display=swap" rel="stylesheet">
    
    <style>
        /* Variables CSS para colores principales - Modo Claro (por defecto) */
        :root {
            --primary-bg: #f8f9fa; /* Claro */
            --secondary-bg: #ffffff; /* Blanco */
            --text-color: #333; /* Oscuro */
            --header-bg: #264653; /* Oscuro */
            --header-text: white;
            --accent-color-1: #d62828; /* Rojo */
            --accent-color-2: #fcbf49; /* Amarillo */
            --accent-color-3: #2a9d8f; /* Verde */
            --light-gray: #e9e9e9;
            --medium-gray: #666;
            --shadow-soft: rgba(0,0,0,0.1);
            --shadow-medium: rgba(0,0,0,0.2);
            --shadow-strong: rgba(0,0,0,0.3);
            --modal-bg: #f8f9fa;
            --modal-text: #333;
            --modal-shadow: rgba(0,0,0,0.7);
            --footer-bg: #222;
            --footer-text: white;
            --footer-border: #333;
            --chat-bg: #f9f9f9;
            --chat-input-border: #ddd;
            --chat-bot-msg-bg: var(--light-gray);
            --chat-user-msg-bg: var(--header-bg);
            --chat-user-msg-text: white;
            --quick-btn-bg: #e0e0e0;
            --quick-btn-hover-bg: var(--header-bg);
            --quick-btn-hover-text: white;
            --form-bg: white;
            --form-input-bg: rgba(255,255,255,0.9);
            --form-input-border: #ddd;
            --form-input-focus-border: var(--accent-color-2);
            --form-input-text: #333;
        }

        /* Variables CSS para colores principales - Modo Oscuro */
        body.dark-mode {
            --primary-bg: #1a1a1a; /* Oscuro casi negro */
            --secondary-bg: #2c2c2c; /* Gris oscuro */
            --text-color: #f0f0f0; /* Blanco suave */
            --header-bg: #121212; /* Más oscuro */
            --header-text: #f0f0f0;
            --accent-color-1: #e04a4a; /* Rojo brillante */
            --accent-color-2: #ffda7a; /* Amarillo brillante */
            --accent-color-3: #3cb8a9; /* Verde brillante */
            --light-gray: #444;
            --medium-gray: #bbb;
            --shadow-soft: rgba(0,0,0,0.3);
            --shadow-medium: rgba(0,0,0,0.5);
            --shadow-strong: rgba(0,0,0,0.7);
            --modal-bg: #2c2c2c;
            --modal-text: #f0f0f0;
            --modal-shadow: rgba(0,0,0,0.9);
            --footer-bg: #121212;
            --footer-text: #f0f0f0;
            --footer-border: #444;
            --chat-bg: #2c2c2c;
            --chat-input-border: #555;
            --chat-bot-msg-bg: var(--light-gray);
            --chat-user-msg-bg: var(--accent-color-1);
            --chat-user-msg-text: white;
            --quick-btn-bg: #444;
            --quick-btn-hover-bg: var(--accent-color-1);
            --quick-btn-hover-text: white;
            --form-bg: #2c2c2c;
            --form-input-bg: rgba(68,68,68,0.9);
            --form-input-border: #555;
            --form-input-focus-border: var(--accent-color-2);
            --form-input-text: #f0f0f0;
        }

        /* Reset básico y fuente global */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Montserrat', sans-serif; /* Usando la fuente importada */
        }
        
        body {
            background-color: var(--primary-bg);
            color: var(--text-color);
            overflow-x: hidden; /* Previene el scroll horizontal, crucial para responsividad */
            line-height: 1.6; /* Mejora la legibilidad del texto */
            scroll-behavior: smooth; /* Desplazamiento suave para anclas */
            transition: background-color 0.5s ease, color 0.5s ease; /* Transición suave para el modo oscuro */
        }
        
        /* Contenedor principal para centrar contenido y hacerlo fluido */
        .container {
            width: 90%; /* Ancho relativo para adaptarse a diferentes tamaños de pantalla */
            max-width: 1200px; /* Límite máximo para evitar que el contenido se estire demasiado */
            margin: 0 auto;
            padding: 0 15px; /* Pequeño padding para evitar que el contenido toque los bordes en móviles */
        }
        
        /* Estilos del encabezado */
        header {
            background: var(--header-bg);
            padding: 15px 0;
            box-shadow: 0 3px 10px var(--shadow-medium);
            /* --- CAMBIO AQUÍ: Eliminado position: fixed, top, z-index --- */
            /* position: fixed; */
            /* top: 0; */
            /* z-index: 100; */
            width: 100%; /* Ocupa todo el ancho */
            transition: background 0.3s ease, padding 0.3s ease, box-shadow 0.3s ease, transform 0.3s ease; /* Transiciones para el efecto scroll y hover */
        }

        /* Efecto de cortina al pasar el ratón por encima */
        header:hover {
            transform: translateY(-5px); /* Un poco más de elevación */
            box-shadow: 0 10px 25px var(--shadow-strong); /* Sombra más pronunciada */
            background: linear-gradient(to right, var(--header-bg), rgba(38, 70, 83, 0.9)); /* Gradiente sutil */
        }

        /* --- CAMBIO AQUÍ: Eliminado header.scrolled --- */
        /* header.scrolled {
            padding: 10px 0;
            box-shadow: 0 5px 15px var(--shadow-strong);
        } */
        
        .header-content {
            display: flex; /* Uso de Flexbox para organizar elementos del encabezado */
            justify-content: space-between;
            align-items: center;
            flex-wrap: wrap; /* Permite que los elementos se envuelvan en pantallas pequeñas */
        }
        
        .logo h1 {
            color: var(--header-text);
            font-size: 1.8rem;
            letter-spacing: 1px;
            text-transform: uppercase;
        }
        
        .logo span {
            color: var(--accent-color-2);
        }
        
        /* Navegación principal */
        nav ul {
            display: flex; /* Uso de Flexbox para la navegación */
            list-style: none;
            gap: 25px; /* Espacio entre los elementos de la lista */
        }
        
        nav ul li a {
            color: var(--header-text);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
            position: relative;
            padding-bottom: 5px; /* Espacio para el subrayado animado */
        }
        
        nav ul li a:hover {
            color: var(--accent-color-2);
        }
        
        nav ul li a::after {
            content: '';
            position: absolute;
            width: 0;
            height: 2px;
            background: var(--accent-color-2);
            bottom: 0;
            left: 0;
            transition: width 0.3s ease;
        }
        
        nav ul li a:hover::after {
            width: 100%;
        }

        /* Selector de idioma y modo */
        .header-controls {
            display: flex;
            align-items: center;
            gap: 20px; /* Espacio entre el selector de idioma y el toggle de modo */
        }

        .language-selector {
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .language-selector label {
            color: var(--header-text);
            font-size: 0.9rem;
            font-weight: 500;
        }

        .language-selector select {
            background-color: var(--header-bg);
            color: var(--header-text);
            border: 1px solid var(--accent-color-2);
            padding: 5px 10px;
            border-radius: 50px;
            font-size: 0.9rem;
            cursor: pointer;
            outline: none;
            appearance: none; /* Oculta la flecha por defecto del select */
            background-image: url('data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20width%3D%22292.4%22%20height%3D%22292.4%22%3E%3Cpath%20fill%3D%22%23fcbf49%22%20d%3D%22M287%2C114.7L154.2%2C247.5c-2.4%2C2.4-5.6%2C3.9-9.2%2C3.9s-6.8-1.4-9.2-3.9L5.4%2C114.7c-4.8-4.8-4.8-12.5%2C0-17.3s12.5-4.8%2C17.3%2C0l127.3%2C127.3L269.7%2C97.4c4.8-4.8%2C12.5-4.8%2C17.3%2C0S291.8%2C109.9%2C287%2C114.7z%22%2F%3E%3C%2Fsvg%3E');
            background-repeat: no-repeat;
            background-position: right 8px center;
            background-size: 12px;
            padding-right: 25px; /* Espacio para la flecha personalizada */
        }

        .language-selector select:hover {
            border-color: white;
        }

        /* Toggle de Modo Oscuro/Claro */
        .theme-toggle {
            background: none;
            border: none;
            color: var(--header-text);
            font-size: 1.5rem;
            cursor: pointer;
            transition: color 0.3s ease, transform 0.3s ease;
            padding: 5px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .theme-toggle:hover {
            color: var(--accent-color-2);
            transform: scale(1.1);
        }

        /* Estilos para Tooltips (citas interactivas) */
        [data-tooltip] {
            position: relative;
            cursor: help; /* Indica que hay información adicional */
        }

        [data-tooltip]::before,
        [data-tooltip]::after {
            --scale: 0;
            --arrow-size: 8px;
            --tooltip-color: var(--header-bg);
            --text-color: var(--header-text);
            position: absolute;
            top: -0.5rem; /* Posición encima del elemento */
            left: 50%;
            transform: translateX(-50%) translateY(var(--translate-y, 0)) scale(var(--scale));
            transition: transform 0.2s cubic-bezier(.17,.67,.83,.67), opacity 0.2s;
            transform-origin: bottom center;
            z-index: 10; /* Asegura que esté por encima del contenido */
        }

        [data-tooltip]::before {
            content: attr(data-tooltip);
            padding: 0.5rem 0.8rem;
            border-radius: 6px;
            background: var(--tooltip-color);
            color: var(--text-color);
            text-align: center;
            white-space: nowrap; /* Evita que el texto se rompa */
            font-size: 0.85rem;
            font-weight: normal;
        }

        [data-tooltip]::after {
            content: '';
            border: var(--arrow-size) solid transparent;
            border-top-color: var(--tooltip-color);
            transform: translateX(-50%) translateY(var(--translate-y, 0)) scale(var(--scale));
            top: calc(-0.5rem + var(--arrow-size)); /* Posición de la flecha */
        }

        [data-tooltip]:hover::before,
        [data-tooltip]:hover::after {
            --scale: 1;
            --translate-y: calc(-100% - var(--arrow-size)); /* Mueve hacia arriba */
        }

        /* Ajuste para tooltips en elementos de navegación para que no colisionen con el subrayado */
        nav ul li a[data-tooltip]:hover::before,
        nav ul li a[data-tooltip]:hover::after {
            --translate-y: calc(-100% - var(--arrow-size) - 10px); /* Más espacio para el subrayado */
        }
        
        /* Sección HERO (Banner principal) */
        .hero {
            height: 90vh;
            background: linear-gradient(rgba(0,0,0,0.6), rgba(0,0,0,0.7)), 
                        url('https://images.pexels.com/photos/568370/pexels-photo-568370.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') center/cover no-repeat;
            background-size: cover; /* Asegura que la imagen de fondo cubra el área */
            display: flex;
            align-items: center;
            text-align: center;
            color: white;
            padding: 20px; /* Padding para evitar que el texto toque los bordes */
        }
        
        .hero-content {
            max-width: 800px;
            margin: 0 auto;
        }
        
        .hero h2 {
            font-size: 3.5rem;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px var(--shadow-medium);
            animation: fadeInDown 1s ease-out; /* Animación de entrada */
        }
        
        .hero p {
            font-size: 1.3rem;
            margin-bottom: 30px;
            animation: fadeInUp 1s ease-out 0.3s forwards; /* Animación con retraso */
            opacity: 0; /* Inicialmente oculto para la animación */
        }
        
        /* Estilos de botones generales */
        .btn {
            display: inline-block;
            background: var(--accent-color-1);
            color: white;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s ease;
            margin: 0 10px;
            border: 2px solid transparent; /* Borde transparente para transición */
        }
        
        .btn:hover {
            background: #b32020;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px var(--shadow-soft);
        }
        
        .btn-outline {
            background: transparent;
            border-color: white; /* Borde blanco para el botón outline */
        }
        
        .btn-outline:hover {
            background: white;
            color: var(--header-bg);
        }
        
        .hero-btns .btn {
            animation: float 3s ease-in-out infinite; /* Animación de flotación */
        }
        
        /* Secciones generales */
        section {
            padding: 80px 0;
            background-color: var(--primary-bg);
            transition: background-color 0.5s ease;
        }

        section .section-title {
            color: var(--text-color); /* Asegura que el título de la sección cambie con el tema */
        }
        
        .section-title {
            text-align: center;
            margin-bottom: 50px;
            font-size: 2.5rem;
            color: var(--header-bg);
            position: relative;
            padding-bottom: 15px;
            animation: fadeIn 1s ease-out; /* Animación de entrada */
        }
        
        .section-title::after {
            content: '';
            display: block;
            width: 100px;
            height: 4px;
            background: var(--accent-color-2);
            margin: 15px auto 0;
            border-radius: 2px;
        }
        
        /* Sección MENÚ */
        .menu-section {
            background-color: var(--primary-bg);
        }
        
        .menu-grid {
            display: grid; /* Uso de Grid para el diseño del menú */
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr)); /* Ajuste automático de columnas */
            gap: 30px;
        }
        
        .menu-item {
            background: var(--secondary-bg); /* Usa variable */
            border-radius: 15px; /* Bordes más redondeados */
            overflow: hidden;
            box-shadow: 0 8px 20px var(--shadow-soft); /* Sombra más pronunciada */
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275); /* Animación de resorte */
            display: flex; /* Para organizar imagen y contenido */
            flex-direction: column;
            border: 1px solid var(--light-gray); /* Borde sutil */
        }
        
        .menu-item:hover {
            transform: translateY(-12px) rotate(1deg) scale(1.02); /* Efecto más pronunciado */
            box-shadow: 0 20px 40px var(--shadow-medium); /* Sombra más fuerte al pasar el ratón */
        }
        
        .menu-img {
            height: 220px; /* Un poco más de altura para la imagen */
            overflow: hidden;
            flex-shrink: 0; /* Evita que la imagen se encoja */
            border-bottom: 3px solid var(--accent-color-2); /* Línea divisoria debajo de la imagen */
        }
        
        .menu-img img {
            width: 100%; /* Las imágenes se ajustan al ancho de su contenedor */
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }
        
        .menu-item:hover .menu-img img {
            transform: scale(1.15); /* Zoom más notable */
        }
        
        .menu-content {
            padding: 25px; /* Más padding */
            flex-grow: 1; /* Permite que el contenido ocupe el espacio restante */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        
        .menu-content h3 {
            color: var(--text-color); /* Usa variable */
            margin-bottom: 12px; /* Más espacio */
            font-size: 1.6rem; /* Título más grande */
            font-weight: 700; /* Más negrita */
        }
        
        .menu-content p {
            color: var(--medium-gray); /* Usa variable */
            margin-bottom: 18px; /* Más espacio */
            font-size: 1rem; /* Tamaño de fuente ligeramente mayor */
            line-height: 1.5;
        }
        
        .price {
            color: var(--accent-color-1); /* Usa variable */
            font-weight: bold;
            font-size: 1.5rem; /* Precio más grande */
            display: block;
            margin: 10px 0 15px; /* Espacio alrededor del precio */
            text-align: right; /* Alinea el precio a la derecha */
        }
        
        .delivery-tag {
            background: linear-gradient(45deg, var(--accent-color-3), #208a7e); /* Gradiente para la etiqueta */
            color: white;
            font-size: 0.85rem; /* Ligeramente más grande */
            padding: 6px 12px; /* Más padding */
            border-radius: 25px; /* Más redondeado */
            display: inline-block;
            margin-top: 5px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1); /* Sombra para la etiqueta */
            transition: all 0.3s ease;
        }
        
        .menu-item:hover .delivery-tag {
            transform: scale(1.08); /* Efecto de escala más visible */
            background: linear-gradient(45deg, #208a7e, var(--accent-color-3)); /* Invertir gradiente al hover */
        }
        
        .order-btn {
            background: var(--header-bg); /* Usa variable */
            color: white;
            border: none;
            padding: 12px 20px; /* Un poco más de padding */
            border-radius: 8px; /* Bordes más cuadrados */
            cursor: pointer;
            font-weight: 600; /* Más negrita */
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            display: block;
            width: 100%; /* Botón ocupa todo el ancho disponible */
            margin-top: 20px; /* Más espacio */
            letter-spacing: 0.5px;
        }
        
        .order-btn:hover {
            background: #1d3557;
            transform: translateY(-3px) scale(1.01); /* Efecto más sutil */
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }

        /* Botón de detalles con IA */
        .ai-details-btn {
            background: var(--accent-color-2); /* Usa variable */
            color: var(--header-bg); /* Usa variable */
            border: none;
            padding: 12px 20px;
            border-radius: 8px; /* Bordes más cuadrados */
            cursor: pointer;
            font-weight: 600; /* Más negrita */
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            display: block;
            width: 100%;
            margin-top: 10px; /* Espacio entre el botón de ordenar y este */
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            letter-spacing: 0.5px;
        }

        .ai-details-btn:hover {
            background: #e6a836;
            transform: translateY(-3px) scale(1.01); /* Efecto más sutil */
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        /* Sección PEDIDOS */
        .order-section {
            background: var(--primary-bg); /* Usa variable */
            padding: 80px 0;
            text-align: center;
        }

        .order-form-container {
            max-width: 700px;
            margin: 0 auto;
            background: var(--secondary-bg); /* Usa variable */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px var(--shadow-soft);
            transition: transform 0.4s ease;
        }

        .order-form-container:hover {
            transform: translateY(-5px);
        }

        .order-form-container h3 {
            color: var(--text-color); /* Usa variable */
            margin-bottom: 25px;
            font-size: 1.8rem;
        }

        .order-form .form-group {
            margin-bottom: 20px;
            text-align: left;
        }

        .order-form .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: var(--text-color); /* Usa variable */
        }

        .order-form .form-group input,
        .order-form .form-group textarea {
            width: 100%; /* Campos de formulario se ajustan al ancho */
            padding: 12px;
            border: 1px solid var(--form-input-border); /* Usa variable */
            border-radius: 5px;
            font-size: 1rem;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            background-color: var(--form-input-bg); /* Usa variable */
            color: var(--form-input-text); /* Usa variable */
        }

        .order-form .form-group input:focus,
        .order-form .form-group textarea:focus {
            border-color: var(--form-input-focus-border); /* Usa variable */
            box-shadow: 0 0 8px rgba(252, 191, 73, 0.3);
            outline: none;
        }

        .order-form .form-group textarea {
            height: 120px;
            resize: vertical;
        }

        .order-form .submit-order-btn {
            background: #25D366; /* Color de WhatsApp */
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 30px;
            cursor: pointer;
            font-size: 1.1rem;
            font-weight: bold;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            margin-top: 20px;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .order-form .submit-order-btn:hover {
            background: #128C7E; /* Verde más oscuro */
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        
        /* Sección PAGO */
        .payment-section {
            background: linear-gradient(to right, #f8f5f0, #ffefd5); /* Mantener gradiente fijo para esta sección */
            padding: 80px 0;
            text-align: center;
        }
        
        .payment-container {
            max-width: 500px;
            margin: 0 auto;
            background: var(--secondary-bg); /* Usa variable */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px var(--shadow-soft);
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }
        
        .payment-container:hover {
            transform: translateY(-5px) rotate(0.5deg);
            box-shadow: 0 15px 40px var(--shadow-medium);
        }
        
        .qr-code {
            background: var(--light-gray); /* Usa variable */
            width: 200px;
            height: 200px;
            margin: 20px auto;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 10px;
            transition: all 0.3s ease;
            overflow: hidden; 
        }
        
        .qr-code img {
            width: 100%; /* La imagen del QR se ajusta fluidamente */
            height: 100%;
            object-fit: contain; /* Asegura que la imagen se contenga dentro del div */
            display: block;
        }

        .qr-code:hover {
            transform: scale(1.03);
            box-shadow: 0 5px 15px var(--shadow-soft);
        }
        
        .qr-code i { 
            font-size: 5rem;
            color: var(--header-bg); /* Usa variable */
            transition: transform 0.5s ease;
        }
        
        .qr-code:hover i {
            transform: rotate(5deg);
        }
        
        .payment-btn {
            background: var(--accent-color-3); /* Usa variable */
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1rem;
            font-weight: bold;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            margin-top: 20px;
        }
        
        .payment-btn:hover {
            background: #248277;
            transform: scale(1.05);
        }

        /* NUEVA SECCIÓN: EXPLORAR (Mapa de Restaurantes Similares) */
        .explore-section {
            background-color: var(--primary-bg); /* Usa variable */
            padding: 80px 0;
            text-align: center;
        }

        .explore-content {
            max-width: 800px;
            margin: 0 auto;
            background: var(--secondary-bg); /* Usa variable */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px var(--shadow-soft);
            transition: transform 0.4s ease;
        }

        .explore-content:hover {
            transform: translateY(-5px);
        }

        .explore-content p {
            font-size: 1.1rem;
            color: var(--medium-gray); /* Usa variable */
            margin-bottom: 30px;
        }

        .explore-btn {
            background: var(--header-bg); /* Usa variable */
            color: white;
            padding: 15px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            font-size: 1.1rem;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .explore-btn:hover {
            background: #1d3557;
            transform: translateY(-3px);
            box-shadow: 0 5px 15px var(--shadow-soft);
        }

        /* NUEVA SECCIÓN: EVENTOS Y CATERING */
        .events-section {
            background: linear-gradient(rgba(0,0,0,0.7), rgba(0,0,0,0.8)), 
                        url('https://images.pexels.com/photos/1592384/pexels-photo-1592384.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1') center/cover no-repeat;
            background-size: cover;
            color: white;
            padding: 80px 0;
            text-align: center;
        }

        .events-form-container {
            max-width: 700px;
            margin: 0 auto;
            background: rgba(255,255,255,0.1); /* Fondo semitransparente fijo */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
            transition: transform 0.4s ease;
        }

        .events-form-container:hover {
            transform: translateY(-5px);
        }

        .events-form-container h3 {
            color: white;
            margin-bottom: 25px;
            font-size: 1.8rem;
        }

        .events-form .form-group label {
            color: white;
        }

        .events-form .form-group input,
        .events-form .form-group select,
        .events-form .form-group textarea {
            background-color: rgba(255,255,255,0.9); /* Fondo casi blanco fijo */
            color: #333;
            border: 1px solid rgba(255,255,255,0.3);
        }

        .events-form .form-group input:focus,
        .events-form .form-group select:focus,
        .events-form .form-group textarea:focus {
            border-color: var(--accent-color-2); /* Usa variable */
            box-shadow: 0 0 8px rgba(252, 191, 73, 0.5);
        }

        .generate-menu-btn {
            background: var(--accent-color-3); /* Usa variable */
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 30px;
            cursor: pointer;
            font-size: 1.1rem;
            font-weight: bold;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            margin-top: 20px;
            display: inline-flex;
            align-items: center;
            gap: 10px;
        }

        .generate-menu-btn:hover {
            background: #248277;
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        
        /* Sección RECOMENDACIONES (Formulario de Opinión) */
        .feedback-section {
            padding: 80px 0;
            background: var(--header-bg); /* Usa variable */
            color: var(--header-text); /* Usa variable */
        }
        
        .feedback-form {
            max-width: 600px;
            margin: 0 auto;
            background: rgba(255,255,255,0.05); /* Fondo ligeramente transparente fijo */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
        }
        
        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%; /* Campos de formulario se ajustan al ancho */
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            transition: all 0.3s ease;
            background-color: var(--form-input-bg); /* Usa variable */
            color: var(--form-input-text); /* Usa variable */
        }
        
        .form-group input:focus,
        .form-group textarea:focus,
        .form-group select:focus {
            transform: scale(1.01); /* Ligeramente más sutil */
            box-shadow: 0 0 10px rgba(252, 191, 73, 0.5);
            outline: none; /* Quita el contorno por defecto */
        }
        
        .form-group textarea {
            height: 150px;
            resize: vertical;
        }
        
        /* FOOTER */
        footer {
            background: var(--footer-bg); /* Usa variable */
            color: var(--footer-text); /* Usa variable */
            padding: 40px 0 20px;
            position: relative; 
            z-index: 1000;     
        }
        
        .footer-content {
            display: grid; /* Uso de Grid para el diseño del footer */
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 30px;
            margin-bottom: 30px;
            padding-bottom: 20px; /* Espacio antes del copyright */
            border-bottom: 1px solid var(--footer-border); /* Usa variable */
        }
        
        .footer-column h3 {
            margin-bottom: 20px;
            position: relative;
            padding-bottom: 10px;
            color: var(--accent-color-2); /* Títulos de columna en amarillo */
        }
        
        .footer-column h3::after {
            content: '';
            position: absolute;
            width: 50px;
            height: 2px;
            background: var(--accent-color-1); /* Línea roja debajo del título */
            bottom: 0;
            left: 0;
        }
        
        .contact-info p {
            margin: 10px 0;
            display: flex;
            align-items: center;
            transition: transform 0.3s ease;
            font-size: 0.95rem;
        }
        
        .contact-info p:hover {
            transform: translateX(5px);
        }
        
        .contact-info i {
            margin-right: 10px;
            color: var(--accent-color-2); /* Usa variable */
        }
        
        .social-links {
            display: flex; /* Uso de Flexbox para los enlaces sociales */
            gap: 15px;
            margin-top: 15px;
        }
        
        .social-links a {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            background: #333; /* Fijo */
            color: white;
            border-radius: 50%;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            font-size: 1.1rem;
        }
        
        .social-links a:hover {
            background: var(--accent-color-1); /* Usa variable */
            transform: translateY(-5px) rotate(5deg);
        }
        
        .whatsapp-btn {
            display: inline-flex;
            align-items: center;
            background: #25D366; /* Fijo */
            color: white;
            padding: 10px 20px;
            border-radius: 30px;
            text-decoration: none;
            font-weight: bold;
            margin-top: 10px;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
        }
        
        .whatsapp-btn:hover {
            background: #128C7E; /* Fijo */
            transform: translateY(-3px) scale(1.05);
        }
        
        .whatsapp-btn i {
            margin-right: 10px;
            font-size: 1.2rem;
        }
        
        .copyright {
            text-align: center;
            padding-top: 20px;
            font-size: 0.9rem;
            color: #aaa; /* Fijo */
        }
        
        /* CHAT FAQ (Asistente Virtual) */
        .chat-container {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1000;
            width: 350px; /* Ancho fijo para el chat, se ajusta en media queries */
            transition: all 0.3s ease;
            display: flex; /* Para controlar la visibilidad del botón y la caja */
            flex-direction: column;
            align-items: flex-end;
        }
        
        .chat-box {
            background: var(--secondary-bg); /* Usa variable */
            border-radius: 15px;
            box-shadow: 0 5px 25px var(--shadow-medium);
            display: none; /* Controlado por JS */
            height: 400px;
            overflow: hidden;
            flex-direction: column;
            width: 100%;
            margin-top: 10px; /* Espacio entre el botón y la caja de chat */
        }
        
        /* Animación al abrir el chat */
        .chat-container.chat-open .chat-box {
            display: flex;
            animation: scaleIn 0.3s ease-out forwards;
        }
        
        .chat-header {
            background: var(--header-bg); /* Usa variable */
            color: var(--header-text); /* Usa variable */
            padding: 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }
        
        .chat-header h3 {
            margin: 0;
            font-size: 1.1rem;
        }
        
        .chat-header button {
            background: none;
            border: none;
            color: var(--header-text); /* Usa variable */
            cursor: pointer;
            font-size: 1.2rem;
            transition: transform 0.2s ease;
        }
        
        .chat-header button:hover {
            transform: rotate(90deg);
        }
        
        .chat-body {
            padding: 15px;
            height: 100%; /* Ocupa todo el espacio disponible */
            overflow-y: auto;
            background: var(--chat-bg); /* Usa variable */
            display: flex;
            flex-direction: column;
            gap: 10px; /* Espacio entre mensajes */
        }
        
        .chat-footer {
            padding: 10px 15px;
            background: var(--secondary-bg); /* Usa variable */
            border-top: 1px solid var(--light-gray); /* Usa variable */
            display: flex;
        }
        
        .chat-toggle {
            background: var(--accent-color-1); /* Usa variable */
            color: white;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            box-shadow: 0 3px 15px var(--shadow-medium);
            margin-left: auto; /* Alinea a la derecha */
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            position: relative;
        }
        
        .chat-toggle:hover {
            background: #c02323;
            transform: scale(1.1) rotate(10deg);
        }
        
        .chat-toggle::after {
            content: '¿En qué te puedo ayudar?';
            position: absolute;
            bottom: 70px;
            right: 0;
            background: var(--header-bg); /* Usa variable */
            color: var(--header-text); /* Usa variable */
            padding: 8px 12px;
            border-radius: 4px;
            font-size: 14px;
            white-space: nowrap;
            opacity: 0;
            transition: all 0.3s ease;
            pointer-events: none; /* Permite hacer clic a través */
            box-shadow: 0 2px 10px var(--shadow-soft);
        }
        
        .chat-toggle:hover::after {
            opacity: 1;
            transform: translateY(-5px);
        }
        
        .message {
            margin: 5px 0;
            max-width: 85%; /* Ligeramente más grande */
            padding: 10px 15px;
            border-radius: 15px;
            transition: transform 0.3s ease;
            word-wrap: break-word; /* Asegura que el texto largo se ajuste */
        }
        
        .message:hover {
            transform: translateX(3px); /* Movimiento más sutil */
        }
        
        .bot-message {
            background: var(--chat-bot-msg-bg); /* Usa variable */
            border-bottom-left-radius: 0;
            align-self: flex-start;
        }
        
        .user-message {
            background: var(--chat-user-msg-bg); /* Usa variable */
            color: var(--chat-user-msg-text); /* Usa variable */
            border-bottom-right-radius: 0;
            margin-left: auto; /* Alinea a la derecha */
            align-self: flex-end;
        }
        
        .quick-questions {
            display: flex; /* Uso de Flexbox para los botones de preguntas rápidas */
            flex-wrap: wrap; /* Permitir que los botones se envuelvan */
            gap: 8px; /* Espacio entre botones */
            margin-top: 15px;
        }
        
        .quick-btn {
            background: var(--quick-btn-bg); /* Usa variable */
            border: none;
            border-radius: 20px;
            padding: 8px 15px;
            text-align: left;
            cursor: pointer;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            font-size: 0.9rem;
            flex-grow: 1; /* Permite que crezcan para llenar el espacio */
            min-width: 120px; /* Ancho mínimo para que no sean demasiado pequeños */
            color: var(--text-color); /* Asegura que el texto sea legible */
        }
        
        .quick-btn:hover {
            background: var(--quick-btn-hover-bg); /* Usa variable */
            color: var(--quick-btn-hover-text); /* Usa variable */
            transform: translateX(5px);
        }
        
        .chat-input {
            flex-grow: 1; /* Ocupa el espacio restante */
            padding: 10px;
            border: 1px solid var(--chat-input-border); /* Usa variable */
            border-radius: 20px;
            font-size: 14px;
            transition: all 0.3s ease;
            background-color: var(--secondary-bg); /* Usa variable */
            color: var(--text-color); /* Usa variable */
        }
        
        .chat-input:focus {
            transform: scale(1.01);
            box-shadow: 0 0 10px rgba(252, 191, 73, 0.5);
            outline: none;
        }

        /* Estilos para el mensaje flotante (MEJORADO) */
        .floating-message {
            position: fixed;
            top: 0; /* Inicia desde el borde superior */
            left: 50%;
            transform: translateX(-50%) translateY(-100%); /* Inicialmente fuera de la vista hacia arriba */
            background-color: var(--accent-color-3); /* Usa variable */
            color: white;
            padding: 12px 25px;
            border-radius: 0 0 8px 8px; /* Bordes redondeados solo abajo */
            box-shadow: 0 4px 15px var(--shadow-medium);
            z-index: 1001;
            opacity: 0;
            visibility: hidden;
            transition: all 0.5s cubic-bezier(0.68, -0.55, 0.265, 1.55); /* Animación de resorte */
            display: flex;
            align-items: center;
            gap: 10px;
            min-width: 250px; /* Ancho mínimo para legibilidad */
            text-align: center;
            justify-content: center;
        }

        .floating-message.show {
            opacity: 1;
            visibility: visible;
            transform: translateX(-50%) translateY(0); /* Se desliza hacia abajo */
        }

        .floating-message.error {
            background-color: var(--accent-color-1); /* Usa variable */
        }

        .floating-message.info {
            background-color: var(--header-bg); /* Usa variable */
        }
        
        /* Mensaje de desarrollo */
        .dev-message {
            position: fixed; /* Mantiene la posición fija */
            left: 10px;
            background: rgba(38, 70, 83, 0.8); /* Fijo */
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            z-index: 999; /* Está por debajo del footer */
            font-size: 0.85rem;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
            transition: bottom 0.3s ease-out; /* Transición suave para el movimiento */
        }

        /* Animaciones */
        @keyframes float {
            0% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
            100% { transform: translateY(0px); }
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInDown {
            from { opacity: 0; transform: translateY(-30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(30px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes scaleIn {
            from { transform: scale(0.9); opacity: 0; }
            to { transform: scale(1); opacity: 1; }
        }

        /* Animación de carga para el chatbot */
        .loading-dots span {
            display: inline-block;
            width: 8px;
            height: 8px;
            margin: 0 2px;
            background-color: var(--header-bg); /* Usa variable */
            border-radius: 50%;
            animation: bounce 1.4s infinite ease-in-out both;
        }

        .loading-dots span:nth-child(1) { animation-delay: -0.32s; }
        .loading-dots span:nth-child(2) { animation-delay: -0.16s; }
        .loading-dots span:nth-child(3) { animation-delay: 0s; }

        @keyframes bounce {
            0%, 80%, 100% { transform: scale(0); }
            40% { transform: scale(1.0); }
        }

        /* Estilos para el MODAL de descripción de IA */
        .modal {
            display: none; /* Oculto por defecto */
            position: fixed; /* Posición fija en la pantalla */
            z-index: 1002; /* Por encima de todo lo demás */
            left: 0;
            top: 0;
            width: 100%; /* Cubre toda la pantalla */
            height: 100%;
            overflow: auto; /* Habilita scroll si el contenido es muy largo */
            background-color: var(--modal-shadow); /* Usa variable */
            justify-content: center;
            align-items: center;
            animation: fadeInModal 0.3s ease-out;
        }

        .modal-content {
            background-color: var(--modal-bg); /* Usa variable */
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 20px var(--shadow-strong);
            width: 90%;
            max-width: 600px; /* Ancho máximo para el contenido */
            position: relative;
            animation: slideInModal 0.4s cubic-bezier(0.68, -0.55, 0.265, 1.55); /* Animación de resorte */
            color: var(--modal-text); /* Usa variable */
            display: flex; /* Usar flexbox para organizar el contenido */
            flex-direction: column;
        }

        .modal-content h3 {
            color: var(--header-bg); /* Usa variable */
            margin-bottom: 15px;
            font-size: 1.8rem;
            text-align: center;
        }

        .modal-description {
            font-size: 1.1rem;
            line-height: 1.8;
            margin-bottom: 20px;
            text-align: justify;
            max-height: 300px; /* Altura máxima para la descripción */
            overflow-y: auto; /* Scroll si el texto es muy largo */
            padding-right: 10px; /* Espacio para la barra de scroll */
        }

        /* Estilo para la barra de scroll del modal */
        .modal-description::-webkit-scrollbar {
            width: 8px;
        }

        .modal-description::-webkit-scrollbar-track {
            background: var(--light-gray); /* Usa variable */
            border-radius: 4px;
        }

        .modal-description::-webkit-scrollbar-thumb {
            background: var(--header-bg); /* Usa variable */
            border-radius: 4px;
        }

        .close-button {
            color: var(--medium-gray); /* Usa variable */
            position: absolute;
            top: 15px;
            right: 25px;
            font-size: 28px;
            font-weight: bold;
            cursor: pointer;
            transition: color 0.3s ease, transform 0.3s ease;
        }

        .close-button:hover,
        .close-button:focus {
            color: var(--accent-color-1); /* Usa variable */
            transform: rotate(90deg);
        }

        .loading-dots-modal {
            text-align: center;
            padding: 20px 0;
        }
        .loading-dots-modal span {
            display: inline-block;
            width: 12px;
            height: 12px;
            margin: 0 4px;
            background-color: var(--header-bg); /* Usa variable */
            border-radius: 50%;
            animation: bounce 1.4s infinite ease-in-out both;
        }
        .loading-dots-modal span:nth-child(1) { animation-delay: -0.32s; }
        .loading-dots-modal span:nth-child(2) { animation-delay: -0.16s; }
        .loading-dots-modal span:nth-child(3) { animation-delay: 0s; }

        @keyframes fadeInModal {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        @keyframes slideInModal {
            from { transform: translateY(-50px); opacity: 0; }
            to { transform: translateY(0); opacity: 1; }
        }

        /* Estilos para la imagen generada por IA */
        .ai-generated-image-container {
            margin-top: 20px;
            text-align: center;
            border-top: 1px solid var(--light-gray); /* Usa variable */
            padding-top: 20px;
            position: relative; /* Para posicionar el botón de descarga */
        }

        .ai-generated-image-container img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
            box-shadow: 0 4px 15px var(--shadow-soft);
            transition: transform 0.3s ease;
        }

        .ai-generated-image-container img:hover {
            transform: scale(1.02);
        }

        .generate-image-btn {
            background: var(--accent-color-1); /* Usa variable */
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            border: none;
            cursor: pointer;
            font-weight: bold;
            margin-top: 15px;
            transition: all 0.3s ease;
            display: inline-flex;
            align-items: center;
            gap: 8px;
        }

        .generate-image-btn:hover {
            background: #b32020;
            transform: translateY(-2px);
            box-shadow: 0 3px 10px var(--shadow-medium);
        }

        /* Estilos para el botón de descarga de imagen */
        .download-image-btn {
            position: absolute;
            top: 15px; /* Ajusta la posición vertical */
            left: 15px; /* Ajusta la posición horizontal */
            background: rgba(38, 70, 83, 0.8); /* Fijo */
            color: white;
            border: none;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 1.2rem;
            box-shadow: 0 2px 10px rgba(0,0,0,0.2);
            transition: all 0.3s ease;
            z-index: 1; /* Asegura que esté por encima de la imagen */
        }

        .download-image-btn:hover {
            background: var(--accent-color-3); /* Usa variable */
            transform: scale(1.1);
        }

        /* NUEVA SECCIÓN: Opiniones de Clientes */
        .customer-feedback-section {
            background-color: var(--primary-bg); /* Usa variable */
            padding: 80px 0;
            text-align: center;
        }

        .feedback-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }

        .feedback-card {
            background: var(--secondary-bg); /* Usa variable */
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 5px 15px var(--shadow-soft);
            text-align: left;
            transition: all 0.3s ease;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .feedback-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 20px var(--shadow-medium);
        }

        .feedback-card .rating {
            color: var(--accent-color-2); /* Usa variable */
            margin-bottom: 10px;
            font-size: 1.2rem;
        }

        .feedback-card .message-text {
            font-style: italic;
            color: var(--medium-gray); /* Usa variable */
            margin-bottom: 15px;
            flex-grow: 1;
        }

        .feedback-card .author {
            font-weight: bold;
            color: var(--text-color); /* Usa variable */
            font-size: 1rem;
            margin-top: 10px;
        }

        .feedback-card .date {
            font-size: 0.85rem;
            color: #999; /* Fijo */
            margin-top: 5px;
        }
        
        /* Media Queries para Responsividad (basado en la tesis) */
        /* Estilos para pantallas medianas (tabletas y algunos portátiles) */
        @media (max-width: 768px) {
            .header-content {
                flex-direction: column; /* Apila el logo y la navegación */
                text-align: center;
            }
            
            nav ul {
                margin-top: 20px;
                flex-wrap: wrap; /* Permite que los elementos de navegación se envuelvan */
                justify-content: center; /* Centra los elementos de navegación */
                gap: 15px; /* Ajusta el espacio para pantallas más pequeñas */
            }
            
            nav ul li {
                margin: 0; /* Elimina el margen lateral fijo */
            }
            
            .header-controls {
                margin-top: 15px;
                flex-direction: column; /* Apila el selector de idioma y el toggle de modo */
                gap: 10px;
            }

            .language-selector {
                justify-content: center;
            }

            .hero h2 {
                font-size: 2.5rem; /* Reduce el tamaño del título principal */
            }
            
            .hero p {
                font-size: 1.1rem; /* Reduce el tamaño del subtítulo principal */
            }
            
            .btn {
                padding: 10px 20px; /* Reduce el padding de los botones */
                font-size: 0.9rem;
            }

            .section-title {
                font-size: 2rem; /* Ajusta el tamaño de los títulos de sección */
            }
            
            .menu-grid {
                grid-template-columns: 1fr; /* Una columna en móviles para el menú */
            }

            .payment-container {
                padding: 20px; /* Reduce el padding del contenedor de pago */
            }

            .chat-container {
                width: 95%; /* Ocupa más ancho en móviles */
                right: 2.5%;
                bottom: 10px;
            }
            
            .chat-toggle::after {
                bottom: 65px; /* Ajusta la posición del tooltip del chat */
                right: auto;
                left: 50%;
                transform: translateX(-50%);
            }

            .chat-box {
                height: 350px; /* Altura más pequeña para el chat en móviles */
            }

            .order-form-container {
                padding: 20px;
            }
            .order-form .submit-order-btn {
                width: 100%; /* El botón de WhatsApp ocupa todo el ancho */
                justify-content: center;
            }

            .modal-content {
                width: 95%; /* Ajuste para el modal en pantallas pequeñas */
                padding: 20px;
            }

            .download-image-btn {
                top: 5px; /* Ajuste para pantallas más pequeñas */
                left: 5px;
                width: 35px;
                height: 35px;
                font-size: 1rem;
            }

            .feedback-grid {
                grid-template-columns: 1fr; /* Una columna para las opiniones en móviles */
            }
        }

        /* Estilos para pantallas pequeñas (smartphones) */
        @media (max-width: 480px) {
            .logo h1 {
                font-size: 1.5rem; /* Reduce aún más el tamaño del logo */
            }

            .hero h2 {
                font-size: 2rem; /* Ajusta el título del héroe para pantallas muy pequeñas */
            }

            .hero p {
                font-size: 1.rem; /* Ajusta el subtítulo del héroe */
            }

            .hero-btns {
                display: flex;
                flex-direction: column; /* Apila los botones del héroe */
                gap: 15px;
            }

            .btn {
                width: 80%; /* Botones de héroe más anchos */
                margin: 0 auto;
            }

            .section-title {
                font-size: 1.8rem; /* Ajusta los títulos de sección */
            }

            .footer-content {
                grid-template-columns: 1fr; /* Una columna en el footer para móviles muy pequeños */
                text-align: center;
            }

            .footer-column h3::after {
                left: 50%;
                transform: translateX(-50%);
            }

            .contact-info p {
                justify-content: center; /* Centra la información de contacto */
            }

            .social-links {
                justify-content: center; /* Centra los enlaces sociales */
            }

            .whatsapp-btn {
                width: fit-content;
                margin: 10px auto;
            }
        }
    </style>
</head>
<body>
    <!-- HEADER: Encabezado principal del sitio -->
    <header id="mainHeader"> <!-- Añadido ID para JS -->
        <div class="container">
            <div class="header-content">
                <div class="logo">
                    <h1>TOVAR <span>RESTAURANT</span></h1>
                </div>
                <nav>
                    <ul>
                        <li><a href="#inicio" data-key="navHome" data-tooltip-key="tooltipHome">Inicio</a></li>
                        <li><a href="#menu" data-key="navMenu" data-tooltip-key="tooltipMenu">Menú</a></li>
                        <li><a href="#pedidos" data-key="navOrders" data-tooltip-key="tooltipOrders">Pedidos</a></li>
                        <li><a href="#pago" data-key="navPayment" data-tooltip-key="tooltipPayment">Pagar</a></li>
                        <!-- Nuevo enlace de navegación para la sección de explorar -->
                        <li><a href="#explorar" data-key="navExplore" data-tooltip-key="tooltipExplore">Explorar</a></li>
                        <!-- Nuevo enlace de navegación para la sección de eventos -->
                        <li><a href="#eventos" data-key="navEvents" data-tooltip-key="tooltipEvents">Eventos</a></li>
                        <li><a href="#opiniones" data-key="navFeedback" data-tooltip-key="tooltipFeedback">Opiniones</a></li> <!-- Nuevo enlace -->
                        <li><a href="#contacto" data-key="navContact" data-tooltip-key="tooltipContact">Contacto</a></li>
                    </ul>
                </nav>
                <!-- Selector de idioma y Toggle de Modo Oscuro/Claro -->
                <div class="header-controls">
                    <div class="language-selector">
                        <label for="language-select" data-key="selectLanguageLabel">Idioma:</label>
                        <select id="language-select">
                            <option value="es">Español</option>
                            <option value="pt-br">Português (Brasil)</option>
                            <option value="en">English</option>
                        </select>
                    </div>
                    <!-- Botón para alternar modo claro/oscuro -->
                    <button id="themeToggle" class="theme-toggle" aria-label="Alternar modo oscuro/claro">
                        <i class="fas fa-moon" id="themeIcon"></i>
                    </button>
                </div>
            </div>
        </div>
    </header>

    <!-- HERO: Sección principal con un gran banner y llamado a la acción -->
    <section class="hero" id="inicio">
        <div class="container">
            <div class="hero-content">
                <h2 data-key="heroTitle">Sabor Latino con Alma Brasileña</h2>
                <p data-key="heroSubtitle">Fusión de sabores auténticos en el corazón de Boa Vista</p>
                <div class="hero-btns">
                    <a href="#menu" class="btn" data-key="btnViewMenu">Ver Menú</a>
                    <a href="#reservas" class="btn btn-outline" data-key="btnBookTable">Reservar Mesa</a>
                </div>
            </div>
        </div>
    </section>

    <!-- MENÚ: Sección que muestra los platos estrella del restaurante -->
    <section class="menu-section" id="menu">
        <div class="container">
            <h2 class="section-title" data-key="menuSectionTitle">Nuestros Platos Estrella</h2>
            <div class="menu-grid">
                <!-- Plato 1: Ejemplo de un elemento del menú -->
                <div class="menu-item">
                    <div class="menu-img">
                        <img src="https://images.pexels.com/photos/15355037/pexels-photo-15355037.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Pizza de Tomate">
                    </div>
                    <div class="menu-content">
                        <h3 data-key="pizzaTitle">Pizza Artesanal</h3>
                        <p data-key="pizzaDesc">Masa fermentada 48h con tomates frescos y queso mozzarella</p>
                        <span class="price">R$ 38,90</span>
                        <span class="delivery-tag" data-key="deliveryTag">Entrega gratis en 15-20 min</span>
                        <button class="order-btn" data-item-key="pizzaTitle" data-key="btnOrderNow">Pedir Ahora</button>
                        <button class="ai-details-btn" data-item-name-key="pizzaTitle" data-key="btnAiDetails">✨ Descubre más</button>
                    </div>
                </div>
                
                <!-- Plato 2 -->
                <div class="menu-item">
                    <div class="menu-img">
                        <img src="https://images.pexels.com/photos/29089211/pexels-photo-29089211.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Curry Japonés">
                    </div>
                    <div class="menu-content">
                        <h3 data-key="curryTitle">Curry Brasileño</h3>
                        <p data-key="curryDesc">Fusión de curry japonés con ingredientes locales y pollo</p>
                        <span class="price">R$ 42,50</span>
                        <span class="delivery-tag" data-key="deliveryTag">Entrega gratis en 15-20 min</span>
                        <button class="order-btn" data-item-key="curryTitle" data-key="btnOrderNow">Pedir Ahora</button>
                        <button class="ai-details-btn" data-item-name-key="curryTitle" data-key="btnAiDetails">✨ Descubre más</button>
                    </div>
                </div>
                
                <!-- Plato 3 -->
                <div class="menu-item">
                    <div class="menu-img">
                        <img src="https://images.pexels.com/photos/6210433/pexels-photo-6210433.jpeg?auto=compress&cs=tinysrgb&w=600" alt="Plato Gourmet">
                    </div>
                    <div class="menu-content">
                        <h3 data-key="chefSpecialTitle">Especialidad Chef</h3>
                        <p data-key="chefSpecialDesc">Creación del día con ingredientes frescos de temporada</p>
                        <span class="price">R$ 45,00</span>
                        <span class="delivery-tag" data-key="deliveryTag">Entrega gratis en 15-20 min</span>
                        <button class="order-btn" data-item-key="chefSpecialTitle" data-key="btnOrderNow">Pedir Ahora</button>
                        <button class="ai-details-btn" data-item-name-key="chefSpecialTitle" data-key="btnAiDetails">✨ Descubre más</button>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- NUEVA SECCIÓN: PEDIDOS -->
    <section class="order-section" id="pedidos">
        <div class="container">
            <h2 class="section-title" data-key="orderSectionTitle">¡Haz tu Pedido Aquí!</h2>
            <div class="order-form-container">
                <h3 data-key="orderFormSubtitle">Envíanos tu pedido directamente por WhatsApp</h3>
                <form id="orderForm" class="order-form">
                    <div class="form-group">
                        <label for="orderName" data-key="orderNameLabel">Tu Nombre:</label>
                        <input type="text" id="orderName" name="orderName" required data-placeholder-key="orderNamePlaceholder">
                    </div>
                    <div class="form-group">
                        <label for="orderPhone" data-key="orderPhoneLabel">Tu Teléfono (WhatsApp):</label>
                        <input type="tel" id="orderPhone" name="orderPhone" required data-placeholder-key="orderPhonePlaceholder">
                    </div>
                    <div class="form-group">
                        <label for="orderAddress" data-key="orderAddressLabel">Dirección de Entrega:</label>
                        <textarea id="orderAddress" name="orderAddress" rows="3" required data-placeholder-key="orderAddressPlaceholder"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="orderDetails" data-key="orderDetailsLabel">Detalles del Pedido (Platos y Cantidades):</label>
                        <textarea id="orderDetails" name="orderDetails" rows="5" required data-placeholder-key="orderDetailsPlaceholder"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="orderNotes" data-key="orderNotesLabel">Notas Adicionales (Opcional):</label>
                        <textarea id="orderNotes" name="orderNotes" rows="3" data-placeholder-key="orderNotesPlaceholder"></textarea>
                    </div>
                    <button type="submit" class="submit-order-btn" data-key="btnSendOrderWhatsapp">
                        <i class="fab fa-whatsapp"></i> Enviar Pedido por WhatsApp
                    </button>
                </form>
            </div>
        </div>
    </section>

    <!-- PAGO: Sección para realizar pagos, con un código QR de ejemplo -->
    <section class="payment-section" id="pago">
        <div class="container">
            <h2 class="section-title" data-key="paymentSectionTitle">Pago Rápido con PIX</h2>
            <div class="payment-container">
                <h3 data-key="paymentSubtitle">Escanea el código para pagar</h3>
                <div class="qr-code">
                    <!-- Imagen de QR ficticio para mayor realismo -->
                    <img src="https://placehold.co/200x200/264653/ffffff?text=QR+Code" alt="Código QR ficticio para pago">
                </div>
                <p data-key="paymentInstructions">Usa tu app bancaria para escanear el código y completar el pago</p>
                <button class="payment-btn" data-key="btnConfirmOrder">Confirmar Pedido</button>
            </div>
        </div>
    </section>

    <!-- NUEVA SECCIÓN: EXPLORAR RESTAURANTES SIMILARES (Mapa) -->
    <section class="explore-section" id="explorar">
        <div class="container">
            <h2 class="section-title" data-key="exploreSectionTitle">Explora Más Restaurantes</h2>
            <div class="explore-content">
                <p data-key="exploreDescription">¿Buscas otros lugares con sabor latino en Boa Vista? Haz clic en el botón para abrir un mapa interactivo y descubrir opciones cercanas.</p>
                <button id="openMapBtn" class="explore-btn" data-key="btnOpenMap">
                    <i class="fas fa-map-marked-alt"></i> Abrir Mapa
                </button>
            </div>
        </div>
    </section>

    <!-- NUEVA SECCIÓN: EVENTOS Y CATERING -->
    <section class="events-section" id="eventos">
        <div class="container">
            <h2 class="section-title" style="color: white;" data-key="eventsSectionTitle">Eventos y Catering con Sabor</h2>
            <div class="events-form-container">
                <h3 data-key="eventsFormSubtitle">Genera un Menú Personalizado con IA ✨</h3>
                <form id="eventMenuForm" class="events-form">
                    <div class="form-group">
                        <label for="eventType" data-key="eventTypeLabel">Tipo de Evento:</label>
                        <select id="eventType" name="eventType" required>
                            <option value="" data-key="eventTypePlaceholder">Selecciona un tipo...</option>
                            <option value="Cumpleaños" data-key="eventTypeBirthday">Cumpleaños</option>
                            <option value="Corporativo" data-key="eventTypeCorporate">Evento Corporativo</option>
                            <option value="Boda" data-key="eventTypeWedding">Boda</option>
                            <option value="ReunionFamiliar" data-key="eventTypeFamily">Reunión Familiar</option>
                            <option value="Otro" data-key="eventTypeOther">Otro</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="numGuests" data-key="numGuestsLabel">Número de Invitados:</label>
                        <input type="number" id="numGuests" name="numGuests" min="1" required data-placeholder-key="numGuestsPlaceholder">
                    </div>
                    <div class="form-group">
                        <label for="budgetPerPerson" data-key="budgetPerPersonLabel">Presupuesto por Persona (R$):</label>
                        <input type="number" id="budgetPerPerson" name="budgetPerPerson" min="0" step="0.01" required data-placeholder-key="budgetPerPersonPlaceholder">
                    </div>
                    <div class="form-group">
                        <label for="dietaryRestrictions" data-key="dietaryRestrictionsLabel">Restricciones Dietéticas (Opcional):</label>
                        <textarea id="dietaryRestrictions" name="dietaryRestrictions" rows="2" data-placeholder-key="dietaryRestrictionsPlaceholder"></textarea>
                    </div>
                    <div class="form-group">
                        <label for="cuisineStyle" data-key="cuisineStyleLabel">Estilo de Cocina Preferido:</label>
                        <select id="cuisineStyle" name="cuisineStyle" required>
                            <option value="Latina" data-key="cuisineStyleLatin">Latina (Fusión Brasileña)</option>
                            <option value="Internacional" data-key="cuisineStyleInternational">Internacional</option>
                            <option value="Vegetariana" data-key="cuisineStyleVegetarian">Vegetariana</option>
                            <option value="Vegana" data-key="cuisineStyleVegan">Vegana</option>
                        </select>
                    </div>
                    <button type="submit" class="generate-menu-btn" data-key="btnGenerateMenu">
                        <i class="fas fa-magic"></i> Generar Menú con IA
                    </button>
                </form>
            </div>
        </div>
    </section>

    <!-- NUEVA SECCIÓN: Opiniones de Clientes -->
    <section class="customer-feedback-section" id="opiniones">
        <div class="container">
            <h2 class="section-title" data-key="customerFeedbackSectionTitle">Lo que Dicen Nuestros Clientes</h2>
            <div id="feedbackGrid" class="feedback-grid">
                <!-- Las opiniones se cargarán aquí desde Firestore -->
                <p id="noFeedbackMessage" data-key="noFeedbackAvailable" style="text-align: center; width: 100%; color: var(--medium-gray);"></p>
            </div>
        </div>
    </section>

    <!-- RECOMENDACIONES: Formulario para que los usuarios dejen su opinión -->
    <section class="feedback-section" id="contacto">
        <div class="container">
            <h2 class="section-title" style="color: white;" data-key="feedbackSectionTitle">Déjanos tu Opinión</h2>
            <div class="feedback-form">
                <form id="feedbackForm">
                    <div class="form-group">
                        <label for="nombre" data-key="feedbackNameLabel">Nombre</label>
                        <input type="text" id="nombre" name="nombre" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="email" data-key="feedbackEmailLabel">Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="calificacion" data-key="feedbackRatingLabel">Calificación</label>
                        <select id="calificacion" name="calificacion" required>
                            <option value="" data-key="feedbackSelectOption">Selecciona...</option>
                            <option value="5" data-key="ratingExcellent">Excelente ⭐⭐⭐⭐⭐</option>
                            <option value="4" data-key="ratingVeryGood">Muy Bueno ⭐⭐⭐⭐</option>
                            <option value="3" data-key="ratingGood">Bueno ⭐⭐⭐</option>
                            <option value="2" data-key="ratingRegular">Regular ⭐⭐</option>
                            <option value="1" data-key="ratingBad">Malo ⭐</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="mensaje" data-key="feedbackMessageLabel">Tu Mensaje</label>
                        <textarea id="mensaje" name="mensaje" required></textarea>
                    </div>
                    
                    <button type="submit" class="btn" data-key="btnSendOpinion">Enviar Opinión</button>
                </form>
            </div>
        </div>
    </section>

    <!-- FOOTER: Pie de página con información de contacto, redes sociales y horarios -->
    <footer>
        <div class="container">
            <div class="footer-content">
                <div class="footer-column">
                    <h3>TOVAR RESTAURANT</h3>
                    <p data-key="footerSlogan">Sabor, tradición y pasión en cada plato desde 2010</p>
                    <div class="social-links">
                        <!-- Enlace a Facebook con dirección genérica -->
                        <a href="https://www.facebook.com/tovarrestaurant" target="_blank" rel="noopener noreferrer" aria-label="Facebook de Tovar Restaurant"><i class="fab fa-facebook-f"></i></a>
                        <!-- Enlace a Instagram con dirección genérica -->
                        <a href="https://www.instagram.com/tovarrestaurant" target="_blank" rel="noopener noreferrer" aria-label="Instagram de Tovar Restaurant"><i class="fab fa-instagram"></i></a>
                        <!-- Enlace a TikTok con dirección genérica -->
                        <a href="https://www.tiktok.com/@tovarrestaurant" target="_blank" rel="noopener noreferrer" aria-label="TikTok de Tovar Restaurant"><i class="fab fa-tiktok"></i></a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3 data-key="footerContactTitle">CONTACTO</h3>
                    <div class="contact-info">
                        <p><i class="fas fa-map-marker-alt"></i> Av. Boa Vista, 1500 - Brasil</p>
                        <p><i class="fas fa-phone"></i> +55 (85) 98765-4321</p>
                        <p><i class="fas fa-envelope"></i> contacto@tovarrestaurant.com</p>
                        <a href="https://wa.me/5585991634217" class="whatsapp-btn" target="_blank" rel="noopener noreferrer" data-key="btnWhatsappChat">
                            <i class="fab fa-whatsapp"></i> Chatear por WhatsApp
                        </a>
                    </div>
                </div>
                
                <div class="footer-column">
                    <h3 data-key="footerHoursTitle">HORARIOS</h3>
                    <p data-key="hoursWeekdays"><i class="far fa-clock"></i> Lunes a Viernes: 11:00 - 23:00</p>
                    <p data-key="hoursSaturday"><i class="far fa-clock"></i> Sábados: 12:00 - 00:00</p>
                    <p data-key="hoursSunday"><i class="far fa-clock"></i> Domingos: 12:00 - 18:00</p>
                </div>
            </div>
            
            <div class="copyright">
                <p data-key="footerCopyright">&copy; 2025 Tovar Restaurant. Todos los derechos reservados.</p>
            </div>
        </div>
    </footer>

    <!-- CHAT FAQ: Asistente virtual flotante -->
    <div class="chat-container">
        <div class="chat-toggle" id="chatToggle">
            <i class="fas fa-comments fa-lg"></i>
        </div>
        
        <div class="chat-box" id="chatBox">
            <div class="chat-header">
                <h3 data-key="chatHeaderTitle">Asistente Virtual</h3>
                <button id="closeChat" aria-label="Cerrar chat">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            
            <div class="chat-body" id="chatBody">
                <div class="message bot-message" data-key="chatWelcome">
                    <!-- Contenido inicial del chat, se traducirá dinámicamente -->
                </div>
                
                <div class="quick-questions">
                    <button class="quick-btn" data-question="horarios" data-key="quickQuestionHours"></button>
                    <button class="quick-btn" data-question="pago" data-key="quickQuestionPayment"></button>
                    <button class="quick-btn" data-question="delivery" data-key="quickQuestionDelivery"></button>
                    <button class="quick-btn" data-question="reservas" data-key="quickQuestionReservations"></button>
                </div>
            </div>
            
            <div class="chat-footer">
                <input type="text" class="chat-input" id="userInput" data-placeholder-key="chatInputPlaceholder">
            </div>
        </div>
    </div>

    <!-- Mensaje flotante para feedback de usuario (reemplazo de alert) -->
    <div id="floatingMessage" class="floating-message">
        <span id="messageIcon"></span>
        <span id="messageText"></span>
    </div>

    <!-- MODAL para la descripción de IA -->
    <div id="aiDescriptionModal" class="modal">
        <div class="modal-content">
            <span class="close-button">&times;</span>
            <h3 id="modalDishTitle"></h3>
            <div id="modalDescriptionContent" class="modal-description"></div>
            <div id="modalLoading" class="loading-dots-modal"><span></span><span></span><span></span></div>
        </div>
    </div>

    <!-- MODAL para el Menú de Eventos generado por IA -->
    <div id="eventMenuModal" class="modal">
        <div class="modal-content">
            <span class="close-button" id="closeEventMenuModalBtn">&times;</span>
            <h3 id="eventModalTitle"></h3>
            <div id="eventMenuContent" class="modal-description"></div>
            <div id="eventMenuLoading" class="loading-dots-modal"><span></span><span></span><span></span></div>
            
            <!-- Nueva sección para la imagen generada por IA -->
            <div class="ai-generated-image-container">
                <button id="generateImageBtn" class="generate-image-btn" data-key="btnGenerateImage">
                    <i class="fas fa-image"></i> <span data-key="generateImageText">Generar Imagen del Menú</span>
                </button>
                <div id="menuImageLoading" class="loading-dots-modal" style="display: none;"><span></span><span></span><span></span></div>
                <img id="generatedMenuImage" src="" alt="Imagen del menú generado por IA" style="display: none;">
                <!-- Botón de descarga de imagen -->
                <button id="downloadImageBtn" class="download-image-btn" style="display: none;" title="Descargar Imagen">
                    <i class="fas fa-download"></i>
                </button>
                <p id="imageErrorMsg" style="color: var(--accent-color-1); margin-top: 10px; display: none;" data-key="imageGenerationError"></p>
            </div>
        </div>
    </div>

    <!-- Mensaje de desarrollo -->
    <div class="dev-message">
      <p>Esta es un modelado de prueba desarrollado por <strong>jonimindagency</strong></p>
    </div>

    <script type="module">
        // Firebase SDKs (NUEVO - Movido aquí para asegurar el ámbito)
        import { initializeApp } from "https://www.gstatic.com/firebasejs/11.6.1/firebase-app.js";
        import { getAuth, signInAnonymously, signInWithCustomToken } from "https://www.gstatic.com/firebasejs/11.6.1/firebase-auth.js";
        import { getFirestore, collection, addDoc, onSnapshot, query, orderBy } from "https://www.gstatic.com/firebasejs/11.6.1/firebase-firestore.js";

        // --- Objeto de Traducciones ---
        const translations = {
            'es': {
                pageTitle: 'Tovar Restaurant - Sabor Latino',
                navHome: 'Inicio',
                tooltipHome: 'Descubre nuestro inicio y pasión culinaria.',
                navMenu: 'Menú',
                tooltipMenu: 'Explora nuestros deliciosos platos estrella.',
                navOrders: 'Pedidos',
                tooltipOrders: 'Realiza tu pedido y te lo enviamos a casa.',
                navPayment: 'Pagar',
                tooltipPayment: 'Facilita tu pago con PIX y otras opciones.',
                navExplore: 'Explorar',
                tooltipExplore: 'Encuentra restaurantes similares en el mapa.',
                navEvents: 'Eventos', // Nueva clave de traducción
                tooltipEvents: 'Genera menús personalizados para tus eventos.', // Nueva clave de traducción
                navFeedback: 'Opiniones', // Nueva clave de traducción
                tooltipFeedback: 'Lee lo que nuestros clientes dicen de nosotros.', // Nueva clave de traducción
                navContact: 'Contacto',
                tooltipContact: 'Envíanos tu opinión o contáctanos.',
                selectLanguageLabel: 'Idioma:',
                heroTitle: 'Sabor Latino con Alma Brasileña',
                heroSubtitle: 'Fusión de sabores auténticos en el corazón de Boa Vista',
                btnViewMenu: 'Ver Menú',
                btnBookTable: 'Reservar Mesa',
                menuSectionTitle: 'Nuestros Platos Estrella',
                pizzaTitle: 'Pizza Artesanal',
                pizzaDesc: 'Masa fermentada 48h con tomates frescos y queso mozzarella',
                curryTitle: 'Curry Brasileño',
                curryDesc: 'Fusión de curry japonés con ingredientes locales y pollo',
                chefSpecialTitle: 'Especialidad Chef',
                chefSpecialDesc: 'Creación del día con ingredientes frescos de temporada',
                deliveryTag: 'Entrega gratis en 15-20 min',
                btnOrderNow: 'Pedir Ahora',
                btnAiDetails: '✨ Descubre más',
                orderSectionTitle: '¡Haz tu Pedido Aquí!',
                orderFormSubtitle: 'Envíanos tu pedido directamente por WhatsApp',
                orderNameLabel: 'Tu Nombre:',
                orderNamePlaceholder: 'Ej: Juan Pérez',
                orderPhoneLabel: 'Tu Teléfono (WhatsApp):',
                orderPhonePlaceholder: 'Ej: +5595991234567',
                orderAddressLabel: 'Dirección de Entrega:',
                orderAddressPlaceholder: 'Ej: Calle Principal, 123, Barrio Centro, Boa Vista',
                orderDetailsLabel: 'Detalles del Pedido (Platos y Cantidades):',
                orderDetailsPlaceholder: 'Ej: 1x Pizza Artesanal, 2x Curry Brasileño, 1x Coca-Cola',
                orderNotesLabel: 'Notas Adicionales (Opcional):',
                orderNotesPlaceholder: 'Ej: Sin cebolla en la pizza, extra picante en el curry.',
                btnSendOrderWhatsapp: 'Enviar Pedido por WhatsApp',
                paymentSectionTitle: 'Pago Rápido con PIX',
                paymentSubtitle: 'Escanea el código para pagar',
                paymentInstructions: 'Usa tu app bancaria para escanear el código y completar el pago',
                btnConfirmOrder: 'Confirmar Pedido',
                exploreSectionTitle: 'Explora Más Restaurantes',
                exploreDescription: '¿Buscas otros lugares con sabor latino en Boa Vista? Haz clic en el botón para abrir un mapa interactivo y descubrir opciones cercanas.',
                btnOpenMap: 'Abrir Mapa',
                eventsSectionTitle: 'Eventos y Catering con Sabor', // Nueva clave de traducción
                eventsFormSubtitle: 'Genera un Menú Personalizado con IA ✨', // Nueva clave de traducción
                eventTypeLabel: 'Tipo de Evento:', // Nueva clave de traducción
                eventTypePlaceholder: 'Selecciona un tipo...', // Nueva clave de traducción
                eventTypeBirthday: 'Cumpleaños', // Nueva clave de traducción
                eventTypeCorporate: 'Evento Corporativo', // Nueva clave de traducción
                eventTypeWedding: 'Boda', // Nueva clave de traducción
                eventTypeFamily: 'Reunión Familiar', // Nueva clave de traducción
                eventTypeOther: 'Otro', // Nueva clave de traducción
                numGuestsLabel: 'Número de Invitados:', // Nueva clave de traducción
                numGuestsPlaceholder: 'Ej: 50', // Nueva clave de traducción
                budgetPerPersonLabel: 'Presupuesto por Persona (R$):', // Nueva clave de traducción
                budgetPerPersonPlaceholder: 'Ej: 75.00', // Nueva clave de traducción
                dietaryRestrictionsLabel: 'Restricciones Dietéticas (Opcional):', // Nueva clave de traducción
                dietaryRestrictionsPlaceholder: 'Ej: Vegetariano, sin gluten', // Nueva clave de traducción
                cuisineStyleLabel: 'Estilo de Cocina Preferido:', // Nueva clave de traducción
                cuisineStyleLatin: 'Latina (Fusión Brasileña)', // Nueva clave de traducción
                cuisineStyleInternational: 'Internacional', // Nueva clave de traducción
                cuisineStyleVegetarian: 'Vegetariana', // Nueva clave de traducción
                cuisineStyleVegan: 'Vegana', // Nueva clave de traducción
                btnGenerateMenu: 'Generar Menú con IA', // Nueva clave de traducción
                eventModalTitle: 'Menú Sugerido para tu Evento', // Nueva clave de traducción
                eventMenuError: 'No pudimos generar un menú para tu evento en este momento. Por favor, revisa los detalles o inténtalo de nuevo más tarde.', // Nueva clave de traducción
                btnGenerateImage: 'Generar Imagen del Menú', // Nueva clave de traducción
                generateImageText: 'Generar Imagen del Menú', // Nueva clave de traducción
                imageGenerationError: 'No pudimos generar la imagen del menú en este momento. Intenta de nuevo más tarde.', // Nueva clave de traducción
                customerFeedbackSectionTitle: 'Lo que Dicen Nuestros Clientes', // Nueva clave de traducción
                noFeedbackAvailable: 'No hay opiniones disponibles aún. ¡Sé el primero en dejar una!', // Nueva clave de traducción
                feedbackSectionTitle: 'Déjanos tu Opinión',
                feedbackNameLabel: 'Nombre',
                feedbackEmailLabel: 'Email',
                feedbackRatingLabel: 'Calificación',
                feedbackSelectOption: 'Selecciona...',
                ratingExcellent: 'Excelente ⭐⭐⭐⭐⭐',
                ratingVeryGood: 'Muy Bueno ⭐⭐⭐⭐',
                ratingGood: 'Bueno ⭐⭐⭐',
                ratingRegular: 'Regular ⭐⭐',
                ratingBad: 'Malo ⭐',
                feedbackMessageLabel: 'Tu Mensaje',
                btnSendOpinion: 'Enviar Opinión',
                footerSlogan: 'Sabor, tradición y pasión en cada plato desde 2010',
                footerContactTitle: 'CONTACTO',
                btnWhatsappChat: 'Chatear por WhatsApp',
                footerHoursTitle: 'HORARIOS',
                hoursWeekdays: 'Lunes a Viernes: 11:00 - 23:00',
                hoursSaturday: 'Sábados: 12:00 - 00:00',
                hoursSunday: 'Domingos: 12:00 - 18:00',
                footerCopyright: '&copy; 2025 Tovar Restaurant. Todos los derechos reservados.',
                chatHeaderTitle: 'Asistente Virtual',
                chatWelcome: '¡Hola! 👋 Soy el asistente de Tovar Restaurant. ¿En qué puedo ayudarte?',
                quickQuestionHours: '¿Cuáles son sus horarios?',
                quickQuestionPayment: '¿Qué métodos de pago aceptan?',
                quickQuestionDelivery: '¿Hacen delivery?',
                quickQuestionReservations: '¿Cómo hago una reserva?',
                chatInputPlaceholder: 'Escribe tu pregunta...',
                floatingMessageTaskReady: '¡Preparados para la próxima tarea! Cuando necesites crear otro sitio, dime "1112" y comenzaremos.',
                chatApiErrorGeneric: 'Disculpa, no pude obtener una respuesta en este momento. Intenta de nuevo más tarde.',
                chatApiErrorConnection: '¡Ups! Parece que hubo un problema al conectar con el asistente. Por favor, intenta de nuevo.',
                modalErrorDescription: 'No pudimos generar la descripción para este plato en este momento. Por favor, inténtalo de nuevo más tarde.',
                floatingMessageFeedbackSent: '¡Gracias por tu opinión! La hemos recibido con éxito.' // Nueva clave de traducción
            },
            'pt-br': {
                pageTitle: 'Tovar Restaurant - Sabor Latino',
                navHome: 'Início',
                tooltipHome: 'Descubra nosso início e paixão culinária.',
                navMenu: 'Cardápio',
                tooltipMenu: 'Explore nossos deliciosos pratos especiais.',
                navOrders: 'Pedidos',
                tooltipOrders: 'Faça seu pedido e entregamos em sua casa.',
                navPayment: 'Pagar',
                tooltipPayment: 'Facilite seu pagamento com PIX e outras opções.',
                navExplore: 'Explorar',
                tooltipExplore: 'Encontre restaurantes similares no mapa.',
                navEvents: 'Eventos',
                tooltipEvents: 'Gere cardápios personalizados para seus eventos.',
                navFeedback: 'Avaliações',
                tooltipFeedback: 'Leia o que nossos clientes dizem sobre nós.',
                navContact: 'Contato',
                tooltipContact: 'Envie-nos sua opinião ou entre em contato.',
                selectLanguageLabel: 'Idioma:',
                heroTitle: 'Sabor Latino com Alma Brasileira',
                heroSubtitle: 'Fusão de sabores autênticos no coração de Boa Vista',
                btnViewMenu: 'Ver Cardápio',
                btnBookTable: 'Reservar Mesa',
                menuSectionTitle: 'Nossos Pratos Estrela',
                pizzaTitle: 'Pizza Artesanal',
                pizzaDesc: 'Massa fermentada 48h com tomates frescos e queijo mussarela',
                curryTitle: 'Curry Brasileiro',
                curryDesc: 'Fusão de curry japonês com ingredientes locais e frango',
                chefSpecialTitle: 'Especialidade do Chef',
                chefSpecialDesc: 'Criação do dia com ingredientes frescos da estação',
                deliveryTag: 'Entrega grátis em 15-20 min',
                btnOrderNow: 'Pedir Agora',
                btnAiDetails: '✨ Descubra mais',
                orderSectionTitle: 'Faça seu Pedido Aqui!',
                orderFormSubtitle: 'Envie seu pedido diretamente pelo WhatsApp',
                orderNameLabel: 'Seu Nome:',
                orderNamePlaceholder: 'Ex: João Silva',
                orderPhoneLabel: 'Seu Telefone (WhatsApp):',
                orderPhonePlaceholder: 'Ex: +5595991234567',
                orderAddressLabel: 'Endereço de Entrega:',
                orderAddressPlaceholder: 'Ex: Rua Principal, 123, Bairro Centro, Boa Vista',
                orderDetailsLabel: 'Detalhes do Pedido (Pratos e Quantidades):',
                orderDetailsPlaceholder: 'Ex: 1x Pizza Artesanal, 2x Curry Brasileiro, 1x Coca-Cola',
                orderNotesLabel: 'Observações Adicionais (Opcional):',
                orderNotesPlaceholder: 'Ex: Sem cebola na pizza, extra picante no curry.',
                btnSendOrderWhatsapp: 'Enviar Pedido pelo WhatsApp',
                paymentSectionTitle: 'Pagamento Rápido com PIX',
                paymentSubtitle: 'Escaneie o código para pagar',
                paymentInstructions: 'Use seu aplicativo bancário para escanear o código e completar o pagamento',
                btnConfirmOrder: 'Confirmar Pedido',
                exploreSectionTitle: 'Explore Mais Restaurantes',
                exploreDescription: 'Procurando outros lugares com sabor latino em Boa Vista? Clique no botão para abrir um mapa interativo e descobrir opções próximas.',
                btnOpenMap: 'Abrir Mapa',
                eventsSectionTitle: 'Eventos e Catering com Sabor',
                eventsFormSubtitle: 'Gere um Cardápio Personalizado com IA ✨',
                eventTypeLabel: 'Tipo de Evento:',
                eventTypePlaceholder: 'Selecione um tipo...',
                eventTypeBirthday: 'Aniversário',
                eventTypeCorporate: 'Evento Corporativo',
                eventTypeWedding: 'Casamento',
                eventTypeFamily: 'Reunião Familiar',
                eventTypeOther: 'Outro',
                numGuestsLabel: 'Número de Convidados:',
                numGuestsPlaceholder: 'Ex: 50',
                budgetPerPersonLabel: 'Orçamento por Pessoa (R$):',
                budgetPerPersonPlaceholder: 'Ex: 75.00',
                dietaryRestrictionsLabel: 'Restrições Dietéticas (Opcional):',
                dietaryRestrictionsPlaceholder: 'Ex: Vegetariano, sem glúten',
                cuisineStyleLabel: 'Estilo de Cozinha Preferido:',
                cuisineStyleLatin: 'Latina (Fusão Brasileira)',
                cuisineStyleInternational: 'Internacional',
                cuisineStyleVegetarian: 'Vegetariana',
                cuisineStyleVegan: 'Vegana',
                btnGenerateMenu: 'Gerar Cardápio com IA',
                eventModalTitle: 'Cardápio Sugerido para seu Evento',
                eventMenuError: 'Não foi possível gerar um cardápio para o seu evento no momento. Por favor, verifique os detalhes ou tente novamente mais tarde.',
                btnGenerateImage: 'Gerar Imagem do Cardápio',
                generateImageText: 'Gerar Imagem do Cardápio',
                imageGenerationError: 'Não foi possível gerar a imagem do cardápio no momento. Tente novamente novamente mais tarde.',
                customerFeedbackSectionTitle: 'O que Nossos Clientes Dizem',
                noFeedbackAvailable: 'Não há avaliações disponíveis ainda. Seja o primeiro a deixar uma!',
                feedbackSectionTitle: 'Deixe sua Opinião',
                feedbackNameLabel: 'Nome',
                feedbackEmailLabel: 'Email',
                feedbackRatingLabel: 'Avaliação',
                feedbackSelectOption: 'Selecione...',
                ratingExcellent: 'Excelente ⭐⭐⭐⭐⭐',
                ratingVeryGood: 'Muito Bom ⭐⭐⭐⭐',
                ratingGood: 'Bom ⭐⭐⭐',
                ratingRegular: 'Regular ⭐⭐',
                ratingBad: 'Ruim ⭐',
                feedbackMessageLabel: 'Sua Mensagem',
                btnSendOpinion: 'Enviar Opinião',
                footerSlogan: 'Sabor, tradição e paixão em cada prato desde 2010',
                footerContactTitle: 'CONTATO',
                btnWhatsappChat: 'Conversar via WhatsApp',
                footerHoursTitle: 'HORÁRIOS',
                hoursWeekdays: 'Segunda a Sexta: 11:00 - 23:00',
                hoursSaturday: 'Sábados: 12:00 - 00:00',
                hoursSunday: 'Domingos: 12:00 - 18:00',
                footerCopyright: '&copy; 2025 Tovar Restaurant. Todos os direitos reservados.',
                chatHeaderTitle: 'Assistente Virtual',
                chatWelcome: 'Olá! 👋 Sou o assistente do Tovar Restaurant. Em que posso ajudar?',
                quickQuestionHours: 'Quais são os horários de funcionamento?',
                quickQuestionPayment: 'Quais métodos de pagamento vocês aceitam?',
                quickQuestionDelivery: 'Vocês fazem entrega?',
                quickQuestionReservations: 'Como faço uma reserva?',
                chatInputPlaceholder: 'Digite sua pergunta...',
                floatingMessageTaskReady: 'Preparados para a próxima tarefa! Quando precisar criar outro site, diga "1112" e começaremos.',
                chatApiErrorGeneric: 'Desculpe, não consegui obter uma resposta no momento. Tente novamente mais tarde.',
                chatApiErrorConnection: 'Ops! Parece que houve um problema ao conectar com o assistente. Por favor, tente novamente.',
                modalErrorDescription: 'Não foi possível gerar a descrição para este prato no momento. Por favor, tente novamente mais tarde.',
                floatingMessageFeedbackSent: 'Obrigado pelo seu feedback! Recebemos com sucesso.'
            },
            'en': {
                pageTitle: 'Tovar Restaurant - Latin Flavor',
                navHome: 'Home',
                tooltipHome: 'Discover our culinary journey and passion.',
                navMenu: 'Menu',
                tooltipMenu: 'Explore our delicious star dishes.',
                navOrders: 'Orders',
                tooltipOrders: 'Place your order and we will deliver it to your home.',
                navPayment: 'Pay',
                tooltipPayment: 'Facilitate your payment with PIX and other options.',
                navExplore: 'Explore',
                tooltipExplore: 'Find similar restaurants on the map.',
                navEvents: 'Events',
                tooltipEvents: 'Generate personalized menus for your events.',
                navFeedback: 'Reviews',
                tooltipFeedback: 'Read what our customers say about us.',
                navContact: 'Contact',
                tooltipContact: 'Send us your feedback or contact us.',
                selectLanguageLabel: 'Language:',
                heroTitle: 'Latin Flavor with a Brazilian Soul',
                heroSubtitle: 'Fusion of authentic flavors in the heart of Boa Vista',
                btnViewMenu: 'View Menu',
                btnBookTable: 'Book a Table',
                menuSectionTitle: 'Our Star Dishes',
                pizzaTitle: 'Artisanal Pizza',
                pizzaDesc: '48h fermented dough with fresh tomatoes and mozzarella cheese',
                curryTitle: 'Brazilian Curry',
                curryDesc: 'Fusion of Japanese curry with local ingredients and chicken',
                chefSpecialTitle: 'Chef\'s Special',
                chefSpecialDesc: 'Daily creation with fresh seasonal ingredients',
                deliveryTag: 'Free delivery in 15-20 min',
                btnOrderNow: 'Order Now',
                btnAiDetails: '✨ Discover more',
                orderSectionTitle: 'Place Your Order Here!',
                orderFormSubtitle: 'Send us your order directly via WhatsApp',
                orderNameLabel: 'Your Name:',
                orderNamePlaceholder: 'Ex: John Doe',
                orderPhoneLabel: 'Your Phone (WhatsApp):',
                orderPhonePlaceholder: 'Ex: +5595991234567',
                orderAddressLabel: 'Delivery Address:',
                orderAddressPlaceholder: 'Ex: Main Street, 123, Downtown, Boa Vista',
                orderDetailsLabel: 'Order Details (Dishes and Quantities):',
                orderDetailsPlaceholder: 'Ex: 1x Artisanal Pizza, 2x Brazilian Curry, 1x Coca-Cola',
                orderNotesLabel: 'Additional Notes (Optional):',
                orderNotesPlaceholder: 'Ex: No onions on pizza, extra spicy on curry.',
                btnSendOrderWhatsapp: 'Send Order via WhatsApp',
                paymentSectionTitle: 'Fast Payment with PIX',
                paymentSubtitle: 'Scan the code to pay',
                paymentInstructions: 'Use your banking app to scan the code and complete the payment',
                btnConfirmOrder: 'Confirm Order',
                exploreSectionTitle: 'Explore More Restaurants',
                exploreDescription: 'Looking for other Latin-flavored places in Boa Vista? Click the button to open an interactive map and discover nearby options.',
                btnOpenMap: 'Open Map',
                eventsSectionTitle: 'Events and Catering with Flavor',
                eventsFormSubtitle: 'Generate a Personalized Menu with AI ✨',
                eventTypeLabel: 'Event Type:',
                eventTypePlaceholder: 'Select a type...',
                eventTypeBirthday: 'Birthday',
                eventTypeCorporate: 'Corporate Event',
                eventTypeWedding: 'Wedding',
                eventTypeFamily: 'Family Reunion',
                eventTypeOther: 'Other',
                numGuestsLabel: 'Number of Guests:',
                numGuestsPlaceholder: 'Ex: 50',
                budgetPerPersonLabel: 'Budget per Person (R$):',
                budgetPerPersonPlaceholder: 'Ex: 75.00',
                dietaryRestrictionsLabel: 'Dietary Restrictions (Optional):',
                dietaryRestrictionsPlaceholder: 'Ex: Vegetarian, gluten-free',
                cuisineStyleLabel: 'Preferred Cuisine Style:',
                cuisineStyleLatin: 'Latin (Brazilian Fusion)',
                cuisineStyleInternational: 'International',
                cuisineStyleVegetarian: 'Vegetarian',
                cuisineStyleVegan: 'Vegan',
                btnGenerateMenu: 'Generate Menu with AI',
                eventModalTitle: 'Suggested Menu for Your Event',
                eventMenuError: 'Could not generate a menu for your event at the moment. Please check the details or try again later.',
                btnGenerateImage: 'Generate Menu Image',
                generateImageText: 'Generate Menu Image',
                imageGenerationError: 'Could not generate the menu image at the moment. Please try again later.',
                customerFeedbackSectionTitle: 'What Our Customers Say',
                noFeedbackAvailable: 'No reviews available yet. Be the first to leave one!',
                feedbackSectionTitle: 'Leave Us Your Feedback',
                feedbackNameLabel: 'Name',
                feedbackEmailLabel: 'Email',
                feedbackRatingLabel: 'Rating',
                feedbackSelectOption: 'Select...',
                ratingExcellent: 'Excellent ⭐⭐⭐⭐⭐',
                ratingVeryGood: 'Very Good ⭐⭐⭐⭐',
                ratingGood: 'Good ⭐⭐⭐',
                ratingRegular: 'Regular ⭐⭐',
                ratingBad: 'Bad ⭐',
                feedbackMessageLabel: 'Your Message',
                btnSendOpinion: 'Send Feedback',
                footerSlogan: 'Flavor, tradition, and passion in every dish since 2010',
                footerContactTitle: 'CONTACT',
                btnWhatsappChat: 'Chat via WhatsApp',
                footerHoursTitle: 'HOURS',
                hoursWeekdays: 'Monday to Friday: 11:00 AM - 11:00 PM',
                hoursSaturday: 'Saturdays: 12:00 PM - 12:00 AM',
                hoursSunday: 'Sundays: 12:00 PM - 06:00 PM',
                footerCopyright: '&copy; 2025 Tovar Restaurant. All rights reserved.',
                chatHeaderTitle: 'Virtual Assistant',
                chatWelcome: 'Hello! 👋 I am Tovar Restaurant\'s assistant. How can I help you?',
                quickQuestionHours: 'What are your opening hours?',
                quickQuestionPayment: 'What payment methods do you accept?',
                quickQuestionDelivery: 'Do you offer delivery?',
                quickQuestionReservations: 'How do I make a reservation?',
                chatInputPlaceholder: 'Type your question...',
                floatingMessageTaskReady: 'Ready for the next task! When you need to create another site, say "1112" and we\'ll start.',
                chatApiErrorGeneric: 'Sorry, I couldn\'t get a response at this moment. Please try again later.',
                chatApiErrorConnection: 'Oops! It seems there was a problem connecting to the assistant. Please try again.',
                modalErrorDescription: 'Could not generate description for this dish at the moment. Please try again later.',
                floatingMessageFeedbackSent: 'Thanks for your feedback! We have received it successfully.'
            }
        };

        let currentLanguage = localStorage.getItem('selectedLanguage') || 'es'; // Carga el idioma guardado o usa español por defecto
        let currentTheme = localStorage.getItem('theme') || 'light'; // Carga el tema guardado o usa 'light' por defecto

        // --- Configuración e Inicialización de Firebase (NUEVO) ---
        // Estas variables son proporcionadas por el entorno de Canvas
        const appId = typeof __app_id !== 'undefined' ? __app_id : 'default-app-id';
        const firebaseConfig = typeof __firebase_config !== 'undefined' ? JSON.parse(__firebase_config) : {
            projectId: 'tovar-restaurant-default',
            apiKey: 'AIzaSyDummyKeyForTesting123456789',
            authDomain: 'tovar-restaurant-default.firebaseapp.com',
            storageBucket: 'tovar-restaurant-default.appspot.com',
            messagingSenderId: '123456789012',
            appId: '1:123456789012:web:abcdef1234567890'
        };
        const initialAuthToken = typeof __initial_auth_token !== 'undefined' ? __initial_auth_token : null;

        let app;
        let db;
        let auth;
        let userId; // Para almacenar el ID del usuario actual

        // Función para inicializar Firebase y autenticar
        async function initializeFirebase() {
            try {
                app = initializeApp(firebaseConfig);
                db = getFirestore(app);
                auth = getAuth(app);

                // Autenticación: Intenta con el token proporcionado por Canvas, si no, anónimamente
                if (initialAuthToken) {
                    await signInWithCustomToken(auth, initialAuthToken);
                } else {
                    await signInAnonymously(auth);
                }
                userId = auth.currentUser?.uid || crypto.randomUUID(); // Obtiene el UID o genera uno si es anónimo/no autenticado
                console.log("Firebase inicializado y usuario autenticado:", userId);

                // Después de la inicialización y autenticación, carga las opiniones
                loadFeedback();

            } catch (error) {
                console.error("Error al inicializar Firebase o autenticar:", error);
                // Aquí podrías mostrar un mensaje flotante de error al usuario
                showFloatingMessage('chatApiErrorConnection', 'error', 5000); // Reutilizar mensaje de error de conexión
            }
        }

        /**
         * Aplica las traducciones a los elementos HTML.
         * @param {string} lang - El código del idioma ('es' o 'pt-br').
         */
        function applyTranslations(lang) {
            document.documentElement.lang = lang; // Actualiza el atributo lang del HTML
            const currentTexts = translations[lang];

            // Traducir elementos con data-key
            document.querySelectorAll('[data-key]').forEach(element => {
                const key = element.getAttribute('data-key');
                if (currentTexts[key]) {
                    element.textContent = currentTexts[key];
                }
            });

            // Traducir tooltips (data-tooltip)
            document.querySelectorAll('[data-tooltip-key]').forEach(element => {
                const key = element.getAttribute('data-tooltip-key');
                if (currentTexts[key]) {
                    element.setAttribute('data-tooltip', currentTexts[key]);
                }
            });

            // Traducir placeholders
            document.querySelectorAll('[data-placeholder-key]').forEach(element => {
                const key = element.getAttribute('data-placeholder-key');
                if (currentTexts[key]) {
                    element.placeholder = currentTexts[key];
                }
            });

            // Traducir los botones de "Pedir Ahora" en el menú, usando el data-item-key para el nombre del plato
            document.querySelectorAll('.order-btn').forEach(button => {
                const itemKey = button.getAttribute('data-item-key');
                const translatedItemName = currentTexts[itemKey];
                // Actualiza el data-item para que el mensaje flotante use el nombre traducido
                button.setAttribute('data-item', translatedItemName);
                // Actualiza el texto del botón
                button.textContent = currentTexts['btnOrderNow'];
            });

            // Traducir los nuevos botones de IA
            document.querySelectorAll('.ai-details-btn').forEach(button => {
                const key = button.getAttribute('data-key');
                if (currentTexts[key]) {
                    button.textContent = currentTexts[key];
                }
            });

            // Actualizar el título de la página
            document.querySelector('title').textContent = currentTexts.pageTitle;

            // Actualizar el mensaje de bienvenida del chat
            document.querySelector('.chat-body .bot-message').textContent = currentTexts.chatWelcome;

            // Actualizar las opciones del selector de idioma (mantener el texto original en el dropdown)
            const langSelect = document.getElementById('language-select');
            if (langSelect) {
                langSelect.value = lang; // Asegura que el selector muestre el idioma actual
            }
        }

        // --- Funciones de Utilidad ---

        /**
         * Muestra un mensaje flotante en la parte superior de la pantalla.
         * @param {string} messageKey - La clave de la traducción del mensaje.
         * @param {'success'|'error'|'info'} type - El tipo de mensaje para el estilo.
         * @param {number} duration - Duración en milisegundos antes de que el mensaje desaparezca.
         * @param {Object} [replacements={}] - Objeto con claves y valores para reemplazar en el mensaje.
         */
        function showFloatingMessage(messageKey, type = 'info', duration = 3000, replacements = {}) {
            const floatingMessage = document.getElementById('floatingMessage');
            const messageTextElement = document.getElementById('messageText');
            const messageIcon = document.getElementById('messageIcon');

            let message = translations[currentLanguage][messageKey] || messageKey; // Obtener el mensaje traducido

            // Realizar reemplazos si existen
            for (const key in replacements) {
                message = message.replace(`{${key}}`, replacements[key]);
            }

            // Limpia clases anteriores y establece el tipo
            floatingMessage.className = 'floating-message'; // Reset classes
            floatingMessage.classList.add(type);

            // Establece el icono según el tipo de mensaje
            switch (type) {
                case 'success':
                    messageIcon.innerHTML = '<i class="fas fa-check-circle"></i>';
                    break;
                case 'error':
                    messageIcon.innerHTML = '<i class="fas fa-times-circle"></i>';
                    break;
                case 'info':
                default:
                    messageIcon.innerHTML = '<i class="fas fa-info-circle"></i>';
                    break;
            }

            messageTextElement.textContent = message;
            floatingMessage.classList.add('show');

            setTimeout(() => {
                floatingMessage.classList.remove('show');
            }, duration);
        }

        /**
         * Añade un mensaje al cuerpo del chat.
         * @param {string} text - El texto del mensaje.
         * @param {'user'|'bot'|'loading'} sender - Quién envía el mensaje ('user', 'bot' o 'loading').
         * @returns {HTMLElement} El elemento del mensaje creado.
         */
        function addChatMessage(text, sender) {
            const chatBody = document.getElementById('chatBody');
            const messageDiv = document.createElement('div');
            messageDiv.className = `message ${sender}-message`;
            messageDiv.innerHTML = text; // Usar innerHTML para permitir etiquetas HTML como <br>
            chatBody.appendChild(messageDiv);
            chatBody.scrollTop = chatBody.scrollHeight; // Scroll al final
            return messageDiv;
        }

        /**
         * Muestra un indicador de carga en el chat.
         * @returns {HTMLElement} El elemento del mensaje de carga.
         */
        function showLoadingMessage() {
            return addChatMessage('<div class="loading-dots"><span></span><span></span><span></span></div>', 'bot');
        }

        /**
         * Elimina un mensaje del chat.
         * @param {HTMLElement} messageElement - El elemento del mensaje a eliminar.
         */
        function removeChatMessage(messageElement) {
            if (messageElement && messageElement.parentNode) {
                messageElement.parentNode.removeChild(messageElement);
            }
        }

        // --- Manejo de Eventos ---

        // Selector de idioma
        document.getElementById('language-select').addEventListener('change', (event) => {
            currentLanguage = event.target.value;
            localStorage.setItem('selectedLanguage', currentLanguage); // Guarda la preferencia
            applyTranslations(currentLanguage); // Aplica las nuevas traducciones
        });

        // Toggle de Modo Oscuro/Claro
        const themeToggle = document.getElementById('themeToggle');
        const themeIcon = document.getElementById('themeIcon');

        function applyTheme(theme) {
            if (theme === 'dark') {
                document.body.classList.add('dark-mode');
                themeIcon.classList.remove('fa-moon');
                themeIcon.classList.add('fa-sun');
            } else {
                document.body.classList.remove('dark-mode');
                themeIcon.classList.remove('fa-sun');
                themeIcon.classList.add('fa-moon');
            }
            localStorage.setItem('theme', theme); // Guarda la preferencia del tema
        }

        themeToggle.addEventListener('click', () => {
            currentTheme = currentTheme === 'light' ? 'dark' : 'light';
            applyTheme(currentTheme);
        });

        // Aplicar el tema guardado al cargar la página
        applyTheme(currentTheme);

        // Validación y envío del formulario de feedback (MODIFICADO para Firebase)
        document.getElementById('feedbackForm').addEventListener('submit', async function(e) { // Añade 'async'
            e.preventDefault(); // Previene el envío tradicional del formulario

            if (!db) { // Asegúrate de que Firebase esté inicializado
                showFloatingMessage('chatApiErrorConnection', 'error', 5000); // Mensaje de error si no hay DB
                console.error("Firestore no está inicializado.");
                return;
            }

            const nombre = document.getElementById('nombre').value;
            const email = document.getElementById('email').value;
            const calificacion = document.getElementById('calificacion').value;
            const mensaje = document.getElementById('mensaje').value;

            try {
                // Guarda la opinión en la colección 'feedback'
                // Usamos la ruta para datos públicos en Canvas: /artifacts/{appId}/public/data/{your_collection_name}
                const docRef = await addDoc(collection(db, `artifacts/${appId}/public/data/feedback`), {
                    nombre: nombre,
                    email: email,
                    calificacion: parseInt(calificacion), // Convertir a número
                    mensaje: mensaje,
                    fecha: new Date(), // Guarda la fecha de la opinión
                    userId: userId // Guarda el ID del usuario que envió la opinión
                });
                console.log("Documento de opinión escrito con ID: ", docRef.id);
                showFloatingMessage('floatingMessageFeedbackSent', 'success', 5000); // Mensaje de éxito
                this.reset(); // Limpia el formulario
            } catch (error) { // Cambiado 'e' a 'error' para consistencia
                console.error("Error al añadir documento: ", error);
                showFloatingMessage('chatApiErrorGeneric', 'error', 5000); // Mensaje de error genérico
            }
        });
        
        // Manejo de los botones "Pedir Ahora"
        document.querySelectorAll('.order-btn').forEach(button => {
            button.addEventListener('click', function() {
                const itemName = this.dataset.item; // Obtenemos el nombre del plato (ya traducido por applyTranslations)
                // showFloatingMessage('floatingMessageAddedToCart', 'info', 3000, { item: itemName }); // Eliminado a petición del usuario
                // Desplazamiento suave a la sección de pedidos
                document.getElementById('pedidos').scrollIntoView({ behavior: 'smooth' });
                // Opcional: pre-llenar el campo de detalles del pedido con el artículo seleccionado
                const orderDetailsInput = document.getElementById('orderDetails');
                if (orderDetailsInput) {
                    // Evita duplicar si ya está presente y añade una nueva línea
                    if (!orderDetailsInput.value.includes(itemName)) {
                        orderDetailsInput.value += (orderDetailsInput.value ? '\n' : '') + `1x ${itemName}`;
                    }
                }
            });
        });
        
        // Manejo del botón "Confirmar Pedido" (en la sección de pago)
        document.querySelector('.payment-btn').addEventListener('click', function() {
            // showFloatingMessage('floatingMessageOrderSent', 'success', 5000); // Eliminado a petición del usuario
        });

        // Manejo de la navegación para simular "multipágina" y "indexación"
        document.querySelectorAll('nav ul li a').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault(); // Previene el comportamiento por defecto del enlace

                const targetId = this.getAttribute('href'); // Obtiene el ID de la sección
                const targetElement = document.querySelector(targetId);

                if (targetElement) {
                    // Desplazamiento suave a la sección
                    targetElement.scrollIntoView({
                        behavior: 'smooth'
                    });

                    // Actualiza la URL para simular una página diferente (indexación)
                    history.pushState(null, '', targetId);
                }
            });
        });

        // --- Lógica para la NUEVA SECCIÓN DE PEDIDOS ---
        const orderForm = document.getElementById('orderForm');
        const whatsappNumber = '5595991634217'; // Número de WhatsApp para recibir pedidos

        orderForm.addEventListener('submit', function(e) {
            e.preventDefault(); // Evita el envío normal del formulario

            // Obtener los datos del formulario
            const name = document.getElementById('orderName').value;
            const phone = document.getElementById('orderPhone').value;
            const address = document.getElementById('orderAddress').value;
            const details = document.getElementById('orderDetails').value;
            const notes = document = document.getElementById('orderNotes').value;

            // Construir el mensaje de WhatsApp de forma más humana (siempre en español para el restaurante)
            let whatsappMessage = `¡Hola! Soy ${name} y me gustaría hacer un pedido para Tovar Restaurant.\n\n`;
            whatsappMessage += `Mi número es ${phone}.\n`;
            whatsappMessage += `La dirección de entrega es: ${address}.\n\n`;
            whatsappMessage += `Aquí están los detalles de lo que me gustaría pedir:\n${details}\n`;
            if (notes) {
                whatsappMessage += `\nNotas adicionales: ${notes}\n`;
            }
            whatsappMessage += `\n¡Muchas gracias!`;

            // Codificar el mensaje para la URL
            const encodedMessage = encodeURIComponent(whatsappMessage);

            // Construir la URL de WhatsApp
            const whatsappUrl = `https://wa.me/${whatsappNumber}?text=${encodedMessage}`;

            // Abrir WhatsApp en una nueva pestaña
            window.open(whatsappUrl, '_blank');

            // showFloatingMessage('floatingMessageOrderSent', 'success', 5000); // Eliminado a petición del usuario
            orderForm.reset(); // Limpiar el formulario después de enviar
        });
        
        // --- Lógica para la NUEVA SECCIÓN DE EXPLORAR RESTAURANTES SIMILARES (Mapa) ---
        document.getElementById('openMapBtn').addEventListener('click', () => {
            // Construye la URL de Google Maps para buscar restaurantes latinos en Boa Vista
            // El parámetro 'query' puede ser ajustado para ser más específico o genérico
            const mapQuery = encodeURIComponent('restaurantes latinos Boa Vista');
            const mapUrl = `https://www.google.com/maps/search/?api=1&query=${mapQuery}`;
            
            // Abre la URL en una nueva pestaña
            window.open(mapUrl, '_blank');
        });

        // --- Lógica del CHAT FAQ (con integración de API de Gemini) ---
        const chatToggle = document.getElementById('chatToggle');
        const closeChat = document.getElementById('closeChat');
        const chatContainer = document.querySelector('.chat-container');
        const userInput = document.getElementById('userInput');
        const quickBtns = document.querySelectorAll('.quick-btn');
        const chatBox = document.getElementById('chatBox'); // Referencia a la caja de chat

        // Respuestas predefinidas para el FAQ (ahora se obtienen del objeto de traducciones)
        const faqResponses = {
            horarios: 'hoursWeekdays', // Clave para la traducción
            pago: 'paymentAccepted', // Nueva clave para una respuesta más genérica si no existe en el objeto
            delivery: 'deliveryInfo', // Nueva clave
            reservas: 'reservationsInfo', // Nueva clave
        };

        // Extender el objeto de traducciones para las respuestas del FAQ
        translations['es'].paymentAccepted = "Aceptamos: PIX, Tarjetas (Visa/Master), Efectivo y Transferencias Bancarias";
        translations['es'].deliveryInfo = "¡Sí! Entregamos en toda Boa Vista con delivery gratis en 15-20 min. Pedidos mínimos: R$ 25,00";
        translations['es'].reservationsInfo = "Puedes reservar: 1) Por WhatsApp +55 (85) 98765-4321<br>2) En nuestro formulario online<br>3) Llamando al restaurante";

        translations['pt-br'].paymentAccepted = "Aceitamos: PIX, Cartões (Visa/Master), Dinheiro e Transferências Bancárias";
        translations['pt-br'].deliveryInfo = "Sim! Entregamos em toda Boa Vista com entrega grátis em 15-20 min. Pedidos mínimos: R$ 25,00";
        translations['pt-br'].reservationsInfo = "Você pode reservar: 1) Pelo WhatsApp +55 (85) 98765-4321<br>2) Em nosso formulário online<br>3) Ligando para o restaurante";

        translations['en'].paymentAccepted = "We accept: PIX, Cards (Visa/Master), Cash, and Bank Transfers";
        translations['en'].deliveryInfo = "Yes! We deliver across Boa Vista with free delivery in 15-20 min. Minimum order: R$ 25.00";
        translations['en'].reservationsInfo = "You can book: 1) Via WhatsApp +55 (85) 98765-4321<br>2) On our online form<br>3) By calling the restaurant";
        
        // Abrir/cerrar el chat
        chatToggle.addEventListener('click', () => {
            chatContainer.classList.add('chat-open');
            chatBox.style.display = 'flex'; // Asegura que la caja de chat se muestre
            userInput.focus(); // Enfoca el input al abrir
        });
        
        closeChat.addEventListener('click', () => {
            chatContainer.classList.remove('chat-open');
            // Opcional: ocultar la caja de chat después de la animación si es necesario
            setTimeout(() => {
                chatBox.style.display = 'none';
            }, 300); // Coincide con la duración de la animación scaleIn
        });
        
        // Manejar clics en las preguntas rápidas
        quickBtns.forEach(btn => {
            btn.addEventListener('click', () => {
                const questionKey = btn.getAttribute('data-key'); // Usamos data-key para la pregunta
                const responseKey = btn.getAttribute('data-question'); // Usamos data-question para la respuesta
                
                addChatMessage(translations[currentLanguage][questionKey], 'user'); // Muestra la pregunta del usuario
                
                // Muestra la respuesta del bot después de un breve retraso
                setTimeout(() => {
                    addChatMessage(translations[currentLanguage][faqResponses[responseKey]], 'bot');
                }, 500);
            });
        });
        
        // Manejar preguntas escritas por el usuario
        userInput.addEventListener('keypress', async (e) => {
            if (e.key === 'Enter' && userInput.value.trim() !== '') {
                const userQuestion = userInput.value.trim();
                
                addChatMessage(userQuestion, 'user'); // Muestra la pregunta del usuario
                userInput.value = ''; // Limpia el input

                const loadingMsg = showLoadingMessage(); // Muestra el indicador de carga

                try {
                    // Prepara el historial de chat para la API
                    let chatHistory = [];
                    // Puedes añadir un historial más completo aquí si lo deseas
                    chatHistory.push({ role: "user", parts: [{ text: userQuestion }] });

                    const payload = { contents: chatHistory };
                    // La clave API se proporcionará automáticamente en el entorno de Canvas
                    // NO MODIFICAR ESTA LÍNEA CON UNA CLAVE DIRECTAMENTE
                    const apiKey = "";
                    const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${apiKey}`;

                    const response = await fetch(apiUrl, {
                        method: 'POST',
                        headers: { 'Content-Type': 'application/json' },
                        body: JSON.stringify(payload)
                    });

                    const result = await response.json();

                    removeChatMessage(loadingMsg); // Elimina el indicador de carga

                    if (result.candidates && result.candidates.length > 0 &&
                        result.candidates[0].content && result.candidates[0].content.parts &&
                        result.candidates[0].content.parts.length > 0) {
                        const botResponse = result.candidates[0].content.parts[0].text;
                        addChatMessage(botResponse, 'bot'); // Muestra la respuesta de la IA
                    } else {
                        addChatMessage(translations[currentLanguage].chatApiErrorGeneric, 'bot');
                        console.error("Error en la estructura de la respuesta de la API:", result);
                    }
                } catch (error) {
                    removeChatMessage(loadingMsg); // Elimina el indicador de carga en caso de error
                    addChatMessage(translations[currentLanguage].chatApiErrorConnection, 'bot');
                    console.error("Error al llamar a la API de Gemini:", error);
                }
            }
        });
        
        // --- Sistema de Tareas con Código Secreto (para desarrollo) ---
        let keySequence = [];
        const secretCode = '1112'; // Código secreto para activar la alerta de tarea

        window.addEventListener('keydown', (e) => {
            keySequence.push(e.key);
            // Mantiene la secuencia con la longitud del código secreto
            if (keySequence.length > secretCode.length) {
                keySequence.shift();
            }
            
            // Si la secuencia coincide, muestra el mensaje de tarea
            if (keySequence.join('') === secretCode) {
                showFloatingMessage('floatingMessageTaskReady', 'info', 5000);
                keySequence = []; // Resetea la secuencia
            }
        });

        // --- Lógica para el mensaje de desarrollo dinámico ---
        const devMessage = document.querySelector('.dev-message');
        const footer = document.querySelector('footer');

        if (devMessage && footer) {
            // Función para actualizar la posición del mensaje de desarrollo
            const updateDevMessagePosition = () => {
                const footerRect = footer.getBoundingClientRect();
                const windowHeight = window.innerHeight;
                const devMessageHeight = devMessage.offsetHeight; // Altura actual del mensaje
                const offsetFromBottom = 10; // Espacio deseado desde el borde inferior de la ventana

                // Si el pie de página está entrando en la vista desde abajo
                // El mensaje se posiciona 'offsetFromBottom' px por encima del borde superior del footer
                if (footerRect.top < windowHeight) {
                    const newBottom = (windowHeight - footerRect.top) + offsetFromBottom;
                    devMessage.style.bottom = `${newBottom}px`;
                } else {
                    // Si el pie de página no está en vista, el mensaje vuelve a su posición normal
                    devMessage.style.bottom = `${offsetFromBottom}px`;
                }
            };

            // Establecer la posición inicial del mensaje de desarrollo al cargar la página
            devMessage.style.bottom = '10px';

            // Añadir el listener para el evento 'scroll'
            window.addEventListener('scroll', updateDevMessagePosition);

            // También actualizar la posición si la ventana cambia de tamaño
            window.addEventListener('resize', updateDevMessagePosition);
        }

        // --- Lógica para la barra de navegación dinámica (MODIFICADA para ser siempre visible y con efecto hover) ---
        const mainHeader = document.getElementById('mainHeader');
        // --- CAMBIO AQUÍ: Eliminado scrollThreshold y el event listener de scroll para el header ---
        /*
        const scrollThreshold = 50; // Pixeles para activar el cambio de estilo al hacer scroll

        window.addEventListener('scroll', () => {
            const currentScrollY = window.scrollY;
            
            // Aplica la clase 'scrolled' si el usuario se ha desplazado más allá del umbral
            if (currentScrollY > scrollThreshold) {
                mainHeader.classList.add('scrolled');
            } else {
                mainHeader.classList.remove('scrolled');
            }
            // La barra de menú siempre estará visible debido a `position: fixed` en CSS
            // y la ausencia de la clase `header-hidden`
        });
        */


        // --- Lógica para el MODAL de descripción de IA ---
        const aiDescriptionModal = document.getElementById('aiDescriptionModal');
        const closeButtonDescription = aiDescriptionModal.querySelector('.close-button');
        const modalDishTitle = document.getElementById('modalDishTitle');
        const modalDescriptionContent = document.getElementById('modalDescriptionContent');
        const modalLoading = document.getElementById('modalLoading');
        const aiDetailsButtons = document.querySelectorAll('.ai-details-btn');

        // Función para mostrar el modal de descripción
        function showAiDescriptionModal(dishName) {
            modalDishTitle.textContent = dishName;
            modalDescriptionContent.innerHTML = ''; // Limpiar contenido anterior
            modalLoading.style.display = 'block'; // Mostrar cargador
            aiDescriptionModal.style.display = 'flex'; // Mostrar el modal (usando flex para centrar)
            document.body.style.overflow = 'hidden'; // Evitar scroll en el body

            // Llamar a la API de Gemini para obtener la descripción
            fetchDishDescription(dishName);
        }

        // Función para cerrar el modal de descripción
        function closeAiDescriptionModal() {
            aiDescriptionModal.style.display = 'none';
            document.body.style.overflow = ''; // Restaurar scroll en el body
        }

        // Event listeners para el modal de descripción
        closeButtonDescription.addEventListener('click', closeAiDescriptionModal);
        aiDescriptionModal.addEventListener('click', (e) => {
            // Cierra el modal si se hace clic fuera del contenido
            if (e.target === aiDescriptionModal) {
                closeAiDescriptionModal();
            }
        });

        // Event listeners para los botones "Descubre más"
        aiDetailsButtons.forEach(button => {
            button.addEventListener('click', () => {
                const dishNameKey = button.getAttribute('data-item-name-key');
                const dishName = translations[currentLanguage][dishNameKey] || dishNameKey; // Obtener el nombre traducido del plato
                showAiDescriptionModal(dishName);
            });
        });

        /**
         * Llama a la API de Gemini para obtener una descripción del plato.
         * @param {string} dishName - El nombre del plato para el cual generar la descripción.
         */
        async function fetchDishDescription(dishName) {
            const prompt = `Genera una descripción culinaria atractiva y detallada para el plato "${dishName}" de un restaurante latino. Incluye su origen, ingredientes clave y sensaciones al probarlo. Máximo 150 palabras.`;
            
            let chatHistory = [];
            chatHistory.push({ role: "user", parts: [{ text: prompt }] });

            const payload = { contents: chatHistory };
            // La clave API se proporcionará automáticamente en el entorno de Canvas
            // NO MODIFICAR ESTA LÍNEA CON UNA CLAVE DIRECTAMENTE
            const apiKey = ""; 
            const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${apiKey}`;

            try {
                const response = await fetch(apiUrl, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(payload)
                });

                const result = await response.json();

                modalLoading.style.display = 'none'; // Ocultar cargador

                if (result.candidates && result.candidates.length > 0 &&
                    result.candidates[0].content && result.candidates[0].content.parts &&
                    result.candidates[0].content.parts.length > 0) {
                    const description = result.candidates[0].content.parts[0].text;
                    modalDescriptionContent.innerHTML = description;
                } else {
                    modalDescriptionContent.innerHTML = `<p style="color: var(--accent-color-1);">${translations[currentLanguage].modalErrorDescription}</p>`;
                    console.error("Error en la estructura de la respuesta de la API de Gemini:", result);
                }
            } catch (error) {
                modalLoading.style.display = 'none'; // Ocultar cargador en caso de error
                modalDescriptionContent.innerHTML = `<p style="color: var(--accent-color-1);">${translations[currentLanguage].modalErrorDescription}</p>`;
                console.error("Error al llamar a la API de Gemini para descripción del plato:", error);
            }
        }

        // --- Lógica para el MODAL de Menú de Eventos generado por IA ---
        const eventMenuModal = document.getElementById('eventMenuModal');
        const closeButtonEventMenu = document.getElementById('closeEventMenuModalBtn');
        const eventModalTitle = document.getElementById('eventModalTitle');
        const eventMenuContent = document.getElementById('eventMenuContent');
        const eventMenuLoading = document.getElementById('eventMenuLoading');
        const eventMenuForm = document.getElementById('eventMenuForm');
        const generateImageBtn = document.getElementById('generateImageBtn');
        const generatedMenuImage = document.getElementById('generatedMenuImage');
        const menuImageLoading = document.getElementById('menuImageLoading');
        const imageErrorMsg = document.getElementById('imageErrorMsg');
        const downloadImageBtn = document.getElementById('downloadImageBtn'); // Nuevo botón de descarga

        let generatedMenuText = ''; // Variable para almacenar el texto del menú generado

        // Función para mostrar el modal de menú de eventos
        function showEventMenuModal(title) {
            eventModalTitle.textContent = title;
            eventMenuContent.innerHTML = ''; // Limpiar contenido anterior
            generatedMenuImage.style.display = 'none'; // Ocultar imagen anterior
            generatedMenuImage.src = ''; // Limpiar src de la imagen
            generateImageBtn.style.display = 'none'; // Ocultar botón de imagen al inicio
            menuImageLoading.style.display = 'none'; // Ocultar cargador de imagen
            imageErrorMsg.style.display = 'none'; // Ocultar mensaje de error de imagen
            downloadImageBtn.style.display = 'none'; // Ocultar botón de descarga

            eventMenuLoading.style.display = 'block'; // Mostrar cargador de texto
            eventMenuModal.style.display = 'flex'; // Mostrar el modal
            document.body.style.overflow = 'hidden'; // Evitar scroll en el body
        }

        // Función para cerrar el modal de menú de eventos
        function closeEventMenuModal() {
            eventMenuModal.style.display = 'none';
            document.body.style.overflow = ''; // Restaurar scroll en el body
            generatedMenuText = ''; // Limpiar el texto del menú al cerrar
        }

        // Event listeners para el modal de menú de eventos
        closeButtonEventMenu.addEventListener('click', closeEventMenuModal);
        eventMenuModal.addEventListener('click', (e) => {
            if (e.target === eventMenuModal) {
                closeEventMenuModal();
            }
        });

        // Event listener para el formulario de generación de menú de eventos
        eventMenuForm.addEventListener('submit', async (e) => {
            e.preventDefault();

            const eventType = document.getElementById('eventType').value;
            const numGuests = document.getElementById('numGuests').value;
            const budgetPerPerson = document.getElementById('budgetPerPerson').value;
            const dietaryRestrictions = document.getElementById('dietaryRestrictions').value;
            const cuisineStyle = document.getElementById('cuisineStyle').value;

            const title = translations[currentLanguage].eventModalTitle;
            showEventMenuModal(title);

            const prompt = `Genera una propuesta de menú detallada y creativa para un evento de tipo "${eventType}" para ${numGuests} invitados, con un presupuesto aproximado de R$ ${budgetPerPerson} por persona. Las preferencias de cocina son "${cuisineStyle}". ${dietaryRestrictions ? `Considera las siguientes restricciones dietéticas: ${dietaryRestrictions}.` : ''} Incluye al menos una entrada, un plato principal (con opciones de proteína y guarnición si aplica), y un postre. Sé descriptivo y atractivo. Formatea la respuesta con encabezados para cada sección (Entrada, Plato Principal, Postre) y usa viñetas para los elementos del menú.`;

            let chatHistory = [];
            chatHistory.push({ role: "user", parts: [{ text: prompt }] });

            const payload = { contents: chatHistory };
            // La clave API se proporcionará automáticamente en el entorno de Canvas
            // NO MODIFICAR ESTA LÍNEA CON UNA CLAVE DIRECTAMENTE
            const apiKey = ""; 
            const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=${apiKey}`;

            try {
                const response = await fetch(apiUrl, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(payload)
                });

                const result = await response.json();

                eventMenuLoading.style.display = 'none'; // Ocultar cargador de texto

                if (result.candidates && result.candidates.length > 0 &&
                    result.candidates[0].content && result.candidates[0].content.parts &&
                    result.candidates[0].content.parts.length > 0) {
                    generatedMenuText = result.candidates[0].content.parts[0].text; // Almacenar el texto del menú
                    // Reemplazar saltos de línea para formato HTML
                    eventMenuContent.innerHTML = generatedMenuText.replace(/\n/g, '<br>');
                    generateImageBtn.style.display = 'inline-flex'; // Mostrar el botón de generar imagen
                } else {
                    eventMenuContent.innerHTML = `<p style="color: var(--accent-color-1);">${translations[currentLanguage].eventMenuError}</p>`;
                    console.error("Error en la estructura de la respuesta de la API de Gemini para menú de eventos:", result);
                }
            } catch (error) {
                eventMenuLoading.style.display = 'none'; // Ocultar cargador en caso de error
                eventMenuContent.innerHTML = `<p style="color: var(--accent-color-1);">${translations[currentLanguage].eventMenuError}</p>`;
                console.error("Error al llamar a la API de Gemini para menú de eventos:", error);
            }
        });

        // Event listener para el botón de generar imagen del menú
        generateImageBtn.addEventListener('click', async () => {
            if (!generatedMenuText) {
                imageErrorMsg.textContent = translations[currentLanguage].imageGenerationError;
                imageErrorMsg.style.display = 'block';
                return;
            }

            generatedMenuImage.style.display = 'none'; // Ocultar imagen anterior
            generatedMenuImage.src = ''; // Limpiar src
            imageErrorMsg.style.display = 'none'; // Ocultar mensaje de error
            downloadImageBtn.style.display = 'none'; // Ocultar botón de descarga
            menuImageLoading.style.display = 'block'; // Mostrar cargador de imagen

            // **MODIFICACIÓN CLAVE AQUÍ:** Usar directamente generatedMenuText como prompt
            // Asegúrate de que el prompt sea adecuado para la generación de imágenes.
            // Puedes añadir un prefijo o sufijo para mejorar la calidad de la imagen.
            const imagePrompt = `Una representación visual elegante y apetitosa de un menú gourmet de catering. El menú incluye: ${generatedMenuText}. Estilo de fotografía de alta calidad, con enfoque en la comida y un fondo suave y desenfocado.`;

            const payload = { instances: { prompt: imagePrompt }, parameters: { "sampleCount": 1} };
            // La clave API se proporcionará automáticamente en el entorno de Canvas
            // NO MODIFICAR ESTA LÍNEA CON UNA CLAVE DIRECTAMENTE
            const apiKey = ""; 
            const apiUrl = `https://generativelanguage.googleapis.com/v1beta/models/imagen-3.0-generate-002:predict?key=${apiKey}`;

            try {
                const response = await fetch(apiUrl, {
                    method: 'POST',
                    headers: { 'Content-Type': 'application/json' },
                    body: JSON.stringify(payload)
                });

                const result = await response.json();

                menuImageLoading.style.display = 'none'; // Ocultar cargador de imagen

                if (result.predictions && result.predictions.length > 0 && result.predictions[0].bytesBase64Encoded) {
                    const imageUrl = `data:image/png;base64,${result.predictions[0].bytesBase64Encoded}`;
                    generatedMenuImage.src = imageUrl;
                    generatedMenuImage.style.display = 'block'; // Mostrar la imagen generada
                    downloadImageBtn.style.display = 'flex'; // Mostrar el botón de descarga
                } else {
                    imageErrorMsg.textContent = translations[currentLanguage].imageGenerationError;
                    imageErrorMsg.style.display = 'block';
                    console.error("Error en la estructura de la respuesta de la API de Imagen:", result);
                }
            } catch (error) {
                menuImageLoading.style.display = 'none'; // Ocultar cargador en caso de error
                imageErrorMsg.textContent = translations[currentLanguage].imageGenerationError;
                imageErrorMsg.style.display = 'block';
                console.error("Error al llamar a la API de Imagen:", error);
            }
        });

        // Event listener para el botón de descarga de imagen
        downloadImageBtn.addEventListener('click', () => {
            const imageUrl = generatedMenuImage.src;
            if (imageUrl && imageUrl.startsWith('data:image/png;base64,')) {
                const base64Data = imageUrl.split(',')[1];
                const byteCharacters = atob(base64Data);
                const byteNumbers = new Array(byteCharacters.length);
                for (let i = 0; i < byteCharacters.length; i++) {
                    byteNumbers[i] = byteCharacters.charCodeAt(i);
                }
                const byteArray = new Uint8Array(byteNumbers);
                const blob = new Blob([byteArray], { type: 'image/png' });
                const url = URL.createObjectURL(blob);

                const a = document.createElement('a');
                a.href = url;
                a.download = 'menu_sugerido.png'; // Nombre del archivo
                document.body.appendChild(a);
                a.click();
                document.body.removeChild(a);
                URL.revokeObjectURL(url); // Libera el objeto URL
            } else {
                console.error("No hay una imagen válida para descargar.");
                // Opcional: mostrar un mensaje al usuario
                showFloatingMessage('imageGenerationError', 'error', 3000); // Reutilizar el mensaje de error de generación
            }
        });

        // --- Lógica para cargar y mostrar opiniones de clientes ---
        const feedbackGrid = document.getElementById('feedbackGrid');
        const noFeedbackMessage = document.getElementById('noFeedbackMessage');

        async function loadFeedback() {
            if (!db) {
                console.error("Firestore no está inicializado para cargar opiniones.");
                return;
            }

            // Obtener la colección de feedback público
            const feedbackCollectionRef = collection(db, `artifacts/${appId}/public/data/feedback`);
            // Crear una consulta para ordenar por fecha descendente
            const q = query(feedbackCollectionRef, orderBy("fecha", "desc")); // Ordenar por fecha, más reciente primero

            // Escuchar cambios en tiempo real
            onSnapshot(q, (snapshot) => {
                feedbackGrid.innerHTML = ''; // Limpiar opiniones existentes
                if (snapshot.empty) {
                    noFeedbackMessage.style.display = 'block'; // Mostrar mensaje si no hay opiniones
                    noFeedbackMessage.textContent = translations[currentLanguage].noFeedbackAvailable;
                    return;
                } else {
                    noFeedbackMessage.style.display = 'none'; // Ocultar mensaje si hay opiniones
                }

                snapshot.forEach((doc) => {
                    const feedback = doc.data();
                    const feedbackCard = document.createElement('div');
                    feedbackCard.className = 'feedback-card';

                    // Generar estrellas de calificación
                    let stars = '';
                    for (let i = 0; i < feedback.calificacion; i++) {
                        stars += '⭐';
                    }

                    // Formatear la fecha
                    const date = feedback.fecha ? feedback.fecha.toDate().toLocaleDateString(currentLanguage) : 'Fecha desconocida';

                    feedbackCard.innerHTML = `
                        <div class="rating">${stars}</div>
                        <p class="message-text">${feedback.mensaje}</p>
                        <p class="author">- ${feedback.nombre}</p>
                        <p class="date">${date}</p>
                    `;
                    feedbackGrid.appendChild(feedbackCard);
                });
            }, (error) => {
                console.error("Error al escuchar opiniones:", error);
                feedbackGrid.innerHTML = `<p style="color: var(--accent-color-1); text-align: center; width: 100%;">${translations[currentLanguage].chatApiErrorGeneric}</p>`;
            });
        }

        // Aplicar traducciones al cargar la página
        document.addEventListener('DOMContentLoaded', () => {
            initializeFirebase(); // Llama a la función de inicialización de Firebase
            applyTranslations(currentLanguage);
            // La posición inicial del mensaje de desarrollo se establece en el bloque `if (devMessage && footer)`
        });
    </script>
</body>
</html>
