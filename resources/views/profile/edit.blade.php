<x-app-layout>
    <x-element.breadcrumbs>
        {{ Breadcrumbs::render('profile.edit') }}
    </x-element.breadcrumbs>
    <div class="bg-emerald-50">
        <x-layout.container class="space-y-6 ">
            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.update-profile-information-form')
                </div>
            </div>
            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.update-password-form')
                </div>
            </div>
            <div class="p-4 sm:p-8 bg-white shadow sm:rounded-lg">
                <div class="max-w-xl">
                    @include('profile.partials.delete-user-form')
                </div>
            </div>
        </x-layout.container>
    </div>
</x-app-layout>
