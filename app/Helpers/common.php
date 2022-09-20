<?php

    function getCategory(){
        $cat = \App\Models\BlogCategories::pluck('category');
        return $cat;
    }

    function getTags(){
        $tags = \App\Models\Tags::orderBy('total' , 'desc')->get();
        return $tags;
    }


