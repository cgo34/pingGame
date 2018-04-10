<?php
/**
 * Created by PhpStorm.
 * User: Geoffroy
 * Date: 11/12/2017
 * Time: 21:41
 */


class compteur
{
    public $count;



    public function __construct() {

        $this->count = 0;
    }



    /**
     * @return int
     */
    public function getCount()
    {
        return $this->count;
    }

    public function increment(){
        $this->count = $this->count + 1;
    }
}
