<?php
function getCategory(){
    $cat = \App\Models\BlogCategories::pluck('category');
    return $cat;
}
