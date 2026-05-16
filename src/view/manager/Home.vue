<template>
  <div>
    <div class="card" style="padding: 15px">
      您好，{{ user?.name }}！欢迎使用本系统
    </div>
    <div style="display: flex; grid-gap: 10px; margin: 10px 0">
      <div class = "card" style="flex: 1; display: flex ;align-items: center">
        <img src="@/assets/imgs/icon/演示.png" alt=""  style="width: 100px;margin-left: 10px">
        <div style="margin-left: 10px">
          <div style="color: #666666"> 存储容量</div>
          <div style="margin-top: 5px; font-size: 30px">{{dataCount.store}} </div>
        </div>
      </div>
      <div class = "card" style="flex: 1; display: flex ;align-items: center">
        <img src="@/assets/imgs/icon/数据.png" alt=""  style="width: 100px;margin-left: 10px">
        <div style="margin-left: 10px">
          <div style="color: #666666"> 库存余额</div>
          <div style="margin-top: 5px; font-size: 30px">{{Number(dataCount.money).toFixed(2)}} </div>
        </div>
      </div>
      <div class = "card" style="flex: 1; display: flex ;align-items: center">
        <img src="@/assets/imgs/icon/付款2.png" alt=""  style="width: 100px;margin-left: 10px">
        <div style="margin-left: 10px">
          <div style="color: #666666">批发订单</div>
          <div style="margin-top: 5px; font-size: 30px">{{dataCount.stock}}</div>
        </div>
      </div>
      <div class = "card" style="flex: 1; display: flex ;align-items: center">
        <img src="@/assets/imgs/icon/付款.png" alt=""  style="width: 100px;margin-left: 10px">
        <div style="margin-left: 10px">
          <div style="color: #666666"> 商城订单</div>
          <div style="margin-top: 5px; font-size: 30px">{{dataCount.sale}}</div>
        </div>
      </div>
    </div>

<!--    <div style="margin: 10px 0; display: flex;grid-gap: 10px">-->
      <div style="flex: 1;height: 400px;width: 700px" class="card">
        <div style="height: 400px" id = "line">

        </div>

      </div>

      <div style="flex: 1;height: 800px;  margin-top: -400px;margin-left: 710px" class="card">
        <div style="height: 800px" id = "pie">
        </div>

      </div>

<!--    </div>-->


    <div style="display: flex; margin: 10px 0">
      <div style="width: 700px;margin-top: -400px" class="card">
        <div style="margin-bottom: 30px; font-size: 20px; font-weight: bold">公告列表</div>
        <div >
          <el-timeline  reverse slot="reference">
            <el-timeline-item v-for="item in notices" :key="item.id" :timestamp="item.time">
              <el-popover
                  placement="right"
                  width="200"
                  trigger="hover"
                  :content="item.content">
                <span slot="reference">{{ item.title }}</span>
              </el-popover>
            </el-timeline-item>
          </el-timeline>
        </div>
      </div>
    </div>
  </div>
</template>

<script>

import * as echarts from 'echarts'
const lineOption = {
  title: {
    text: '最新一周物资销售趋势图',
    left: 'center',
  },
  tooltip: {
    trigger: 'axis'
  },
  legend: {
    left: 'left'
  },
  xAxis: {
    type: 'category',
    data: []
  },
  yAxis: {
    type: 'value'
  },
  series: [
    {
      name: '批发订单',
      data: [],
      type: 'line',
      smooth: true
    },
    {
      name: '商城订单',
      data: [],
      type: 'line',
      smooth: true
    }
  ]
}

//饼图
const pieOption = {
  title: {
    text: '库存前二十统计图',
    left: 'center'
  },
  tooltip: {
    trigger: 'item'
  },
  legend: {
    top: '5%',
    left: 'center'
  },
  series: [
    {
      name: 'Access From',
      type: 'pie',
      radius: ['40%', '70%'],
      avoidLabelOverlap: false,
      itemStyle: {
        borderRadius: 10,
        borderColor: '#fff',
        borderWidth: 2
      },
      top: 100,
      label: {
        show: false,
        position: 'center'
      },
      emphasis: {
        label: {
          show: true,
          fontSize: 40,
          fontWeight: 'bold'
        }
      },
      labelLine: {
        show: false
      },
      data: [
        { value: 1048, name: 'Search Engine' },
        { value: 735, name: 'Direct' },
        { value: 580, name: 'Email' },
        { value: 484, name: 'Union Ads' },
        { value: 300, name: 'Video Ads' }
      ]
    }
  ]
}


export default {
  name: 'Home',
  data() {
    return {
      user: JSON.parse(localStorage.getItem('xm-user') || '{}'),
      notices: [],
      dataCount: {}
    }
  },


  // 折线图  必须是 mounted
  mounted() {
    // 折线图
    let linetDom = document.getElementById('line')
    let lineChart = echarts.init(linetDom)



    this.$request.get('/goodsCount').then(res => {

      // if(Array.isArray(res.data)&&res.data.length>0){
      //   lineOption.series[0].data = res.data.map(v=>v.count);
      // } else {
      //   lineOption.series[0].data = [];
      // }

      // lineOption.xAxis.data = res.data.map(v => v.name) //有点bug
      // lineOption.series[0].data = res.data.map(v => v.value)
      // lineChart.setOption(lineOption)
      // 在使用 map 方法之前，先进行数据检查和初始化
      if (res.data && Array.isArray(res.data)) {
        lineOption.xAxis.data = res.data.map(v => v.name);
        lineOption.series[0].data = res.data.map(v => v.value);

      } else {
        // 处理数据为空或不是数组的情况
        // 可以将 lineOption.xAxis.data 和 lineOption.series[0].data 设置为默认值或空数组
        lineOption.xAxis.data = [];
        lineOption.series[0].data = [];

      }

      lineChart.setOption(lineOption);
    })

    this.$request.get('/goodsCount2').then(res2 => {
      // 处理第二条线的数据
      if (res2.data && Array.isArray(res2.data)) {
        lineOption.series[1].data = res2.data.map(v => Number(v.value.toFixed(2)));
      } else {
        lineOption.series[1].data = [];
      }

      lineChart.setOption(lineOption);
    });




    // 饼图
    let pieDom = document.getElementById('pie')
    let pieChart = echarts.init(pieDom)

    this.$request.get('/storeCount').then(res => {
      pieOption.series[0].data = res.data
      pieChart.setOption(pieOption)
    })

  },



  created() {
    this.$request.get('/notice/selectAll').then(res => {
      this.notices = res.data || []
    })

    this.$request.get('/dataCount').then(res => {
      this.dataCount = res.data || []
    })


  }
}
</script>
