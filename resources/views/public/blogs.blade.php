@extends('components.public.matrix', ['pagina' => 'Blog'])

@section('css_importados')


@stop


@section('content')

  @php
    $breadcrumbs = [['title' => 'Inicio', 'url' => route('index')], ['title' => 'Blogs', 'url' => '']];
  @endphp


  <section class="flex flex-col md:flex-row md:gap-10 w-full px-[5%] xl:px-[8%] font-PlusJakartaSans_Regular py-8 lg:py-16 bg-cover" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
    
    {{-- <div class="w-full md:w-3/12 gap-5">
      <h3 class="font-PlusJakartaSans_Semibold text-lg bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent ">Buscar post</h3>
      <div class="relative w-full lg:w-[100%] my-5">
        <input id="buscarblog" type="text" placeholder="Buscar..."
          class="w-full pl-8 pr-10 py-2 bg-[#141414] border border-[#BE913E] lg:border-[#BE913E] rounded-lg focus:border-[#BE913E] focus:ring-0 text-white placeholder:text-white">
        <span class="absolute top-0 left-0 flex items-start lg:items-center p-2">
          <svg width="20" height="20" viewBox="0 0 20 20" fill="" xmlns="http://www.w3.org/2000/svg">
            <path
              d="M14.6851 13.6011C14.3544 13.2811 13.8268 13.2898 13.5068 13.6206C13.1868 13.9514 13.1955 14.4789 13.5263 14.7989L14.6851 13.6011ZM16.4206 17.5989C16.7514 17.9189 17.2789 17.9102 17.5989 17.5794C17.9189 17.2486 17.9102 16.7211 17.5794 16.4011L16.4206 17.5989ZM15.2333 9.53333C15.2333 12.6814 12.6814 15.2333 9.53333 15.2333V16.9C13.6018 16.9 16.9 13.6018 16.9 9.53333H15.2333ZM9.53333 15.2333C6.38531 15.2333 3.83333 12.6814 3.83333 9.53333H2.16667C2.16667 13.6018 5.46484 16.9 9.53333 16.9V15.2333ZM3.83333 9.53333C3.83333 6.38531 6.38531 3.83333 9.53333 3.83333V2.16667C5.46484 2.16667 2.16667 5.46484 2.16667 9.53333H3.83333ZM9.53333 3.83333C12.6814 3.83333 15.2333 6.38531 15.2333 9.53333H16.9C16.9 5.46484 13.6018 2.16667 9.53333 2.16667V3.83333ZM13.5263 14.7989L16.4206 17.5989L17.5794 16.4011L14.6851 13.6011L13.5263 14.7989Z"
              fill="#ffffff" class="fill-fillAzulPetroleo lg:fill-fillPink" />
          </svg>
        </span>
        <div class="bg-[#141414] shadow-2xl top-12 w-full absolute overflow-y-auto max-h-[300px]" id="resultadosblog">
        </div>
      </div>

      <div class="flex flex-col gap-5">
        <h3 class="font-PlusJakartaSans_Semibold text-lg bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent">Blog categorias</h3>
        <div class="flex flex-col gap-3">
          <a href="{{ route('blog', 0) }}"
            class="text-text18 py-3 px-4 rounded-lg font-semibold  {{ $filtro == 0 ? 'bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] text-[#141414]' : 'text-white bg-transparent border-[#BE913E] border' }} ">Todas</a>
          @foreach ($categorias as $item)
            <a href="{{ route('blog', $item->id) }}"
              class="text-text16 py-3 px-4 rounded-lg font-normal
                                {{ $item->id == $filtro ? 'bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] font-semibold text-[#141414]' : 'text-white bg-transparent border-[#BE913E] border' }}">
              {{ $item->name }}
            </a>
          @endforeach
        </div>
      </div>
    </div> --}}


    {{-- md:basis-9/12 --}}
    <div class="w-full ">
      <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-5 lg:gap-10">
        @foreach ($posts as $post)
          <x-blog.container-post :post="$post" />
        @endforeach
      </div>
    </div>

  </section>









@section('scripts_importados')


  <script src="{{ asset('js/storage.extend.js') }}"></script>


@stop

@stop
