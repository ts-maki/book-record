@extends('errors::minimal')

@section('title', __('サーバーにアクセスできない'))
@section('code', '503')
@section('message', __('申し訳ございませんが、システム管理者にお問い合わせいただくか、復旧をお待ちください。'))
