// Source code is decompiled from a .class file using FernFlower decompiler.
package com.example.service;

import cn.hutool.core.util.ObjectUtil;
import com.example.common.enums.ResultCodeEnum;
import com.example.common.enums.RoleEnum;
import com.example.entity.Account;
import com.example.entity.Collect;
import com.example.exception.CustomException;
import com.example.mapper.CollectMapper;
import com.example.utils.TokenUtils;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.stereotype.Service;

@Service
public class CollectService {
    @Resource
    private CollectMapper collectMapper;

    public CollectService() {
    }

    public void add(Collect collect) {
        Collect dbCollect = this.collectMapper.selectByUserIdAndGoodsId(collect.getUserId(), collect.getGoodsId());
        if (ObjectUtil.isNotEmpty(dbCollect)) {
            throw new CustomException(ResultCodeEnum.COLLECT_ALREADY_ERROR);
        } else {
            this.collectMapper.insert(collect);
        }
    }

    public void deleteById(Integer id) {
        this.collectMapper.deleteById(id);
    }

    public void deleteBatch(List<Integer> ids) {
        Iterator var3 = ids.iterator();

        while(var3.hasNext()) {
            Integer id = (Integer)var3.next();
            this.collectMapper.deleteById(id);
        }

    }

    public void updateById(Collect collect) {
        this.collectMapper.updateById(collect);
    }

    public Collect selectById(Integer id) {
        return this.collectMapper.selectById(id);
    }

    public List<Collect> selectAll(Collect collect) {
        return this.collectMapper.selectAll(collect);
    }

    public PageInfo<Collect> selectPage(Collect collect, Integer pageNum, Integer pageSize) {
        Account currentUser = TokenUtils.getCurrentUser();
        if (RoleEnum.CUSTOMER.name().equals(currentUser.getRole())) {
            collect.setUserId(currentUser.getId());
        }

        PageHelper.startPage(pageNum, pageSize);
        List<Collect> list = this.collectMapper.selectAll(collect);
        return PageInfo.of(list);
    }
}
