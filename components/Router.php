<?php
/**
 * Created by PhpStorm.
 * User: yarik
 * Date: 14.01.2019
 * Time: 22:12
 */

class Router
{
    private $routes;


    public function __construct()
    {
        $routesPath = ROOT.'/config/routes.php';
        $this->routes = include ($routesPath);
    }

    /**
     * Returns request string
     * @return string
     */

    private function getURI()
    {
        if (!empty($_SERVER['REQUEST_URI'])) {
            return trim($_SERVER['REQUEST_URI'], '/');
        }

    }

    public function run()
    {
        //Get query string

        $uri = $this->getURI();

        //Check for such a request in routes.php
        foreach ($this->routes as $uriPattern => $path) {

            //compare $uriPattern and $uri
            if (preg_match("~$uriPattern~", $uri)) {


                //Получаємо внутрішній шлях.
                $internalRoute = preg_replace("~$uriPattern~", $path, $uri);

                //Determine which controller and
                // action is handling the request

                $segments = explode('/', $internalRoute);

                $controllerName = array_shift($segments). 'Controller';
                $controllerName = ucfirst($controllerName);

                $actionName = 'action'.ucfirst(array_shift($segments));

                $parameters = $segments;

                //Connect the class controller file

                $controllerFile = ROOT . '/controllers/'. $controllerName . '.php';

                if (file_exists($controllerFile)) {
                    include_once ($controllerFile);
                }

                //Create object call method
                $controllerObject = new $controllerName;

                $result = call_user_func_array(array($controllerObject, $actionName), $parameters);

                if ($result != null) {
                    break;
                }

            }

        }

    }

}