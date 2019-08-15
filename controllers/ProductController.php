<?php

namespace app\controllers;


use app\models\Product;
use Yii;

class ProductController extends AppController
{
    public function actionView()
    {
        $id = Yii::$app->request->get('id');
        $product = Product::findOne($id);
        if(empty($product))
            throw new \yii\web\HttpException(404, 'Такого товара нет');
        $this->setMeta(Yii::$app->name . ' | ' . $product->name, $product->keywords, $product->description);
        $hits = Product::find()->where(['hit' => '1'])->all();
        if(empty($hits))
            return $this->render('view', compact('product'));
        return $this->render('view', compact('product', 'hits'));
    }
}