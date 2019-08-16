<?php

namespace app\components;

use yii\db\ActiveRecord;
use yii\base\Behavior;

class DeleteCashBehavior extends Behavior
{

    public function events()
    {
        return [
            ActiveRecord::EVENT_BEFORE_INSERT => 'beforeRecord',
            ActiveRecord::EVENT_BEFORE_UPDATE => 'beforeRecord',
            ActiveRecord::EVENT_BEFORE_DELETE => 'beforeRecord',
        ];
    }

    public function beforeRecord($event)
    {
        \Yii::$app->cache->delete('menu');
    }
}