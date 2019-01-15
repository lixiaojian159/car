<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\common\controller\Base;
use think\Db;


class Admin extends Base{

	public function index(){
		return $this->view->fetch();
	}

	public function welcome(){
		$web = Db::table('web')->find(1);
		$wewCount = Db::table('wew')->count();
		$carCount = Db::table('car')->count();
		$peijianCount = Db::table('peijian')->count();
		$this->view->assign('web',$web);
		$this->view->assign('peijianCount',$peijianCount);
		$this->view->assign('carCount',$carCount);
		$this->view->assign('wewCount',$wewCount);
		return $this->view->fetch();
	}
}