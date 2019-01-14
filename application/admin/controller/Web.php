<?php

namespace app\admin\controller;

use think\Controller;

use think\facade\Request;

use think\Db;

class Web extends Controller{

	public function index(){
		$web = Db::name('web')->find(1);
		$this->view->assign('web',$web);
		return $this->view->fetch();
	}

	public function add(){
		$data = Request::post();
		dump($data);
	}
}