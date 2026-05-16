// Source code is decompiled from a .class file using FernFlower decompiler.
package com.example.utils;

import cn.hutool.core.collection.CollectionUtil;
import com.example.entity.RelateDTO;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.util.stream.IntStream;

public class CoreMath {
    public CoreMath() {
    }

    public static Map<Integer, Double> computeNeighbor(Integer key, Map<Integer, List<RelateDTO>> map, int type) {
        Map<Integer, Double> distMap = new TreeMap();
        List<RelateDTO> userItems = (List)map.get(key);
        if (CollectionUtil.isNotEmpty(userItems)) {
            map.forEach((k, v) -> {
                if (!k.equals(key)) {
                    double coefficient = relateDist(v, userItems, type);
                    double distance = Math.abs(coefficient);
                    distMap.put(k, distance);
                }

            });
        }

        return distMap;
    }

    private static double relateDist(List<RelateDTO> xList, List<RelateDTO> yList, int type) {
        List<Integer> xs = new ArrayList();
        List<Integer> ys = new ArrayList();
        xList.forEach((x) -> {
            yList.forEach((y) -> {
                if (type == 0) {
                    if (x.getGoodsId().equals(y.getGoodsId())) {
                        xs.add(x.getIndex());
                        ys.add(y.getIndex());
                    }
                } else if (x.getUseId().equals(y.getUseId())) {
                    xs.add(x.getIndex());
                    ys.add(y.getIndex());
                }

            });
        });
        return getRelate(xs, ys);
    }

    public static double getRelate(List<Integer> xs, List<Integer> ys) {
        int n = xs.size();
        if (n < 2) {
            return 0.0;
        } else {
            double Ex = xs.stream().mapToDouble((x) -> {
                return (double)x;
            }).sum();
            double Ey = ys.stream().mapToDouble((y) -> {
                return (double)y;
            }).sum();
            double Ex2 = xs.stream().mapToDouble((x) -> {
                return Math.pow((double)x, 2.0);
            }).sum();
            double Ey2 = ys.stream().mapToDouble((y) -> {
                return Math.pow((double)y, 2.0);
            }).sum();
            double Exy = IntStream.range(0, n).mapToDouble((i) -> {
                return (double)((Integer)xs.get(i) * (Integer)ys.get(i));
            }).sum();
            double numerator = Exy - Ex * Ey / (double)n;
            double denominator = Math.sqrt((Ex2 - Math.pow(Ex, 2.0) / (double)n) * (Ey2 - Math.pow(Ey, 2.0) / (double)n));
            return denominator == 0.0 ? 0.0 : numerator / denominator;
        }
    }
}
