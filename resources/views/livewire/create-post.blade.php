<div>
    {{-- se toma el boton de JETSTREAM --}}
    <x-jet-danger-button wire:click="$set('open', true)">
        Crear Nuevo Post
    </x-jet-danger-button>

    <x-jet-dialog-modal wire:model="open">
        {{-- Hay que pasar 3 SLOTs, componentes de BLADE --}}
        <x-slot name="title">
            Crear Nuevo POST
        </x-slot>
        <x-slot name="content">
            <div class="mb-4">
                <x-jet-label value="Titulo del POST" />
                <x-jet-input type="text" class="w-full" wire:model.defer="title" />
                <x-jet-input-error for="title" />

            </div>
            <div class="mb-4">
                <x-jet-label value="Contenido del POST" />
                <textarea wire:model="content" class="form-control w-full" rows="6"></textarea>
                <x-jet-input-error for="content" />
            </div>
        </x-slot>
        <x-slot name="footer">
            <x-jet-secondary-button wire:click="$set('open', false)">Cancelar</x-jet-secondary-button>
            <x-jet-danger-button wire:click="save">Crear Post</x-jet-danger-button>
        </x-slot>

    </x-jet-dialog-modal>

</div>
