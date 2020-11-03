package com.wwj.order.dao;

import com.wwj.order.bean.Cuisine;
import com.wwj.order.bean.CuisineExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CuisineMapper {
    long countByExample(CuisineExample example);

    int deleteByExample(CuisineExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Cuisine record);

    int insertSelective(Cuisine record);

    List<Cuisine> selectByExample(CuisineExample example);

    Cuisine selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Cuisine record, @Param("example") CuisineExample example);

    int updateByExample(@Param("record") Cuisine record, @Param("example") CuisineExample example);

    int updateByPrimaryKeySelective(Cuisine record);

    int updateByPrimaryKey(Cuisine record);
}