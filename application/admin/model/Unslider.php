<?php

namespace app\admin\model;

use think\Model;

class Unslider extends Model{

	protected $pk = 'id';
	protected $table = 'unslider';
	protected $autoWriteTimestamp = true;
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
}