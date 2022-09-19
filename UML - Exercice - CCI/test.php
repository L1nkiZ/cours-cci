<?php

class Document
{
    protected $nom;
    protected $dispo;

    public function est_disponible()
    {
        return $estDispo;
    }
    
    public function emprunter()
    {
        return $estEmprinter;
    }

    public function rendre()
    {
        return $estRendu;
    }
}

class Ouvrage extends Document
{
    public function printItem($string)
    {

    }
}

class Revue extends Document
{

    protected $numero;
    protected $date_parution;

    public function printItem($string)
    {

    }
}

?>