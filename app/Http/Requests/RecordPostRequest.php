<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class RecordPostRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array|string>
     */
    public function rules(): array
    {
        return [
            'category' => 'required',
            'content' => 'required|max:255',
            'date' => 'required',
        ];
    }

    /**
     * 定義済みバリデーションルールのエラーメッセージ取得
     *
     * @return array<string, string>
     */
    public function messages(): array
    {
        return [
            'category.required' => 'カテゴリーを選択してね！',
            'content.required' => '感想を入力してね！',
            'content.max:255' => '感想の文字数は最大255文字です',
            'date.required' => '本を読んだ日を入力してね！今日の日付を入れるね！',
        ];
    }
}
