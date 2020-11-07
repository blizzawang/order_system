package com.wwj.order.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wwj.order.bean.Cuisine;
import com.wwj.order.bean.DiningTable;
import com.wwj.order.bean.Food;
import com.wwj.order.dao.CuisineMapper;
import com.wwj.order.dao.DiningTableMapper;
import com.wwj.order.dao.FoodMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TableImpl implements TableService{

    @Autowired
    private DiningTableMapper diningTableMapper;

    @Autowired
    private FoodMapper foodMapper;

    @Autowired
    private CuisineMapper cuisineMapper;

    /**
     * 对餐桌数据进行分页查询
     * @param pagNum
     * @param pageSize
     * @param keyword
     * @return
     */
    @Override
    public PageInfo<DiningTable> getPageInfoFromDiningTable(Integer pagNum, Integer pageSize, String keyword) {
        //开启分页功能
        PageHelper.startPage(pagNum,pageSize);
        List<DiningTable> diningTableList = diningTableMapper.selectTableByKeyword(keyword);
        //封装PageInfo
        PageInfo<DiningTable> pageInfo = new PageInfo<>(diningTableList);
        return pageInfo;
    }

    /**
     * 对菜品数据进行分页显示
     * @param pagNum
     * @param pageSize
     * @param keyword
     * @return
     */
    @Override
    public PageInfo<Food> getPageInfoFromFood(Integer pagNum, Integer pageSize, String keyword) {
        //开启分页功能
        PageHelper.startPage(pagNum,pageSize);
        List<Food> foodList = foodMapper.selectFoodByKeyword(keyword);
        //封装PageInfo
        PageInfo<Food> pageInfo = new PageInfo<>(foodList);
        return pageInfo;
    }

    /**
     * 对菜系数据进行分页显示
     * @param pagNum
     * @param pageSize
     * @param keyword
     * @return
     */
    @Override
    public PageInfo<Cuisine> getPageInfoFromCuisine(Integer pagNum, Integer pageSize, String keyword) {
        return null;
    }

    /**
     * 保存新增的菜品数据
     */
    @Override
    public void saveFood(Food food) {
        foodMapper.insert(food);
    }

    /**
     * 根据id删除菜品
     * @param delete_id
     */
    @Override
    public void deleteFoodById(Integer delete_id) {
        foodMapper.deleteByPrimaryKey(delete_id);
    }
}
