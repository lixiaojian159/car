<?php

namespace app\admin\facade;

use think\Facade;

class Cate extends Facade{

	protected static function getFacadeClass()
    {
    	return 'app\admin\validate\Cate';
    }
}