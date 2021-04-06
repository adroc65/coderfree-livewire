<?php

namespace App\Http\Livewire;

use App\Models\Post;
use Livewire\Component;


class CreatePost extends Component
{
    public $open = false; // Variable cambia su valor por el metodo magico de SET en la vista.
    public $title, $content; //igual que los valores de la base de datos.
    
    // Se incluyen validaciones: 
    protected $rules = [
        'title' => 'required|max:100',
        'content' => 'required|min:80',
    ];

    public function updated($propertyName)
    {
        $this->validateOnly($propertyName);
    }

    public function save()
    {
        $this->validate();

        Post::create([
            'title' => $this->title,
            'content' => $this->content
        ]);

        // Se procede a resetear los valores del MODAL
        $this->reset(['open', 'title', 'content']);

        // Se emite un evento para indicar que se acaba de agregar un nuevo POST 
        // quien lo debe de escuchar es el SHOWPOST, para mostrarlo en la lista.
        $this->emitTo('show-posts', 'render'); // ojo como se llama quien quiero que escuche, nombre de la vista.
        $this->emit('alert', 'El POST se creo satisfactoriamente!');
    }
    public function render()
    {
        return view('livewire.create-post');
    }
    
}
