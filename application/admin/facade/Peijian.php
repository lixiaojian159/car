<?php

namespace app\admin\facade;

use think\Facade;

class Peijian extends Facade{

	protected static function getFacadeClass()
    {
    	return 'app\admin\validate\Peijian';
    }
}