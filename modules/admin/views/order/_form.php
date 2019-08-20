<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use kartik\datetime\DateTimePicker;
use yii\db\Expression;
/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Order */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="order-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'created_at')->widget(DateTimePicker::class,[
        'language' => 'ru',
        'name' => 'datetime_10',
        'options' => ['placeholder' => 'Автоматическая установка даты при сохранении'],

        'pluginOptions' => [
            'format' => 'yyyy-mm-dd H:ii:s',

            'todayHighlight' => true
        ]
    ]) ?>

    <?= $form->field($model, 'updated_at')->widget(DateTimePicker::class,[
            'language' => 'ru',
            'name' => 'datetime_10',
            'options' => ['placeholder' => 'Автоматическая установка даты при сохранении'],

            'pluginOptions' => [
                'format' => 'yyyy-mm-dd H:ii:s',

                'todayHighlight' => true
            ]
    ]) ?>

    <?= $form->field($model, 'qty')->textInput() ?>

    <?= $form->field($model, 'sum')->textInput() ?>

    <?= $form->field($model, 'status')->dropDownList([ '0' => 'Активен', '1' => 'Завершен']) ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'email')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'phone')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'adress')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
