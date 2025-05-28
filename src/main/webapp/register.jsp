<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Registro - Smiling</title>
        <script src="https://kit.fontawesome.com/7c1fcee376.js" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

        <link rel="stylesheet" href="Estilos/estiloslogin.css">
        <link rel="shortcut icon" href="Imagenes/icon.jpg">

        <!-- FUENTES -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Jua&family=Inter:wght@300;400;500;600;700&display=swap"
              rel="stylesheet">
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
            max-width: 480px; /* Slightly wider for register form */
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

        /* Password strength indicator */
        .password-strength {
            margin-top: 0.5rem;
            height: 4px;
            background: #e9ecef;
            border-radius: 2px;
            overflow: hidden;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .password-strength.active {
            opacity: 1;
        }

        .password-strength-bar {
            height: 100%;
            width: 0%;
            transition: all 0.3s ease;
            border-radius: 2px;
        }

        .strength-weak { background: #dc3545; width: 25%; }
        .strength-fair { background: #fd7e14; width: 50%; }
        .strength-good { background: #ffc107; width: 75%; }
        .strength-strong { background: #28a745; width: 100%; }

        .password-match {
            font-size: 0.85rem;
            margin-top: 0.25rem;
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .password-match.show {
            opacity: 1;
        }

        .password-match.match {
            color: #28a745;
        }

        .password-match.no-match {
            color: #dc3545;
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

        /* Form validation styles */
        .form-control-modern.is-valid {
            border-color: #28a745;
        }

        .form-control-modern.is-invalid {
            border-color: #dc3545;
        }

        .form-control-modern.is-valid + .input-icon {
            color: #28a745;
        }

        .form-control-modern.is-invalid + .input-icon {
            color: #dc3545;
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

            <!-- Register Card -->
            <div class="login-card">
                <h2 class="login-title">Crear Cuenta</h2>

                <% String err = (String) request.getAttribute("error");
            if (err != null) {%>
                <div class="alert alert-danger"><%= err%></div>
                <% }%>

                <form action="${pageContext.request.contextPath}/register" method="post" id="registerForm">
                    <div class="form-group">
                        <label class="form-label" for="fullName">Nombre Completo</label>
                        <div style="position: relative;">
                            <input type="text"
                                   name="fullName"
                                   id="fullName"
                                   class="form-control-modern"
                                   required
                                   placeholder="Ingresa tu nombre completo">
                            <i class="fas fa-user input-icon"></i>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="email">Correo Electrónico</label>
                        <div style="position: relative;">
                            <input type="email"
                                   name="email"
                                   id="email"
                                   class="form-control-modern"
                                   required
                                   placeholder="tucorreo@dominio.com">
                            <i class="fas fa-envelope input-icon"></i>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="password">Contraseña</label>
                        <div style="position: relative;">
                            <input type="password"
                                   name="password"
                                   id="password"
                                   class="form-control-modern"
                                   required
                                   placeholder="Crea una contraseña">
                            <i class="fas fa-lock input-icon"></i>
                        </div>
                        <div class="password-strength" id="passwordStrength">
                            <div class="password-strength-bar" id="passwordStrengthBar"></div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="confirmPassword">Confirmar Contraseña</label>
                        <div style="position: relative;">
                            <input type="password"
                                   name="confirmPassword"
                                   id="confirmPassword"
                                   class="form-control-modern"
                                   required
                                   placeholder="Repite tu contraseña">
                            <i class="fas fa-lock input-icon"></i>
                        </div>
                        <div class="password-match" id="passwordMatch"></div>
                    </div>

                    <button type="submit" class="btn btn-login" id="registerBtn">
                        <i class="fas fa-user-plus me-2"></i>
                        Registrarse
                    </button>
                </form>

                <div class="forgot-password" style="margin-top:1.5rem;">
                    ¿Ya tienes cuenta? <a href="login.jsp">Inicia Sesión</a>
                </div>
            </div>
        </div>

        <script>
            // Password strength checker
            function checkPasswordStrength(password) {
                const strengthBar = document.getElementById('passwordStrengthBar');
                const strengthContainer = document.getElementById('passwordStrength');
                
                if (password.length === 0) {
                    strengthContainer.classList.remove('active');
                    return;
                }
                
                strengthContainer.classList.add('active');
                
                let strength = 0;
                if (password.length >= 8) strength++;
                if (/[a-z]/.test(password)) strength++;
                if (/[A-Z]/.test(password)) strength++;
                if (/[0-9]/.test(password)) strength++;
                if (/[^A-Za-z0-9]/.test(password)) strength++;
                
                strengthBar.className = 'password-strength-bar';
                
                if (strength <= 2) {
                    strengthBar.classList.add('strength-weak');
                } else if (strength === 3) {
                    strengthBar.classList.add('strength-fair');
                } else if (strength === 4) {
                    strengthBar.classList.add('strength-good');
                } else {
                    strengthBar.classList.add('strength-strong');
                }
            }

            // Password match checker
            function checkPasswordMatch() {
                const password = document.getElementById('password').value;
                const confirmPassword = document.getElementById('confirmPassword').value;
                const matchIndicator = document.getElementById('passwordMatch');
                
                if (confirmPassword.length === 0) {
                    matchIndicator.classList.remove('show');
                    return;
                }
                
                matchIndicator.classList.add('show');
                
                if (password === confirmPassword) {
                    matchIndicator.textContent = '✓ Las contraseñas coinciden';
                    matchIndicator.className = 'password-match show match';
                    document.getElementById('confirmPassword').classList.add('is-valid');
                    document.getElementById('confirmPassword').classList.remove('is-invalid');
                } else {
                    matchIndicator.textContent = '✗ Las contraseñas no coinciden';
                    matchIndicator.className = 'password-match show no-match';
                    document.getElementById('confirmPassword').classList.add('is-invalid');
                    document.getElementById('confirmPassword').classList.remove('is-valid');
                }
            }

            // Email validation
            function validateEmail() {
                const email = document.getElementById('email');
                const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                
                if (email.value.length > 0) {
                    if (emailPattern.test(email.value)) {
                        email.classList.add('is-valid');
                        email.classList.remove('is-invalid');
                    } else {
                        email.classList.add('is-invalid');
                        email.classList.remove('is-valid');
                    }
                } else {
                    email.classList.remove('is-valid', 'is-invalid');
                }
            }

            // Event listeners
            document.getElementById('password').addEventListener('input', function() {
                checkPasswordStrength(this.value);
                checkPasswordMatch();
            });

            document.getElementById('confirmPassword').addEventListener('input', checkPasswordMatch);
            document.getElementById('email').addEventListener('input', validateEmail);

            // Form submission with validation
            document.getElementById('registerForm').addEventListener('submit', function(e) {
                const password = document.getElementById('password').value;
                const confirmPassword = document.getElementById('confirmPassword').value;
                
                if (password !== confirmPassword) {
                    e.preventDefault();
                    alert('Las contraseñas no coinciden');
                    return;
                }
                
                const btn = document.getElementById('registerBtn');
                btn.classList.add('loading');
                btn.innerHTML = 'Registrando...';

                setTimeout(() => {
                    btn.classList.remove('loading');
                    btn.innerHTML = '<i class="fas fa-user-plus me-2"></i>Registrarse';
                }, 3000);
            });

            // Focus animations for inputs
            document.querySelectorAll('.form-control-modern').forEach(input => {
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