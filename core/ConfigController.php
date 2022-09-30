<?php
namespace Core;

class ConfigController 
{   
    private string $url;
    private array $urlConjunto;
    private string $urlController;
    private string $urlMetodo;


    public function __construct()
    {
        if(!empty(filter_input(INPUT_GET,"url", FILTER_DEFAULT))):
            $this->url = filter_input(INPUT_GET,"url", FILTER_DEFAULT);   
            $this->urlConjunto = explode("/", $this->url);

            if(isset($this->urlConjunto[0]) AND (isset($this->urlConjunto[1]))):
                $this->urlController = $this->urlConjunto[0];
                $this->urlMetodo = $this->urlConjunto[1];
            else:
                $this->urlController = "Erro";
                $this->urlMetodo = "index";
            endif;            
            
        else:
            $this->urlController = "Home";
            $this->urlMetodo     = "index";
        endif;

        echo "Controller: {$this->urlController} - Metodo: {$this->urlMetodo}<br/>";
    }

    public function carregar(){
       $urlController = ucwords($this->urlController);
       $classe = "\\Sts\\Controllers\\" .$urlController;
        echo $classe . "<br>";
       $classeCarregar = new $classe;
       $classeCarregar->index();

    
    }
}