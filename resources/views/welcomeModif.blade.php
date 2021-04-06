<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
       

        <style>
            body {
                font-family: 'Nunito', sans-serif;
            }
        </style>

        @livewireStyles

    </head>
    <body>

        @php
            $count = 10;

            $data = [
                'titulo' => 'Toma de Informacion',
                'descripcion'=> 'Datos del Partido'
            ];

        @endphp

        <livewire:counter :count="$count" :data="$data" />
        <livewire:paises />
        
        @livewireScripts
    </body>
</html>
