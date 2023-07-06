@extends('errors::minimal')

@section('title', __('大量のリクエスト送信'))
@section('code', '429')
@section('message', __('一定時間内に大量のリクエストが確認されました。申し訳ございませんが少し時間を置いてからご利用ください。'))
