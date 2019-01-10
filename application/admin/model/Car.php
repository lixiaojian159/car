<?php

namespace app\admin\model;

use think\Model;

class Car extends Model{

	protected $pk = 'id';
	protected $table = 'car';
	protected $autoWriteTimestamp = true;
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
}