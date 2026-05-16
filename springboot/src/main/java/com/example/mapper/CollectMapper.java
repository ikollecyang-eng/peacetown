// Source code is decompiled from a .class file using FernFlower decompiler.
package com.example.mapper;

import com.example.entity.Collect;
import java.util.List;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface CollectMapper {
    int insert(Collect collect);

    int deleteById(Integer id);

    int updateById(Collect collect);

    Collect selectById(Integer id);

    List<Collect> selectAll(Collect collect);

    @Select({"select * from collect where user_id = #{userId} and goods_id = #{goodsId}"})
    Collect selectByUserIdAndGoodsId(@Param("userId") Integer userId, @Param("goodsId") Integer goodsId);
}
