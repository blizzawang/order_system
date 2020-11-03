package com.wwj.order.dao;

import com.wwj.order.bean.DiningTable;
import com.wwj.order.bean.DiningTableExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface DiningTableMapper {
    long countByExample(DiningTableExample example);

    int deleteByExample(DiningTableExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DiningTable record);

    int insertSelective(DiningTable record);

    List<DiningTable> selectByExample(DiningTableExample example);

    DiningTable selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DiningTable record, @Param("example") DiningTableExample example);

    int updateByExample(@Param("record") DiningTable record, @Param("example") DiningTableExample example);

    int updateByPrimaryKeySelective(DiningTable record);

    int updateByPrimaryKey(DiningTable record);

    List<DiningTable> selectTableByKeyword(String keyword);
}