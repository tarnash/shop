<li>
    <a href="<?= \yii\helpers\Url::to(['category/view', 'name' => strtolower($category['name'])]) ?>">
        <?= $category['name']?>
        <?php if( isset($category['childs']) ): ?>
            <span class="badge pull-right"><i class="fa fa-plus"></i></span>
        <?php endif;?>
    </a>
    <?php if( isset($category['childs']) ): ?>
        <ul>
            <?= $this->getMenuHtml($category['childs'])?>
        </ul>
    <?php endif;?>
</li>