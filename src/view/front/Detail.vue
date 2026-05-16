<template>
  <div >
    <div ref="vantaRef" style="width:100%;height:100%">

    <div style="width: 80%; background-color: white;height: 700px; margin: 20px auto; ">
      <div style="padding: 15px 20px">
        <el-row :gutter="20">
          <el-col :span="12">
            <img :src="goodsData.img" alt="" style="width: 100%; height: 400px; border-radius: 20px">
          </el-col>
          <el-col :span="12">
            <div style="font-size: 20px; font-weight: 900; overflow: hidden; text-overflow: ellipsis; display: -webkit-box; -webkit-line-clamp: 2; -webkit-box-orient: vertical;">{{goodsData.name}}</div>
            <div style="color: #666666FF; margin-top: 5px">销量：{{goodsData.saleCnt}}</div>
            <div style="color: red; margin-top: 15px">单价：<span style="font-size: 20px">{{goodsData.price}}</span></div>
            <div style="margin-top: 20px">
              <img src="@/assets/imgs/right.png" alt="" style="width: 70%; height: 130px; border-radius: 15px">
            </div>
            <div style="color: #666666FF; margin-top: 20px">供应商：<a href="#" @click="navTo('/front/business?id=' + goodsData.supplierId)">{{supplierName}}</a></div>
            <div style="color: #666666FF; margin-top: 20px">分类：<a>{{TypeName}}</a></div>
<!--            <div style="color: #666666FF; margin-top: 20px">分类：<a href="#" @click="navTo('/front/type?id=' + goodsData.typeNames)">{{TypeName}}</a></div>-->
            <div style="color: #666666FF; margin-top: 20px">
              <el-button type="warning" @click="addCart">加入购物车</el-button>
              <el-button type="warning" @click="collect">收藏</el-button>
            </div>
          </el-col>
        </el-row>
      </div>
      <div style="padding: 15px 20px">
        <el-tabs v-model="activeName" @tab-click="handleClick">
          <el-tab-pane label="宝贝详情" name="first">
            <div style="padding: 10px 175px" v-html="goodsData.description"></div>
          </el-tab-pane>

          <el-descriptions class="margin-top" title="商品具体指标" :column="3" :size="medium">
            <el-descriptions-item label="商品产地">
              <el-tag size="medium">{{goodsData.producer}}</el-tag>
            </el-descriptions-item>
            <el-descriptions-item label="包装单位">{{goodsData.pack}}</el-descriptions-item>
            <el-descriptions-item label="剩余数量">{{goodsData.num}}</el-descriptions-item>
            <el-descriptions-item label="生产批号">{{goodsData.productNo}}</el-descriptions-item>
            <el-descriptions-item label="批准文号">{{goodsData.approveNo}}</el-descriptions-item>
            <el-descriptions-item label="功能描述">{{goodsData.descr}}</el-descriptions-item>
          </el-descriptions>

<!--          <el-tab-pane label="宝贝评价" name="second">-->
<!--            <div style="margin-top: 10px">-->
<!--              <div style="margin-top: 20px" v-for="item in commentData">-->
<!--                <div style="display: flex">-->
<!--                  <div style="width: 40px">-->
<!--                    <img :src="item.userAvatar" alt="" style="height: 40px; width: 40px; border-radius: 50%">-->
<!--                  </div>-->
<!--                  <div style="width: 200px; margin-left: 10px">-->
<!--                    <div style="font-weight: 700; font-size: 17px; color: #000000FF">{{item.userName}}</div>-->
<!--                    <div style="color: #7A7A7AFF">{{item.time}}</div>-->
<!--                  </div>-->
<!--                </div>-->
<!--                <div style="margin-top: 15px; font-size: 16px">{{item.content}}</div>-->
<!--              </div>-->
<!--            </div>-->
<!--          </el-tab-pane>-->
        </el-tabs>
      </div>
    </div>

    </div>

  </div>
</template>

<script>


import * as THREE from 'three'
import BIRDS from 'vanta/src/vanta.birds'
export default {

  data() {
    let goodsId = this.$route.query.id
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      goodsId: goodsId,
      goodsData: {},
      supplierName: '', // 用于存储供应商名称的变量
      TypeName: '', // 用于存储种类名称的变量
      activeName: 'first',
      commentData: [],
    }
  },
  mounted() {
    this.loadGoods()

    //动态背景
    this.vantaEffect = BIRDS({
      el: this.$refs.vantaRef,
      THREE: THREE
    });
    // 修改颜色时 cells 需要全大写字母 可生效
    VANTA.BIRDS({
      el: this.$refs.vantaRef,
      mouseControls: true,
      touchControls: true,
      gyroControls: false,
      minHeight: 200.0,
      minWidth: 200.0,
      scale: 1.0,
      color1: "#fb8500",
      color2: "#c1121f",
      colorMode: "lerp",
      quantity: 4,
      backgroundColor: "rgb(247, 248, 249)"

    });

    // this.loadComments()
  },
  beforeDestroy() {
    if (this.vantaEffect) {
      this.vantaEffect.destroy()
    }
  },

  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadGoods() {
      this.$request.get('goods/selectById/' + this.goodsId).then(res => {
        if (res.code === '200') {
          this.goodsData = res.data
          this.loadSupplierName(this.goodsData.supplierId)// 获取供应商名称
          this.loadTypeName(this.goodsData.typeId)
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    handleClick(tab, event) {
      this.activeName = tab.name
    },
    collect() {
      let data = {
        userId: this.user.id,
        businessId: this.goodsData.businessId,
        goodsId: this.goodsId
      }
      this.$request.post('/collect/add', data).then(res => {
        if (res.code === '200') {
          this.$message.success('收藏成功')
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    addCart() {
      let data = {num: 1, userId: this.user.id, goodsId: this.goodsId, businessId: this.goodsData.businessId,goodsNum: this.goodsData.num}
      this.$request.post('/cart/add', data).then(res => {
        if (res.code === '200') {
          this.$message.success('操作成功')
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    // loadComments() {
    //   this.$request.get('/comment/selectByGoodsId?id=' + this.goodsId).then(res => {
    //     if (res.code === '200') {
    //       this.commentData = res.data
    //     } else {
    //       this.$message.error(res.msg)
    //     }
    //   })
    // },

  loadSupplierName(supplierId) {
    // 根据供应商ID发送请求获取供应商名称
    this.$request.get('/supplier/selectById/' + supplierId).then(res => {
      if (res.code === '200') {
        this.supplierName = res.data.name; // 存储供应商名称
      }
    });
  },
    loadTypeName(typeId) {
      // 根据供应商ID发送请求获取供应商名称
      this.$request.get('/type/selectById/' + typeId).then(res => {
        if (res.code === '200') {
          this.TypeName = res.data.name; // 存储供应商名称
        }
      });
    },


    navTo(url) {
      location.href = url
    }
  },
}
</script>

<style>


</style>