package com.mycompany.test_1.controllers;

import com.mycompany.test_1.models.Usuario;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "AuthFilter", urlPatterns = {"/*"})
public class AuthFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // No initialization needed
    }

    @Override
    public void doFilter(ServletRequest req,
                         ServletResponse res,
                         FilterChain chain)
            throws IOException, ServletException {

        HttpServletRequest  request  = (HttpServletRequest) req;
        HttpServletResponse response = (HttpServletResponse) res;

        // Extrae la ruta relativa dentro de la app
        String uri = request.getRequestURI()
                            .substring(request.getContextPath().length());

        // Define las rutas públicas (no requieren login)
        boolean publicPath =
               uri.equals("/")                   // raíz
            || uri.equals("/index.jsp")           // welcome file
            || uri.equals("/login")
            || uri.equals("/login.jsp")
            || uri.equals("/logout")
            || uri.equals("/forbidden.jsp")
            || uri.startsWith("/css/")
            || uri.equals("/register.jsp")
            || uri.startsWith("/js/")
            || uri.startsWith("/images/")
            || uri.startsWith("/Estilos/")
            || uri.startsWith("/Imagenes/")
            || uri.endsWith(".ico");

        // Revisa si existe sesión y atributo "user"
        HttpSession session = request.getSession(false);
        boolean loggedIn = (session != null && session.getAttribute("user") != null);

        // 1) Si no está logueado y la ruta NO es pública → redirigir a forbidden.jsp
        if (!loggedIn && !publicPath) {
            response.sendRedirect(request.getContextPath() + "/forbidden.jsp");
            return;
        }

        // 2) Si está logueado y accede a ruta privada → verifica rol
        if (loggedIn && !publicPath) {
            Usuario user = (Usuario) session.getAttribute("user");
            String role = user.getTipo().toLowerCase();

            if (uri.startsWith("/Admin") && !"administrador".equals(role)) {
                response.sendRedirect(request.getContextPath() + "/forbidden.jsp");
                return;
            }
            if (uri.startsWith("/Doctor") && !"doctor".equals(role)) {
                response.sendRedirect(request.getContextPath() + "/forbidden.jsp");
                return;
            }
            if (uri.startsWith("/Usuario") && !"paciente".equals(role)) {
                response.sendRedirect(request.getContextPath() + "/forbidden.jsp");
                return;
            }
            if (uri.startsWith("/Recepcionista") && !"recepcionista".equals(role)) {
                response.sendRedirect(request.getContextPath() + "/forbidden.jsp");
                return;
            }
        }

        // 3) Todo OK: continúa con la petición
        chain.doFilter(req, res);
    }

    @Override
    public void destroy() {
        // No cleanup needed
    }
}
