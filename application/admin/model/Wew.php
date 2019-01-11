<?php

namespace app\admin\model;

use think\Model;

class Wew extends Model{

	protected $pk = 'id';
	protected $table = 'wew';
	protected $autoWriteTimestamp = true;
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
}