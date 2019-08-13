<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%product}}`.
 */
class m190813_124947_create_product_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%product}}', [
            'id' => $this->primaryKey()->unsigned(),
            'category_id' => $this->integer()->unsigned()->notNull(),
            'name' => $this->string()->notNull(),
            'content' => $this->text(),
            'price' => $this->float()->unsigned()->notNull()->defaultValue(0),
            'keywords' => $this->string()->defaultValue(null),
            'description' => $this->string()->defaultValue(null),
            'img' => $this->string()->defaultValue('no-image.png'),
            'hit' => "ENUM('0','1') NOT NULL DEFAULT '0'",
            'new' => "ENUM('0','1') NOT NULL DEFAULT '0'",
            'sale' => "ENUM('0','1') NOT NULL DEFAULT '0'",
            'in_stock' => "ENUM('0','1') NOT NULL DEFAULT '0'",
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%product}}');
    }
}
