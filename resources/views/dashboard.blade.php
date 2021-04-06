<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            {{-- ----------- Linea Original ------------- --}}
            {{-- <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
                <x-jet-welcome />
            </div> --}}
            {{-- ------------------- --}}

        {{-- --> Componentes de otro curso
            @php
            $count = 10;

            $data = [
                'titulo' => 'Toma de Informacion',
                'descripcion'=> 'Datos del Partido'
            ];

            $title_post = "Titulo del Post";
            @endphp
            
            <livewire:counter :count="$count" :data="$data" />
            <livewire:paises />
            <-- --}}

            @livewire('show-posts', ['title' => 'Este es el Titulo Principal del POST'])

        </div>
    </div>
</x-app-layout>
