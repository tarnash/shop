<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%category}}`.
 */
class m190813_122710_create_category_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%category}}', [
            'id' => $this->primaryKey()->unsigned(),
            'parent_id' => $this->integer()->unsigned()->notNull()->defaultValue(0),
            'name' => $this->string()->notNull(),
            'keywords' => $this->string()->defaultValue(null),
            'description' => $this->string()->defaultValue(null),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%category}}');
    }
}
