<?php

class CssRule extends DbTable {
   protected $_table;

    function __construct($id){
        global $config;
        $this->_table = $config['tables']['css_rules_table'];
        parent::__construct($id);
    }
}