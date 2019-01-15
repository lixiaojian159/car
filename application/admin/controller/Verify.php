<?php

namespace app\admin\controller;

use think\captcha\Captcha;

class Verify{

    //生成验证码
	public function makeVerify(){
		$captcha = new Captcha();
		$captcha->useCurve = false;
		$captcha->length   = 4;
		return $captcha->entry();
	}

	//验证验证码
	// 检测输入的验证码是否正确，$code为用户输入的验证码字符串，$id多个验证码标识
	function check_verify($code, $id = ''){
	    $captcha = new Captcha();
	    return $captcha->check($code, $id);
	}
}