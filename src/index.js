import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

// 解决导航栏或者底部导航tabBar中的vue-router在3.0版本以上频繁点击菜单报错的问题。
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push (location) {
  return originalPush.call(this, location).catch(err => err)
}

const routes = [
  {
    path: '/',
    name: 'Manager',
    component: () => import('../views/Manager.vue'),
    redirect: '/login',  // 重定向到主页
    children: [
      { path: '403', name: 'NoAuth', meta: { name: '无权限' }, component: () => import('../views/manager/403') },
      { path: 'home', name: 'Home', meta: { name: '系统首页' }, component: () => import('../views/manager/Home') },
      { path: 'admin', name: 'Admin', meta: { name: '管理员信息' }, component: () => import('../views/manager/Admin') },
      { path: 'adminPerson', name: 'AdminPerson', meta: { name: '管理员个人信息' }, component: () => import('../views/manager/AdminPerson') },
      { path: 'password', name: 'Password', meta: { name: '修改密码' }, component: () => import('../views/manager/Password') },
      { path: 'notice', name: 'Notice', meta: { name: '公告信息' }, component: () => import('../views/manager/Notice') },
      { path: 'staff', name: 'Staff', meta: { name: '员工信息' }, component: () => import('../views/manager/Staff') },
      { path: 'staffPerson', name: 'StaffPerson', meta: { name: '员工个人信息' }, component: () => import('../views/manager/StaffPerson') },
      { path: 'department', name: 'Department', meta: { name: '部门信息' }, component: () => import('../views/manager/Department') },
      { path: 'supplier', name: 'Supplier', meta: { name: '供应商信息' }, component: () => import('../views/manager/Supplier') },
      { path: 'customer', name: 'Customer', meta: { name: '客户信息' }, component: () => import('../views/manager/Customer') },
      { path: 'goods', name: 'Goods', meta: { name: '商品信息' }, component: () => import('../views/manager/Goods') },
      { path: 'stock', name: 'Stock', meta: { name: '商品交易信息' }, component: () => import('../views/manager/Stock') },
      { path: 'back', name: 'Back', meta: { name: '商品退货查询' }, component: () => import('../views/manager/Back') },
      { path: 'sale', name: 'Sale', meta: { name: '商品销售查询' }, component: () => import('../views/manager/Sale') },
      { path: 'saleBack', name: 'SaleBack', meta: { name: '销售退货查询' }, component: () => import('../views/manager/SaleBack') },
      { path: 'logs', name: 'Logs', meta: { name: '日志信息' }, component: () => import('../views/manager/Logs') },
      { path: 'customerPerson', name: 'CustomerPerson', meta: { name: '客户个人信息' }, component: () => import('../views/manager/CustomerPerson') },
      { path: 'type', name: 'Type', meta: { name: '分类信息' }, component: () => import('../views/manager/Type') },
      { path: 'orders', name: 'Orders', meta: { name: '订单管理' }, component: () => import('../views/manager/Orders') },

    ]
  },
  {
    path: '/front',
    name: 'Front',
    component: () => import('../views/Front.vue'),
    children: [
      { path: 'home', name: 'Home', meta: { name: '系统首页' }, component: () => import('../views/front/Home') },
      { path: 'person', name: 'Person', meta: { name: '个人信息' }, component: () => import('../views/front/Person') },
      { path: 'detail', name: 'Detail', meta: { name: '商品详情' }, component: () => import('../views/front/Detail') },
      { path: 'type', name: 'Type', meta: { name: '分类商品' }, component: () => import('../views/front/Type') },
      { path: 'business', name: 'Business', meta: { name: '商家店铺' }, component: () => import('../views/front/Business') },
      { path: 'collect', name: 'Collect', meta: { name: '我的收藏' }, component: () => import('../views/front/Collect') },
      { path: 'address', name: 'Address', meta: { name: '我的地址' }, component: () => import('../views/front/Address') },
      { path: 'cart', name: 'Cart', meta: { name: '我的购物车' }, component: () => import('../views/front/Cart') },
      { path: 'orders', name: 'Orders', meta: { name: '我的订单' }, component: () => import('../views/front/Orders') },
      { path: 'search', name: 'Search', meta: { name: '搜索页面' }, component: () => import('../views/front/Search') },
      { path: 'detail', name: 'Detail', meta: { name: '商品详情' }, component: () => import('../views/front/Detail') },
      { path: 'type', name: 'Type', meta: { name: '分类商品' }, component: () => import('../views/front/Type') },
      { path: 'business', name: 'Business', meta: { name: '商家店铺' }, component: () => import('../views/front/Business') },
      { path: 'collect', name: 'Collect', meta: { name: '我的收藏' }, component: () => import('../views/front/Collect') },
      { path: 'address', name: 'Address', meta: { name: '我的地址' }, component: () => import('../views/front/Address') },
      { path: 'orders', name: 'Orders', meta: { name: '我的订单' }, component: () => import('../views/front/Orders') },
      { path: 'search', name: 'Search', meta: { name: '搜索页面' }, component: () => import('../views/front/Search') },


    ]
  },
  { path: '/login', name: 'Login', meta: { name: '登录' }, component: () => import('../views/Login.vue') },
  { path: '/register', name: 'Register', meta: { name: '注册' }, component: () => import('../views/Register.vue') },
  { path: '*', name: 'NotFound', meta: { name: '无法访问' }, component: () => import('../views/404.vue') },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// 注：不需要前台的项目，可以注释掉该路由守卫
// 路由守卫
router.beforeEach((to ,from, next) => {
  let user = JSON.parse(localStorage.getItem("xm-user") || '{}');

  if (to.path === '/') {
    if (user.role) {
      if (user.role === 'CUSTOMER') {
        next('/front/home')
      } else {
        next('/home')
      }
    } else {
      next('/login')
    }
  } else {
    next()
  }
})

export default router
