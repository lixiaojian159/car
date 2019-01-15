<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\common\controller\Base;

use app\admin\model\Cate;
use app\admin\model\Peijian as PeijianModel;
use app\admin\facade\Peijian as PeijianValidate;

use think\facade\Request;


class Peijian extends Base{
    
    //叉车配件的列表
	public function index(){
		//配件分类
		$cates = Cate::select(function($query){
			$query->where('pid',2);
		});
		$this->view->assign('cates',$cates);
		//接收搜索词
		$cateId = Request::param('cate_id') ? Request::param('cate_id') : $cates[0]['id'];
		//关键词搜索省略了(此处可以书写)
		$this->view->assign('cateId',$cateId);
		//条数
		$count = PeijianModel::where('cate_id',$cateId)->count();
		$this->view->assign('count',$count);
		//配件列表
		$peijians = PeijianModel::where('cate_id',$cateId)->order('npx','desc')->paginate(3,false,['query'=>request::param()]);
		$this->view->assign('peijians',$peijians);
		return $this->view->fetch();
	}

	//添加叉车配件
	public function add(){
		$cates = Cate::select(function($query){
			$query->where('pid',2);
		});
		$this->view->assign('cates',$cates);
		return $this->view->fetch();
	}

	//添加叉车配件逻辑
	public function addDo(){
		$data = Request::post();
		unset($data['file']);
		if(!PeijianValidate::check($data)){
			return ['code' => 0, 'msg' => PeijianValidate::getError()];
		}
		$res = PeijianModel::create($data);
		if($res){
			return ['code' => 1, 'msg' => '添加成功'];
		}else{
			return ['code' => 0, 'msg' => '添加失败'];
		}
	}

	//修改
	public function update(){
		$id = Request::param('id');
		$peijian = PeijianModel::where('id',$id)->find();
		$cates = Cate::select(function($query){
			$query->where('pid',2);
		});
		$this->view->assign('cates',$cates);
		$this->view->assign('peijian',$peijian);
		return $this->view->fetch();
	}

	//修改逻辑
	public function updateDo(){
		$data = Request::post();
		if(!$data['pic']) unset($data['pic']);
		unset($data['file']);
		$id = $data['id'];
		unset($data['id']);
		$res = PeijianModel::where('id',$id)->setField($data);
		if($res){
			return ['code' => 1 , 'msg' => '修改成功'];
		}else{
			return ['code' => 0 , 'msg' => '修改失败'];
		}
	}

	//修改状态
	public function status(){
		$id = Request::post('id');
		$status =Request::post('status');
		$res = PeijianModel::where('id',$id)->setField('status',$status);
		if($res){
			return ['code' => 1 ];
		}else{
			return ['code' => 0];
		}
	}

	//删除逻辑
	public function delete(){
		$id  = Request::post('id');
		$res = PeijianModel::where('id',$id)->delete();
		if($res){
			return ['code' => 1, 'msg' => '删除成功'];
		}else{
			return ['code' => 0, 'msg' => '删除失败'];
		}
	}

	//排序
	public function npx(){
		$npx = Request::post();
		$data = [];
		foreach($npx as $key => $val){
			$data[$key]['id'] = $key;
			$data[$key]['npx']= $val;
		}
		$PeijianModel = new PeijianModel();
		$res = $PeijianModel->saveAll($data);
	}

	//批量删除
	public function delAll(){
		$data = Request::post('npx');
		$res  = PeijianModel::destroy($data);
		if($res){
			return ['code' => 1 , 'msg' => '删除成功'];
		}else{
			return ['code' => 0 , 'msg' => '删除失败'];
		}
	}
}