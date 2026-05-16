package com.example.controller;

import com.example.common.Result;
import com.example.entity.Account;
import com.example.entity.Goods;
import com.example.entity.SaleBack;
import com.example.service.GoodsService;
import com.example.service.LogsService;
import com.example.service.SaleBackService;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;

/**
 * 商品销售前端操作接口
 **/
@RestController
@RequestMapping("/saleBack")
public class SaleBackController {

    @Resource
    private SaleBackService saleBackService;


    @Resource
    private GoodsService goodsService;

    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody SaleBack saleBack) {
        saleBackService.add(saleBack);
        //获取订单信息
        Goods goods = goodsService.selectById(saleBack.getGoodsId());

        //日志操作
        Account currentUser = TokenUtils.getCurrentUser();
        LogsService.recordLog("批发退货"+goods.getName()+saleBack.getNum()+"件","退货",currentUser.getUsername());

        return Result.success();
    }

    /**
     * 删除
     */
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id) {
        saleBackService.deleteById(id);
        return Result.success();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        saleBackService.deleteBatch(ids);
        return Result.success();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result updateById(@RequestBody SaleBack saleBack) {
        saleBackService.updateById(saleBack);
        return Result.success();
    }

    /**
     * 根据ID查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {
        SaleBack saleBack = saleBackService.selectById(id);
        return Result.success(saleBack);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll(SaleBack saleBack) {
        List<SaleBack> list = saleBackService.selectAll(saleBack);
        return Result.success(list);
    }

    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(SaleBack saleBack,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<SaleBack> page = saleBackService.selectPage(saleBack, pageNum, pageSize);
        return Result.success(page);
    }

}