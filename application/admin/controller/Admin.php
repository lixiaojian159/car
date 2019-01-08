<?php

namespace app\admin\controller;

use think\Controller;

class Admin extends Controller{

	public function index(){
		return $this->view->fetch();
	}

	public function welcome(){
		return $this->view->fetch();
	}
}