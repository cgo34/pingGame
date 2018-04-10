<?php
/**
 * Created by PhpStorm.
 * User: Geoffroy
 * Date: 12/12/2017
 * Time: 20:04
 */
namespace myClass\Count;

class count
{
    public static $count = 0;
    private static $_instance = null;



    public static function getInstance() {

        if(true === is_null( self::$_instance )) {
            self::$_instance = new self();
        }

        return self::$_instance;
    }



    /**
     * @return int
     */
    public function getCount()
    {
        return count::$count;
    }

    public function increment(){
        count::$count = count::$count+1;
    }
}

