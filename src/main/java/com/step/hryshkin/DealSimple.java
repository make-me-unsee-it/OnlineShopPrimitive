package com.step.hryshkin;

import java.math.BigDecimal;
import java.util.ArrayList;

public class DealSimple {
    public static final ArrayList<String> GOODS = goodsList();
    public static final ArrayList<String> GOOD_PRICES = goodPrices();
    public static ArrayList<String> chosenGoods = new ArrayList<>();
    public static BigDecimal currentUserSummary = new BigDecimal("0");

    private static ArrayList<String> goodsList() {
        ArrayList<String> goods = new ArrayList<>();
        goods.add("iphone 10, 499.9$");
        goods.add("samsung galaxy c5, 299.9$");
        goods.add("google pixel 4, 200.0$");
        goods.add("nokia 1100, 20.0$");
        return goods;
    }

    private static ArrayList<String> goodPrices() {
        ArrayList<String> goods = new ArrayList<>();
        goods.add("499.9");
        goods.add("299.9");
        goods.add("200.0");
        goods.add("20.0");
        return goods;
    }

    public static void clearBasket(){
        chosenGoods = new ArrayList<>();
        currentUserSummary = new BigDecimal("0");
    }
}
