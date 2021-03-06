package com.step.hryshkin;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.math.BigDecimal;

public class MainFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        checkFlag(servletResponse, request);
        checkUser(servletResponse, request);
        addGoodToBasket(request);
        filterChain.doFilter(request, servletResponse);
    }

    private void checkFlag(ServletResponse servletResponse, HttpServletRequest request) throws ServletException, IOException {
        if (request.getSession().getAttribute("check") == null) {
            if (request.getParameter("check") != null) {
                request.getSession().setAttribute("check", request.getParameter("check"));
            } else {
                RequestDispatcher requestDispatcher = request.getRequestDispatcher("/cancel_page.jsp");
                requestDispatcher.forward(request, servletResponse);
            }
        }
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

    private void addGoodToBasket(HttpServletRequest req) {
        if (req.getParameter("select") != null) {
            int currentGoodId = Integer.parseInt(req.getParameter("select"));
            Deal.chosenGoods.add(Deal.GOODS.get(currentGoodId));
            Deal.currentUserSummary = Deal.currentUserSummary.add(new BigDecimal(Deal.GOOD_PRICES.get(currentGoodId)));
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
