@extends('components.public.matrix', ['pagina' => 'catalogo'])

@section('title', 'Producto Detalle | ' . config('app.name', 'Laravel'))
@section('meta_title', $meta_title)
@section('meta_description', $meta_description)
@section('meta_keywords', $meta_keywords)

@section('css_importados')
@stop

@section('content')
    <?php
    // Definición de la función capitalizeFirstLetter()
    // function capitalizeFirstLetter($string)
    // {
    //     return ucfirst($string);
    // }
    ?>
    <style>
        /* imagen de fondo transparente para calcar el dise;o */
        .clase_table {
            border-collapse: separate;
            border-spacing: 10;
        }

        .fixedWhastapp {
            right: 2vw !important;
        }

        .clase_table td {
            /* border: 1px solid black; */
            border-radius: 10px;
            -moz-border-radius: 10px;
            padding: 10px;
        }

        .swiper-pagination-bullet-active {
            background-color: #272727;
        }

        .swiper-pagination-bullet:not(.swiper-pagination-bullet-active) {
            background-color: #979693 !important;
        }

        .blocker {
            z-index: 20;
        }

        .close-modal {
            z-index: 9999;
        }

        /* Flatpickr custom styles */
        .check-in-date:not(.check-in-out-date) {
            background: linear-gradient(to right, white 50%, #e2e8f0 50%) !important;
            border-radius: 0 !important;
        }

        .check-out-date:not(.check-in-out-date) {
            background: linear-gradient(to right, #e2e8f0 50%, white 50%) !important;
            border-radius: 0 !important;
        }

        .check-in-out-date {
            background: #e2e8f0 !important;
            border-radius: 0 !important;
        }

        .flatpickr-day.selected.startRange {
            border-radius: 50% 0 0 50% !important;
        }

        .flatpickr-day.selected.endRange {
            border-radius: 0 50% 50% 0 !important;
        }

        @media (min-width: 600px) {
            #offers .swiper-slide {
                margin-right: 100px !important;
            }

            #offers .swiper-slide::before {
                content: '+';
                display: block;
                position: absolute;
                top: 50%;
                right: -70px;
                transform: translateY(-50%);
                font-size: 32px;
                font-weight: bolder;
                color: #ffffff;
                padding: 0px 12px;
                background-color: #0d2e5e;
                border-radius: 50%;
                box-shadow: 0 0 5px rgba(0, 0, 0, .125);
            }

            #offers .swiper-slide:last-child::before {
                content: none;
            }

        }

        .swiper-principal .swiper-pagination-bullet {
            width: 14px;
            height: 6px;
            border-radius: 6px;
            background-color: #4D4D4D!important;
            
        }

        .swiper-principal .swiper-pagination-bullet-active {
            background: linear-gradient(90deg, #C8A049 0%, #E9D151 55.42%, #BE913E 93.5%) !important;   
        }
    </style>

    @php
        $images = ['', '_ambiente'];
        $x = $product->toArray();
        $i = 1;
    @endphp
    @php
        $breadcrumbs = [['title' => 'Inicio', 'url' => route('index')], ['title' => 'Producto', 'url' => '']];
    @endphp
    @php
        $StockActual = $product->stock;
        $maxStock = 100; // maximo stock

        if (!is_null($product->max_stock) > 0) {
            $maxStock = $product->max_stock;
        }
        # calculamos en % cuanto queda en base a 100
        $stock = 0;
        if ($maxStock !== 0) {
            $stock = ($StockActual * 100) / $maxStock;
        }

    @endphp
    {{-- @component('components.breadcrumbs', ['breadcrumbs' => $breadcrumbs])
  @endcomponent --}}

    <main class="font-PlusJakartaSans_Regular py-10 bg lg:py-12 bg-cover" id="mainSection" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
        @csrf

        {{-- <section class="w-full px-[5%] ">
            <div class="grid grid-cols-1 2md:grid-cols-2 gap-10 md:gap-16 pt-8 lg:pt-16">

                <div class="flex flex-col justify-start items-center gap-5">
                    <div id="containerProductosdetail"
                        class="w-full flex justify-center items-center h-[330px] 2xs:h-[400px] sm:h-[450px] xl:h-[550px] rounded-3xl overflow-hidden">
                        <img src="{{ asset($product->imagen) }}" alt="computer" class="w-full h-full object-contain"
                            data-aos="fade-up" data-aos-offset="150"
                            onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';">
                    </div>
                    <x-product-slider :product="$product" />
                </div>

                <div class="flex flex-col gap-6  mt-2">
                    @foreach ($atributos as $item)
                     @foreach ($valorAtributo as $value)
                            @if ($value->attribute_id == $item->id)
                              
                                  @isset($valoresdeatributo)
                                      @foreach ($valoresdeatributo as $valorat)
                                        @if ($valorat->attribute_value_id == $value->id)
                                          <img src={{asset($value->imagen)}} class="w-24 h-12 object-contain"/>
                                        @endif
                                      @endforeach
                                  @endisset
                              
                            @endif
                      @endforeach
                    @endforeach
                    <div class="flex flex-col">
                        <h3 class="font-Helvetica_Medium text-4xl text-[#111111] font-normal tracking-tight">
                            {{ $product->producto }}</h3>
              
                    </div>

                    <div class="flex flex-col gap-3">
                    
                        <div class="flex flex-row gap-3 content-center items-center">
                            @if ($product->descuento == 0)
                                <div class="content-center flex flex-row gap-2 items-center">
                                    <span class="font-Helvetica_Bold text-3xl gap-2 text-[#FD1F4A]">S/
                                        {{ $product->precio }}</span>
                                </div>
                            @else
                                <div class="content-center flex flex-row gap-2 items-center">
                                    <span class="font-Helvetica_Bold text-3xl gap-2 text-[#FD1F4A]">S/
                                        {{ $product->descuento }}</span>
                                    <span class="text-[#111111] font-Helvetica_Medium line-through text-lg">S/
                                        {{ $product->precio }}</span>
                                </div>
                                @php
                                    $descuento = round(
                                        (($product->precio - $product->descuento) * 100) / $product->precio,
                                    );
                                @endphp
                                <span
                                    class="ml-2 font-Helvetica_Medium text-center content-center text-sm gap-2 bg-[#FD1F4A] text-white h-9 w-16 rounded-3xl px-2">
                                    -{{ $descuento }}% </span>
                            @endif
                        </div>
                        
                        <div class="font-medium text-base font-Helvetica_Light w-full mt-4 text-[#444]">
                            {!! $product->description !!}
                        </div>

                        @if ($product->sku)
                            <p class="font-Helvetica_Light text-base gap-2 text-[#444] mt-2">SKU: {{ $product->sku }}
                            </p>
                        @endif
                    </div>
                    
                     @if ($otherProducts->isNotEmpty())
                        <p class="mb-2 "><b>Característica</b>:
                        <span class="block bg-[#F5F5F7] p-3 mt-2" tippy> {{ $product->color }}</span>
                        
                        <p class="-mb-4 "><b>Otras opciones</b>:</p>
                                
                            <div class="flex flex-wrap gap-2">
                                @foreach ($otherProducts as $x)
                                <a class="block bg-[#F5F5F7] hover:bg-[#ebebf2] p-3" href="/producto/{{ $x->id }}" tippy> {{ $x->color }}</a>
                                @endforeach
                            </div>

                    @endif

                    @if (!$especificaciones->isEmpty())
                        <p class="font-Inter_Medium text-base gap-2 ">Especificaciones: </p>
                        <div class="min-w-full divide-y divide-gray-200">
                            <table class=" divide-y divide-gray-200 ">
                                <tbody>
                                    @foreach ($especificaciones as $item)
                                        <tr>
                                            <td class="px-4 py-1 border border-gray-200">
                                                {{ $item->tittle }}
                                            </td>
                                            <td class="px-4 py-1 border border-gray-200">
                                                {{ $item->specifications }}
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    @endif

                
                    <div class="flex flex-col gap-4">
                        <div class="flex flex-col xl:flex-row gap-5 items-center">
                            <div class="flex">
                                <div
                                    class="flex justify-center items-center bg-[#F5F5F5] cursor-pointer rounded-l-3xl">
                                    <button class="py-2.5 px-5 text-lg font-Helvetica_Bold rounded-full bg-black m-1 text-white" id=disminuir
                                        type="button">-</button>
                                </div>
                                <div id=cantidadSpan
                                    class="py-2.5 px-5 flex justify-center items-center bg-[#F5F5F5] text-lg font-Helvetica_Bold">
                                    <span>1</span>
                                </div>
                                <div
                                    class="flex justify-center items-center bg-[#F5F5F5] cursor-pointer rounded-r-3xl">
                                    <button class="py-2.5 px-5 text-lg font-Helvetica_Bold rounded-full bg-black m-1 text-white" id=aumentar
                                        type="button">+</button>
                                </div>
                            </div>
                            <div class="xl:ml-8 flex flex-row gap-5 justify-start items-center w-full">
                                @if ($product->status == 1 && $product->visible == 1)
                                  <button id="btnAgregarCarritoPr" data-id="{{ $product->id }}"
                                      class="bg-[#FD1F4A] w-full py-3  text-white text-center rounded-full font-Helvetica_Medium tracking-wide text-lg hover:bg-[#e61e45]">
                                      Agregar
                                      al Carrito
                                  </button>
                                @endif
                            </div>
                        </div>
                    </div>
                 

                    <div class="flex flex-col gap-2" data-aos="fade-up">
                         <div class="flex flex-row gap-5 justify-start items-center w-full">
                                <a
                                    class="bg-[#25D366] flex justify-center items-center w-full py-3  text-white text-center rounded-full font-Helvetica_Medium tracking-wide text-lg hover:bg-[#1fcf61]">
                                    <span class="text-sm mr-3">Agente Emilio</span>Consulta vía WhatsApp
                                </a>
                          </div>
                          <div class="flex flex-row gap-5 justify-start items-center w-full">
                                <a
                                    class="bg-[#25D366] flex justify-center items-center w-full py-3  text-white text-center rounded-full font-Helvetica_Medium tracking-wide text-lg hover:bg-[#1fcf61]">
                                    <span class="text-sm mr-3">Agente Emilio</span>Consulta vía WhatsApp
                                </a>
                          </div>
                    </div>
                </div>
            </div>
        </section> --}}

        <section class="w-full px-[5%]" aria-label="Image Gallery">

            <div>
                <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper principal">
                    <div class="swiper-wrapper">
                            
                        @foreach ($product->galeria as $image)
                            <div class="swiper-slide">
                                <img class="w-full h-full rounded-2xl xl:rounded-3xl max-h-[450px] 2xl:max-h-[600px] object-cover" src="{{asset($image->imagen)}}" />
                            </div>
                        @endforeach
                            <div class="swiper-slide">
                                <img class="w-full h-full rounded-2xl xl:rounded-3xl max-h-[450px] 2xl:max-h-[600px] object-cover" onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';" src="{{asset($product->imagen)}}" />
                            </div>
                    </div>
                </div>

                <div thumbsSlider="" class="swiper cards mt-7">
                    <div class="swiper-wrapper">
                       
                      @foreach ($product->galeria as $image)
                        <div class="swiper-slide">
                            <img class="cursor-pointer rounded-[6px] sm:rounded-xl w-full h-full max-h-[80px] object-cover" src="{{asset($image->imagen)}}" />
                        </div>
                      @endforeach
                        <div class="cursor-pointer swiper-slide">
                            <img class="rounded-[6px] sm:rounded-xl w-full h-full max-h-[80px] object-cover" onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';" src="{{asset($product->imagen)}}" /> />
                        </div>
                    </div>
                  </div>

                  <div class="flex flex-row gap-2 items-center justify-center mt-5">
                    <div class="flex flex-row items-center justify-center gap-1">
                        <div class="swiper-principal-prev">
                            <div class="p-1 rounded-full aspect-square border border-[#4d4d4d]">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M20.4004 11.9998C20.4004 12.4969 19.9974 12.8998 19.5004 12.8998L6.73489 12.8998L11.7242 17.6511C12.0825 17.9956 12.0937 18.5653 11.7491 18.9236C11.4046 19.2819 10.8349 19.2931 10.4766 18.9486L3.87659 12.6486C3.70012 12.4789 3.60039 12.2446 3.60039 11.9998C3.60039 11.755 3.70012 11.5207 3.87659 11.3511L10.4766 5.05106C10.8349 4.70654 11.4046 4.71771 11.7491 5.07601C12.0937 5.4343 12.0825 6.00404 11.7242 6.34856L6.73489 11.0998L19.5004 11.0998C19.9974 11.0998 20.4004 11.5027 20.4004 11.9998Z" fill="#808080"/>
                                </svg>
                            </div>
                        </div>
                        <div class="swiper-principal -mt-1"></div>
                        <div class="swiper-principal-next">
                            <div class="p-1 rounded-full aspect-square border border-[#4d4d4d]">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M3.59961 12.0002C3.59961 11.5031 4.00255 11.1002 4.49961 11.1002L17.2651 11.1002L12.2758 6.34894C11.9175 6.00443 11.9063 5.43469 12.2509 5.0764C12.5954 4.7181 13.1651 4.70693 13.5234 5.05144L20.1234 11.3514C20.2999 11.5211 20.3996 11.7554 20.3996 12.0002C20.3996 12.245 20.2999 12.4793 20.1234 12.6489L13.5234 18.9489C13.1651 19.2935 12.5954 19.2823 12.2509 18.924C11.9063 18.5657 11.9175 17.996 12.2758 17.6514L17.2651 12.9002L4.49961 12.9002C4.00255 12.9002 3.59961 12.4973 3.59961 12.0002Z" fill="#808080"/>
                                </svg>
                            </div>
                        </div>
                    </div>
                  </div>
            </div>

            <script>
                var swiperf = new Swiper(".cards", {
                  loop: true,
                  spaceBetween: 10,
                  slidesPerView: 7,
                  freeMode: true,
                  watchSlidesProgress: true,
                });
                var swiper2 = new Swiper(".principal", {
                  loop: true,
                  spaceBetween: 10,
                  navigation: {
                    nextEl: ".swiper-principal-next",
                    prevEl: ".swiper-principal-prev",
                  },
                  pagination: {
                    el: ".swiper-principal",
                    clickable: true,
                  },
                  thumbs: {
                    swiper: swiperf,
                  },
                });
            </script>

            {{-- <div class="w-1/3 galeriatotal ">
                @if ($product->imagen_2)
                    <img id="collage1_previewer" loading="lazy" src="{{ asset($product->imagen_2) }}"
                        class="cursor-pointer object-cover w-full rounded-xl aspect-[0.7]" alt="Gallery image 1" />
                @else
                    <img id="collage1_previewer" src="{{ asset('images/img/noimagen.jpg') }}" alt="imagen_alternativa"
                        class="object-cover w-full rounded-xl aspect-[0.7]" />
                @endif
            </div> --}}

            {{-- <div class="flex flex-col  w-1/3 gap-1 lg:gap-3 galeriatotal ">
                @if ($product->imagen_3)
                    <img id="collage2_previewer" loading="lazy" src="{{ asset($product->imagen_3) }}"
                        class="cursor-pointer object-cover flex-1 w-full rounded-xl aspect-[1.45]" alt="Gallery image 2" />
                @else
                    <img id="collage2_previewer" src="{{ asset('images/img/noimagen.jpg') }}" alt="imagen_alternativa"
                        class="object-cover flex-1 w-full rounded-xl aspect-[1.45]" />
                @endif

                @if ($product->imagen_4)
                    <img id="collage3_previewer" loading="lazy" src="{{ asset($product->imagen_4) }}"
                        class="cursor-pointer object-cover flex-1 w-full rounded-xl aspect-[1.45]" alt="Gallery image 3" />
                @else
                    <img id="collage3_previewer" src="{{ asset('images/img/noimagen.jpg') }}" alt="imagen_alternativa"
                        class="object-cover flex-1 w-full rounded-xl aspect-[1.45]" />
                @endif
            </div> --}}

            {{-- <div class="w-1/3 galeriatotal">
                @if ($product->image_texture)
                    <img id="collage4_previewer" loading="lazy" src="{{ asset($product->image_texture) }}"
                        class="cursor-pointer object-cover w-full rounded-xl aspect-[0.7]" alt="Gallery image 4" />
                @else
                    <img id="collage4_previewer" src="{{ asset('images/img/noimagen.jpg') }}" alt="imagen_alternativa"
                        class="object-cover w-full rounded-xl aspect-[0.7]" />
                @endif
            </div> --}}
        </section>

        <section class="flex flex-col lg:flex-row gap-10 xl:gap-16 justify-between items-start px-[5%] mt-8 lg:mt-16">
            <div class="flex flex-col min-w-[240px] w-full max-w-4xl 2xl:max-w-6xl">
                
                <div class="flex flex-col justify-center rounded-2xl">
                    <div class="flex flex-col w-full">
                        <nav
                            class="flex flex-wrap gap-10 justify-between items-start w-full text-base whitespace-nowrap min-h-[24px]">
                            <ul class="flex overflow-hidden items-center list-none gap-1 font-PlusJakartaSans_Regular">
                                <li class="self-stretch my-auto text-white normal-case">{{$departamento->description ?? "S/Region"}}, {{$provincia->description ?? "S/Provincia"}}, {{$distrito->description ?? "S/Distrito"}}</li>
                            </ul>
                            <button onclick="copiarEnlace()" class="flex items-center justify-center">
                               <i class="fa-solid fa-share object-contain text-xl aspect-square text-white"></i>
                            </button>
                        </nav>

                        <article class="flex flex-col items-start mt-5 w-full gap-3">
                            <header class="flex flex-col">
                                <h1 class="text-3xl lg:text-4xl 2xl:text-5xl font-PlusJakartaSans_Medium text-white">{{ $product->producto }}</h1>
                                {{-- <p class="mt-2.5 text-base font-FixelText_Regular text-slate-950 text-opacity-50">
                                    {{ $product->address }}, {{ $product->inside }}</p> --}}

                                {{-- <p class="mt-2.5 text-base font-FixelText_Regular text-slate-950 text-opacity-50">
                                    @php
                                        $locations = [];

                                        if (!empty($departamento->description)) {
                                            $locations[] = $departamento->description;
                                        }

                                        if (!empty($provincia->description)) {
                                            $locations[] = $provincia->description;
                                        }

                                        if (!empty($distrito->description)) {
                                            $locations[] = $distrito->description;
                                        }

                                        $locationsString = implode(', ', $locations);
                                    @endphp
                                    {{ $locationsString }}
                                </p> --}}
                            </header>

                            <div class="flex flex-col md:flex-row gap-3 md:gap-6 md:items-center">
                              <div>
                                  <h2 class="font-PlusJakartaSans_Medium text-lg lg:text-xl 2xl:text-2xl bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent">S/. {{$product->precio}} - USD {{$product->preciomin}}</h2>
                              </div>
                              @if ($product->sku)
                                  <div
                                      class="flex items-center px-3 py-1.5 text-sm 2xl:text-lg text-white border border-[#262626] border-solid rounded-3xl bg-[#1A1A1A]">
                                      <span class="font-PlusJakartaSans_Medium">Cod. {{ $product->sku }}</span>
                                  </div>
                              @endif
                            </div> 
                        </article>

                    </div>
                </div>

                <div class="flex flex-col gap-4 justify-center pt-8 text-center rounded-2xl text-white">
                  <div class="flex items-center">
                      <h2 class="text-2xl 2xl:text-3xl font-PlusJakartaSans_Medium">Características</h2>
                  </div>
                  <div class="flex flex-wrap justify-between  gap-8 2xl:gap-10 items-start w-full font-PlusJakartaSans_Regular text-base 2xl:text-xl">
                        @if (!empty($product->cuartos))
                            <div class="flex flex-col items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_cama.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Bedroom icon" />
                                <p class="mt-1.5">{{ $product->cuartos }} cuartos</p>
                            </div>
                        @endif

                        @if (!empty($product->banios))
                            <div class="flex flex-col items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_banios.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Bathroom icon" />
                                <p class="mt-1.5">{{ $product->banios }} baños</p>
                            </div>
                        @endif

                        @if (!empty($product->cochera))
                            <div class="flex flex-col items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_cochera.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Parking space icon" />
                                <p class="mt-1.5">{{ $product->cochera }} cocheras</p>
                            </div>
                        @endif

                        @if (!empty($product->pisos))
                            <div class="flex flex-col items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_pisos.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Floor level icon" />
                                <p class="mt-1.5">{{ $product->pisos }}º piso</p>
                            </div>
                        @endif
    
                        @if ($product->mascota)
                            <div class="flex flex-col items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_mascota.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Pet friendly icon" />
                                <p class="mt-1.5">Mascota</p>
                            </div>
                        @endif    

                        @if (!empty($product->movilidad))
                            <div class="flex flex-col items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_estaciones.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Proximity icon" />
                                <p class="mt-1.5">{{ $product->movilidad }} Estaciones</p>
                            </div>
                        @endif

                        @if ($product->mobiliado)
                            <div class="flex flex-col items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/mobiliado.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Furnished icon" />
                                <p class="mt-1.5">Mobiliado</p>
                            </div>
                        @endif
                  </div>
                </div>

                <section class="flex flex-col gap-8 text-white pt-8">
                    @if ($product->description)
                        <div class="flex flex-col w-full gap-4">
                            <div class="flex items-center">
                                <h2 class="text-2xl 2xl:text-3xl font-PlusJakartaSans_Medium">Acerca de esta propiedad</h2>
                            </div>
                            <div class="w-full font-PlusJakartaSans_Regular flex flex-col gap-3 text-white text-base lg:text-lg 2xl:text-xl leading-6">
                                {!! $product->description !!}
                            </div>
                        </div>
                    @endif

                    @php
                        $incluyef = strip_tags($product->incluye);
                    @endphp

                    @if ($incluyef !== '')
                        <section class="flex flex-col w-full gap-4">
                            <div class="flex items-center">
                              <h2 class="text-2xl 2xl:text-3xl font-PlusJakartaSans_Medium">Beneficios</h2>
                            </div>
                            <div class="w-full font-PlusJakartaSans_Regular flex flex-col gap-3 text-white text-base lg:text-lg 2xl:text-xl leading-6">
                                <ul class="flex flex-col gap-2">
                                  @if (!is_null($product->incluye) && $incluyef !== '')
                                    @php
                                    // Configurar DOMDocument para UTF-8
                                    $dom = new DOMDocument();
                                    $dom->loadHTML('<?xml encoding="UTF-8">' . $product->incluye);
                                    
                                    // Eliminar advertencias de HTML mal formado
                                    libxml_use_internal_errors(true);
                                    $paragraphs = $dom->getElementsByTagName('p');
                                    libxml_clear_errors();
                                    @endphp
                                    @foreach ($paragraphs as $paragraph)
                                      <li>
                                          <div class="flex flex-row gap-2 items-start">
                                            <div class="flex flex-col justify-start items-start">
                                              <img loading="lazy" src="{{ asset('images/svg/rs_check.svg') }}"
                                                  class="object-contain min-w-8 aspect-square" alt="Beneficio icon" />
                                            </div>
                                            <div class="flex flex-col">
                                              <p>{!! $paragraph->nodeValue !!}</p>
                                            </div>
                                          </div>
                                      </li>
                                    @endforeach
                                  @endif
                                </ul>
                            </div>
                        </section>
                    @endif
                </section>

                <div class="flex flex-col justify-center gap-4 pt-8 text-center rounded-2xl text-white">
                    <div class="flex items-center">
                      <h2 class="text-2xl 2xl:text-3xl font-PlusJakartaSans_Medium">Medidas</h2>
                    </div>
                    <div class="flex flex-wrap gap-8 xl:gap-16 2xl:gap-20 items-start w-full font-PlusJakartaSans_Regular text-base 2xl:text-xl">
                        @if (!empty($product->area))
                            <div class="flex flex-col gap-1 items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_libre.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Area icon" />
                                <p class="text-[13px]">Área de Terreno</p>    
                                <p class="text-base">{{ $product->area }} m²</p>
                            </div>
                        @endif

                        @if (!empty($product->construida))
                            <div class="flex flex-col gap-1 items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_construida.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Area icon" />
                                <p class="text-[13px]">Área Construida</p>    
                                <p class="text-base">{{$product->construida}} m²</p>
                            </div>
                        @endif

                        @if (!empty($product->ocupada))
                            <div class="flex flex-col gap-1 items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_ocupada.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Area icon" />
                                <p class="text-[13px]">Área Libre</p>    
                                <p class="text-base">{{$product->ocupada}} m²</p>
                            </div>
                        @endif
                        
                        @if (!empty($product->medidas))
                            <div class="flex flex-col gap-1 items-center min-w-[70px]">
                                <img loading="lazy" src="{{ asset('images/svg/rs_medidas.svg') }}"
                                    class="object-contain w-7 2xl:w-10 aspect-square" alt="Area icon" />
                                <p class="text-[13px]">Medidas</p>    
                                <p class="text-base">{{$product->medidas}}</p>
                            </div>
                        @endif
                    </div>
                </div>

                @php
                    use Illuminate\Support\Facades\File;
                @endphp
            
                @if ($product->image_ambiente && File::exists(public_path($product->image_ambiente)))
                    <div class="flex flex-col justify-center gap-4 pt-8 text-center rounded-2xl text-white">
                        <div class="flex items-center">
                            <h2 class="text-2xl 2xl:text-3xl font-PlusJakartaSans_Medium">Descargar cotización</h2>
                        </div>
                        <div class="flex flex-row items-start w-full font-PlusJakartaSans_Regular text-base 2xl:text-xl">
                            <a href="{{ asset($product->image_ambiente) }}" download>
                                <img class="w-10" src="{{ asset('/images/img/pdf.png') }}" />
                            </a>
                        </div>
                    </div>
                @endif
                

            </div>

            <div class="flex flex-col lg:sticky lg:top-0 justify-center rounded-2xl w-full lg:w-[500px] 2xl:min-w-[500px]">
                <section class="flex flex-col rounded-xl bg-[#262626]">
                    <div class="border-b border-b-[#C8A049] py-4 lg:py-6">
                        <h2 class="text-center font-PlusJakartaSans_Semibold text-xl 2xl:text-2xl bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent">Contacta al Asesor</h2>
                    </div>
                    <div class="flex flex-col gap-4 p-6 justify-center items-center w-full">
                      
                        @if ($product->staff && $product->staff->youtube)
                            <img loading="lazy" src="{{ asset($product->staff->youtube) }}" 
                                onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';"
                                class="object-cover rounded-full w-24 aspect-square" alt="Asesor icon" />
                        @else
                            <img loading="lazy" src="{{ asset('/images/img/noimagen.jpg') }}" 
                                onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';"
                                class="object-cover rounded-full w-24 aspect-square" alt="Asesor icon" />
                        @endif
                       

                        <div class="flex flex-col justify-center items-center">
                          <h2 class="font-PlusJakartaSans_Medium text-center text-white text-lg xl:text-2xl 2xl:text-3xl flex flex-row justify-start items-center gap-2">
                            {{$product->staff->nombre ?? "Agente"}}
                          </h2>
                          <p class="font-PlusJakartaSans_Regular text-center text-white text-sm xl:text-base 2xl:text-xl">
                            {{$product->staff->cargo ?? "Agente Inmobiliario"}}
                          </p>
                        </div>

                        <div class="w-full flex flex-col justify-center items-center gap-5 p-5 rounded-xl border border-[#333131]">
                          <div class="flex flex-col justify-center items-center text-center">
                              <p class="font-PlusJakartaSans_Regular text-white text-sm xl:text-base 2xl:text-xl">
                                ID. {{$product->staff->twitter ?? "STAFF ID"}}
                              </p>
                              <p class="font-PlusJakartaSans_Regular text-white text-sm xl:text-base 2xl:text-xl">
                                {{$product->staff->instagram ?? "STAFF EMAIL"}}
                              </p>
                              <p class="font-PlusJakartaSans_Regular text-white text-sm xl:text-base 2xl:text-xl">
                                Celular: {{$product->staff->facebook ?? "STAFF PHONE"}}
                              </p>
                          </div>
                          <div class="flex flex-row justify-end gap-3">
                                @if ($product->staff && $product->staff->facebook)
                                    <a onclick="copyPhone('{{$product->staff->facebook}}'); return false;">
                                        <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                    <path d="M4.85938 8.26986C4.85938 5.52 4.85937 4.14507 5.71365 3.2908C6.56792 2.43652 7.94285 2.43652 10.6927 2.43652C13.4425 2.43652 14.8175 2.43652 15.6718 3.2908C16.526 4.14507 16.526 5.52 16.526 8.26986V13.2699C16.526 16.0197 16.526 17.3946 15.6718 18.2489C14.8175 19.1032 13.4425 19.1032 10.6927 19.1032C7.94285 19.1032 6.56792 19.1032 5.71365 18.2489C4.85937 17.3946 4.85938 16.0197 4.85938 13.2699V8.26986Z" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                                    <path d="M9.85938 16.6025H11.526" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M8.19238 2.43652L8.26655 2.88154C8.42728 3.84593 8.50765 4.32813 8.83837 4.62156C9.18338 4.92764 9.67247 4.93652 10.6924 4.93652C11.7123 4.93652 12.2014 4.92764 12.5464 4.62156C12.8771 4.32813 12.9575 3.84593 13.1182 2.88154L13.1924 2.43652" stroke="#141414" stroke-width="1.25" stroke-linejoin="round"/>
                                                </svg>
                                        </div>
                                    </a>
                                @endif
                                @if ($product->staff && $product->staff->instagram)
                                    <a onclick="copyEmail('{{$product->staff->instagram}}'); return false;">
                                        <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                            <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                <path d="M6.89746 12.0192H13.5641M6.89746 7.85254H10.2308" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                <path d="M5.31314 16.6025C4.22971 16.496 3.41809 16.1705 2.87377 15.6262C1.89746 14.65 1.89746 13.0785 1.89746 9.93587V9.51921C1.89746 6.37651 1.89746 4.80516 2.87377 3.82885C3.85009 2.85254 5.42143 2.85254 8.56413 2.85254H11.8975C15.0401 2.85254 16.6115 2.85254 17.5878 3.82885C18.5641 4.80516 18.5641 6.37651 18.5641 9.51921V9.93587C18.5641 13.0785 18.5641 14.65 17.5878 15.6262C16.6115 16.6025 15.0401 16.6025 11.8975 16.6025C11.4304 16.613 11.0584 16.6485 10.693 16.7317C9.69429 16.9616 8.76954 17.4726 7.85569 17.9183C6.55354 18.5532 5.90246 18.8707 5.49387 18.5735C4.7122 17.9913 5.47624 16.1875 5.64746 15.3525" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                            </svg>
                                        </div>
                                    </a>
                                @endif
                          </div>
                        </div>

                        <div class="w-full">
                          <a class="w-full mt-4 border border-[#C8A049] flex flex-col justify-center text-base 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide text-center bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent px-4 md:px-3 py-3 leading-normal rounded-xl">Datos del Asesor</a>
                        </div>
                    </div>
                </section>
                <p class="font-PlusJakartaSans_Regular text-white text-xs mt-3">* Las fotos, precios y descripción de esta propiedad son referenciales</p>
            </div>
        </section>
    </main>

    <section class="w-full px-[5%] py-10 lg:py-16 overflow-visible bg-[#1D1D1D]" style="overflow-x: visible">
        <div class="flex flex-col md:flex-row justify-between items-start md:items-center w-full gap-7 lg:gap-10">
            <div class="flex flex-col gap-3 max-w-2xl">
              <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-4xl md:text-[44px] leading-tight 2xl:text-5xl">Propiedades <span class="text-[#C8A049]">similares</span> </h2>
            </div>
            <div>
                <a href="/catalogo" class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 py-4 rounded-xl font-PlusJakartaSans_Medium">
                    Ver todos </a>
            </div>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 md:flex-row gap-4 lg:gap-8 mt-12 md:mt-7 w-full ">
            @foreach ($ProdComplementarios->take(3) as $item)
                <x-product.container width="col-span-1 " bgcolor="bg-[#1D1D1D]" :item="$item" />
            @endforeach
        </div>
    </section>



    <div id="modalgaleriatotal" class="modal !bg-transparent !px-[0px] !py-[0px] !z-50"
        style="display: none; max-width: 650px !important; width: 100% !important;">
        <div class=" !bg-transparent flex flex-col gap-3">
            <div class="">
                <div class="swiper galeriadeimagenes">
                    <div class="swiper-wrapper">

                        @foreach ($product->galeria as $index => $image)
                            <div class="swiper-slide">
                                <img loading="lazy" src="{{ asset($image->imagen) }}"
                                    class="object-contain w-full max-h-[450px] rounded-xl overflow-hidden" />
                            </div>
                        @endforeach

                        @if ($product->imagen_2)
                            <div class="swiper-slide">
                                <img loading="lazy" src="{{ asset($product->imagen_2) }}"
                                    class="object-contain w-full max-h-[450px] rounded-xl overflow-hidden" />
                            </div>
                        @endif
                        @if ($product->imagen_2)
                            <div class="swiper-slide">
                                <img loading="lazy" src="{{ asset($product->imagen_3) }}"
                                    class="object-contain w-full max-h-[450px] rounded-xl overflow-hidden" />
                            </div>
                        @endif
                        @if ($product->imagen_2)
                            <div class="swiper-slide">
                                <img loading="lazy" src="{{ asset($product->imagen_4) }}"
                                    class="object-contain w-full max-h-[450px] rounded-xl overflow-hidden" />
                            </div>
                        @endif
                        @if ($product->image_texture)
                            <div class="swiper-slide">
                                <img loading="lazy" src="{{ asset($product->image_texture) }}"
                                    class="object-contain w-full max-h-[450px] rounded-xl overflow-hidden" />
                            </div>
                        @endif
                    </div>
                </div>
                <div
                    class="swiper-galeria-prev absolute top-1/2 -translate-y-1/2 -left-2 lg:-left-5 z-50 bg-white rounded-full">
                    <i class="fa-solid fa-circle-chevron-left text-5xl text-[#006258]"></i></div>
                <div
                    class="swiper-galeria-next absolute top-1/2 -translate-y-1/2 -right-2 lg:-right-5 z-50 bg-white rounded-full">
                    <i class="fa-solid fa-circle-chevron-right text-5xl text-[#006258]"></i></div>
            </div>
        </div>
    </div>

@section('scripts_importados')


<script>
    function copyEmail(email) {
        navigator.clipboard.writeText(email).then(function() {
            Swal.fire({
                icon: 'success',
                title: 'Correo copiado',
                text: email,
                showConfirmButton: false,
                timer: 1500,
                timerProgressBar: true,
                toast: true,
                position: 'top-end'
            });
        }, function(err) {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'No se pudo copiar el correo',
                showConfirmButton: false,
                timer: 1500
            });
            console.error('Error al copiar el correo: ', err);
        });
    }

    function copyPhone(phone) {
        navigator.clipboard.writeText(phone).then(function() {
            Swal.fire({
                icon: 'success',
                title: 'Telefono copiado',
                text: phone,
                showConfirmButton: false,
                timer: 1500,
                timerProgressBar: true,
                toast: true,
                position: 'top-end'
            });
        }, function(err) {
            Swal.fire({
                icon: 'error',
                title: 'Error',
                text: 'No se pudo copiar el telefono',
                showConfirmButton: false,
                timer: 1500
            });
            console.error('Error al copiar el telefono: ', err);
        });
    }
</script>
    <script>
        document.addEventListener("DOMContentLoaded", function() {
            const latitude = parseFloat("{{ $product->latitud }}") ?? 0;
            const longitude = parseFloat("{{ $product->longitud }}") ?? 0;
            const mapElement = document.getElementById("map");

            // Si no hay coordenadas válidas, oculta el contenedor del mapa
            if (isNaN(latitude) || isNaN(longitude) || latitude === 0 || longitude === 0) {
                mapElement.style.display = "none"; // Oculta el div#map
            }
        });
    </script>

    <script>
        function copiarEnlace() {
            // Obtener la URL actual
            const url = window.location.href;
            // Crear un elemento temporal para copiar
            const inputTemp = document.createElement('input');
            inputTemp.value = url;
            document.body.appendChild(inputTemp);
            inputTemp.select();
            // Copiar al portapapeles
            document.execCommand('copy');
            // Eliminar el elemento temporal
            document.body.removeChild(inputTemp);
            // Mostrar notificación (opcional)
            alert('Enlace copiado: ' + url);
        }
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            var latitude = {{ $product->latitud ?? 0 }};
            var longitude = {{ $product->longitud ?? 0 }};

            var location = [
                ['center', latitude, longitude],
            ];

            var mylatlng = {
                lat: location[0][1],
                lng: location[0][2]
            };

            var map = new google.maps.Map(document.getElementById("map"), {
                zoom: 15,
                center: mylatlng,
                // styles: darkModeStyle
            });
            for (var i = 0; i < location.length; i++) {
                new google.maps.Marker({
                    position: new google.maps.LatLng(location[i][1], location[i][2]),
                    map: map
                });
            }
        });
    </script>

    <script>
        $(document).ready(function() {
            $(document).on('click', '.galeriatotal', function() {
                $(`#modalgaleriatotal`).modal({
                    show: true,
                    fadeDuration: 400,
                });
            });
        });
    </script>

    <script>
        let serviciosExtras = [];
        let costoTotalFinal = 0;
        let disabledDates = @json($disabledDates);
        let formattedDisabledDates = (Array.isArray(disabledDates) ? disabledDates : []).map(date =>
            moment(date, 'DD/MM/YYYY')
        );

        const fechasGuardadas = localStorage.getItem('fechasBusqueda');
        let fechaInicio = moment();
        let fechaFin = moment().add(1, 'days');
        let fechasValidas = false;

        if (fechasGuardadas) {
            const fechas = JSON.parse(fechasGuardadas);
            fechaInicio = moment(fechas.llegada, 'DD/MM/YYYY');
            fechaFin = moment(fechas.salida, 'DD/MM/YYYY');
        }

        if (fechasGuardadas) {
            try {
                const fechas = JSON.parse(fechasGuardadas);

                // Verificar si las fechas están bloqueadas
                const llegada = moment(fechas.llegada, 'DD/MM/YYYY');
                const salida = moment(fechas.salida, 'DD/MM/YYYY');

                let fechaBloqueadaEncontrada = false;

                // Verificar cada día en el rango guardado
                for (let m = llegada.clone(); m.isBefore(salida); m.add(1, 'days')) {
                    if (formattedDisabledDates.some(blockedDate => m.isSame(blockedDate, 'day'))) {
                        fechaBloqueadaEncontrada = true;
                        break;
                    }
                }

                if (!fechaBloqueadaEncontrada) {
                    fechaInicio = llegada;
                    fechaFin = salida;
                    fechasValidas = true;
                } else {
                    // Si hay fechas bloqueadas, limpiar localStorage
                    localStorage.removeItem('fechasBusqueda');
                    Swal.fire({
                        title: 'Fechas no disponibles',
                        text: 'Algunas fechas previamente seleccionadas ya no están disponibles. Por favor, selecciona un nuevo rango.',
                        icon: 'warning'
                    });
                }
            } catch (e) {
                console.error('Error al parsear fechas:', e);
                localStorage.removeItem('fechasBusqueda');
            }
        }

        // Configuración de Flatpickr
        $('#arrival-date').daterangepicker({
            locale: {
                format: 'DD/MM/YYYY',
                cancelLabel: 'Cancelar',
                applyLabel: 'Aplicar'
            },
            startDate: fechaInicio,
            endDate: fechaFin,
            minDate: moment(),
            maxDate: moment().add(9, 'months'),
            minSpan: {
                days: 1 // Mínimo 2 noches, es decir, 1 día de diferencia entre start y end
            },
            isInvalidDate: function(date) {
                // Verificar si la fecha está en las fechas bloqueadas
                return formattedDisabledDates.some(blockedDate =>
                    date.isSame(blockedDate, 'day')
                );
            }
        }, function(start, end) {
            let nights = end.diff(start, 'days');
            // Verificar si el rango de fechas seleccionado incluye fechas reservadas
            let rangeBlocked = false;

            for (let m = start.clone(); m.isBefore(end); m.add(1, 'days')) {
                //  for (let m = start.clone(); m.isBefore(end.clone().subtract(1, 'days')); m.add(1, 'days')) {
                if (formattedDisabledDates.some(blockedDate => m.isSame(blockedDate, 'day'))) {
                    // if (!m.isSame(end, 'day') && formattedDisabledDates.some(blockedDate => m.isSame(blockedDate, 'day'))) {
                    rangeBlocked = true;
                    break;
                }
            }

            if (rangeBlocked) {
                Swal.fire({
                    title: 'Selección Fallida',
                    text: 'No se puede seleccionar un rango que incluya fechas reservadas.',
                    icon: 'warning',
                });
                $('#arrival-date').data('daterangepicker').setStartDate(start);
                $('#arrival-date').data('daterangepicker').setEndDate(start.clone().add(1, 'days'));
                $('#arrival-date').val('Fecha Inicio - Fecha Fin');
                return; // Salir para no seguir con la ejecución
            }

            // Actualizar el input solo si la selección es válida
            if (nights > 1) {
                $('#arrival-date').val(start.format('DD/MM/YYYY') + ' - ' + end.clone().subtract(1, 'days').format(
                    'DD/MM/YYYY'));

                $('#arrival-date').data('checkin', start.format('YYYY-MM-DD'));
                $('#arrival-date').data('checkout', end.clone().format('YYYY-MM-DD'));

                $('#cantidadnoches').text(nights);
            } else {
                $('#arrival-date').val(start.format('DD/MM/YYYY') + ' - Fecha Fin');
                $('#arrival-date').data('daterangepicker').setEndDate(start.clone().add(1, 'days'));

                $('#arrival-date').data('checkin', start.format('YYYY-MM-DD'));
                $('#arrival-date').data('checkout', start.clone().add(1, 'days').format('YYYY-MM-DD'));

                $('#cantidadnoches').text(1);
            }

            cotizarPrecios();

        });

        if (fechasValidas) {
            const fechas = JSON.parse(fechasGuardadas);
            $('#arrival-date').val(fechas.llegada + ' - ' + fechas.salida);
            $('#arrival-date').data('checkin', moment(fechas.llegada, 'DD/MM/YYYY').format('YYYY-MM-DD'));
            $('#arrival-date').data('checkout', moment(fechas.salida, 'DD/MM/YYYY').format('YYYY-MM-DD'));

            // Calcular noches y mostrar precio inicial
            let nights = moment(fechas.salida, 'DD/MM/YYYY').diff(moment(fechas.llegada, 'DD/MM/YYYY'), 'days');
            $('#cantidadnoches').text(nights);
            cotizarPrecios(); // Llamar a la función para calcular precios con las fechas cargadas
        } else {
            $('#arrival-date').val('Fecha Inicio - Fecha Fin');
        }

        function cotizarPrecios() {
            let productSku = @json($product->sku);
            let checkin = $('#arrival-date').data('checkin');
            let checkout = $('#arrival-date').data('checkout');
            serviciosExtras = [];

            if (!checkin || !checkout) {
                Swal.fire({
                    title: 'Selección Fallida',
                    text: 'Por favor, selecciona un rango de fechas válido.',
                    icon: 'warning',
                });
                return;
            }

            $('#costototal').text("Calculando...");
            $('#btnAgregarCarritoPr').prop('disabled', true);


            $('input[name="servicios_extras[]"]:checked').each(function() {
                serviciosExtras.push($(this).val());
            });


            $.ajax({
                url: "{{ route('producto.prices') }}",
                method: 'POST',
                headers: {
                    'Content-Type': 'application/json',
                    'X-CSRF-TOKEN': '{{ csrf_token() }}',
                },
                data: JSON.stringify({
                    id: productSku, // SKU del producto
                    checkin: checkin, // Fecha de llegada
                    checkout: checkout, // Fecha de salida
                    servicios: serviciosExtras // Servicios extras
                }),
                success: function(response) {
                    if (response) {
                        $('#costonoches').text("$ " + response.data.totalCost);
                        // let total = response.data.totalCost + {{ $product->preciolimpieza ?? 0.0 }};
                        $('#costototal').text("$ " + response.data.costoTotalFinal);
                        costoTotalFinal = response.data.costoTotalFinal;
                    } else {
                        $('#costonoches').text('0.00');
                    }
                    $('#btnAgregarCarritoPr').prop('disabled', false);
                },
                error: function(xhr) {
                    Swal.fire({
                        title: 'Error',
                        text: 'Ocurrió un error inesperado.',
                        icon: 'error',
                    });
                }
            });
        }

        $(document).ready(function() {
            $('.servicio-extra').on('change', function() {
                cotizarPrecios();
            });
        })
    </script>


    <script>
        function capitalizeFirstLetter(string) {
            string = string.toLowerCase()
            return string.charAt(0).toUpperCase() + string.slice(1);
        }

        $('#disminuir').on('click', function() {
            let cantidad = Number($('#cantidadSpan span').text())
            if (cantidad > 1) {
                cantidad--
                $('#cantidadSpan span').text(cantidad)
            }
        })

        $('#aumentar').on('click', function() {
            let cantidad = Number($('#cantidadSpan span').text());
            let maxPersonas = Number($('#cantidadSpan').data('max-personas'));

            if (cantidad < maxPersonas) {
                cantidad++;
                $('#cantidadSpan span').text(cantidad);
            }
        })
    </script>

    <script>
        var galeria = new Swiper(".galeriadeimagenes", {
            slidesPerView: 1,
            autoHeight: true,
            spaceBetween: 20,
            loop: true,
            centeredSlides: false,
            initialSlide: 0,
            allowTouchMove: true,
            autoplay: {
                delay: 5500,
                disableOnInteraction: true,
                pauseOnMouseEnter: true
            },
            navigation: {
                nextEl: ".swiper-galeria-next",
                prevEl: ".swiper-galeria-prev",
            },
        });
    </script>

    <script>
        // let articulosCarrito = [];
        /* 
            function deleteOnCarBtn(id, operacion) {
              const prodRepetido = articulosCarrito.map(item => {
                if (item.id === id && item.cantidad > 0) {
                  item.cantidad -= Number(1);
                  return item; // retorna el objeto actualizado 
                } else {
                  return item; // retorna los objetos que no son duplicados 
                }

              });
              Local.set('carrito', articulosCarrito)
              limpiarHTML()
              PintarCarrito()


            } */

        // function calcularTotal() {
        //   let articulos = Local.get('carrito')
        //   let total = articulos.map(item => {
        //     let monto
        //     if (Number(item.descuento) !== 0) {
        //       monto = item.cantidad * Number(item.descuento)
        //     } else {
        //       monto = item.cantidad * Number(item.precio)
        //     }
        //     return monto
        //   })
        //   const suma = total.reduce((total, elemento) => total + elemento, 0);
        //   $('#itemsTotal').text(`S/. ${suma.toFixed(2)} `)
        // }

        /*  function addOnCarBtn(id, operacion) {
           const prodRepetido = articulosCarrito.map(item => {
             if (item.id === id) {
               item.cantidad += Number(1);
               return item; // retorna el objeto actualizado 
             } else {
               return item; // retorna los objetos que no son duplicados 
             }

           });
           Local.set('carrito', articulosCarrito)
           // localStorage.setItem('carrito', JSON.stringify(articulosCarrito));
           limpiarHTML()
           PintarCarrito()
        } */

        var appUrl = <?php echo json_encode($url_env); ?>;
        $(document).ready(function() {
            articulosCarrito = Local.get('carrito') || [];
            // PintarCarrito();
        });

        function limpiarHTML() {
            //forma lenta 
            /* contenedorCarrito.innerHTML=''; */
            $('#itemsCarrito').html('')
        }

        $('#btnAgregarCombo').on('click', async function() {
            const offerId = this.getAttribute('data-id')
            const res = await fetch(`/api/offers/${offerId}`)
            const data = await res.json()
            let nombre = `<b>${data.producto}</b><ul class="mb-1">`
            data.products.forEach(product => {
                nombre +=
                    `<li class="text-xs text-nowrap overflow-hidden text-ellipsis w-[270px]">${product.producto}</li>`
            })
            nombre += '</ul>'

            let newcarrito
            articulosCarrito = Local.get('carrito') ?? []
            const index = articulosCarrito.findIndex(item => item.id == data.id && item.isCombo)

            if (index != -1) {

                articulosCarrito = articulosCarrito.map(item => {
                    if (item.isCombo && item.id == data.id) {
                        item.nombre = nombre
                        item.cantidad++
                    }
                    return item
                })
            } else {

                articulosCarrito = [...articulosCarrito, {
                    "id": data.id,
                    "isCombo": true,
                    "producto": nombre,
                    "descuento": data.descuento,
                    "precio": data.precio,
                    "imagen": data.imagen ? `${appUrl}${data.imagen}` :
                        `${appUrl}/images/img/noimagen.jpg`,
                    "cantidad": 1,
                    "color": null
                }]

            }

            Local.set('carrito', articulosCarrito)
            limpiarHTML()
            PintarCarrito()
            mostrarTotalItems()

            Swal.fire({
                icon: "success",
                title: `Combo agregado correctamente`,
                showConfirmButton: true
            });
        })

        $('#addWishlist').on('click', function() {
            $.ajax({
                url: `{{ route('wishlist.store') }}`,
                method: 'POST',
                data: {
                    _token: $('input[name="_token"]').val(),
                    product_id: '{{ $product->id }}'
                },
                success: function(response) {

                    if (response.message === 'Producto agregado a la lista de deseos') {
                        $('#addWishlist').removeClass('bg-[#99b9eb]').addClass('bg-[#0D2E5E]');
                    } else {
                        $('#addWishlist').removeClass('bg-[#0D2E5E]').addClass('bg-[#99b9eb]');
                    }
                    Swal.fire({
                        icon: 'success',
                        title: response.message,
                        showConfirmButton: false,
                        timer: 1500
                    });
                },
                error: function(error) {
                    console.log(error);
                }
            });
        })
    </script>
    

@stop

@stop
