<?php
namespace App\Classes;

use Exception;

class Smartphone {
    public $label;
    public $description;
    public $brand;

    protected $priceTTC;
    protected $priceHT;
    protected $vat = 20;
    protected $quantity;
    
    public function getPriceTTC()
    {
        return $this->priceTTC;
    }

    public function setPriceTTC(float $price): void
    {
        $this->priceTTC = $price;
    }
    
    public function getPriceHT()
    {
        return $this->priceHT;
    }

    public function setPriceHT(float $price): void
    {
        $this->priceHT = $price;
    }

    public function getVat()
    {
        return $this->vat;
    }

    public function setVat(float $vat): void
    {
        $this->vat = $vat;
    }

    public function getQuantity()
    {
        return $this->quantity;
    }

    public function setQuantity(int $quantity): void
    {
        $this->quantity = $quantity;
    }

    public function fullSetFromPriceTTC($priceTTC = null, $vat = null)
    {
        // ERROR if this->priceHT and priceTTC == null
        if ((null === $this->priceTTC and null === $priceTTC) 
            or (null === $this->vat and null === $vat) 
        ) {
            throw new Exception('Error: required parameter');
        }

        // Set priceTTC
        if (null !== $priceTTC) {
            $this->setPriceTTC($$priceTTC);
        }

        // Set vat
        if (null !== $vat) {
            $this->setVat($vat);
        }

        // Calcul and affect this->priceHT
        $this->setPriceHT($this->calculPriceHT());

        // Return priceHT
        return $this->priceHT;
    }

    public function calculPriceTTC($priceHT = null, $vat = null)
    {
        return $this->priceHT * (1 + $this->vat/100);
    }

    public function calculPriceHT($priceHT = null, $vat = null)
    {
        return $this->priceTTC / (1 + $this->vat/100);
    }

    public function calculTotalPriceTTC()
    {
        // Check quantity
        if ( !is_numeric($this->quantity) ) {
            throw new Exception('Error: quantity is not set !');
        }

        // Check priceTTC
        if ( !is_numeric($this->priceTTC) ) {
            throw new Exception('Error: priceTTC is not set !');
        }

        return $this->priceTTC * $this->quantity; 
    }
}
