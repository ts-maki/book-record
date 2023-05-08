<?php

namespace App\Services\Common;

/**
 * Util サービス
 */
class Util
{
    /**
     * 文字列にある空白を取り除く
     *
     * @param string $string
     * @return string
     */
    public static function deleteSpace($string)
    {
        $result = str_replace(array(" ", "　"), "", $string);
        return $result;
    }
}
