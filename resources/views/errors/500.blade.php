@extends('errors::minimal')

@section('title', __('サーバー内のエラー'))
@section('code', '500')
@section('message', __('申し訳ございませんが、システム管理者にお問い合わせいただくか、復旧をお待ちください。'))
