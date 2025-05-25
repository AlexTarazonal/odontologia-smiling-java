<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Odontología Smiling - Servicios</title>
    
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
            background: linear-gradient(135deg, #f8fafc 0%, #e2e8f0 100%);
            min-height: 100vh;
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

        /* Hero Section */
        .hero-section {
            background: linear-gradient(135deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            color: white;
            padding: 80px 0;
            margin-bottom: 80px;
            position: relative;
            overflow: hidden;
        }

        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1000 1000"><polygon fill="rgba(255,255,255,0.05)" points="0,1000 1000,0 1000,1000"/></svg>');
        }

        .hero-content {
            position: relative;
            z-index: 2;
            text-align: center;
        }

        .hero-title {
            font-size: 3.5rem;
            font-weight: 700;
            margin-bottom: 24px;
            animation: fadeInUp 1s ease-out;
        }

        .hero-subtitle {
            font-size: 1.3rem;
            opacity: 0.9;
            max-width: 600px;
            margin: 0 auto;
            animation: fadeInUp 1s ease-out 0.2s both;
        }

        /* Cards de Servicios */
        .services-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .service-card {
            background: var(--white);
            border-radius: var(--border-radius);
            overflow: hidden;
            box-shadow: var(--shadow);
            transition: var(--transition);
            height: 100%;
            border: none;
            position: relative;
        }

        .service-card:hover {
            transform: translateY(-8px);
            box-shadow: var(--shadow-lg);
        }

        .service-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-color), var(--secondary-color));
            transform: scaleX(0);
            transition: var(--transition);
        }

        .service-card:hover::before {
            transform: scaleX(1);
        }

        .service-image {
            height: 250px;
            object-fit: cover;
            transition: var(--transition);
        }

        .service-card:hover .service-image {
            transform: scale(1.05);
        }

        .card-body {
            padding: 30px;
        }

        .service-title {
            font-size: 1.4rem;
            font-weight: 600;
            color: var(--text-dark);
            margin-bottom: 16px;
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .service-icon {
            width: 40px;
            height: 40px;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 1.1rem;
        }

        .service-description {
            color: var(--text-light);
            line-height: 1.7;
            font-size: 1rem;
        }

        /* Footer Moderno */
        .modern-footer {
            background: linear-gradient(135deg, var(--text-dark) 0%, #0f172a 100%);
            color: white;
            padding: 60px 0 30px;
            margin-top: 100px;
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

        /* Responsive */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            
            .hero-subtitle {
                font-size: 1.1rem;
            }
            
            .navbar-brand {
                font-size: 1.3rem;
            }
            
            .service-title {
                font-size: 1.2rem;
            }
        }

        /* Efectos adicionales */
        .floating {
            animation: floating 3s ease-in-out infinite;
        }

        @keyframes floating {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-10px); }
        }

        .pulse {
            animation: pulse 2s infinite;
        }

        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }
    </style>
</head>

<body>
    <!-- Header Moderno -->
    <nav class="navbar navbar-expand-lg modern-header">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">
                <img class="logo floating" style="display: inline-block;" src="Imagenes/icon.jpg" alt="Logo Smilling"/>
                <span>Smiling</span>
            </a>
            
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="servicios.jsp">Servicios</a>
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

    <!-- Hero Section -->
    <section class="hero-section">
        <div class="container">
            <div class="hero-content">
                <h1 class="hero-title">Nuestros Servicios</h1>
                <p class="hero-subtitle">
                    Póngale comienzo a una sonrisa saludable y radiante con nuestros servicios especializados
                </p>
            </div>
        </div>
    </section>

    <!-- Servicios -->
    <section class="services-container">
        <div class="row g-4">
            <div class="col-lg-4 col-md-6">
                <div class="card service-card fade-in-up">
                    <img src="Imagenes/servicio1.jpg" class="card-img-top service-image" alt="Salud Bucal">
                    <div class="card-body">
                        <h5 class="service-title">
                            <div class="service-icon">
                                <i class="fas fa-tooth"></i>
                            </div>
                            Visualiza tu Salud Bucal
                        </h5>
                        <p class="service-description">
                            Visualiza tu salud dental de forma interactiva con nuestro odontograma en línea. 
                            Sistema avanzado de diagnóstico digital para un seguimiento preciso de tu salud bucal.
                        </p>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-4 col-md-6">
                <div class="card service-card fade-in-up" style="animation-delay: 0.2s;">
                    <img src="Imagenes/servicio2.jpg" class="card-img-top service-image" alt="Recetas Médicas">
                    <div class="card-body">
                        <h5 class="service-title">
                            <div class="service-icon">
                                <i class="fas fa-prescription-bottle-alt"></i>
                            </div>
                            Recetas Médicas
                        </h5>
                        <p class="service-description">
                            Accede fácilmente a tus recetas médicas en línea y gestiona tu tratamiento de manera 
                            conveniente desde cualquier lugar. Sistema seguro y disponible 24/7.
                        </p>
                    </div>
                </div>
            </div>
            
            <div class="col-lg-4 col-md-6">
                <div class="card service-card fade-in-up" style="animation-delay: 0.4s;">
                    <img src="Imagenes/servicio3.jpg" class="card-img-top service-image" alt="Citas Médicas">
                    <div class="card-body">
                        <h5 class="service-title">
                            <div class="service-icon">
                                <i class="fas fa-calendar-check"></i>
                            </div>
                            Citas Médicas
                        </h5>
                        <p class="service-description">
                            Revisa tu agenda de citas o agenda una nueva cita en línea. Nuestro equipo de expertos 
                            en salud está disponible para brindarte el mejor cuidado dental posible.
                        </p>
                    </div>
                </div>
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
        // Efecto de scroll suave para la navegación
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                document.querySelector(this.getAttribute('href')).scrollIntoView({
                    behavior: 'smooth'
                });
            });
        });

        // Animación de entrada para las cards
        const observerOptions = {
            threshold: 0.1,
            rootMargin: '0px 0px -50px 0px'
        };

        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = '1';
                    entry.target.style.transform = 'translateY(0)';
                }
            });
        }, observerOptions);

        document.querySelectorAll('.fade-in-up').forEach(el => {
            el.style.opacity = '0';
            el.style.transform = 'translateY(30px)';
            el.style.transition = 'all 0.8s ease-out';
            observer.observe(el);
        });

        // Efecto parallax suave en el header
        window.addEventListener('scroll', () => {
            const scrolled = window.pageYOffset;
            const header = document.querySelector('.modern-header');
            
            if (scrolled > 100) {
                header.style.background = 'rgba(255, 255, 255, 0.98)';
                header.style.boxShadow = '0 8px 32px rgba(0, 0, 0, 0.1)';
            } else {
                header.style.background = 'rgba(255, 255, 255, 0.95)';
                header.style.boxShadow = '0 4px 6px -1px rgba(0, 0, 0, 0.1)';
            }
        });
    </script>
</body>
</html>