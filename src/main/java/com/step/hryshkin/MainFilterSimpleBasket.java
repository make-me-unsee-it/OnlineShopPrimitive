package com.step.hryshkin;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.math.BigDecimal;

public class MainFilterSimpleBasket implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
                         FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        addGoodToBasket(request);
        filterChain.doFilter(request, servletResponse);
    }

    private void addGoodToBasket(HttpServletRequest req) {
        if (req.getParameterValues("select") != null) {
            for (String param: req.getParameterValues("select")) {
                int paramInt = Integer.parseInt(param);
                DealSimple.chosenGoods.add(DealSimple.GOODS.get(paramInt));
                DealSimple.currentUserSummary = DealSimple.currentUserSummary
                        .add(new BigDecimal(DealSimple.GOOD_PRICES.get(paramInt)));
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
