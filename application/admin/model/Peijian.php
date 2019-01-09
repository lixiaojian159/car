<?php

namespace app\admin\model;

use think\Model;

class Peijian extends Model{

	protected $pk = 'id';
	protected $table = 'peijian';
	protected $autoWriteTimestamp = true;
	protected $createTime = 'create_time';
	protected $updateTime = 'update_time';
}