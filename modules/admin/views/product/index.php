<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Products';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Create Product', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            [
                'attribute' => 'category_id',
                'value' => function($data){
                    return $data->category->name;
                }
            ],
            //'category_id',
            'name',
            //'content:text',
            //'keywords',
            //'description',
            [
                'attribute' => 'image',
                'value' => function($data){
                    return "<img src='{$data->getImage()->getUrl('x50')}'>";
                },
                'format' => 'html',
            ],
            //'image',
            'price',
            [
                'attribute' => 'hit',
                'value' => function($data){
                    return !$data->hit ? '<span class="text-danger">Нет</span>' : '<span class="text-success">Да</span>';
                },
                'format' => 'html',
            ],
            //'hit',
            [
                'attribute' => 'new',
                'value' => function($data){
                    return !$data->new ? '<span class="text-danger">Нет</span>' : '<span class="text-success">Да</span>';
                },
                'format' => 'html',
            ],
            //'new',
            [
                'attribute' => 'sale',
                'value' => function($data){
                    return !$data->sale ? '<span class="text-danger">Нет</span>' : '<span class="text-success">Да</span>';
                },
                'format' => 'html',
            ],
            //'sale',
            [
                'attribute' => 'in_stock',
                'value' => function($data){
                    return !$data->in_stock ? '<span class="text-danger">Нет</span>' : '<span class="text-success">Есть</span>';
                },
                'format' => 'html',
            ],
            //'in_stock',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>
