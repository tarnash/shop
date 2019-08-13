<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 013  13.08.2019
 * Time: 17:30
 */

namespace app\models;


use yii\db\ActiveRecord;

class Product extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%product}}';
    }
    public function getCategory()
    {
        return $this->hasOne(Category::class, ['id' => 'category_id']);
    }
}