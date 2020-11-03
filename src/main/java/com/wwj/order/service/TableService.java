package com.wwj.order.service;

import com.github.pagehelper.PageInfo;
import com.wwj.order.bean.Cuisine;
import com.wwj.order.bean.DiningTable;
import com.wwj.order.bean.Food;

public interface TableService {

    PageInfo<DiningTable> getPageInfoFromDiningTable(Integer pagNum,Integer pageSize,String keyword);

    PageInfo<Food> getPageInfoFromFood(Integer pagNum, Integer pageSize, String keyword);

    PageInfo<Cuisine> getPageInfoFromCuisine(Integer pagNum, Integer pageSize, String keyword);
}
