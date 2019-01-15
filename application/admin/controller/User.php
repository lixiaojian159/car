<?php

namespace app\admin\controller;

use app\admin\common\controller\Base;

use think\Db;
use think\facade\Request;

class User extends Base{

	public function index(){
		$user = Db::table('user')->find(1);
		$this->view->assign('user',$user);
		return $this->view->fetch();
	}

	//修改用户信息
	public function add(){
		$verifyModel = new Verify();
		$data = Request::post();

		if(!$verifyModel->check_verify($data['code'])){
			return ['code'=>0 , 'msg' => '验证码错误'];
		}

		if($data['password'] != $data['repassword']){
			return ['code'=>0 ,'msg'=>'两次密码不一致'];
		}

		$id = $data['id'];
		unset($data['id']);
		$data['password'] = md5($data['password'].'hello');
		unset($data['repassword']);
		unset($data['code']);

		$res = Db::table('user')->where('id',$id)->update($data);

		if($res){
			return ['code'=>1 , 'msg' => '修改成功'];
		}else{
			return ['code'=> 0 ,'msg' => '修改失败'];
		}

	}
}