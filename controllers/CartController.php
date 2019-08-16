<?php

namespace app\controllers;


namespace app\controllers;
use app\models\Order;
use app\models\OrderItems;
use app\models\Product;
use app\models\Cart;
use Yii;

class CartController extends AppController
{
    public function actionAdd()
    {
        $id = Yii::$app->request->get('id');
        $qty = (integer)Yii::$app->request->get('qty');
        $qty = !$qty ? 1 : $qty;
        $product = Product::findOne($id);
        if(empty($product)) return false;
        $session =Yii::$app->session;
        $session->open();
        $cart = new Cart();
        $cart->addToCart($product, $qty);
        if (!Yii::$app->request->isAjax){
            return $this->redirect(Yii::$app->request->referrer);
        }
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }

    public function actionClear()
    {
        $session =Yii::$app->session;
        $session->open();
        $session->remove('cart');
        $session->remove('cart.qty');
        $session->remove('cart.sum');
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }

    public function actionDelItem()
    {
        $id = Yii::$app->request->get('id');
        $session =Yii::$app->session;
        $session->open();
        $cart = new Cart();
        $cart->deleteFromCartAndRecalc($id);
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }
    public function actionView()
    {
        $session =Yii::$app->session;
        $session->open();
        $this->setMeta('Корзина');
        $order = new Order();
        if ($order->load(Yii::$app->request->post())){
            $order->qty = $session['cart.qty'];
            $order->sum = $session['cart.sum'];
            if ($order->save()){
                $this->saveOrderItems($session['cart'], $order->id);
                Yii::$app->session->setFlash('success', 'Ваш заказ принят.');

                //отправка EMAIL админу и клиенту
                $this->sendEmail(Yii::$app->params['senderEmail'], Yii::$app->params['senderName'], Yii::$app->params['adminEmail'], $order->email, $order->id, $session);

                $session->remove('cart');
                $session->remove('cart.qty');
                $session->remove('cart.sum');
                return $this->refresh();
            }else{
                Yii::$app->session->setFlash('error', 'Ошибка оформления заказа!');
            }
        }
        return $this->render('view', compact('session','order'));
    }

    public function actionShow()
    {
        $session =Yii::$app->session;
        $session->open();
        $this->layout = false;
        return $this->render('cart-modal', compact('session'));
    }

    protected function saveOrderItems($items, $orderId)
    {
        foreach ($items as $id => $item){
            $orderItems = new OrderItems();
            $orderItems->order_id = $orderId;
            $orderItems->product_id = $id;
            $orderItems->name = $item['name'];
            $orderItems->price = $item['price'];
            $orderItems->qty_item = $item['qty'];
            $orderItems->sum_item = $item['qty'] * $item['price'];
            $orderItems->save();
        }
    }

    protected function sendEmail($senderEmail, $senderName, $adminEmail, $clientEmail, $orderId, $session)
    {
        //отправка EMAIL админу
        Yii::$app->mailer->compose('order', compact('session'))
            ->setFrom([$senderEmail => $senderName])
            ->setTo($adminEmail)
            ->setSubject('Заказ №' . $orderId)
            ->send();
        //отправка EMAIL клиенту
        Yii::$app->mailer->compose('order', compact('session'))
            ->setFrom([$senderEmail => $senderName])
            ->setTo($clientEmail)
            ->setSubject('Заказ №' . $orderId)
            ->send();
    }
}