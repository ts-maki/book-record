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
        $result = str_replace("　", "", $string);
        return $result;
    }

    /**
     * 文字列の長さを指定文字数に制限する
     *
     * @param string $text 文字列
     * @param int $limitLength
     * @return string
     */
    public static function limitTextLength($text, $limitLength)
    {
        if (mb_strlen($text) > $limitLength) {
            $text = mb_substr($text, 0, $limitLength - 1);
            return $text . '...';
        }
        return $text;
    }
}
