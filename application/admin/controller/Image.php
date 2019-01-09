<?php

namespace app\admin\controller;

use think\Controller;

class Image extends Controller{
	
	//图片上传
	public function upload(){
		$file = request()->file('file');
		$info = $file->move( './uploads');
		if($info){
			$path = '/uploads/'.$info->getSaveName();
			return ['code' => 0, 'msg' => 'success', 'data' => [ 'url' => $path]];
		}
	}
}