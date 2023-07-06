@extends('errors::minimal')

@section('title', __('無効なセッション'))
@section('code', '419')
@section('message', __('セッションの有効期限が切れました。申し訳ございませんが再度ログインしてください。'))
