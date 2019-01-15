<?php

namespace app\index\controller;

use think\Controller;

use think\Db;

class Close extends Controller{

	public function index(){
		$web = Db::table('web')->find(1);
		if($web['status'] == 1){
			$this->redirect('/index/Index/index');
		}
		return $this->view->fetch();
		exit;
	}
}