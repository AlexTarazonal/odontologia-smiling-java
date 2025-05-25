<%-- 
    Document   : index
    Created on : 26 abr. 2025, 4:51:16 p. m.
    Author     : Estudiante
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <title>Login - Smiling</title>
        <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    
        <link rel="stylesheet" href="Estilos/estiloslogin.css">
        <link rel="shortcut icon" href="Imagenes/icon.jpg">
        
        <!--FUENTES-->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jua&family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    </head>
    
    <style>
        :root {
            --primary-blue: #327ED4;
            --light-blue: #B9D4DD;
            --dark-blue: #87AAB5;
            --text-dark: #2c3e50;
            --text-light: #6c757d;
            --bg-card: rgba(255, 255, 255, 0.95);
            --shadow-light: 0 8px 32px rgba(0, 0, 0, 0.1);
            --shadow-hover: 0 12px 40px rgba(0, 0, 0, 0.15);
        }

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            min-height: 100vh;
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            background-attachment: fixed;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            position: relative;
            overflow-x: hidden;
        }

        /* Animated background particles */
        body::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='0.05'%3E%3Ccircle cx='30' cy='30' r='4'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E") repeat;
            animation: float 20s ease-in-out infinite;
            pointer-events: none;
        }

        @keyframes float {
            0%, 100% { transform: translateY(0px); }
            50% { transform: translateY(-20px); }
        }

        .login-container {
            width: 100%;
            max-width: 450px;
            position: relative;
            z-index: 1;
        }

        .logo-section {
            text-align: center;
            margin-bottom: 2rem;
            animation: slideDown 0.8s ease-out;
        }

        .logo-link {
            text-decoration: none;
            display: inline-flex;
            align-items: center;
            gap: 15px;
            transition: all 0.3s ease;
        }

        .logo-link:hover {
            transform: translateY(-2px);
        }

        .logo-img {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            object-fit: cover;
            box-shadow: var(--shadow-light);
            transition: all 0.3s ease;
        }

        .logo-link:hover .logo-img {
            box-shadow: var(--shadow-hover);
            transform: scale(1.05);
        }

        .logo-text {
            font-family: 'Jua', sans-serif;
            font-size: 3rem;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
            margin: 0;
        }

        .login-card {
            background: var(--bg-card);
            backdrop-filter: blur(20px);
            border: 1px solid rgba(255, 255, 255, 0.2);
            border-radius: 24px;
            padding: 3rem 2.5rem;
            box-shadow: var(--shadow-light);
            animation: slideUp 0.8s ease-out 0.2s both;
            position: relative;
            overflow: hidden;
        }

        .login-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, var(--primary-blue), var(--light-blue), var(--primary-blue));
            background-size: 200% 100%;
            animation: shimmer 2s ease-in-out infinite;
        }

        @keyframes shimmer {
            0% { background-position: -200% 0; }
            100% { background-position: 200% 0; }
        }

        .login-title {
            text-align: center;
            margin-bottom: 2rem;
            color: var(--text-dark);
            font-weight: 600;
            font-size: 1.75rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
            position: relative;
        }

        .form-label {
            display: block;
            margin-bottom: 0.5rem;
            color: var(--text-dark);
            font-weight: 500;
            font-size: 0.95rem;
        }

        .form-control-modern {
            width: 100%;
            padding: 1rem 1.25rem;
            padding-left: 3rem;
            border: 2px solid #e9ecef;
            border-radius: 12px;
            font-size: 1rem;
            transition: all 0.3s ease;
            background: rgba(255, 255, 255, 0.8);
            color: var(--text-dark);
        }

        .form-control-modern:focus {
            outline: none;
            border-color: var(--primary-blue);
            box-shadow: 0 0 0 3px rgba(50, 126, 212, 0.1);
            background: white;
            transform: translateY(-1px);
        }

        .input-icon {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: var(--text-light);
            font-size: 1.1rem;
            transition: all 0.3s ease;
            pointer-events: none;
        }

        .form-control-modern:focus + .input-icon {
            color: var(--primary-blue);
        }

        .btn-login {
            width: 100%;
            padding: 1rem 2rem;
            background: linear-gradient(135deg, var(--primary-blue), #4a90e2);
            border: none;
            border-radius: 12px;
            color: white;
            font-size: 1.1rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            transition: all 0.3s ease;
            position: relative;
            overflow: hidden;
            margin-top: 1rem;
        }

        .btn-login::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
            transition: left 0.5s;
        }

        .btn-login:hover::before {
            left: 100%;
        }

        .btn-login:hover {
            background: linear-gradient(135deg, #2563eb, var(--primary-blue));
            transform: translateY(-2px);
            box-shadow: 0 8px 25px rgba(50, 126, 212, 0.3);
        }

        .btn-login:active {
            transform: translateY(0);
        }

        .forgot-password {
            text-align: center;
            margin-top: 1.5rem;
        }

        .forgot-password a {
            color: var(--primary-blue);
            text-decoration: none;
            font-size: 0.9rem;
            transition: all 0.3s ease;
        }

        .forgot-password a:hover {
            color: #2563eb;
            text-decoration: underline;
        }

        /* Animations */
        @keyframes slideDown {
            from {
                opacity: 0;
                transform: translateY(-30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(30px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        /* Responsive design */
        @media (max-width: 576px) {
            .login-container {
                max-width: 100%;
                margin: 0 10px;
            }
            
            .login-card {
                padding: 2rem 1.5rem;
            }
            
            .logo-text {
                font-size: 2.5rem;
            }
            
            .logo-img {
                width: 60px;
                height: 60px;
            }
        }

        /* Loading animation for form submission */
        .btn-login.loading {
            pointer-events: none;
            opacity: 0.8;
        }

        .btn-login.loading::after {
            content: '';
            position: absolute;
            width: 20px;
            height: 20px;
            top: 50%;
            left: 50%;
            margin-left: -10px;
            margin-top: -10px;
            border: 2px solid transparent;
            border-top: 2px solid white;
            border-radius: 50%;
            animation: spin 1s linear infinite;
        }

        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
    </style>

    <body>
        <div class="login-container">
            <!-- Logo Section -->
            <div class="logo-section">
                <a href="index.jsp" class="logo-link">
                    <img src="Imagenes/iconL.jpg" alt="Logo" class="logo-img">
                    <h1 class="logo-text">Smiling</h1>
                </a>
            </div>

            <!-- Login Card -->
            <div class="login-card">
                <h2 class="login-title">Iniciar Sesión</h2>
                
                <form action="valida.jsp" id="loginForm">
                    <div class="form-group">
                        <label class="form-label" for="username">Usuario</label>
                        <div style="position: relative;">
                            <input 
                                type="text" 
                                name="usr" 
                                id="username"
                                class="form-control-modern" 
                                required="true"
                                placeholder="Ingresa tu usuario"
                            >
                            <i class="fas fa-user input-icon"></i>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="password">Contraseña</label>
                        <div style="position: relative;">
                            <input 
                                type="password" 
                                name="psw" 
                                id="password"
                                class="form-control-modern" 
                                required="true"
                                placeholder="Ingresa tu contraseña"
                            >
                            <i class="fas fa-lock input-icon"></i>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-login" id="loginBtn">
                        <i class="fas fa-sign-in-alt me-2"></i>
                        Iniciar Sesión
                    </button>
                </form>

               
            </div>
        </div>

        <script>
            // Add loading animation on form submit
            document.getElementById('loginForm').addEventListener('submit', function() {
                const btn = document.getElementById('loginBtn');
                btn.classList.add('loading');
                btn.innerHTML = 'Iniciando...';
                
                // Remove loading state after 3 seconds (in case of slow response)
                setTimeout(() => {
                    btn.classList.remove('loading');
                    btn.innerHTML = '<i class="fas fa-sign-in-alt me-2"></i>Iniciar Sesión';
                }, 3000);
            });

            // Add focus animations
            const inputs = document.querySelectorAll('.form-control-modern');
            inputs.forEach(input => {
                input.addEventListener('focus', function() {
                    this.parentElement.style.transform = 'scale(1.02)';
                });
                
                input.addEventListener('blur', function() {
                    this.parentElement.style.transform = 'scale(1)';
                });
            });
        </script>
    </body>
</html>