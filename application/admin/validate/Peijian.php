<?php

namespace app\admin\validate;

use think\Validate;

class Peijian extends Validate{

	protected $rule = [
		'name'    => 'require|length:2,10',
		'cate_id' => 'require|integer',
		'pic'     => 'require',
		'status'  => 'in:0,1',
		'npx'     => 'integer'
	];
}