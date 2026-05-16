<template>

  <div class="main-content">

    <div ref="vantaRef" style="width:100%;height:300vh">

<!--    <div style="height: 300px; background-color: #a8dadc">-->


<!--    </div>-->

<!--      视频-->

      <div >
        <video   class="fullscreenVideo" id="bgVid" playsinline="" autoplay="" muted="" loop="" style="height: 200px">

          <source src="@/assets/video/19177707-uhd_3840_2160_25fps.mp4" type="video/mp4">

        </video>

        <div class="textOverlay_big">
          <p>聚焦三农，服务大众</p>
        </div>

        <div class="textOverlay_small">
          <p>Focus on Agriculture, Serve the Public</p>
        </div>


      </div>

<!--    <div>-->
<!--&lt;!&ndash;      动态背景&ndash;&gt;-->
<!--&lt;!&ndash;      <div ref="vantaRef" style="width:100%;height:100vh"></div>&ndash;&gt;-->
<!--&lt;!&ndash;      字体效果&ndash;&gt;-->
<!--&lt;!&ndash;      <div class="my_title">Hello,World</div>&ndash;&gt;-->
<!--    </div>-->

    <!--    <div ref="vantaRef" class="vantaRef">Foreground content here</div>-->
<!--    <div class="box">-->
<!--      <div ref="vantaRef" style="width: 100%;"></div>-->
<!--      <div class="banner" style=" margin-left: -150px;writing-mode: horizontal-tb; ">-->
<!--        <h1>仓署霸王</h1>-->
<!--        <h6>-->
<!--          &ensp;&ensp;CANG  &ensp;&ensp;&ensp;SHU&ensp;&ensp;&ensp;&ensp;BA&ensp;&ensp;&ensp;&ensp;&ensp;WANG-->
<!--        </h6>-->
<!--      </div>-->
<!--    </div>-->

    <div style="display: flex" >

<!--      <div class="left"></div>-->
      <div style="width: 96%; background-color: rgb(247, 248, 249); margin-bottom: 10px; margin-left: 2% ; border-radius: 20px " >
<!--        <div style="margin-top: 40px; height: 60px; ;font-size: 40px; color: #e63946; font-weight: bold; line-height: 40px; text-align: center">物资臻选</div>-->
<!--        <div style="color: #e63946; margin: 15px 0 15px 18px;font-weight: bold; font-size: 50px;font-family: 字体圈欣意冠黑体">主题市场</div>-->
        <div style="display: flex; margin: 0 25px; height: 550px  ">

<!--          分类栏-->
          <div style="flex: 2;background-color: #ffffff; border-radius: 10px;margin-right: 10px; margin-top: 15px;">

            <div style="display: flex; color: #666666FF; margin: 50px 0" v-for="item in typeData">

              <img :src="item.img" alt="" style="height: 30px; width: 30px ; margin-top: -1px; margin-left: 70px" >


                <div style="margin-left: -5px; font-size: 20px; font-family: 微软雅黑;">
                  <a href="#" @click="navTo('/front/type?id=' + item.id)" style="color: #222222; margin-left: 20px;
font-family: '微软雅黑 Light' ; font-width: bold; font-size: 20px  ">{{item.name}}
                </a></div>



            </div>

          </div>
          <div style="flex: 5; margin-top: 15px">
            <div>
              <el-carousel height="300px" style="border-radius: 10px">
                <el-carousel-item v-for="item in carousel_top">
                  <img :src="item" alt="" style="width: 100%; height: 300px; border-radius: 10px">
                </el-carousel-item>
              </el-carousel>
            </div>
            <div style="margin-top: 30px; display: flex">
              <div style="flex: 1">
                <el-carousel height="300px" style="border-radius: 10px">
                  <el-carousel-item v-for="item in carousel_left">
                    <img :src="item" alt="" style="width: 100%; height: 200px; border-radius: 10px">
                  </el-carousel-item>
                </el-carousel>
              </div>
              <div style="flex: 1; margin-left: 5px">
                <el-carousel height="300px" style="border-radius: 10px">
                  <el-carousel-item v-for="item in carousel_right">
                    <img :src="item" alt="" style="width: 100%; height: 200px; border-radius: 10px">
                  </el-carousel-item>
                </el-carousel>
              </div>
            </div>
          </div>
          <div style="flex: 3; background-color: #bde0fe; margin-top: 15px; margin-left: 15px; border-radius: 10px ">
            <div style="text-align: center; margin-top: 30px">
              <img @click="navTo('/front/person')" :src="user.avatar" alt="" style="width: 80px; height: 80px; border-radius: 50%">
              <div style="margin-top: 10px;color: #000000;font-family: 字体视界-小南同学;font-size: 30px">Hi，{{user.name}}</div>
            </div>
            <div style="margin-top: 20px; padding: 0 15px;">
              <img src="@/assets/imgs/right.png" alt="" style="height: 150px; width: 100%; border-radius: 20px">
            </div>

            <div style="margin: 20px 10px 10px 10px; width: 250px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis">
              <i class="el-icon-bell"></i>
              <span style="font-weight: bold">公告</span>
              <span style="color: #666666;">：{{ top }}</span>
            </div>
            <div style="display: flex; margin-top: 50px">
              <div style="flex: 1; text-align: center">
                <a href="#" @click="navTo('/front/collect')">
                  <img src="@/assets/imgs/收藏.png" alt="" style="height: 25px; width: 25px">
                  <div>我的收藏</div>
                </a>
              </div>
              <div style="flex: 1; text-align: center">
                <a href="#" @click="navTo('/front/address')">
                  <img src="@/assets/imgs/店铺.png" alt="" style="height: 25px; width: 25px">
                  <div>我的地址</div>
                </a>
              </div>
              <div style="flex: 1; text-align: center">
                <a href="#" @click="navTo('/front/cart')">
                  <img src="@/assets/imgs/购物车.png" alt="" style="height: 25px; width: 25px">
                  <div>我的购物车</div>
                </a>
              </div>
              <div style="flex: 1; text-align: center">
                <a href="#" @click="navTo('/front/orders')">
                  <img src="@/assets/imgs/订单.png" alt="" style="height: 25px; width: 25px">
                  <div>我的订单</div>
                </a>
              </div>
            </div>
          </div>
        </div>

<!--        热卖搬到下面了-->
<!--        <div style="margin: 40px 0 0 15px; height: 40px; background-color: #e63946; font-size: 20px; color: white; width: 130px; font-weight: bold; line-height: 40px; text-align: center; border-radius: 20px">热卖商品</div>-->
<!--        <div style="margin: 10px 5px 0 5px">-->
<!--          <el-row>-->
<!--            <el-col :span="5" v-for="item in goodsData">-->
<!--              <img @click="navTo('/front/detail?id=' + item.id)" :src="item.img" alt="" style="width: 100%; height: 150px; border-radius: 10px; border: #cccccc 1px solid">-->
<!--              <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{item.name}}</div>-->
<!--              <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥ {{item.price}} / {{item.unit}}</div>-->
<!--            </el-col>-->
<!--          </el-row>-->
<!--        </div>-->

<!--        猜你喜欢也搬走了-->
<!--        <div style="margin: 40px 0 0 15px; height: 40px; background-color: #e63946; font-size: 20px; color: white; width: 130px; font-weight: bold; line-height: 40px; text-align: center; border-radius: 20px">猜你喜欢</div>-->
<!--        <div style="margin: 10px 5px 0 5px">-->
<!--          <el-row>-->
<!--            <el-col :span="5" v-for="item in recommendData">-->
<!--              <img @click="navTo('/front/detail?id=' + item.id)" :src="item.img" alt="" style="width: 100%; height: 175px; border-radius: 10px; border: #cccccc 1px solid">-->
<!--              <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{item.name}}</div>-->
<!--              <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥ {{item.price}} / {{item.unit}}</div>-->
<!--            </el-col>-->
<!--          </el-row>-->
<!--        </div>-->

      </div>

    </div>
<!--      <div class="right"></div>-->
<!--      <div style="margin: 0 auto; margin-top: 40px; height: 60px; ;font-size: 40px; color: #222222; font-weight: bold; line-height: 40px; text-align: center; opacity:0.7">热卖商品</div>-->

      <div >
        <video   class="fullscreenVideo" id="bgVid" playsinline="" autoplay="" muted="" loop="" style="height: 300px">

          <source src="@/assets/video/热卖2.mp4" type="video/mp4">

        </video>

        <div class="textOverlay_second_big">
          <p>热卖推荐</p>
        </div>

        <div class="textOverlay_second_small">
          <p>领先市场的物资销量前十，成就你的无限可能</p>
        </div>


      </div>

      <div style=";background-color: #ffffff; border-radius: 10px; margin-top: -10px;">

      <div >

        <div style="margin: 10px 5px 0 5px">
          <el-row>
            <el-col :span="5" v-for="item in goodsData">
              <img @click="navTo('/front/detail?id=' + item.id)" :src="item.img" alt="" style="width: 100%; height: 150px; border-radius: 10px; border: #cccccc 1px solid;background-size: cover; background-position: center;">
              <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{item.name}}</div>
              <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥ {{item.price}} / {{item.unit}}</div>
            </el-col>
          </el-row>
        </div>
      </div>

      </div>


      <div style="margin-top: 100px">
        <video   class="fullscreenVideo" id="bgVid" playsinline="" autoplay="" muted="" loop="" style="height: 300px">

          <source src="@/assets/video/严选.mp4" type="video/mp4">

        </video>

        <div class="textOverlay_second_big">
          <p>严选推荐</p>
        </div>

        <div class="textOverlay_second_small">
          <p>个性化推荐，精准匹配。让算法为你揭示最适合的物资，为你带来独特的选购体验！</p>
        </div>


      </div>

      <div  >

<!--        <div style="margin: 0 auto; margin-top: 40px; height: 60px; ;font-size: 40px; color: #222222; font-weight: bold; line-height: 40px; text-align: center; opacity:0.7">严选推荐</div>-->

        <div style=";background-color: #ffffff; border-radius: 10px; margin-top: -10px;">

        <div style="margin: 10px 5px 0 5px">
          <el-row>
            <el-col :span="5" v-for="item in recommendData">
              <img @click="navTo('/front/detail?id=' + item.id)" :src="item.img" alt="" style="width: 100%; height: 175px; border-radius: 10px; border: #cccccc 1px solid">
              <div style="margin-top: 10px; font-weight: 500; font-size: 16px; width: 180px; color: #000000FF; text-overflow: ellipsis; overflow: hidden; white-space: nowrap;">{{item.name}}</div>
              <div style="margin-top: 5px; font-size: 20px; color: #FF5000FF">￥ {{item.price}} / {{item.unit}}</div>
            </el-col>
          </el-row>
        </div>
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
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      typeData: [],
      top: null,
      notice: [],
      goodsData: [],
      recommendData: [],
      carousel_top: [
        require('@/assets/imgs/carousel-1.jpg'),
        require('@/assets/imgs/carousel-2.jpg'),
        require('@/assets/imgs/carousel-9.jpg'),
      ],
      carousel_left: [
        require('@/assets/imgs/carousel-3.jpg'),
        require('@/assets/imgs/carousel-4.jpg'),
        require('@/assets/imgs/carousel-5.jpg'),
      ],
      carousel_right: [
        require('@/assets/imgs/carousel-6.jpg'),
        require('@/assets/imgs/carousel-7.jpg'),
        require('@/assets/imgs/carousel-8 .jpg'),
      ],
    }
  },
  created() {
    // localStorage.removeItem("xm-user");
    // this.$router.push("/login");
    // if (this.user.role!== 'CUSTOMER') {
    //   this.$router.push('/login')
    // }
  },


  mounted() {


    this.loadType()
    this.loadNotice()
    this.loadGoods()
    this.loadRecommend()
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
      quantity: 1,
      backgroundColor: "rgb(247, 248, 249)"

    });
  },
  beforeDestroy() {
    if (this.vantaEffect) {
      this.vantaEffect.destroy()
    }
  },
  // methods：本页面所有的点击事件或者其他函数定义区
  methods: {
    loadRecommend() {
      this.$request.get('/goods/recommend').then(res => {
        if (res.code === '200') {
          this.recommendData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadType() {
      this.$request.get('/type/selectAll').then(res => {
        if (res.code === '200') {
          this.typeData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    loadNotice() {
      this.$request.get('/notice/selectAll').then(res => {
        this.notice = res.data
        let i = 0
        if (this.notice && this.notice.length) {
          this.top = this.notice[0].content
          setInterval(() => {
            this.top = this.notice[i].content
            i++
            if (i === this.notice.length) {
              i = 0
            }
          }, 2500)
        }
      })
    },
    loadGoods() {
      this.$request.get('/goods/selectTop15').then(res => {
        if (res.code === '200') {
          this.goodsData = res.data
        } else {
          this.$message.error(res.msg)
        }
      })
    },
    navTo(url) {
      location.href = url
    },

  }
}


</script>

<style>
.fullscreenVideo {
  width: 100%;
  height: 300px;
  object-fit: cover;
}

.textOverlay_big {
  width: 100%;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  font-size: 100px;
  font-family: "优设标题黑", serif;
  text-align: center;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}

.textOverlay_small {
  width: 100%;
  position: absolute;
  top: 80%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  font-size: 50px;
  font-family: "优设标题黑", serif;
  text-align: center;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);


}
.textOverlay_second_big {
  width: 100%;
  position: absolute;
  top: 30%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  font-size: 100px;
  font-family: "优设标题黑", serif;
  text-align: center;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}



.textOverlay_second_small {
  width: 100%;
  position: absolute;
  top: 70%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: white;
  font-size: 50px;
  font-family: "优设标题黑", serif;
  text-align: center;
  text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}



</style>

<style scoped>




.main-content {
  min-height: 100vh;
  /*overflow: hidden;*/
  background-size: contain;
  background-color: #a8dadc;

}

.left {
  width: 10%;
  background-repeat: no-repeat;

  //background-image: url('@/assets/imgs/left-img.png');
}

.right {
  width: 10%;
  background-repeat: no-repeat;
  //background-image: url('@/assets/imgs/right-img.png')
}

.el-col-5 {
  width: 20%;
  max-width: 20%;
  padding: 10px 10px;

}

.my_title{
  z-index: 999;
  position: fixed;
  top: 40%;
  left: 10%;
  color: aquamarine;
  font-size: 100px;
  font-weight: bolder;
}

</style>

