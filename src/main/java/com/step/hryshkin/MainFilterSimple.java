package com.step.hryshkin;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class MainFilterSimple implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        checkUser(servletResponse, request);
        filterChain.doFilter(request, servletResponse);
    }

    private void checkUser(ServletResponse servletResponse, HttpServletRequest request) throws ServletException, IOException {
        if (request.getSession().getAttribute("username") == null) {
            if (request.getParameter("username") != null) {
                request.getSession().setAttribute("username", request.getParameter("username"));
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/401.jsp");
                requestDispatcher.forward(request, servletResponse);
            }
        }
    }

    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

    public static void stopFilter(HttpServletRequest req) {
        req.getSession().invalidate();
    }
}
