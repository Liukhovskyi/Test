<?php
/**
 * Created by PhpStorm.
 * User: yarik
 * Date: 15.01.2019
 * Time: 1:32
 */

include_once ROOT. '/models/News.php';

class NewsController
{

    public function actionIndex()
    {
        $newsList = array();
        $newsList = News::getNewsList();

        require_once (ROOT.'/views/news/index.php');

        return true;
    }

    public function actionView($id)
    {
        if ($id) {
            $newsItem = News::getNewsItemById($id);

            echo '<pre>';
            print_r($newsItem);
            echo '</pre>';

            echo 'actionView';
        }

        return true;

    }

}