<?php

namespace app\admin\validate;

use think\Validate;

class Cate extends Validate{

	protected $rule = [
		'name'   => 'require|length:2,10',
		'pid'    => 'integer',
		'static' => 'in:0,1',
		'npx'    => 'integer'
	];
}