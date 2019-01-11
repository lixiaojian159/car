<?php

namespace app\admin\model;

use think\Model;

class Movie extends Model{

	protected $pk = 'id';
	protected $table = 'movie';
	protected $autoWriteTimestamp = true;
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
}