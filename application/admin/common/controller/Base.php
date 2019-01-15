<?php

namespace app\admin\common\controller;

use think\Controller;
use think\facade\Cookie;
use think\Db;

class Base extends Controller{

	// 初始化
    protected function initialize()
    {
        //检测是否登陆
    	$this->check();
        //获取网站基本信息
        $this->getStatus();
    }

    //检验是否登陆
    public function check(){
    	if(!Cookie::has('user_id') || !Cookie::has('user_name')){
    		$this->redirect('/admin/Index/index');
    	}
    }

    //获取网站信息
    public function getStatus(){
        $webInfo = Db::table('web')->find(1);
        $this->view->assign('webInfo',$webInfo);
    }
}