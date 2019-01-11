<?php

namespace app\admin\controller;

use think\Controller;

use think\facade\Request;

use think\Db;

class About extends Controller{

    //企业简介和品牌理念
	public function index(){
		$id = Request::param('id');
		$about = Db::table('about')->get(function($query)use($id){
			$query->where('id',$id);
		});
		$about['content'] = htmlspecialchars_decode($about['content']);
		$this->view->assign('about',$about);
		return $this->view->fetch();
	}
}