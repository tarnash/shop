<?php
/**
 * Created by PhpStorm.
 * User: admin
 * Date: 013  13.08.2019
 * Time: 17:28
 */

namespace app\models;


use yii\db\ActiveRecord;

class Category extends ActiveRecord
{
    public static function tableName()
    {
        return '{{%category}}';
    }

    public function getProduct()
    {
        return $this->hasMany(Product::class, ['category_id' => 'id']);
    }
}