<?php

namespace app\admin\controller;

use think\Controller;
use app\admin\common\controller\Base;

class Image extends Base{
	
	//图片上传
	public function upload(){
		$file = request()->file('file');
		$info = $file->move( './uploads');
		if($info){
			$path = '/uploads/'.$info->getSaveName();
			return ['code' => 0, 'msg' => 'success', 'data' => [ 'url' => $path]];
		}else{
			echo $file->getError();
		}
	}

	//多图上传
	public function uploads(){
		$file = request()->file();
		dump($file);
	}
}