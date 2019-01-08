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