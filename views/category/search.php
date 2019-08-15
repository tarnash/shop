<?php
use \app\components\MenuWidget;
use \yii\helpers\Html;
use \yii\helpers\Url;
?>

<section id="advertisement">
    <div class="container">
        <img src="/images/shop/1advertisement.jpg" alt="" />
    </div>
</section>


<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Category</h2>
                    <ul class="catalog category-products">
                        <?= MenuWidget::widget(['tpl' => MenuWidget::LIST]) ?>
                    </ul><!--category_menu-->

                    <div class="brands_products"><!--brands_products-->
                        <h2>Brands</h2>
                        <div class="brands-name">
                            <ul class="nav nav-pills nav-stacked">
                                <li><a href="#"> <span class="pull-right">(50)</span>Acne</a></li>
                                <li><a href="#"> <span class="pull-right">(56)</span>Grüne Erde</a></li>
                                <li><a href="#"> <span class="pull-right">(27)</span>Albiro</a></li>
                                <li><a href="#"> <span class="pull-right">(32)</span>Ronhill</a></li>
                                <li><a href="#"> <span class="pull-right">(5)</span>Oddmolly</a></li>
                                <li><a href="#"> <span class="pull-right">(9)</span>Boudestijn</a></li>
                                <li><a href="#"> <span class="pull-right">(4)</span>Rösch creative culture</a></li>
                            </ul>
                        </div>
                    </div><!--/brands_products-->

                    <div class="price-range"><!--price-range-->
                        <h2>Price Range</h2>
                        <div class="well text-center">
                            <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                            <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
                        </div>
                    </div><!--/price-range-->

                    <div class="shipping text-center"><!--shipping-->
                        <img src="/images/home/shipping.jpg" alt="" />
                    </div><!--/shipping-->

                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">Поиск по запросу: <?= $q ?></h2>
                    <?php if (!empty($products)):?>
                        <?php foreach($products as $product) :?>
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <a href="<?= Url::to(['product/view', 'name' => strtolower($category->name), 'id' => $product->id])?>">
                                                <?= Html::img('@web/images/products/' . $product->img, ['alt' => $product->name])?>
                                            </a>
                                            <h2>$<?= $product->price ?></h2>
                                            <a href="<?= Url::to(['product/view', 'name' => strtolower($category->name), 'id' => $product->id])?>" title="<?= $product->name ?>">
                                                <p><?= $product->name ?></p>
                                            </a>
                                            <a href="<?= Url::to(['cart/add', 'id' => $product->id])?>" data-id="<?= $product->id?>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Add to cart</a>
                                        </div>
                                        <?php if (!empty($product->new)):?>
                                            <?= Html::img('@web/images/home/new.png', ['alt' => 'Новинка!', 'class' => 'new'])?>
                                        <?php endif;?>
                                        <?php if (!empty($product->sale)):?>
                                            <?= Html::img('@web/images/home/sale.png', ['alt' => 'Распродажа!', 'class' => 'new'])?>
                                        <?php endif;?>
                                    </div>
                                    <div class="choose">
                                        <ul class="nav nav-pills nav-justified">
                                            <li><a href="#"><i class="fa fa-plus-square"></i>Add to wishlist</a></li>
                                            <li><a href="#"><i class="fa fa-plus-square"></i>Add to compare</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach;?>
                        <div class="clearfix"></div>
                        <?php
                        echo \yii\widgets\LinkPager::widget([
                            'pagination' => $pages,
                        ]);
                        ?>
                    <?php else:;?>
                        <h2>Ничего не найдено ...</h2>
                    <?php endif;?>
                </div><!--features_items-->

            </div>
        </div>
    </div>
</section>