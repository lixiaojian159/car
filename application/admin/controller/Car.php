<?php

namespace app\admin\controller;

use think\Controller;

use app\admin\model\Cate;
use app\admin\model\Car as CarModel;
use app\admin\common\controller\Base;

use think\facade\Request;

class Car extends Base{

    //叉车列表
	public function index(){
		//叉车分类
		$cates = Cate::where('pid',1)->select();
		$this->view->assign('cates',$cates);
		//获取要搜索的分类
		$cateId = Request::param('cate_id') ? Request::param('cate_id') : $cates['0']['id'];
		$this->view->assign('cateId',$cateId);
		//条数
		$count = CarModel::where('cate_id',$cateId)->count();
		$this->view->assign('count',$count);
		//获取叉车列表
		$cars = CarModel::where('cate_id',$cateId)->order('npx','desc')->paginate(3,false,['query'=>request::param()]);
		//dump($cars);
		$this->view->assign('cars',$cars);
		return $this->view->fetch();
	}

    //叉车添加
	public function add(){
		//叉车分类
		$cates = Cate::where('pid',1)->select();
		$this->view->assign('cates',$cates);
		return $this->view->fetch();
	}

	//叉车添加逻辑
	public function addDo(){
		$data = Request::post();
		//自动算排序最大值
		$npx = CarModel::where('cate_id',$data['cate_id'])->max('npx');
		$data['npx'] = intval($npx + 1);
		//$data['pics'] = substr($data['pics'],3);//去掉图片的@@@
		$data['desc1']= htmlspecialchars($data['desc1']);
		$data['desc2']= htmlspecialchars($data['desc2']);
		$res = CarModel::create($data);
		if($res){
			echo '<script>
			         alert("添加成功");
			         window.location.href ="'.url("admin/Car/index").'";
			      </script>';
		}else{
			echo '<script>
			         alert("添加失败");
			         window.location.href ="'.url("admin/Car/index").'";
			      </script>';
		}
	}

	//叉车修改
	public function update(){
		//叉车分类
		$cates = Cate::where('pid',1)->select();
		$this->view->assign('cates',$cates);
		//具体叉车
		$id  = Request::param('id'); 
		$car = CarModel::find($id);
		$pics= $car['pics'];
		$arrPic = explode('@@@',$pics);
		array_shift($arrPic);
		$car['pics'] = $arrPic;
		$car['pics'] = $arrPic;
		$car['desc1'] = htmlspecialchars_decode($car['desc1']);
		$car['desc2'] = htmlspecialchars_decode($car['desc2']);
		$this->view->assign('car',$car);
		return $this->view->fetch();
	}

	//叉车修改逻辑
	public function updateDo(){
		$data = Request::post();
		if(!$data['pics']) unset($data['pics']);
		$data['desc1'] = htmlspecialchars($data['desc1']);
		$data['desc2'] = htmlspecialchars($data['desc2']);
		$id = $data['id'];
		unset($data['id']);
		$res = CarModel::where('id',$id)->setField($data);
		if($res){
			echo '<script>
			         alert("修改成功");
			         window.location.href = "'.url("admin/Car/index").'";
			      </script>';
		}else{
			echo '<script>
			         alert("修改失败");
			         window.location.href = "'.url("admin/Car/index").'";
			      </script>';
		}
	}

	//叉车状态修改逻辑
	public function status(){
		$id = Request::post('id');
		$status = Request::post('status');
		$res = CarModel::where('id',$id)->setField('status',$status);
		if($res){
			return ['code' => 1 ];
		}else{
			return ['code' => 0];
		}
	}

	//删除逻辑
	public function del(){
		$id  = Request::post('id');
		$res = CarModel::where('id',$id)->delete();
		if($res){
			return ['code' => 1 , 'msg' => '删除成功'];
		}else{
			return ['code' => 0 , 'msg' => '删除失败'];
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
		$CarModel = new CarModel();
		$res = $CarModel->saveAll($data);
	}

	//删除全部
	public function delAll(){
		$ids = Request::post('npx');
		$res = CarModel::destroy($ids);
		if($res){
			return ['code'=>1,'msg'=>'删除成功'];
		}else{
			return ['code'=>0,'msg'=>'删除失败'];
		}
	}

	//置顶
	public function top(){
		$id  = Request::post('id');
		$top = Request::post('top');
		dump($id.$top);
		$res = CarModel::where('id',$id)->setField('top',$top); 
	}
}