<?php

namespace app\admin\model;

use think\Model;

class Cate extends Model{

	protected $pk = 'id';
	protected $table = 'cate';
	protected $autoWriteTimestamp = true;
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
}