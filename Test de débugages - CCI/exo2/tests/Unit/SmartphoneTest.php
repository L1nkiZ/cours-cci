<?php
namespace Tests\Unit;

use App\Classes\Smartphone;
use Exception;
use Tests\TestCase;

class SmartphoneTest extends TestCase
{
    public function test_setPriceTTC()
    {
        $st = new Smartphone();

        // Test 1
        $this->assertNull($st->setPriceTTC(120));
        $this->assertSame($st->getPriceTTC(), 120.0);

        // Test 2
        $this->assertNull($st->setPriceTTC(120.5));
        $this->assertSame($st->getPriceTTC(), 120.5);
    }

    public function test_setPriceHT()
    {
        $st = new Smartphone();

        // Test 1
        $this->assertNull($st->setPriceHT(100));
        $this->assertSame($st->getPriceHT(), 100.0);

        // Test 2
        $this->assertNull($st->setPriceHT(100.5));
        $this->assertSame($st->getPriceHT(), 100.5);
    }

    public function test_setVat()
    {
        $st = new Smartphone();

        // Test 1
        $this->assertNull($st->setVat(20));
        $this->assertSame($st->getVat(), 20.0);

        // Test 2
        $this->assertNull($st->setPriceTTC(5.5));
        $this->assertSame($st->getPriceTTC(), 5.5);
    }

    public function test_setQuantity()
    {
        $st = new Smartphone();

        // Test 1
        $this->assertNull($st->setQuantity(10));
        $this->assertSame($st->getQuantity(), 10);

        // Test 2
        $this->assertNull($st->setQuantity(-5));
        $this->assertSame($st->getQuantity(), -5);
    }

    /**
     * @depends test_setVat
     * @depends test_setPriceHT
     */
    public function test_calculPriceTTC() 
    {
        $st = new Smartphone();
        
        $st->setPriceHT(100);
        $st->setVat(20);
        $this->assertEquals($st->calculPriceTTC(100, 20), 120);
    }

    /**
     * @depends test_setVat
     * @depends test_setPriceTTC
     */
    public function test_calculPriceHT() 
    {
        $st = new Smartphone();
        
        $st->setPriceTTC(120);
        $st->setVat(20);
        $this->assertEquals($st->calculPriceHT(100, 20), 100);
    }

    /**
     * @depends test_setPriceTTC
     * @depends test_setPriceHT
     * @depends test_setVat
     * @depends test_calculPriceHT
     */
    public function test_fullSetFromPriceTTC() 
    {
        $st = new Smartphone();

        // Phase 1
        $this->assertEquals($st->fullSetFromPriceTTC(120, 20), 100);
        $this->assertEquals($st->getPriceTTC(), 120);
        $this->assertEquals($st->getVat(), 20);
        $this->assertEquals($st->getPriceHT(), 100);
        $this->assertSame($st->getPriceHT(), 100.0);

        // Phase 2
        $this->assertSame(round($st->fullSetFromPriceTTC(null, 5.5), 2), 113.74);
        $this->assertEquals($st->getPriceTTC(), 120);
        $this->assertSame($st->getVat(), 5.5);
        $this->assertSame(round($st->fullSetFromPriceTTC(), 2), 113.74);
    }

    /**
     * @depends test_setPriceTTC
     * @depends test_setQuantity
     */
    public function test_calculTotalPriceTTC_valid() 
    {
        $st = new Smartphone();

        $st->setPriceTTC(120);
        $st->setQuantity(5);
        $this->assertEquals($st->calculTotalPriceTTC(), 600);
    }

    /**
     * @depends test_calculTotalPriceTTC_valid
     */
    public function test_calculTotalPriceTTC_invalid() 
    {
        $st = new Smartphone();

        $st->setPriceTTC(120);
        // No quantity set

        try {
            $st->calculTotalPriceTTC();
            $this->fail('Fail because no exception throwed !');
        } catch (Exception $e) {
            $this->assertTrue(true);
        }
    }
}
