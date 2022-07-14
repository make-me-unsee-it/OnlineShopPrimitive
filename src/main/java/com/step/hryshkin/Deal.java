package com.step.hryshkin;

import java.util.ArrayList;

public class Deal {
    public static final ArrayList<String> GOODS = goodsList();
    public static ArrayList<String> chosenGoods = new ArrayList<>();

    private static ArrayList<String> goodsList() {
        ArrayList<String> goods = new ArrayList<>();
        goods.add("iphone 10, 499.9$");
        goods.add("samsung galaxy c5, 299.9$");
        goods.add("google pixel 4, 200.0$");
        goods.add("nokia 1100, 20.0$");
        return goods;
    }

    public static void closeDeal() {
        chosenGoods = new ArrayList<>();
    }
}
