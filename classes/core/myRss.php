<?php

    class myRss {
        private $url;

        function __construct($url){
            $this->url = $url;
        }

        function getRaw(){
            return $this->rawFeed;
        }

        function getXML(){
            return $this->feedXML;
        }

        function getItems(){

            $doc = new DOMDocument();
            $doc->load($this->url);
            $arrFeeds = array();
            foreach ($doc->getElementsByTagName('item') as $node) {
                $itemRSS = array ( 
                    'title' => $node->getElementsByTagName('title')->item(0)->nodeValue,
                    'link' => $node->getElementsByTagName('link')->item(0)->nodeValue
                );
                array_push($arrFeeds, $itemRSS);
           }

           if(empty($itemRSS)){//try atom
            foreach ($doc->getElementsByTagName('entry') as $node) {
                $itemRSS = array ( 
                    'title' => strip_tags($node->getElementsByTagName('title')->item(0)->nodeValue),
                    'link' => $node->getElementsByTagName('link')->item(0)->getAttribute('href')
                );
                array_push($arrFeeds, $itemRSS);
             }

           }

           return $arrFeeds;

           
        }
    }
