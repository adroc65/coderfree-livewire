<div>
    <h1>Lista de Paises</h1>
    <input type="text" placeholder="Ingresar un nuevo Pais" wire:model="pais">
    <button wire:click="agregar">Enviar</button>
    <br>
    <ul>
        @foreach ($paises as $pais)
            <li>{{$pais}}</li>
        @endforeach
    </ul>
</div>
