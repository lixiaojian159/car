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

    //修改逻辑
	public function addDo(){
		$data = Request::post();
		$data['content'] = htmlspecialchars($data['content']);
		$id = $data['id'];
		unset($data['id']);
		$res = Db::table('about')->where('id',$id)->setField('content',$data['content']);
		if($res){
			echo '<script>
			          alert("修改成功");
			          window.location.href = "'.url('admin/About/index',['id'=>$id]).'";
			      </script>';
		}
	}

	//合力实力
	public function team(){
		$count = Db::table('about')->where('type',1)->count();
		$this->view->assign('count',$count);
		$teams = Db::table('about')->where('type',1)->paginate(10);
		$this->view->assign('teams',$teams);
		return $this->view->fetch();
	}

	//合力实力添加
	public function teamAdd(){
		return $this->view->fetch();
	}

	//合力实力添加逻辑
	public function teamAdddo(){
		$data = Request::post();
		unset($data['file']);
		$res = Db::table('about')->insert($data);
		if($res){
			return ['code' => 1];
		}
	}

	//合力实力修改
	public function teamUpdate(){
		$id = Request::param('id');
		$team = Db::table('about')->find($id);
		$this->view->assign('team',$team);
		return $this->view->fetch();
	}

	//合力实力修改逻辑
	public function teamUpdatedo(){
		$data = Request::post();
		unset($data['file']);
		if(!$data['content']) unset($data['content']);
		$res = Db::table('about')->update($data);
		if($res){
			return ['code' => 1];
		}
	}

	//删除逻辑
	public function del(){
		$id = Request::post('id');
		$res = Db::table('about')->delete($id);
		if($res){
			return ['code' => 1];
		}
	}

	//批量删除
	public function dels(){
		$ids = Request::post('ids');
		$res = Db::table('about')->delete($ids);
		if($res){
			return ['code' => 1];
		}
	}

}