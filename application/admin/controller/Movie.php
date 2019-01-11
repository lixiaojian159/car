<?php

namespace app\admin\controller;

use think\Controller;

use think\Facade\Request;

use app\admin\model\Movie as MovieModel;

class Movie extends Controller{

	public function index(){
		//获取视频
		$movies = MovieModel::order('npx','desc')->paginate(10);
		$this->view->assign('movies',$movies);
		return $this->view->fetch();
	}

	//添加
	public function add(){
		return $this->view->fetch();
	}

   //添加逻辑
	public function addDo(){
		$npx  = MovieModel::max('npx');
		$data = Request::post();
		$data['npx'] = intval($npx + 1);
		unset($data['file']);
		$res = MovieModel::create($data);
		if($res){
			return ['code' => 1 , 'msg' => '添加成功'];
		}else{
			return ['code' => 0 , 'msg' => '添加失败'];
		}
	}

	//修改
	public function update(){
		$id = Request::param('id');
		$movie = MovieModel::find($id);
		$this->view->assign('movie',$movie);
		return $this->view->fetch();
	}

	//修改逻辑
	public function updateDo(){
		$data = Request::post();
		unset($data['file']);
		if(!$data['pic']) unset($data['pic']);
		$id = $data['id'];
		unset($data['id']);
		$res = MovieModel::where('id',$id)->setField($data);
		if($res){
			return ['code'=> 1 , 'msg' => '修改成功'];
		}else{
			return ['code'=> 0 , 'msg' => '修改失败'];
		}
	}

	//删除
	public function del(){
		$id = Request::post('id');
		$res = MovieModel::destroy($id);
		if($res){
			return ['code' => 1, 'msg' => '删除成功'];
		}else{
			return ['code' => 0, 'msg' => '删除失败'];
		}
	}

	//状态
	public function status(){
		$id = Request::post('id');
		$status = Request::post('status');
		dump($id,$status);
		$res = MovieModel::where('id',$id)->setField('status',$status);
	}

	//排序
	public function npx(){
		$npx = Request::post();
		$data = [];
		foreach($npx as $key => $val){
			$data[$key]['id'] = $key;
			$data[$key]['npx']= $val;
		}
		$MovieModel = new MovieModel();
		$res = $MovieModel->saveAll($data);
		if($res){
			return ['code'=>1,'msg'=>'排序成功'];
		}
	}

	//批量删除
	public function delAll(){
		$ids = Request::post('ids');
		$res = MovieModel::destroy($ids);
		if($res){
			return ['code'=>1];
		}
	}
}