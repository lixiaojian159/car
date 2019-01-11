<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 流年 <liu21st@gmail.com>
// +----------------------------------------------------------------------

// 应用公共文件
use think\Db;
/**
 * [getStringByArr  把一维数组转化为字符串]
 * @param  [array]  $arr [一维数组]
 * @return [string]      [字符串]
 */
function getStringByArr($arr){
	$str = '';
	foreach($arr as $key => $val){
		$str .= ','.$val;
	}
	return $str;
}

/**
 * [getCateNameById 通过id, 获取分类名称]
 * @param  [int]    $id
 * @return [string]    
 */
function getCateNameById($id){
	$cate = Db::table('cate')->where('id',$id)->find();
	return $cate['name'];
}

/**
 * [getImageByArr 根据多照片的string, 获取第一张照片]
 * @param  [type] $arr [description]
 * @return [type]      [description]
 */
function getImageByArr($arr){
	$arr = explode('@@@',$arr);
	array_shift($arr);
	return $arr[0];
}

function getWewType($type){
	if($type == 1){
		return '企业新闻';
	}else{
		return '常见问题';
	}
}