<?php

namespace app\admin\controller;

use think\Controller;

use app\admin\model\Cate;

class Car extends Controller{

    //叉车列表
	public function index(){
		return $this->view->fetch();
	}

	public function add(){
		//叉车分类
		$cates = Cate::where('pid',1)->select();
		$this->view->assign('cates',$cates);
		return $this->view->fetch();
	}
}