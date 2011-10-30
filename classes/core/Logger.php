<?php

class Logger {
    protected $dbh;

    function __construct($dbh){
        $this->dbh = $dbh;
    }

    function log($msg){
        global $config;
        $log_table = $config['tables']['log_table'];
        $q = "INSERT INTO $log_table VALUES ('',?,'1','1')";
        $sth = $dbh->prepare($q);
        $sth->execute(array($msg));
    }
}
