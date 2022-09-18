<?php
function getNavCategory(){
    $cat = \App\Models\BlogCategories::pluck('category');
    return $cat;
}
