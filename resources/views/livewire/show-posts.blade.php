<div>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <x-table>
        <div class="px-6 py-4 flex items-center">
            {{-- <input type="text" wire:model="search"> --}}
            {{-- Se trae un componente INPUT de JETSTRAM --}}
            <x-jet-input class="flex-1 mr-4" type="text" placeholder="Buscar ..." wire:model="search"/>

            {{-- se inserta el boton --}}
            @livewire('create-post')

        </div>
        {{-- se determina si existen columnas por presentar --}}
        @if ($posts->count())
            <table class="min-w-full divide-y divide-gray-200">
                <thead class="bg-gray-50">
                    <tr>
                        <th scope="col"
                            class="w-24 cursor-pointer px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" wire:click="order('id')">
                            ID
                            {{-- muestra ICONOS de direccion de ORDEN --}}
                            @if ($sort == 'id')
                                @if ($direction == 'asc')
                                    <i class="fas fa-sort-alpha-up-alt float-right mt-1"></i>
                                @else
                                    <i class="fas fa-sort-alpha-down-alt float-right mt-1"></i>
                                @endif
                            @else
                                <i class="fas fa-sort float-right mt-1"></i>
                            @endif
                            
                        </th>
                        <th scope="col"
                            class="cursor-pointer px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" wire:click="order('title')">
                            Title
                            {{-- muestra ICONOS de direccion de ORDEN --}}
                            @if ($sort == 'title')
                                @if ($direction == 'asc')
                                    <i class="fas fa-sort-alpha-up-alt float-right mt-1"></i>
                                @else
                                    <i class="fas fa-sort-alpha-down-alt float-right mt-1"></i>
                                @endif
                            @else
                                <i class="fas fa-sort float-right mt-1"></i>
                            @endif
                            
                        </th>
                        <th scope="col"
                            class="cursor-pointer px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider" wire:click="order('content')">
                            Content
                            {{-- muestra ICONOS de direccion de ORDEN --}}
                            @if ($sort == 'content')
                                @if ($direction == 'asc')
                                    <i class="fas fa-sort-alpha-up-alt float-right mt-1"></i>
                                @else
                                    <i class="fas fa-sort-alpha-down-alt float-right mt-1"></i>
                                @endif
                            @else
                                <i class="fas fa-sort float-right mt-1"></i>
                            @endif

                        </th>
                        <th scope="col" class="relative px-6 py-3">
                            <span class="sr-only">Edit</span>
                        </th>
                    </tr>
                </thead>
                <tbody class="bg-white divide-y divide-gray-200">
                    @foreach ($posts as $post)
                        <tr>
                            <td class="px-6 py-4">
                                <div class="text-sm text-gray-900"> {{$post->id}} </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="text-sm text-gray-900"> {{$post->title}} </div>
                            </td>
                            <td class="px-6 py-4">
                                <div class="text-sm text-gray-900"> {{$post->content}} </div>
                            </td>
                            <td class="px-6 py-4 text-right text-sm font-medium">
                                <a href="#" class="text-indigo-600 hover:text-indigo-900">Edit</a>
                            </td>
                        </tr>
                    @endforeach

                </tbody>
            </table> 
        @else
            <div class="px-6 py-4" >
                No existen Registros con ese criterio de busqueda !!!
            </div>
        @endif
       
        
    </x-table>



</div>
