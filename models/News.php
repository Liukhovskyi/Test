<?php
/**
 * Created by PhpStorm.
 * User: yarik
 * Date: 18.01.2019
 * Time: 1:47
 */

class News
{

    public static function getNewsItemById($id)
    {
        $id = intval($id);

        if ($id) {

            $db = Db::getConnection();

            $result = $db->query('SELECT * from news WHERE id=' .$id);
            $result->setFetchMode(PDO::FETCH_ASSOC);

            $newsItem = $result->fetch();

            return $newsItem;
        }
    }

    public static function getNewsList()
    {

        $db = Db::getConnection();


        $newsList = array();

        $result = $db->query('SELECT id, title, date, short_content, preview, author_name '
                . 'FROM news '
                . 'ORDER BY date DESC '
                . 'LIMIT 3');
        $i = 0;
        while ($row = $result->fetch()) {
            $newsList[$i]['id'] = $row['id'];
            $newsList[$i]['title'] = $row['title'];
            $newsList[$i]['date'] = $row['date'];
            $newsList[$i]['short_content'] = $row['short_content'];
            $newsList[$i]['preview'] = $row['preview'];
            $newsList[$i]['author_name'] = $row ['author_name'];
            $i++;
        }
        return $newsList;
    }
}