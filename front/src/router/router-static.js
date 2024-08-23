import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
    // 解决多次点击左侧菜单报错问题
    const VueRouterPush = VueRouter.prototype.push
    VueRouter.prototype.push = function push (to) {
    return VueRouterPush.call(this, to).catch(err => err)
    }
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
import beifen from '@/views/modules/databaseBackup/beifen'
import huanyuan from '@/views/modules/databaseBackup/huanyuan'

     import users from '@/views/modules/users/list'
    import dictionary from '@/views/modules/dictionary/list'
    import gonggao from '@/views/modules/gonggao/list'
    import news from '@/views/modules/news/list'
    import shuichan from '@/views/modules/shuichan/list'
    import shuichanCollection from '@/views/modules/shuichanCollection/list'
    import shuizhi from '@/views/modules/shuizhi/list'
    import siliao from '@/views/modules/siliao/list'
    import siliaoShiyong from '@/views/modules/siliaoShiyong/list'
    import yangzhiquyu from '@/views/modules/yangzhiquyu/list'
    import yangzhiquyuCollection from '@/views/modules/yangzhiquyuCollection/list'
    import yangzhiquyuLiuyan from '@/views/modules/yangzhiquyuLiuyan/list'
    import yonghu from '@/views/modules/yonghu/list'
    import config from '@/views/modules/config/list'
    import dictionaryGonggao from '@/views/modules/dictionaryGonggao/list'
    import dictionaryJinyong from '@/views/modules/dictionaryJinyong/list'
    import dictionaryNews from '@/views/modules/dictionaryNews/list'
    import dictionarySex from '@/views/modules/dictionarySex/list'
    import dictionaryShuichan from '@/views/modules/dictionaryShuichan/list'
    import dictionaryShuichanCollection from '@/views/modules/dictionaryShuichanCollection/list'
    import dictionaryShuizhi from '@/views/modules/dictionaryShuizhi/list'
    import dictionarySiliao from '@/views/modules/dictionarySiliao/list'
    import dictionarySiliaoShiyong from '@/views/modules/dictionarySiliaoShiyong/list'
    import dictionaryYangzhiquyu from '@/views/modules/dictionaryYangzhiquyu/list'
    import dictionaryYangzhiquyuCollection from '@/views/modules/dictionaryYangzhiquyuCollection/list'





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
    }, {
        path: '/huanyuan',
        name: '数据还原',
        component: huanyuan
    }, {
        path: '/beifen',
        name: '数据备份',
        component: beifen
    }, {
        path: '/users',
        name: '管理信息',
        component: users
    }
    ,{
        path: '/dictionaryGonggao',
        name: '公告类型',
        component: dictionaryGonggao
    }
    ,{
        path: '/dictionaryJinyong',
        name: '账户状态',
        component: dictionaryJinyong
    }
    ,{
        path: '/dictionaryNews',
        name: '新闻类型',
        component: dictionaryNews
    }
    ,{
        path: '/dictionarySex',
        name: '性别类型',
        component: dictionarySex
    }
    ,{
        path: '/dictionaryShuichan',
        name: '水产类型',
        component: dictionaryShuichan
    }
    ,{
        path: '/dictionaryShuichanCollection',
        name: '收藏表类型',
        component: dictionaryShuichanCollection
    }
    ,{
        path: '/dictionaryShuizhi',
        name: '水质类型',
        component: dictionaryShuizhi
    }
    ,{
        path: '/dictionarySiliao',
        name: '饲料类型',
        component: dictionarySiliao
    }
    ,{
        path: '/dictionarySiliaoShiyong',
        name: '饲料使用类型',
        component: dictionarySiliaoShiyong
    }
    ,{
        path: '/dictionaryYangzhiquyu',
        name: '养殖区域类型',
        component: dictionaryYangzhiquyu
    }
    ,{
        path: '/dictionaryYangzhiquyuCollection',
        name: '收藏表类型',
        component: dictionaryYangzhiquyuCollection
    }
    ,{
        path: '/config',
        name: '轮播图',
        component: config
    }


    ,{
        path: '/dictionary',
        name: '字典',
        component: dictionary
      }
    ,{
        path: '/gonggao',
        name: '公告',
        component: gonggao
      }
    ,{
        path: '/news',
        name: '水产资讯',
        component: news
      }
    ,{
        path: '/shuichan',
        name: '水产',
        component: shuichan
      }
    ,{
        path: '/shuichanCollection',
        name: '水产收藏',
        component: shuichanCollection
      }
    ,{
        path: '/shuizhi',
        name: '水质',
        component: shuizhi
      }
    ,{
        path: '/siliao',
        name: '饲料',
        component: siliao
      }
    ,{
        path: '/siliaoShiyong',
        name: '饲料使用',
        component: siliaoShiyong
      }
    ,{
        path: '/yangzhiquyu',
        name: '养殖区域',
        component: yangzhiquyu
      }
    ,{
        path: '/yangzhiquyuCollection',
        name: '养殖区域收藏',
        component: yangzhiquyuCollection
      }
    ,{
        path: '/yangzhiquyuLiuyan',
        name: '养殖区域留言',
        component: yangzhiquyuLiuyan
      }
    ,{
        path: '/yonghu',
        name: '用户',
        component: yonghu
      }


    ]
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
