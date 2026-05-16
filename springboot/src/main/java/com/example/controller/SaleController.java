package com.example.controller;

import com.example.common.Result;
import com.example.entity.Account;
import com.example.entity.Goods;
import com.example.entity.Sale;
import com.example.service.GoodsService;
import com.example.service.LogsService;
import com.example.service.SaleService;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;
import javax.annotation.Resource;
import java.util.List;

/**
 * 物资前台前端操作接口
 **/
@RestController
@RequestMapping("/sale")
public class SaleController {

    @Resource
    private SaleService saleService;

    @Resource
    private GoodsService goodsService;
    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody Sale sale) {


        saleService.add(sale);

        //获取订单信息
        Goods goods = goodsService.selectById(sale.getGoodsId());


        //日志操作
        Account currentUser = TokenUtils.getCurrentUser();
        LogsService.recordLog("批发"+goods.getName()+sale.getNum()+"件","销售",currentUser.getUsername());

        return Result.success();
    }

    /**
     * 删除
     */
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id) {
        saleService.deleteById(id);
        return Result.success();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        saleService.deleteBatch(ids);
        return Result.success();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result updateById(@RequestBody Sale sale) {
        saleService.updateById(sale);
        return Result.success();
    }

    /**
     * 根据ID查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {
        Sale sale = saleService.selectById(id);
        return Result.success(sale);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll(Sale sale) {
        List<Sale> list = saleService.selectAll(sale);
        return Result.success(list);
    }

    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(Sale sale,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<Sale> page = saleService.selectPage(sale, pageNum, pageSize);
        return Result.success(page);
    }

}