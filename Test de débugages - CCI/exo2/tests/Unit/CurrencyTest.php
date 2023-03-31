<?php
namespace Tests\Unit;

use App\Classes\Currency;
use Tests\TestCase;

class CurrencyTest extends TestCase
{
    public function test_formatWithCurrency_dollar()
    {
        // $
        $this->assertSame(Currency::formatWithCurrency('$', 100), '$ 100');
        $this->assertSame(Currency::formatWithCurrency('$', '100'), '$ 100');
        $this->assertSame(Currency::formatWithCurrency('$', '100.50'), '$ 100.50');
        $this->assertSame(Currency::formatWithCurrency('$', 100.5), '$ 100.50');
    }

    /**
     * @depends test_formatWithCurrency_noCurrency
     */
    public function test_formatWithCurrency_pound()
    {
        // £
        $this->assertSame(Currency::formatWithCurrency('£', 100), '£ 100');
        $this->assertSame(Currency::formatWithCurrency('£', '100'), '£ 100');
        $this->assertSame(Currency::formatWithCurrency('£', '100.50'), '£ 100.50');
        $this->assertSame(Currency::formatWithCurrency('£', 100.5), '£ 100.50');
    }

    public function test_formatWithCurrency_euro()
    {
        // €
        $this->assertSame(Currency::formatWithCurrency('€', 100), '100 €');
        $this->assertSame(Currency::formatWithCurrency('€', '100'), '100 €');
        $this->assertSame(Currency::formatWithCurrency('€', '100.50'), '100.50 €');
        $this->assertSame(Currency::formatWithCurrency('€', 100.5), '100.50 €');
    }

    public function test_formatWithCurrency_noCurrency()
    {
        // no currency
        $this->assertSame(Currency::formatWithCurrency('!', 100), '100');
        $this->assertSame(Currency::formatWithCurrency('!', '100'), '100');
        $this->assertSame(Currency::formatWithCurrency('', 100.5), '100.50');
        $this->assertSame(Currency::formatWithCurrency('', 100), '100');
    }

    /*
     * Même si c'est automatisable,le principe de Reflection est limité et prends du temps
     * Il est aujourd'hui fortement déprécier.
     * On ne l'utilise que très rare.
     */
    public function test_protected_prependCurrencySymbol()
    {
        $object = new Currency();
        $reflector = new \ReflectionClass(Currency::class);

        $method = $reflector->getMethod('prependCurrencySymbol');
        $method->setAccessible(true);

        // Assertion 1
        $result = $method->invokeArgs($object, ['*', '123']);
        $this->assertSame($result, '* 123');

        // Assertion 2
        $result = $method->invokeArgs($object, ['$', '250']);
        $this->assertSame($result, '$ 250');
    }
}
