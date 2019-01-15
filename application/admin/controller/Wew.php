<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\common\controller\Base;

use think\facade\Request;

use app\admin\model\Wew as WewModel;

class Wew extends Base{

	public function index(){
        $type = Request::param('type') ? Request::param('type') : 1;
        $this->view->assign('type',$type);
        //条数
        $count = WewModel::where('type',$type)->count();
        $this->view->assign('count',$count);
		//信息列表
		$wews = WewModel::where('type',$type)->paginate(2,false,['query'=>request::param()]);
		$this->view->assign('wews',$wews);
		return $this->view->fetch();
	}

	//添加
	public function add(){
		return $this->view->fetch();
	}

    //添加逻辑
	public function addDo(){
		$data = Request::post();
		unset($data['file']);
		if($data['type'] == 2){
			$data['descs'] = '';
			$data['pic']   = '';
		}
		$data['content'] = htmlspecialchars($data['content']);

		$res = WewModel::create($data);
		if($res){
			echo '<script>
			          alert("添加成功");
			          window.location.href = "'.url("admin/Wew/index").'";
			      </script>';
		}else{
			echo '<script>
			          alert("添加失败");
			          window.location.href = "'.url("admin/Wew/index").'";
			      </script>';
		}
	}

	//修改
	public function update(){
		$id = Request::param('id');
		$wew= WewModel::find($id);
		$wew['content'] = htmlspecialchars_decode($wew['content']);
		$this->view->assign('wew',$wew);
		return $this->view->fetch();
	}

	//修改逻辑
	public function updateDo(){
		$data = Request::post();
		unset($data['file']);
		if(isset($data['pic']) && !$data['pic']) unset($data['pic']);
		$data['content'] = htmlspecialchars($data['content']);
		$id = $data['id'];
		unset($data['id']);
		$res =WewModel::where('id',$id)->setField($data);
		if($res){
			echo '<script>
			          alert("修改成功");
			          window.location.href = "'.url("admin/Wew/index").'";
			      </script>';
		}else{
			echo '<script>
			          alert("添加失败");
			          window.location.href = "'.url("admin/Wew/index").'";
			      </script>';
		}
	}

	//状态
	public function status(){
		$id = Request::post('id');
		$status = Request::post('status');
		$res = WewModel::where('id',$id)->setField('status',$status);
		dump($res);
	}

	//删除
	public function del(){
		$id = Request::post('id');
		$res = WewModel::destroy($id);
		if($res){
			return ['code'=>1 , 'msg' => '删除成功'];
		}else{
			return ['code'=>1 , 'msg' => '删除失败'];
		}
	}

	//批量删除
	public function delAll(){
		$ids = Request::post('ids');
		$res = WewModel::destroy($ids);
		if($res){
			return ['code' => 1];
		}
	}
}