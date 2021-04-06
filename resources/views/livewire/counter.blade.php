<div>
    <h1>
        {{$titulo}}
    </h1>
    <p>{{$descripcion}}</p>

    <button wire:click="increment">+1</button>
    <button wire:click="cero">0</button>
    <button wire:click="decrement">-1</button>

    <br>

    <button wire:click="saque">S</button>
    <button wire:click="recepcion">R</button>
    <button wire:click="colocada">C</button>
    <button wire:click="ataque">A</button>
    <button wire:click="bloqueo">B</button>
    <button wire:click="defensa">D</button>
    <button wire:click="jugadas">--OK--</button>
    
    <h2>
        La cuenta va por ... {{$count}}
    </h2>
    
    <h2>JUGADA --> {{$jugada}}</h2>
    <br>
    <ul>
        @foreach ($jugadas as $jugada)
            <li>{{$jugada}}</li>
        @endforeach
    </ul>
    <br>
</div>
