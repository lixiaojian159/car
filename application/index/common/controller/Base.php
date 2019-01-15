<?php

namespace app\index\common\controller;

use think\Controller;

use think\Db;

class Base extends Controller{

	// 初始化
    protected function initialize()
    {
    	//检测网站状态
        $this->checkStatus();
    }

    //检测网站状态
    public function checkStatus(){
    	$web = Db::table('web')->find(1);
    	if($web['status'] !== 1){
    		$this->redirect('index/Close/index');
    		exit;
    	}
    }
}