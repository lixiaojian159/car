<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\common\controller\Base;

use think\facade\Request;

use app\admin\model\Cate as CateModel;

use app\admin\facade\Cate as CateValidate;

class Cate extends Base{

	public function index(){
		//获取总条数
		$count = CateModel::where('pid','neq',0)->count();

		//获取栏目
		$HighCates = CateModel::where('pid',0)->select();
		foreach($HighCates as $key => $val){
			$middleCates = CateModel::where('pid',$val['id'])->order('npx','desc')->select();
			$HighCates[$key]['middle'] = $middleCates;
		}
		//模版赋值
		$this->view->assign('count',$count);
		$this->view->assign('HighCates',$HighCates);
		//渲染模版
		return $this->view->fetch();
	}

    //添加一级菜单
	public function add(){
		//接收数据
		$data = Request::post();

		//验证数据
		// $CateValidate  = CateValidate::check($data);
		if(!CateValidate::check($data)){
			return ['code' => 0, 'msg' => CateValidate::getError()];
		}
		//写入数据
		$res = CateModel::create($data);
		if($res){
			return ['code' => 1, 'msg' => '添加成功'];
		}else{
			return ['code' => 0, 'msg' => '添加失败'];
		}
	}

	//添加二级栏目
	public function addmiddle(){
		$pid = Request::param('pid');
		$npx = CateModel::where('pid',$pid)->max('npx');
		$npx += 1;
		$this->view->assign('npx',$npx);
		$this->view->assign('pid',$pid);
		return $this->view->fetch();
	}

	//修改
	public function update(){
		$id = Request::param('id');
		$cate = CateModel::where('id',$id)->find();
		//dump($cate);
		$this->view->assign('cate',$cate);
		return $this->view->fetch();
	}

	//修改逻辑
	public function updateDo(){
		$data = Request::post();
		$id   = $data['id'];
		unset($data['id']);
		//验证数据
		if(!CateValidate::check($data)){
			return ['code' => 0, 'msg' => CateValidate::getError()];
		}
		$res = CateModel::where('id',$id)->update($data);
		if($res){
			return ['code' => 1, 'msg' => '修改成功'];
		}else{
			return ['code' => 0, 'msg' => '修改失败'];
		}
	}

	//删除
	public function delete(){
		$id = Request::post('id');
		$cate = CateModel::where('pid',$id)->select();
		if(count($cate) != 0){
			return ['code' => 0, 'msg'=> '存在子栏目,不能删除'];
		}
		$res = CateModel::where('id',$id)->delete();
		if($res){
			return ['code' => 1, 'msg'=> '删除成功'];
		}else{
			return ['code' => 0, 'msg'=> '删除失败'];
		}
	}

	//批量删除
	public function delAll(){
		$ids = Request::post('ids');
		// $ids = substr(getStringByArr($ids),1);
		$res = CateModel::destroy($ids);
		if($res){
			return ['code' => 1, 'msg' => '删除成功'];
		}else{
			return ['code' => 0, 'msg' => '删除失败'];
		}
	}

	//修改状态
	public function status(){
		$id = Request::post('id');
		$status = Request::post('status');
		$res = CateModel::where('id',$id)->setField('status',$status);
	}

	//排序
	public function npx(){
		$npx  = Request::post();
		$data = [];
		foreach($npx as $key => $val){
			$data[$key]['id'] = $key;
			$data[$key]['npx']= $val;
		}
		// dump($data);
		$CateModel = new CateModel();
		$res = $CateModel->saveAll($data);
		if($res){
			return ['code' => 1,'msg' => '排序成功'];
		}
	}
}