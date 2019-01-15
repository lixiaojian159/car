<?php

namespace app\admin\controller;

use think\Controller;

use think\facade\Request;
use think\Db;
use think\facade\Cookie;

class Index extends Controller{

	public function index(){
		$web = Db::table('web')->find();
		$this->view->assign('web',$web);
		return $this->view->fetch();
	}

	//验证登陆
	public function check(){
		$data = Request::post();
		$verifyModel = new Verify();
		$resCode = $verifyModel->check_verify($data['code']);
		if(!$resCode){
			return ['code'=>0 , 'msg'=>'验证码错误'];
		}

		$user = Db::table('user')->where('name',$data['name'])->select();
		if(!$user){
			return ['code'=>0 ,'msg'=>'账户不存在'];
		}

		if(md5($data['password'].'hello') != $user[0]['password']){
			return ['code'=>0 , 'msg' => '密码错误'];
		}

		//验证通过,保存cookie
		Cookie::set('user_id',$user[0]['id']);
		Cookie::set('user_name',$data['name']);
		return ['code' => 1];
	}

	//退出登陆
	public function logout(){
		Cookie::delete('user_id');
		Cookie::delete('user_name');
		$this->redirect('/admin/Index/index');
	}
}