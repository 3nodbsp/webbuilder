import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import adminexam from '@/views/modules/shijuanliebiao/exam'
    import news from '@/views/modules/news/list'
    import kefangku from '@/views/modules/kefangku/list'
    import kefangleixing from '@/views/modules/kefangleixing/list'
    import huanfangxinxi from '@/views/modules/huanfangxinxi/list'
    import yonghu from '@/views/modules/yonghu/list'
    import yudingxinxi from '@/views/modules/yudingxinxi/list'
    import feiyongxinxi from '@/views/modules/feiyongxinxi/list'
    import config from '@/views/modules/config/list'
    import tuidingxinxi from '@/views/modules/tuidingxinxi/list'
    import xuzuxinxi from '@/views/modules/xuzuxinxi/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
          ,{
	path: '/news',
        name: '新闻资讯',
        component: news
      }
          ,{
	path: '/kefangku',
        name: '客房库',
        component: kefangku
      }
          ,{
	path: '/kefangleixing',
        name: '客房类型',
        component: kefangleixing
      }
          ,{
	path: '/huanfangxinxi',
        name: '换房信息',
        component: huanfangxinxi
      }
          ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
          ,{
	path: '/yudingxinxi',
        name: '预定信息',
        component: yudingxinxi
      }
          ,{
	path: '/feiyongxinxi',
        name: '费用信息',
        component: feiyongxinxi
      }
          ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
          ,{
	path: '/tuidingxinxi',
        name: '退订信息',
        component: tuidingxinxi
      }
          ,{
	path: '/xuzuxinxi',
        name: '续住信息',
        component: xuzuxinxi
      }
        ]
  },
  {
    path: '/adminexam',
    name: 'adminexam',
    component: adminexam,
    meta: {icon:'', title:'adminexam'}
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
