@extends('errors::minimal')

@section('title', __('閲覧禁止'))
@section('code', '403')
@section('message', __($exception->getMessage() ?: '閲覧権限が無いファイルやフォルダです。'))
