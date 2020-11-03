package com.wwj.order.mvc.controller;

import com.github.pagehelper.PageInfo;
import com.wwj.order.bean.DiningTable;
import com.wwj.order.bean.Food;
import com.wwj.order.service.TableService;
import com.wwj.order.util.SystemConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 表格控制器，负责显示所有表格数据
 */
@Controller
public class TableController {

    @Autowired
    private TableService tableService;

    /**
     * 餐桌数据显示
     *
     * @return
     */
    @RequestMapping("/index/to/table")
    public String showDiningTable(
            @RequestParam(value = "keyword", defaultValue = "") String keyword,
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
            ModelMap modelMap
    ) {
        //封装餐桌数据
        PageInfo<DiningTable> pageInfo = tableService.getPageInfoFromDiningTable(pageNum, pageSize, keyword);
        modelMap.addAttribute(SystemConstant.ATTR_NAME_PAGE_INFO,pageInfo);
        return "tables-table";
    }

    /**
     * 菜品数据显示
     *
     * @return
     */
    @RequestMapping("/index/to/food")
    public String showFood(
            @RequestParam(value = "keyword", defaultValue = "") String keyword,
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize", defaultValue = "5") Integer pageSize,
            ModelMap modelMap
    ) {
        //封装菜品数据
        PageInfo<Food> pageInfo = tableService.getPageInfoFromFood(pageNum, pageSize, keyword);
        modelMap.addAttribute(SystemConstant.ATTR_NAME_PAGE_INFO,pageInfo);
        return "tables-food";
    }
}
