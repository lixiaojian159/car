<?php

namespace app\admin\controller;

use think\Controller;

use think\facade\Request;

use app\admin\model\Unslider as UnsliderModel;

class Unslider extends Controller{

	public function index(){
		$count = UnsliderModel::count();
		$this->view->assign('count',$count);
		$unsliders = UnsliderModel::all();
		$this->view->assign('unsliders',$unsliders);
		return $this->view->fetch();
	}

	//轮播图添加
	public function add(){
		return $this->view->fetch();
	}

	//轮播图添加逻辑
	public function addDo(){
		$data = Request::post();
		unset($data['file']);
		$res = UnsliderModel::create($data);
		if($res){
			return ['code' => 1];
		}
	}

	//状态
	public function status(){
		$id = Request::post('id');
		$status = Request::post('status');
		$res = UnsliderModel::where('id',$id)->setField('status',$status);
		if($res){
			return ['code'=>1];
		}
	}

	//删除
	public function del(){
		$id = Request::post('id');
		$res = UnsliderModel::where('id',$id)->delete();
		if($res){
			return ['code'=> 1];
		}
	}

	//批量删除
	public function dels(){
		$ids = Request::post('ids');
		$res = UnsliderModel::destroy($ids);
		if($res){
			return ['code'=>1];
		}
	}
}