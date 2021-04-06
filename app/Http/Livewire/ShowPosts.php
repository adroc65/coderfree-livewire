<?php

namespace App\Http\Livewire;

use Livewire\Component;
use App\Models\Post;

class ShowPosts extends Component
{
    // public $titulo;
    // // Si deseamos nombrar las variables a mostrar de otra forma se crea la funcion MOUNT.
    // public function mount($title)
    // {
    //     $this->titulo = $title;
    // }
    
    // La funcion MOUNT se usa para recibir datos del BROWSER por la linea de navegacion
    // por ejemplo recebiremos el nombre: 


    // --> Imprimir el nombre que se pasa por linea del Browser
    // public $name;

    // public function mount($name)
    // {
    //     $this->name = $name;
    // }

    public $search;
    public $sort = 'id';
    public $direction = 'desc';

    // Se crea propiedad de tipo PROTECTED para escuchar eventos: 
    protected $listeners = ['render' => 'render'];

    public function render()
    {
        // Si se desea que esta plantilla no se extienda del LAYOUT
        // app.blade.php se puede hacer modificando el RETURN, se indica la carpeta y el archivo:  
        // Esto es un TIP ADICIONAL.
        // return view('livewire.show-posts')
        //         ->layout('layouts.base');

        //$posts = Post::all(); //Recuperamos toda la DB en la variable
        $posts = Post::where('title', 'like', '%' . $this->search . '%')
                        ->orWhere('content', 'like', '%' . $this->search . '%')
                        ->orderBy($this->sort, $this->direction)
                        ->get();

        return view('livewire.show-posts', compact('posts'));
    }

    public function order($sort)
    {
        if ($this->sort == $sort) {
            if ($this->direction == 'desc'){
                $this->direction = 'asc';
            } else {
                $this->direction = 'desc';
            }
        } else {
            $this->sort = $sort;
            $this->direction = 'asc';
        }
    }
    
}
