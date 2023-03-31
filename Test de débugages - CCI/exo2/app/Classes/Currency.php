<?php
namespace App\Classes;

class Currency
{
  public static function formatWithCurrency($currency, $amount)
  {
    $amount = self::formatAmount($amount);

    if ($currency === '$' or $currency === '£') {
      $result = self::prependCurrencySymbol($currency, $amount);
    } elseif ($currency === '€') {
      $result = self::appendCurrencySymbol($currency, $amount);
    } else {
      $result = $amount;
    }

    return (string) $result;
  }

  protected static function prependCurrencySymbol($currency, $amount)
  {
    return $currency.' '.$amount;
  }

  protected static function appendCurrencySymbol($currency, $amount)
  {
    return $amount.' '.$currency;
  }

  protected static function formatAmount($amount)
  {
    if (is_numeric($amount)) {
      $amountInt = (int) $amount;

      if ($amountInt == $amount) {
        return $amount;
      } else {
        return number_format($amount, 2, '.', '');
      }
    }

    return 0;
  }
}