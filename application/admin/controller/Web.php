<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\common\controller\Base;

use think\facade\Request;

use think\Db;

class Web extends Base{

	public function index(){
		$web = Db::name('web')->find(1);
		$this->view->assign('web',$web);
		return $this->view->fetch();
	}

    //修改状态
	public function add(){
		$data = Request::post();
		$id = $data['id'];
		unset($data['id']);
		$res  = Db::table('web')->where('id',$id)->update($data);
		if($res){
			return ['code'=>1];
		}
	}

    //修改状态
	public function status(){
		$id = Request::post('id');
		$status = Request::post('status');
		$res = Db::table('web')->where('id',$id)->setField('status',$status);
		dump($res);
	}
}