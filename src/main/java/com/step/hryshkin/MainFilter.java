package com.step.hryshkin;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class MainFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest) servletRequest;

        if (request.getSession().getAttribute("check") == null) {
            if (request.getParameter("check") != null) {
                request.getSession().setAttribute("check", request.getParameter("check"));
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/cancel_page.jsp");
                requestDispatcher.forward(request, servletResponse);
            }
        }
        filterChain.doFilter(request, servletResponse);
    }

    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void destroy() {
    }

    public static void stopFilter(HttpServletRequest req)  {
        req.getSession().invalidate();
    }
}
