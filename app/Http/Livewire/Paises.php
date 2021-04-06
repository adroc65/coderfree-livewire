<?php

namespace App\Http\Livewire;

use Livewire\Component;

class Paises extends Component
{
    public $paises = ['Peru', 'Argentina', 'Chile', 'Bolivia'];
    public $pais;

    public function render()
    {
        return view('livewire.paises');
    }

    public function agregar()
    {
        array_push($this->paises, $this->pais);
        // Borra el INPUT del formulario
        $this->reset('pais');
    }
}
