<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Odontología Smiling - Inicio</title>
    
    <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- Fuentes Google -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
    
    <style>
        :root {
            --primary-color: #2563eb;
            --secondary-color: #06b6d4;
            --accent-color: #10b981;
            --text-dark: #1e293b;
            --text-light: #64748b;
            --bg-light: #f8fafc;
            --white: #ffffff;
            --shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
            --shadow-lg: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
            --border-radius: 12px;
            --transition: all 0.3s cubic-bezier(0.4, 0, 0.2, 1);
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Inter', sans-serif;
            line-height: 1.6;
            color: var(--text-dark);
            background: var(--white);
            overflow-x: hidden;
        }

        /* Header Moderno */
        .modern-header {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            box-shadow: var(--shadow);
            position: sticky;
            top: 0;
            z-index: 1000;
            transition: var(--transition);
        }

        .navbar-brand {
            display: flex;
            align-items: center;
            gap: 12px;
            font-weight: 700;
            font-size: 1.5rem;
            color: var(--primary-color) !important;
            text-decoration: none;
        }

        .logo {
            width: 45px;
            height: 45px;
            border-radius: 50%;
            object-fit: cover;
            border: 3px solid var(--primary-color);
            transition: var(--transition);
        }

        .logo:hover {
            transform: scale(1.1);
            border-color: var(--secondary-color);
        }

        .navbar-nav .nav-link {
            font-weight: 500;
            color: var(--text-dark) !important;
            margin: 0 8px;
            padding: 8px 16px !important;
            border-radius: 8px;
            transition: var(--transition);
            position: relative;
        }

        .navbar-nav .nav-link:hover,
        .navbar-nav .nav-link.active {
            color: var(--primary-color) !important;
            background: rgba(37, 99, 235, 0.1);
            transform: translateY(-2px);
        }

        .login-btn {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white !important;
            padding: 10px 24px !important;
            border-radius: 25px;
            font-weight: 600;
            text-decoration: none;
            box-shadow: var(--shadow);
            transition: var(--transition);
        }

        .login-btn:hover {
            transform: translateY(-2px);
            box-shadow: var(--shadow-lg);
            color: white !important;
        }

        /* Carrusel Moderno */
        .hero-carousel {
            position: relative;
            height: 80vh;
            min-height: 600px;
            overflow: hidden;
        }

        .carousel-item {
            height: 100%;
            position: relative;
        }

        .carousel-item::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(135deg, rgba(37, 99, 235, 0.7), rgba(6, 182, 212, 0.5));
            z-index: 2;
        }

        .carousel-item img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            filter: brightness(0.8);
        }

        .carousel-caption {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            z-index: 3;
            text-align: center;
            width: 90%;
            max-width: 800px;
        }

        .carousel-title {
            font-size: 4rem;
            font-weight: 700;
            margin-bottom: 24px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            animation: fadeInUp 1s ease-out;
        }

        .carousel-subtitle {
            font-size: 1.4rem;
            margin-bottom: 32px;
            opacity: 0.95;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.3);
            animation: fadeInUp 1s ease-out 0.3s both;
        }

        .carousel-btn {
            background: linear-gradient(135deg, var(--accent-color), var(--secondary-color));
            color: white;
            padding: 16px 32px;
            border: none;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1.1rem;
            text-decoration: none;
            display: inline-block;
            transition: var(--transition);
            box-shadow: var(--shadow-lg);
            animation: fadeInUp 1s ease-out 0.6s both;
        }

        .carousel-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
            color: white;
        }

        .carousel-control-prev,
        .carousel-control-next {
            width: 60px;
            height: 60px;
            background: rgba(255, 255, 255, 0.2);
            border-radius: 50%;
            top: 50%;
            transform: translateY(-50%);
            backdrop-filter: blur(10px);
            transition: var(--transition);
        }

        .carousel-control-prev {
            left: 30px;
        }

        .carousel-control-next {
            right: 30px;
        }

        .carousel-control-prev:hover,
        .carousel-control-next:hover {
            background: rgba(255, 255, 255, 0.3);
            transform: translateY(-50%) scale(1.1);
        }

        /* Secciones de Contenido */
        .content-section {
            padding: 100px 0;
            position: relative;
        }

        .content-section:nth-child(even) {
            background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
        }

        .section-title {
            font-size: 3rem;
            font-weight: 700;
            color: var(--text-dark);
            margin-bottom: 24px;
            position: relative;
        }

        .section-title::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 0;
            width: 80px;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            border-radius: 2px;
        }

        .section-text {
            font-size: 1.2rem;
            color: var(--text-light);
            line-height: 1.8;
            margin-bottom: 32px;
        }

        .content-image {
            border-radius: var(--border-radius);
            box-shadow: var(--shadow-lg);
            transition: var(--transition);
            overflow: hidden;
        }

        .content-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: var(--transition);
        }

        .content-image:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.15);
        }

        .content-image:hover img {
            transform: scale(1.05);
        }

        /* Stats Section */
        .stats-section {
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            color: white;
            padding: 80px 0;
            margin: 80px 0;
        }

        .stat-item {
            text-align: center;
            padding: 20px;
        }

        .stat-number {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 12px;
            display: block;
        }

        .stat-label {
            font-size: 1.1rem;
            opacity: 0.9;
        }

        /* CTA Section */
        .cta-section {
            background: linear-gradient(135deg, #1e293b 0%, #0f172a 100%);
            color: white;
            padding: 100px 0;
            text-align: center;
        }

        .cta-title {
            font-size: 2.5rem;
            font-weight: 700;
            margin-bottom: 24px;
        }

        .cta-text {
            font-size: 1.2rem;
            opacity: 0.9;
            margin-bottom: 40px;
            max-width: 600px;
            margin-left: auto;
            margin-right: auto;
        }

        .cta-btn {
            background: linear-gradient(135deg, var(--accent-color), var(--secondary-color));
            color: white;
            padding: 18px 40px;
            border: none;
            border-radius: 50px;
            font-weight: 600;
            font-size: 1.1rem;
            text-decoration: none;
            display: inline-block;
            transition: var(--transition);
            box-shadow: var(--shadow-lg);
        }

        .cta-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2);
            color: white;
        }

        /* Footer Moderno */
        .modern-footer {
            background: linear-gradient(135deg, var(--text-dark) 0%, #0f172a 100%);
            color: white;
            padding: 60px 0 30px;
        }

        .footer-section h5 {
            font-weight: 600;
            margin-bottom: 20px;
            color: white;
        }

        .footer-link {
            color: #94a3b8;
            text-decoration: none;
            transition: var(--transition);
            display: block;
            margin-bottom: 8px;
        }

        .footer-link:hover {
            color: var(--secondary-color);
            transform: translateX(5px);
        }

        .social-icons {
            display: flex;
            gap: 15px;
        }

        .social-icon {
            width: 45px;
            height: 45px;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-decoration: none;
            transition: var(--transition);
        }

        .social-icon:hover {
            background: var(--secondary-color);
            color: white;
            transform: translateY(-3px);
        }

        /* Animaciones */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .fade-in-up {
            animation: fadeInUp 0.8s ease-out;
        }

        .floating {
            animation: floating 3s ease-in-out infinite;
        }

        @keyframes floating {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        /* Responsive */
        @media (max-width: 768px) {
            .carousel-title {
                font-size: 2.5rem;
            }
            
            .carousel-subtitle {
                font-size: 1.1rem;
            }
            
            .section-title {
                font-size: 2.2rem;
            }
            
            .section-text {
                font-size: 1.1rem;
            }
            
            .hero-carousel {
                height: 60vh;
                min-height: 500px;
            }
            
            .carousel-control-prev,
            .carousel-control-next {
                width: 50px;
                height: 50px;
            }
            
            .carousel-control-prev {
                left: 15px;
            }
            
            .carousel-control-next {
                right: 15px;
            }
        }

        /* Efectos de Parallax */
        .parallax-bg {
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        /* Indicadores personalizados del carrusel */
        .carousel-indicators [data-bs-target] {
            width: 12px;
            height: 12px;
            border-radius: 50%;
            background-color: rgba(255, 255, 255, 0.6);
            border: 2px solid transparent;
            transition: var(--transition);
        }

        .carousel-indicators .active {
            background-color: white;
            transform: scale(1.2);
        }
    </style>
</head>

<body>
    <!-- Header Moderno -->
    <nav class="navbar navbar-expand-lg modern-header">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <img class="logo floating" src="Imagenes/icon.jpg" alt="Logo Smiling" />
                <span>Smiling</span>
            </a>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="servicios.jsp">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="recomendaciones.jsp">Recomendaciones</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="nosotros.jsp">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contacto.jsp">Contacto</a>
                    </li>
                </ul>
                
                <div class="d-flex">
                    <a href="login.jsp" class="login-btn">
                        <i class="fas fa-user me-2"></i>Iniciar Sesión
                    </a>
                </div>
            </div>
        </div>
    </nav>

    <!-- Carrusel Hero -->
    <div id="heroCarousel" class="carousel slide hero-carousel" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2"></button>
        </div>
        
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://images.unsplash.com/photo-1559526324-593bc073d938?w=1920&h=1080&fit=crop&crop=center" alt="Clínica Dental Moderna">
                <div class="carousel-caption">
                    <h1 class="carousel-title">Tu Sonrisa es Nuestra Prioridad</h1>
                    <p class="carousel-subtitle">Tecnología avanzada y cuidado personalizado para una sonrisa perfecta</p>
                    <a href="servicios.jsp" class="carousel-btn">
                        <i class="fas fa-calendar-check me-2"></i>Reservar Cita
                    </a>
                </div>
            </div>
            
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1609840114035-3c981b782dfe?w=1920&h=1080&fit=crop&crop=center" alt="Equipo Dental Profesional">
                <div class="carousel-caption">
                    <h1 class="carousel-title">Profesionales Expertos</h1>
                    <p class="carousel-subtitle">Más de 10 años de experiencia cuidando tu salud dental</p>
                    <a href="nosotros.jsp" class="carousel-btn">
                        <i class="fas fa-users me-2"></i>Conoce al Equipo
                    </a>
                </div>
            </div>
            
            <div class="carousel-item">
                <img src="https://images.unsplash.com/photo-1576091160550-2173dba999ef?w=1920&h=1080&fit=crop&crop=center" alt="Tratamientos Avanzados">
                <div class="carousel-caption">
                    <h1 class="carousel-title">Tratamientos Innovadores</h1>
                    <p class="carousel-subtitle">Las últimas técnicas en odontología estética y restaurativa</p>
                    <a href="servicios.jsp" class="carousel-btn">
                        <i class="fas fa-tooth me-2"></i>Ver Servicios
                    </a>
                </div>
            </div>
        </div>
        
        <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
            <span class="carousel-control-next-icon"></span>
        </button>
    </div>

    <!-- Sección Creando Sonrisas -->
    <section class="content-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 fade-in-up">
                    <h2 class="section-title">Creando Sonrisas</h2>
                    <p class="section-text">
                        En Smiling queremos ayudarte a conseguir la sonrisa que siempre has deseado. 
                        Somos expertos en implantes y estética dental, y tenemos todo lo necesario para lograrlo.
                    </p>
                    <p class="section-text">
                        Nuestro enfoque personalizado garantiza que cada tratamiento se adapte perfectamente 
                        a tus necesidades específicas, utilizando las técnicas más avanzadas del mercado.
                    </p>
                    <a href="servicios.jsp" class="cta-btn">
                        <i class="fas fa-arrow-right me-2"></i>Descubre Nuestros Servicios
                    </a>
                </div>
                <div class="col-lg-6 fade-in-up" style="animation-delay: 0.3s;">
                    <div class="content-image">
                        <img src="https://images.unsplash.com/photo-1588776814546-1ffcf47267a5?w=600&h=400&fit=crop&crop=center" alt="Consulta Dental">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Sección de Estadísticas -->
    <section class="stats-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item fade-in-up">
                        <span class="stat-number">10+</span>
                        <div class="stat-label">Años de Experiencia</div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item fade-in-up" style="animation-delay: 0.2s;">
                        <span class="stat-number">2500+</span>
                        <div class="stat-label">Pacientes Satisfechos</div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item fade-in-up" style="animation-delay: 0.4s;">
                        <span class="stat-number">100%</span>
                        <div class="stat-label">Casos Exitosos</div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="stat-item fade-in-up" style="animation-delay: 0.6s;">
                        <span class="stat-number">24/7</span>
                        <div class="stat-label">Atención Online</div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Sección ¿Por qué Smiling? -->
    <section class="content-section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 fade-in-up">
                    <div class="content-image">
                        <img src="https://images.unsplash.com/photo-1609840114035-3c981b782dfe?w=600&h=400&fit=crop&crop=center" alt="Equipo de Doctores">
                    </div>
                </div>
                <div class="col-lg-6 fade-in-up" style="animation-delay: 0.3s;">
                    <h2 class="section-title">¿Por qué Smiling?</h2>
                    <p class="section-text">
                        Somos un equipo de odontólogos con más de 10 años de experiencia, 
                        ofreciendo confianza y tratamientos avanzados para la salud y estética dental.
                    </p>
                    <div class="row mt-4">
                        <div class="col-md-6 mb-3">
                            <div class="d-flex align-items-center">
                                <div class="service-icon me-3">
                                    <i class="fas fa-award"></i>
                                </div>
                                <div>
                                    <h6 class="mb-1">Certificados</h6>
                                    <small class="text-muted">Profesionales acreditados</small>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <div class="d-flex align-items-center">
                                <div class="service-icon me-3">
                                    <i class="fas fa-microscope"></i>
                                </div>
                                <div>
                                    <h6 class="mb-1">Tecnología</h6>
                                    <small class="text-muted">Equipos de última generación</small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- CTA Section -->
    <section class="cta-section">
        <div class="container">
            <div class="fade-in-up">
                <h2 class="cta-title">¿Listo para tu Nueva Sonrisa?</h2>
                <p class="cta-text">
                    Agenda tu consulta gratuita y descubre cómo podemos transformar tu sonrisa 
                    con nuestros tratamientos personalizados.
                </p>
                <a href="contacto.jsp" class="cta-btn">
                    <i class="fas fa-phone me-2"></i>Contactar Ahora
                </a>
            </div>
        </div>
    </section>

    <!-- Footer Moderno -->
    <footer class="modern-footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 mb-4">
                    <div class="footer-section">
                        <h5><i class="fas fa-tooth me-2"></i>Odontología Smiling</h5>
                        <p class="text-muted">
                            Cuidamos tu sonrisa con la mejor tecnología y profesionales especializados.
                        </p>
                        <div class="social-icons">
                            <a href="https://www.facebook.com/" class="social-icon" target="_blank">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="https://www.instagram.com/" class="social-icon" target="_blank">
                                <i class="fab fa-instagram"></i>
                            </a>
                            <a href="https://api.whatsapp.com/send?phone=921564897" class="social-icon" target="_blank">
                                <i class="fab fa-whatsapp"></i>
                            </a>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-2 col-md-6 mb-4">
                    <div class="footer-section">
                        <h5>Enlaces</h5>
                        <a href="index.jsp" class="footer-link">Inicio</a>
                        <a href="servicios.jsp" class="footer-link">Servicios</a>
                        <a href="nosotros.jsp" class="footer-link">Nosotros</a>
                        <a href="contacto.jsp" class="footer-link">Contacto</a>
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="footer-section">
                        <h5>Contacto</h5>
                        <a href="https://maps.app.goo.gl/NJdmPbDBHyVyxMNt9" class="footer-link" target="_blank">
                            <i class="fas fa-map-marker-alt me-2"></i>Calle Medrano Silva 401
                        </a>
                        <a href="mailto:odonto.smiling@gmail.com" class="footer-link">
                            <i class="fas fa-envelope me-2"></i>odonto.smiling@gmail.com
                        </a>
                        <a href="https://api.whatsapp.com/send?phone=921564897" class="footer-link" target="_blank">
                            <i class="fas fa-phone me-2"></i>+51 921564897
                        </a>
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 mb-4">
                    <div class="footer-section">
                        <h5>Horarios</h5>
                        <p class="text-muted small">
                            <strong>Lunes - Viernes:</strong><br>
                            8:00 AM - 7:00 PM<br><br>
                            <strong>Sábados:</strong><br>
                            9:00 AM - 2:00 PM
                        </p>
                    </div>
                </div>
            </div>
            
            <hr class="my-4" style="border-color: #334155;">
            <div class="text-center">
                <p class="text-muted small mb-0">
                    © 2024 Odontología Smiling. Todos los derechos reservados.
                </p>
            </div>
        </div>
    </footer>

    <script>
        // Animación de contadores
        function animateCounters() {
            const counters = document.querySelectorAll('.stat-number');
            
            counters.forEach(counter => {
                const target = parseInt(counter.textContent);
                const increment = target / 50;
                let current = 0;
                
                const timer = setInterval(() => {
                    current += increment;
                    if (current >= target) {
                        counter.textContent = target + (counter.textContent.includes('+') ? '+' : '') + (counter.textContent.includes('%') ? '%' : '')