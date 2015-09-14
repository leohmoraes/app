<?php

namespace app\bundle\welcome\controllers;

class PagesController extends Controller
{
    public function display($page)
    {
        $this->template = $page;
        try {
            return $this->view()->render($this->template());
        } catch (\Exception $e) {
            $ex = ($this->app->debug) ? $e : new \momentphp\exceptions\NotFoundException;
            throw $ex;
        }
    }
}
