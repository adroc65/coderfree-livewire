<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Counter extends Component
{
    public $count;
    public $titulo;
    public $descripcion;
    public $jugada = "";
    public $jugadas =[];

    public function mount($data)
    {
        $this->titulo = $data['titulo'];
        $this->descripcion = $data['descripcion'];

    }
    public function render()
    {
        return view('livewire.counter');
    }
    public function jugadas()
    {
        array_push($this->jugadas, $this->jugada);
        $this->jugada="";
    }
    public function increment()
    {
        $this->count++;
        $this->jugada="";
    }
    public function cero()
    {
        $this->count=0;
        $this->jugada="";
    }
    public function decrement()
    {
        $this->count--;
        $this->jugada="";
    }
    public function saque()
    {
        $this->jugada.="S";
    }
    public function recepcion()
    {
        $this->jugada.="R";
    }
    public function colocada()
    {
        $this->jugada.="C";
    }
    public function ataque()
    {
        $this->jugada.="A";
    }
    public function bloqueo()
    {
        $this->jugada.="B";
    }
    public function defensa()
    {
        $this->jugada.="D";
    }
    
}
