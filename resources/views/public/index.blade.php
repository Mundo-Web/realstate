@extends('components.public.matrix', ['pagina' => 'index'])

@section('css_importados')

@stop

@php
    $bannersBottom = array_filter($banners, function ($banner) {
        return $banner['potition'] === 'bottom';
    });
    $bannerMid = array_filter($banners, function ($banner) {
        return $banner['potition'] === 'mid';
    });
@endphp

<style>
    @media (max-width: 600px) {
        .fixedWhastapp {
            right: 13px !important;
        }
    }
    .swiper-pagination-carruseltop .swiper-pagination-bullet {
        width: 14px;
        height: 8px;
        border-radius: 6px;
        background-color: #73F7AD !important;     
    }

    .swiper-pagination-carruseltop .swiper-pagination-bullet:not(.swiper-pagination-bullet-active) {
        background-color: #05304e56!important;
        opacity: 1;
    }
</style>



@section('content')

    <main>

        <section class="px-[5%] xl:px-[8%] py-8 lg:py-16 bg-[#141414]">
                <div class="flex flex-col md:flex-row gap-10 lg:gap-20 relative bg-cover bg-center bg-no-repeat rounded-3xl overflow-hidden" style="background-image: url({{ asset('images/img/rs_portada.png') }})">
                    <div class="min-h-[800px] h-full w-full md:w-3/5 bg-[#141414] bg-opacity-70 rounded-3xl py-6 px-10 ">
                        <div class="max-w-lg 2xl:max-w-none flex flex-col gap-5">
                            <h2 class="font-PlusJakartaSans_Medium text-white text-4xl md:text-6xl 2xl:text-7xl">Encuentra tu nuevo <span class="text-[#C8A049]">hogar</span> ideal</h2>
                            <p class="font-PlusJakartaSans_Regular text-white text-base md:text-lg 2xl:text-xl">Desde la exploración hasta la celebración de tu nuevo hogar o local, nuestra tecnología hace el proceso más claro y accesible.</p>
                        </div>
                    </div>
                </div>
        </section>

        <section class="flex flex-col gap-3 px-[5%] xl:px-[8%] py-8 lg:py-16 bg-cover" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
            <div class="flex flex-col gap-4">
                <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-6xl 2xl:text-7xl">Ayudar a las personas a encontrar la <span class="text-[#C8A049]">propiedad inmobiliaria</span> adecuada</h2>
                <p class="font-PlusJakartaSans_Regular text-white text-base md:text-lg 2xl:text-xl lg:w-3/5">Desde la exploración hasta la celebración de tu nuevo hogar o local, nuestra tecnología hace el proceso más claro y accesible.</p>
            </div>
            <div class="flex flex-col md:flex-row gap-10 lg:gap-20 items-center justify-center">
                <div class="w-full lg:w-1/2 flex flex-col items-start justify-center">
                    
                    <div class="flex flex-col gap-5 2xl:gap-7 w-full">
                        <div class="flex flex-row gap-3 2xl:gap-5 p-4 2xl:p-6 rounded-xl bg-[#1E1E1E]">
                            <div>
                                <img loading="lazy" src="{{ asset('images/svg/icono_c.svg') }}" class="object-contain min-w-16" />
                            </div>
                            <div class="flex flex-col gap-1">
                                <h2 class="font-PlusJakartaSans_Medium text-white text-base md:text-lg 2xl:text-xl">Beneficio o <span class="text-[#C8A049]">valor</span> tres</h2>
                                <p class="font-PlusJakartaSans_Regular text-white text-sm md:text-base 2xl:text-lg">Donec vehicula purus at diam facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec.</p>
                            </div>
                        </div>

                        <div class="flex flex-row gap-3 2xl:gap-5 p-4 2xl:p-6 rounded-xl bg-[#1E1E1E]">
                            <div>
                                <img loading="lazy" src="{{ asset('images/svg/icono_c.svg') }}" class="object-contain min-w-16" />
                            </div>
                            <div class="flex flex-col gap-1">
                                <h2 class="font-PlusJakartaSans_Medium text-white text-base md:text-lg 2xl:text-xl">Beneficio o <span class="text-[#C8A049]">valor</span> tres</h2>
                                <p class="font-PlusJakartaSans_Regular text-white text-sm md:text-base 2xl:text-lg">Donec vehicula purus at diam facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec.</p>
                            </div>
                        </div>

                        <div class="flex flex-row gap-3 2xl:gap-5 p-4 2xl:p-6 rounded-xl bg-[#1E1E1E]">
                            <div>
                                <img loading="lazy" src="{{ asset('images/svg/icono_c.svg') }}" class="object-contain min-w-16" />
                            </div>
                            <div class="flex flex-col gap-1">
                                <h2 class="font-PlusJakartaSans_Medium text-white text-base md:text-lg 2xl:text-xl">Beneficio o <span class="text-[#C8A049]">valor</span> tres</h2>
                                <p class="font-PlusJakartaSans_Regular text-white text-sm md:text-base 2xl:text-lg">Donec vehicula purus at diam facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec.</p>
                            </div>
                        </div>
                    </div>

                    <div class="flex flex-col sm:flex-row gap-10 mt-4 2xl:mt-6">
                        <a href="/nosotros" class="flex text-base 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 md:px-6 py-3 leading-normal rounded-xl">
                            Nosotros
                        </a>
                    </div>

                </div>

                <div class="w-full lg:w-1/2 flex flex-col items-center justify-center">
                    <img class="h-full w-full py-[5%] lg:py-[10%] object-contain"
                        src="{{asset($textoshome->url_image2section)}}" onerror="this.src='{{ asset('images/img/portada_vt4.png') }}';" />
                </div>
            </div>
        </section>


        {{-- <section
            class="flex flex-col lg:flex-row gap-3 lg:gap-10 justify-center items-center px-[5%] lg:pl-[5%] lg:pr-0 bg-[#5BE3A4]">

            <div class="w-full lg:w-[55%] text-[#151515] flex flex-col justify-center items-center gap-2 md:gap-5">
                <div class="w-full flex flex-col gap-5 px-0 lg:pr-[5%] pt-8 lg:pt-0 xl:max-w-3xl">
                    <h1 class="text-[#F8FCFF] font-Homie_Bold text-4xl lg:text-5xl">
                        {{$textoshome->title1section ?? 'Ingrese un texto'}}
                    </h1>
                    <p class="text-[#F8FCFF] text-lg font-FixelText_Regular">
                        {{$textoshome->description1section ?? 'Ingrese un texto'}}
                    </p>
                </div>

                <div class="w-full flex flex-col gap-5 px-0 lg:pr-[5%] pt-8 md:pt-0 relative">
                    <!--  -->
                    <div class="px-0 w-full z-10">
                        
                       
                        <div class="bg-white rounded-t-lg inline-block w-auto md:max-w-[400px]">
                            <div class="flex justify-between items-center">
                                <button
                                    class="px-10 py-3 text-[#009A84] font-FixelText_Semibold border-b-[2.5px] border-[#009A84] focus:outline-none tab-button flex-1"
                                    >
                                    Elige unas Fechas 
                                </button>
                            </div>
                        </div>
                        
                       
                        <div id="tab1" class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-8 py-4 px-4 tab-content bg-white justify-between items-center gap-3 rounded-b-lg md:rounded-tr-lg w-full">
                        
                            <div class="w-full md:col-span-2">
                                <div class="relative w-full text-left">
                                <div class="group">
                                    <div>
                                    <select name="departamento_id" id="lugar"
                                        class="w-full min-w-36 py-3 text-sm border-0  font-FixelText_Medium self-stretch my-auto basis-0 bg-transparent focus:ring-0 focus:border-0 border-none selection:text-[#000929] text-[#006258] placeholder:text-opacity-30">
                                                <option class="line-clamp-1" value="">Ubicación</option>
                                            @foreach ($distritosParaFiltro as $distrito_id => $productos)
                                                @php
                                                    $distrito = $productos->first()->distrito; // Obtén el distrito del primer producto del grupo
                                                @endphp
                                                @if (!empty($distrito->description))
                                                    <option class="line-clamp-1" value="{{$distrito_id}}">{{$distrito->description}}</option>
                                                @endif  
                                            @endforeach
                                    </select>
                                    </div>
                                </div>
                                </div>
                            </div>

                            <div class="w-full md:col-span-3">
                                <div class="relative w-full text-left md:text-center">
                                <div class="group">
                                    <div>
                                        <input type="text" id="arrival-date" class="text-left md:text-center w-full py-3 text-sm flex-1 shrink font-FixelText_Medium self-stretch my-auto basis-0 bg-transparent focus:ring-0 focus:border-0 border-none selection:text-[#000929] text-[#006258] placeholder:text-opacity-30" value="2024-07-13" aria-label="Fecha de llegada" />
                                    </div>
                                </div>
                                </div>
                            </div>


                            <div class="w-full md:col-span-2">
                                <div class="relative w-full text-left">
                                <div class="group">
                                    <div>
                                        
                                        <select name="cantidad_personas" id="cantidad_personas" class="w-full text-sm font-FixelText_Medium self-stretch my-auto basis-0 bg-transparent focus:ring-0 focus:border-0 border-none selection:text-[#000929] text-[#006258] placeholder:text-opacity-30">
                                             <option value=""># Personas</option>
                                                @for ($i = 1; $i <= $limite; $i++)
                                                   <option value="{{ $i }}">{{ $i }}</option>
                                                @endfor
                                        </select>
                                        
                                    </div>
                                </div>
                                </div>
                            </div>    
                

                            <div class="flex justify-center items-center w-full md:col-span-1">
                                    <div class="flex justify-start items-center">
                                        <button id="linkExplirarAlquileres"
                                            class="bg-[#009A84] rounded-xl font-FixelText_Semibold text-base text-white px-3 py-3 text-center">
                                            <span class="hidden md:flex"><i class="fa-solid fa-magnifying-glass"></i></span>
                                            <span class="flex md:hidden px-7">Buscar</span>
                                        </button>
                                    </div>
                            </div>

                        </div>
                        
                        
                        <p class="font-FixelText_Regular underline text-sm text-white mt-2">
                            Propietario, anuncia tu propiedad gratis
                        </p>
                    </div>
                </div>
            </div>

            
            <div class="w-full lg:w-[45%] ">
                <div class="w-full h-full -mb-20 flex flex-row items-center justify-center">
                    <img src="{{asset($textoshome->url_image1section)}}" onerror="this.src='{{ asset('images/img/portadavt.png') }}';" class="min-h-[500px] object-contain xl:h-[700px]" />
                </div>
            </div>

        </section> --}}

        {{-- @if ($estadisticas->count() > 0)
            <section
                class="flex flex-col md:flex-row gap-10 lg:gap-20 items-center justify-center px-[5%] xl:px-[8%] py-8 lg:py-16 mt-20 lg:mt-14">

                <div class="w-full lg:w-1/2 flex flex-col items-start justify-center gap-5 xl:max-w-xl mx-auto">
                    <h2 class="text-4xl lg:text-5xl font-Homie_Bold text-[#006258]">
                        {{$textoshome->title2section ?? 'Ingrese un texto'}}
                    </h2>
                    <p class="text-lg text-[#000929] font-FixelText_Regular">
                        {{$textoshome->description2section ?? 'Ingrese un texto'}}
                    </p>
                    <div class="flex flex-col sm:flex-row gap-5 sm:gap-10 mt-5">
                        @foreach ($estadisticas as $estadistica)
                            <div class="flex flex-col gap-2">
                                <h2 class="text-4xl lg:text-5xl font-FixelText_Bold text-[#002677]">
                                    {{ $estadistica->title }}
                                </h2>
                                <p class="text-sm text-[#009A84] font-FixelText_Medium">{{ $estadistica->description }}</p>
                            </div>
                        @endforeach
                    </div>

                    <div class="flex flex-col sm:flex-row gap-10 mt-2">
                        <a href="{{ route('nosotros') }}"
                            class="bg-[#00897B] text-[#73F7AD] px-4 py-3 rounded-xl font-FixelText_Semibold">
                            Sobre Nosotros
                        </a>
                    </div>
                </div>

                <div class="w-full lg:w-1/2 flex flex-col items-center justify-center">
                    <img class="h-full w-full py-[5%] lg:py-[10%] object-contain"
                        src="{{asset($textoshome->url_image2section)}}" onerror="this.src='{{ asset('images/img/portada_vt4.png') }}';" />
                </div>

            </section>
        @endif --}}

        @if ($ultimosProductos->count() > 0)
            <section class="w-full px-[5%] xl:px-[8%] py-8 lg:py-16 bg-[#141414]" style="overflow-x: visible">
                <div class="flex flex-col md:flex-row justify-between items-start md:items-center w-full gap-10">
                    
                    <div class="flex flex-col gap-3 max-w-2xl">
                        <h2 class="font-PlusJakartaSans_Medium text-white text-4xl md:text-6xl 2xl:text-7xl">Encuentra tu nuevo <span class="text-[#C8A049]">hogar</span> ideal</h2>
                    </div>
                    
                    <div>
                        <a href="/catalogo" class="flex text-base 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 md:px-6 py-3 leading-normal rounded-xl">
                            Ver todas
                        </a>
                    </div>

                </div>
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 md:flex-row gap-5 lg:gap-8 mt-7 w-full">
                    @foreach ($ultimosProductos as $item)
                        <x-product.container width="col-span-1 " bgcolor="" :item="$item" />
                    @endforeach
                </div>
            </section>
        @endif

        <section class="w-full px-[5%] xl:px-[8%] pb-8 lg:pb-16 bg-[#141414]">
            <div class="flex flex-col gap-6">
                <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] 2xl:text-5xl">Comunícate con nuestros <span class="text-[#C8A049]">agentes</span> </h2>
                
                <div class="w-full">
                    <div class="swiper agentes">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="flex flex-col bg-[#191919] p-4 md:p-6 rounded-xl min-w-[270px] xl:min-w-[350px] gap-3">
                                    <div class="flex flex-row gap-3 items-center">
                                        <img loading="lazy" src="{{ asset('images/img/rs_user.png') }}" class="object-contain w-12 xl:min-w-16" />
                                        <div class="flex flex-col">
                                            <h2 class="font-PlusJakartaSans_Medium text-white text-lg xl:text-2xl 2xl:text-3xl flex flex-row justify-start items-center gap-2">
                                                Carlos Soria 
                                                <span class="text-[#C8A049]">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 16 16" fill="none">
                                                        <mask id="mask0_3_3930" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="16" height="16">
                                                        <rect width="16" height="16" fill="#D9D9D9"/>
                                                        </mask>
                                                        <g mask="url(#mask0_3_3930)">
                                                        <path d="M5.73366 15L4.46699 12.8667L2.06699 12.3333L2.30033 9.86667L0.666992 8L2.30033 6.13333L2.06699 3.66667L4.46699 3.13333L5.73366 1L8.00033 1.96667L10.267 1L11.5337 3.13333L13.9337 3.66667L13.7003 6.13333L15.3337 8L13.7003 9.86667L13.9337 12.3333L11.5337 12.8667L10.267 15L8.00033 14.0333L5.73366 15ZM6.30033 13.3L8.00033 12.5667L9.73366 13.3L10.667 11.7L12.5003 11.2667L12.3337 9.4L13.567 8L12.3337 6.56667L12.5003 4.7L10.667 4.3L9.70033 2.7L8.00033 3.43333L6.26699 2.7L5.33366 4.3L3.50033 4.7L3.66699 6.56667L2.43366 8L3.66699 9.4L3.50033 11.3L5.33366 11.7L6.30033 13.3ZM7.30033 10.3667L11.067 6.6L10.1337 5.63333L7.30033 8.46667L5.86699 7.06667L4.93366 8L7.30033 10.3667Z" fill="#E9D151"/>
                                                        </g>
                                                    </svg>
                                                </span> 
                                            </h2>
                                            <p class="font-PlusJakartaSans_Regular text-white text-sm xl:text-base 2xl:text-xl">
                                                Agente inmobiliario
                                            </p>
                                        </div>
                                    </div>
                                    <div class="flex flex-row justify-end gap-3">
                                        <a href="#">
                                        <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                    <path d="M4.85938 8.26986C4.85938 5.52 4.85937 4.14507 5.71365 3.2908C6.56792 2.43652 7.94285 2.43652 10.6927 2.43652C13.4425 2.43652 14.8175 2.43652 15.6718 3.2908C16.526 4.14507 16.526 5.52 16.526 8.26986V13.2699C16.526 16.0197 16.526 17.3946 15.6718 18.2489C14.8175 19.1032 13.4425 19.1032 10.6927 19.1032C7.94285 19.1032 6.56792 19.1032 5.71365 18.2489C4.85937 17.3946 4.85938 16.0197 4.85938 13.2699V8.26986Z" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                                    <path d="M9.85938 16.6025H11.526" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M8.19238 2.43652L8.26655 2.88154C8.42728 3.84593 8.50765 4.32813 8.83837 4.62156C9.18338 4.92764 9.67247 4.93652 10.6924 4.93652C11.7123 4.93652 12.2014 4.92764 12.5464 4.62156C12.8771 4.32813 12.9575 3.84593 13.1182 2.88154L13.1924 2.43652" stroke="#141414" stroke-width="1.25" stroke-linejoin="round"/>
                                                </svg>
                                        </div>
                                        </a>
                                        <a href="#">
                                            <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                    <path d="M6.89746 12.0192H13.5641M6.89746 7.85254H10.2308" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M5.31314 16.6025C4.22971 16.496 3.41809 16.1705 2.87377 15.6262C1.89746 14.65 1.89746 13.0785 1.89746 9.93587V9.51921C1.89746 6.37651 1.89746 4.80516 2.87377 3.82885C3.85009 2.85254 5.42143 2.85254 8.56413 2.85254H11.8975C15.0401 2.85254 16.6115 2.85254 17.5878 3.82885C18.5641 4.80516 18.5641 6.37651 18.5641 9.51921V9.93587C18.5641 13.0785 18.5641 14.65 17.5878 15.6262C16.6115 16.6025 15.0401 16.6025 11.8975 16.6025C11.4304 16.613 11.0584 16.6485 10.693 16.7317C9.69429 16.9616 8.76954 17.4726 7.85569 17.9183C6.55354 18.5532 5.90246 18.8707 5.49387 18.5735C4.7122 17.9913 5.47624 16.1875 5.64746 15.3525" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                                </svg>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="flex flex-col bg-[#191919] p-4 md:p-6 rounded-xl min-w-[270px] xl:min-w-[350px] gap-3">
                                    <div class="flex flex-row gap-3 items-center">
                                        <img loading="lazy" src="{{ asset('images/img/rs_user.png') }}" class="object-contain w-12 xl:min-w-16" />
                                        <div class="flex flex-col">
                                            <h2 class="font-PlusJakartaSans_Medium text-white text-lg xl:text-2xl 2xl:text-3xl flex flex-row justify-start items-center gap-2">
                                                Carlos Soria 
                                                <span class="text-[#C8A049]">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 16 16" fill="none">
                                                        <mask id="mask0_3_3930" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="16" height="16">
                                                        <rect width="16" height="16" fill="#D9D9D9"/>
                                                        </mask>
                                                        <g mask="url(#mask0_3_3930)">
                                                        <path d="M5.73366 15L4.46699 12.8667L2.06699 12.3333L2.30033 9.86667L0.666992 8L2.30033 6.13333L2.06699 3.66667L4.46699 3.13333L5.73366 1L8.00033 1.96667L10.267 1L11.5337 3.13333L13.9337 3.66667L13.7003 6.13333L15.3337 8L13.7003 9.86667L13.9337 12.3333L11.5337 12.8667L10.267 15L8.00033 14.0333L5.73366 15ZM6.30033 13.3L8.00033 12.5667L9.73366 13.3L10.667 11.7L12.5003 11.2667L12.3337 9.4L13.567 8L12.3337 6.56667L12.5003 4.7L10.667 4.3L9.70033 2.7L8.00033 3.43333L6.26699 2.7L5.33366 4.3L3.50033 4.7L3.66699 6.56667L2.43366 8L3.66699 9.4L3.50033 11.3L5.33366 11.7L6.30033 13.3ZM7.30033 10.3667L11.067 6.6L10.1337 5.63333L7.30033 8.46667L5.86699 7.06667L4.93366 8L7.30033 10.3667Z" fill="#E9D151"/>
                                                        </g>
                                                    </svg>
                                                </span> 
                                            </h2>
                                            <p class="font-PlusJakartaSans_Regular text-white text-sm xl:text-base 2xl:text-xl">
                                                Agente inmobiliario
                                            </p>
                                        </div>
                                    </div>
                                    <div class="flex flex-row justify-end gap-3">
                                        <a href="#">
                                        <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                    <path d="M4.85938 8.26986C4.85938 5.52 4.85937 4.14507 5.71365 3.2908C6.56792 2.43652 7.94285 2.43652 10.6927 2.43652C13.4425 2.43652 14.8175 2.43652 15.6718 3.2908C16.526 4.14507 16.526 5.52 16.526 8.26986V13.2699C16.526 16.0197 16.526 17.3946 15.6718 18.2489C14.8175 19.1032 13.4425 19.1032 10.6927 19.1032C7.94285 19.1032 6.56792 19.1032 5.71365 18.2489C4.85937 17.3946 4.85938 16.0197 4.85938 13.2699V8.26986Z" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                                    <path d="M9.85938 16.6025H11.526" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M8.19238 2.43652L8.26655 2.88154C8.42728 3.84593 8.50765 4.32813 8.83837 4.62156C9.18338 4.92764 9.67247 4.93652 10.6924 4.93652C11.7123 4.93652 12.2014 4.92764 12.5464 4.62156C12.8771 4.32813 12.9575 3.84593 13.1182 2.88154L13.1924 2.43652" stroke="#141414" stroke-width="1.25" stroke-linejoin="round"/>
                                                </svg>
                                        </div>
                                        </a>
                                        <a href="#">
                                            <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                    <path d="M6.89746 12.0192H13.5641M6.89746 7.85254H10.2308" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M5.31314 16.6025C4.22971 16.496 3.41809 16.1705 2.87377 15.6262C1.89746 14.65 1.89746 13.0785 1.89746 9.93587V9.51921C1.89746 6.37651 1.89746 4.80516 2.87377 3.82885C3.85009 2.85254 5.42143 2.85254 8.56413 2.85254H11.8975C15.0401 2.85254 16.6115 2.85254 17.5878 3.82885C18.5641 4.80516 18.5641 6.37651 18.5641 9.51921V9.93587C18.5641 13.0785 18.5641 14.65 17.5878 15.6262C16.6115 16.6025 15.0401 16.6025 11.8975 16.6025C11.4304 16.613 11.0584 16.6485 10.693 16.7317C9.69429 16.9616 8.76954 17.4726 7.85569 17.9183C6.55354 18.5532 5.90246 18.8707 5.49387 18.5735C4.7122 17.9913 5.47624 16.1875 5.64746 15.3525" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                                </svg>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="flex flex-col bg-[#191919] p-4 md:p-6 rounded-xl min-w-[270px] xl:min-w-[350px] gap-3">
                                    <div class="flex flex-row gap-3 items-center">
                                        <img loading="lazy" src="{{ asset('images/img/rs_user.png') }}" class="object-contain w-12 xl:min-w-16" />
                                        <div class="flex flex-col">
                                            <h2 class="font-PlusJakartaSans_Medium text-white text-lg xl:text-2xl 2xl:text-3xl flex flex-row justify-start items-center gap-2">
                                                Carlos Soria 
                                                <span class="text-[#C8A049]">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 16 16" fill="none">
                                                        <mask id="mask0_3_3930" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="16" height="16">
                                                        <rect width="16" height="16" fill="#D9D9D9"/>
                                                        </mask>
                                                        <g mask="url(#mask0_3_3930)">
                                                        <path d="M5.73366 15L4.46699 12.8667L2.06699 12.3333L2.30033 9.86667L0.666992 8L2.30033 6.13333L2.06699 3.66667L4.46699 3.13333L5.73366 1L8.00033 1.96667L10.267 1L11.5337 3.13333L13.9337 3.66667L13.7003 6.13333L15.3337 8L13.7003 9.86667L13.9337 12.3333L11.5337 12.8667L10.267 15L8.00033 14.0333L5.73366 15ZM6.30033 13.3L8.00033 12.5667L9.73366 13.3L10.667 11.7L12.5003 11.2667L12.3337 9.4L13.567 8L12.3337 6.56667L12.5003 4.7L10.667 4.3L9.70033 2.7L8.00033 3.43333L6.26699 2.7L5.33366 4.3L3.50033 4.7L3.66699 6.56667L2.43366 8L3.66699 9.4L3.50033 11.3L5.33366 11.7L6.30033 13.3ZM7.30033 10.3667L11.067 6.6L10.1337 5.63333L7.30033 8.46667L5.86699 7.06667L4.93366 8L7.30033 10.3667Z" fill="#E9D151"/>
                                                        </g>
                                                    </svg>
                                                </span> 
                                            </h2>
                                            <p class="font-PlusJakartaSans_Regular text-white text-sm xl:text-base 2xl:text-xl">
                                                Agente inmobiliario
                                            </p>
                                        </div>
                                    </div>
                                    <div class="flex flex-row justify-end gap-3">
                                        <a href="#">
                                        <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                    <path d="M4.85938 8.26986C4.85938 5.52 4.85937 4.14507 5.71365 3.2908C6.56792 2.43652 7.94285 2.43652 10.6927 2.43652C13.4425 2.43652 14.8175 2.43652 15.6718 3.2908C16.526 4.14507 16.526 5.52 16.526 8.26986V13.2699C16.526 16.0197 16.526 17.3946 15.6718 18.2489C14.8175 19.1032 13.4425 19.1032 10.6927 19.1032C7.94285 19.1032 6.56792 19.1032 5.71365 18.2489C4.85937 17.3946 4.85938 16.0197 4.85938 13.2699V8.26986Z" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                                    <path d="M9.85938 16.6025H11.526" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M8.19238 2.43652L8.26655 2.88154C8.42728 3.84593 8.50765 4.32813 8.83837 4.62156C9.18338 4.92764 9.67247 4.93652 10.6924 4.93652C11.7123 4.93652 12.2014 4.92764 12.5464 4.62156C12.8771 4.32813 12.9575 3.84593 13.1182 2.88154L13.1924 2.43652" stroke="#141414" stroke-width="1.25" stroke-linejoin="round"/>
                                                </svg>
                                        </div>
                                        </a>
                                        <a href="#">
                                            <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center"> 
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21" viewBox="0 0 21 21" fill="none">
                                                    <path d="M6.89746 12.0192H13.5641M6.89746 7.85254H10.2308" stroke="#141414" stroke-width="1.25" stroke-linecap="round" stroke-linejoin="round"/>
                                                    <path d="M5.31314 16.6025C4.22971 16.496 3.41809 16.1705 2.87377 15.6262C1.89746 14.65 1.89746 13.0785 1.89746 9.93587V9.51921C1.89746 6.37651 1.89746 4.80516 2.87377 3.82885C3.85009 2.85254 5.42143 2.85254 8.56413 2.85254H11.8975C15.0401 2.85254 16.6115 2.85254 17.5878 3.82885C18.5641 4.80516 18.5641 6.37651 18.5641 9.51921V9.93587C18.5641 13.0785 18.5641 14.65 17.5878 15.6262C16.6115 16.6025 15.0401 16.6025 11.8975 16.6025C11.4304 16.613 11.0584 16.6485 10.693 16.7317C9.69429 16.9616 8.76954 17.4726 7.85569 17.9183C6.55354 18.5532 5.90246 18.8707 5.49387 18.5735C4.7122 17.9913 5.47624 16.1875 5.64746 15.3525" stroke="#141414" stroke-width="1.25" stroke-linecap="round"/>
                                                </svg>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>            
        </section>

        <section class="flex flex-col lg:flex-row w-full px-[5%] xl:px-[8%] py-8 lg:py-16 bg-[#141414]" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
            <div class="flex flex-col gap-5 lg:w-1/2">
                <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] 2xl:text-5xl leading-tight">Comience su <span class="text-[#C8A049]">aventura inmobiliaria</span> hoy mismo </h2>
                <p class="font-PlusJakartaSans_Regular text-white text-base 2xl:text-xl">Donec vehicula purus at diam facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec. Donec vehicula purus at diam facilisis.</p>
            </div>
            <div class="flex flex-col lg:w-1/2 justify-center items-end">
                <a href="/nosotros" class="max-w-[200px] text-center text-sm 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 2xl:px-6 py-3 leading-normal rounded-xl">
                    Explorar propiedades
                </a>
            </div>
        </section>

        {{-- @if ($testimonie->count() > 0)    
          <section
              class="flex flex-col md:flex-row md:gap-10 lg:gap-20 items-center justify-center px-[5%] xl:px-[8%] w-full bg-[#009A84]">

              <div class="flex flex-col w-full md:w-1/2 pt-10 lg:py-10">
                  <div class="flex flex-col w-full text-center max-w-2xl gap-5 mx-auto">
                      <h2 class="text-4xl lg:text-5xl font-Homie_Bold text-[#73F7AD]">{{$textoshome->title3section ?? 'Ingrese un texto'}}</h2>
                      <p class="text-base font-FixelText_Regular text-white px-[5%]">
                        {{$textoshome->description3section ?? 'Ingrese un texto'}}
                      </p>
                  </div>
                  <div>
                      <div class="swiper testimonios">
                          <div class="swiper-wrapper">
                              @foreach ($testimonie as $testimonios)
                                  <div class="swiper-slide cursor-pointer">
                                      <div class="flex flex-col w-full mt-5">
                                          <p class="text-xl font-FixelText_Semibold text-center text-white line-clamp-4">
                                              {{ $testimonios->testimonie }}
                                          </p>
                                      </div>

                                      <div class="flex flex-col items-center self-center mt-5 gap-5">
                                          <p class="text-base font-FixelText_Semibold text-center text-white">
                                              <span class="text-lg text-[#73F7AD]">{{ $testimonios->name }},</span>
                                              <span
                                                  class="text-lg text-white font-FixelText_Regular">{{ $testimonios->ocupation }}</span>
                                          </p>
                                          <div class="flex items-center">
                                              <img loading="lazy" src="{{ asset($testimonios->url_image) }}"
                                                  onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';"
                                                  class="object-cover shrink-0 self-stretch my-auto rounded-full aspect-square w-20 h-20"
                                                  alt="{{ $testimonios->name }}" />
                                          </div>
                                      </div>
                                  </div>
                              @endforeach
                          </div>
                          <div class="swiper-pagination-carruseltop !flex justify-center py-3 mt-3"></div>
                      </div>
                  </div>

              </div>

              <div class="flex flex-col w-full md:w-1/2 justify-end items-end">
                  <img loading="lazy" class="object-cover lg:object-contain w-full md:h-[550px]"
                     src="{{asset($textoshome->url_image3section)}}" onerror="this.src='{{ asset('images/img/imagenchica.png') }}';" />
              </div>

          </section>
        @endif --}}

        {{-- @if ($benefit->count() > 0)
            <section
                class="flex flex-col lg:flex-row md:gap-10 lg:gap-20 items-center justify-center px-[5%] xl:px-[8%] py-10 lg:py-20 w-full">

                <div class="flex overflow-hidden flex-col min-w-[240px] w-full lg:w-2/5">
                    <div class="flex relative flex-col w-full rounded-3xl overflow-hidden">

                        <img loading="lazy" class="object-cover object-bottom absolute inset-0 h-full size-full"
                            src="{{ asset('images/svg/fondoverde.svg') }}" alt="" />

                        <div
                            class="flex relative flex-col px-8 pt-4 md:pt-12 pb-80 w-full rounded-none min-h-[638px] max-md:px-5 max-md:pb-24  ">

                            <img loading="lazy"
                                class="object-cover sm:object-contain object-bottom absolute inset-0 size-full"
                                src="{{asset($textoshome->url_image4section)}}" onerror="this.src='{{ asset('images/img/chicos_vt.png') }}';" alt="" />

                            <div class="flex relative flex-col justify-center mb-0 w-full max-md:mb-2.5">
                                <div class="flex flex-col w-full gap-3">
                                    <h2 class="text-2xl md:text-3xl font-Homie_Bold text-[#73F7AD]">
                                        {{$textoshome->title4section ?? 'Ingrese un texto'}}
                                    </h2>
                                    <p class="text-base text-white font-FixelText_Light">
                                        {{$textoshome->description4section ?? 'Ingrese un texto'}}
                                    </p>
                                </div>
                                <a href="{{route('contacto')}}"
                                    class="px-4 self-end py-2.5 mt-2 text-xs font-FixelText_Semibold text-center text-[#009A84] bg-[#73F7AD] rounded-xl">
                                    Ponte en contacto
                                </a>
                            </div>

                        </div>
                    </div>
                </div>

                <div class="flex flex-col min-w-[240px] w-full lg:w-3/5">

                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-6 lg:gap-10 items-start w-full max-md:mt-10">
                        @foreach ($benefit as $beneficios)
                            <article class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                                <img loading="lazy"
                                    src="{{asset('images/img/imagencasa.png')}}"
                                    class="object-contain w-14 aspect-square" alt="Icono de cuidado de propiedad" />
                                <div class="flex flex-col mt-4 w-full">
                                    <h3 class="text-2xl font-Homie_Bold tracking-tight leading-9 text-[#002677]">
                                        {{ $beneficios->titulo }}
                                    </h3>
                                    <p class="mt-2 text-base font-FixelText_Regular text-[#000929]">
                                        {{ $beneficios->descripcionshort }}
                                    </p>
                                </div>
                            </article>
                        @endforeach
                    </div>
                </div>

            </section>
        @endif --}}

        {{-- <section class="flex flex-col justify-center items-center px-[5%] xl:px-[8%] py-14 w-full bg-[#73F7AD]">
            <div class="flex flex-col max-w-xl">

                <div class="flex flex-col w-full text-center gap-5 text-[#006258]">
                    <h2 class="text-4xl font-Homie_Bold">{{$textoshome->title5section ?? 'Ingrese un texto'}}</h2>
                    <p class="text-base font-FixelText_Regular text-[#000929]">{{$textoshome->description5section ?? 'Ingrese un texto'}}</p>
                </div>

                <div class="flex flex-col mt-8 w-full">
                    <div class="flex flex-col w-full rounded-lg">
                        <form id="subsEmail"
                            class="flex flex-row gap-5 justify-end px-5 py-3.5 w-full bg-white rounded-2xl">
                            @csrf
                            <input placeholder="Introduce tu correo electrónico" type="email" id="email"
                                name="email"
                                class="w-full px-4 py-2 text-sm font-FixelText_Regular focus:border-0 focus:ring-0 text-[#006258] placeholder:text-[#00625852] border border-transparent rounded-xl"
                                aria-label="Introduce tu correo electrónico" required>
                            <input type="hidden" name="tipo" value="Inicio" />
                            <button type="submit"
                                class="self-end px-10 py-3 text-base font-FixelText_Semibold text-center text-[#73F7AD] bg-[#009A84] rounded-lg">Enviar</button>
                        </form>
                    </div>
                    <p class="text-base text-center font-FixelText_Regular text-[#000929]">
                        {{$textoshome->footer5section ?? 'Ingrese un texto'}}
                    </p>
                </div>

            </div>
        </section> --}}

        {{-- <section class="flex flex-col md:flex-row px-[5%] lg:px-[8%] py-8 lg:py-16">

            <div class="flex flex-col px-0 md:px-5 lg:px-10 w-full md:w-1/2 bg-white">
                <div class="flex flex-col w-full">
                    <h2 class="text-3xl font-Homie_Bold text-[#002677] ">
                        {{$textoshome->title6section ?? 'Ingrese un texto'}}
                    </h2>
                    <p class="mt-4 text-base font-FixelText_Regular text-[#000929]">
                        {{$textoshome->description6section ?? 'Ingrese un texto'}}
                    </p>
                </div>
                <form id="formContactos" class="flex flex-col mt-6 w-full text-sm ">
                    @csrf
                    <div class="flex flex-col w-full gap-4">

                        <input id="name" name="name" type="text"
                            class="px-4 py-3.5 text-sm font-FixelText_Regular focus:border-[#006258] focus:ring-[#006258] text-[#006258] placeholder:text-[#00625852] border border-[#00625852] rounded-xl"
                            placeholder="Nombre completo" aria-label="Nombre completo">

                        <input id="phone" name="phone" type="tel"
                            class="px-4 py-3.5 text-sm font-FixelText_Regular focus:border-[#006258] focus:ring-[#006258] text-[#006258] placeholder:text-[#00625852] border border-[#00625852] rounded-xl"
                            placeholder="Teléfono" aria-label="Teléfono">

                        <input id="emailform" name="email" type="email"
                            class="px-4 py-3.5 text-sm font-FixelText_Regular focus:border-[#006258] focus:ring-[#006258] text-[#006258] placeholder:text-[#00625852] border border-[#00625852] rounded-xl"
                            placeholder="E-mail" aria-label="E-mail">

                        <textarea id="message" name="message"
                            class="px-4 py-3.5 text-sm font-FixelText_Regular focus:border-[#006258] focus:ring-[#006258] text-[#006258] placeholder:text-[#00625852] border border-[#00625852] rounded-xl"
                            placeholder="Mensaje" aria-label="Mensaje" rows="6"></textarea>
                    </div>
                    <button type="submit"
                        class="px-4 py-3.5 mt-10 w-full text-base font-FixelText_Semibold text-emerald-300 bg-[#006258] rounded-xl ">
                        Enviar solicitud
                    </button>
                </form>
            </div>

            <div class="flex flex-col px-0 md:px-5  lg:px-10 w-full md:w-1/2">
                <div class="flex flex-col w-full">
                    <h2 class="text-3xl font-Homie_Bold text-[#002677]">{{$textoshome->title7section ?? 'Ingrese un texto'}}</h2>
                    <p class="mt-4 text-base font-FixelText_Regular text-[#000929]">
                        {{$textoshome->description7section ?? 'Ingrese un texto'}}
                    </p>
                </div>
                <div class="flex flex-col justify-center mt-10 w-full  ">
                    <div class="flex gap-2 items-start w-full  ">
                        <img loading="lazy" src="{{ asset('images/img/geo_vt.png') }}"
                            class="object-contain shrink-0 w-6 aspect-square" alt="Icono de dirección">
                        <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                            <h3 class="text-lg font-FixelText_Bold text-[#002677]">Dirección</h3>
                            <p class="mt-2 text-base font-FixelText_Regular text-[#000929]">
                                @php
                                    $locations = [];

                                    if (!empty($general->address)) {
                                        $locations[] = $general->address;
                                    }

                                    if (!empty($general->inside)) {
                                        $locations[] = $general->inside;
                                    }

                                    if (!empty($general->district)) {
                                        $locations[] = $general->district;
                                    }

                                    if (!empty($general->country)) {
                                        $locations[] = $general->country;
                                    }

                                    $locationsString = implode(', ', $locations);
                                @endphp
                                {{ $locationsString }}
                            </p>
                        </div>
                    </div>
                    @if (!empty($general->cellphone))
                        <div class="flex gap-2 items-start mt-8 w-full  ">
                            <img loading="lazy" src="{{ asset('images/img/phone_vt.png') }}"
                                class="object-contain shrink-0 w-6 aspect-square" alt="Icono de teléfono">
                            <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                                <h3 class="text-lg font-FixelText_Bold text-[#002677]">Número de Teléfono</h3>
                                <p class="mt-2 text-base font-FixelText_Regular text-[#000929]">{{ $general->cellphone }}
                                </p>
                            </div>
                        </div>
                    @endif

                    @if (!empty($general->email))
                        <div class="flex gap-2 items-start mt-8 w-full  ">
                            <img loading="lazy" src="{{ asset('images/img/mail_vt.png') }}"
                                class="object-contain shrink-0 w-6 aspect-square" alt="Icono de correo electrónico">
                            <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                                <h3 class="text-lg font-FixelText_Bold text-[#002677]">Correo Electrónico</h3>
                                <p class="mt-2 text-base font-FixelText_Regular text-[#000929]">{{ $general->email }}</p>
                            </div>
                        </div>
                    @endif

                    @if (!empty($general->schedule))
                        <div class="flex gap-2 items-start mt-8 w-full  ">
                            <img loading="lazy" src="{{ asset('images/img/reloj_vt.png') }}"
                                class="object-contain shrink-0 w-6 aspect-square" alt="Icono de horario de atención">
                            <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                                <h3 class="text-lg font-FixelText_Bold text-[#002677]">Horario de Atención</h3>
                                <p class="mt-2 text-base font-FixelText_Regular text-[#000929]">
                                    @foreach(explode(',', $general->schedule) as $item)
                                    {{ $item }}<br>
                                    @endforeach
                                </p>
                            </div>
                        </div>
                    @endif
                </div>
            </div>

        </section> --}}

        {{-- seccion Gran Descuento  --}}

        {{-- @if (count($bannerMid) > 0)
            <section class="flex flex-col md:flex-row justify-between bg-[#EEEEEE] mt-14 overflow-visible"
                style="overflow-x: visible">
                <x-banner-section :banner="$bannerMid" />
            </section>
        @endif --}}

        {{-- seccion Productos populares  --}}

        {{-- @if ($productosPupulares->count() > 0)
            <section class=" bg-[#F8F8F8] overflow-visible" style="overflow-x: visible">
                <div class="w-full px-[5%] py-14 lg:py-20">
                    <div class="flex flex-col md:flex-row justify-between w-full gap-3">
                        <h1 class="text-2xl md:text-3xl font-semibold font-Inter_Medium text-[#323232]">Productos
                            Destacados</h1>
                        <div class="flex  flex-col md:flex-row gap-2 md:gap-8">
              <a href="/catalogo" class="flex items-center   font-Inter_Medium  hover:text-[#006BF6] ">Todos</a>
              @foreach ($categoriasAll as $item)
                <a href="/catalogo/{{ $item->id }}"
                  class="flex items-center font-Inter_Medium  hover:text-[#006BF6]  transition ease-out duration-300 transform  ">{{ $item->name }}
                </a>
              @endforeach
            </div>
                    </div>
                    @foreach ($productosPupulares->chunk(4) as $taken)
                        <div class="grid grid-cols-2 md:grid-cols-3 xl:grid-cols-4 md:flex-row gap-4 mt-14 w-full">
                            @foreach ($taken as $item)
                                <x-product.container width="w-1/4" bgcolor="bg-[#FFFFFF]" :item="$item" />
                                <x-productos-card width="w-1/4" bgcolor="bg-[#FFFFFF]" :item="$item" />
                            @endforeach
                        </div>
                    @endforeach
                </div>
            </section>
        @endif --}}

        {{-- Seccion Blog --}}

        {{-- @if ($blogs->count() > 0)
            <section class="w-full px-[5%] py-7 lg:py-14 overflow-visible" data-aos="fade-up" style="overflow-x: visible">
                <div class="flex flex-col md:flex-row justify-between w-full gap-3">
                <h1 class="text-2xl md:text-3xl font-semibold font-Inter_Medium text-[#323232]">Blog & Eventos</h1>
                <a href="/blog/0" class="flex items-center text-base font-Inter_Medium font-semibold text-[#006BF6]">Ver todos
                    las Publicaciones <img src="{{ asset('images/img/arrowBlue.png') }}" alt="Icono" class="ml-2 "></a>
                </div>
                <div class="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 mt-14 gap-10 sm:gap-5">
                @foreach ($blogs as $post)
                    <x-blog.container-post :post="$post" />
                @endforeach
                </div>
            </section>
        @endif --}}

        {{-- gran descuento --}}
        
        {{-- @if (count($bannersBottom) > 0)
            <section class="w-full px-[5%] mt-7 lg:mt-10 ">
                <div class="bg-gradient-to-b from-gray-50 to-white flex flex-col md:flex-row justify-between bg-[#EEEEEE]">
                <x-banner-section :banner="$bannersBottom" />
                </div>
            </section>
        @endif --}}

        {{-- @if ($benefit->count() > 0)
            <section class="py-10 lg:py-13 bg-[#F8F8F8] w-full px[5%]">
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6 ">
                @foreach ($benefit as $item)
                    <div class="flex flex-col items-center w-full gap-1 justify-center text-center px-[10%] xl:px-[18%]">
                    <img src="{{ asset($item->icono) }}" alt="">
                    <h4 class="text-xl font-bold font-Inter_Medium"> {{ $item->titulo }} </h4>
                    <div class="text-lg leading-8 text-[#444444] font-Inter_Medium">{!! $item->descripcionshort !!}</div>
                    </div>
                @endforeach
                </div>
            </section>
        @endif --}}

    </main>


    <!-- Main modal -->
    <div id="modalofertas" class="modal modalbanner">
        <!-- Modal body -->
        <div class="p-1 ">
            <x-swipper-card-ofertas :items="$popups" id="modalOfertas" />
        </div>
    </div>


@section('scripts_importados')
    <script>
        var swiper = new Swiper(".testimonios", {
            slidesPerView: 1,
            spaceBetween: 0,
            loop: true,
            grabCursor: false,
            centeredSlides: false,
            initialSlide: 0,
            navigation: {
                nextEl: ".swiper-button-next",
                prevEl: ".swiper-button-prev",
            },
            pagination: {
                el: ".swiper-pagination-carruseltop",
                clickable: true,
            },
            breakpoints: {
                0: {
                    slidesPerView: 1,
                }
            },
            
        });

        var swiper = new Swiper(".agentes", {
            slidesPerView: 1,
            spaceBetween: 0,
            loop: true,
            grabCursor: false,
            centeredSlides: false,
            initialSlide: 0,
            pagination: {
                el: ".swiper-pagination-agentes",
                clickable: true,
            },
            breakpoints: {
                0: {
                    slidesPerView: 1,
                    spaceBetween: 30,
                },
                680: {
                    slidesPerView: 2,
                    spaceBetween: 30,
                },
                1024: {
                    slidesPerView: 3,
                    spaceBetween: 30,
                }
            },
            
        });
    </script>
    <script>
        function alerta(message) {
            Swal.fire({
                title: message,
                icon: "error",
            });
        }

        function validarEmail(value) {
            console.log(value)
            const regex =
                /^(([^<>()\[\]\\.,;:\s@”]+(\.[^<>()\[\]\\.,;:\s@”]+)*)|(“.+”))@((\[[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}])|(([a-zA-Z\-0–9]+\.)+[a-zA-Z]{2,}))$/

            if (!regex.test(value)) {
                alerta("El campo email no es válido");
                return false;
            }
            return true;
        }

        $('#formContactos').submit(function(event) {
            // Evita que se envíe el formulario automáticamente
            //console.log('evcnto')
            let btnEnviar = $('#btnEnviar');
            btnEnviar.prop('disabled', true);
            btnEnviar.text('Enviando...');
            btnEnviar.css('cursor', 'not-allowed');

            event.preventDefault();
            let formDataArray = $(this).serializeArray();

            if (!validarEmail($('#emailform').val())) {
                btnEnviar.prop('disabled', false);
                btnEnviar.text('Enviar Mensaje');
                btnEnviar.css('cursor', 'pointer');
                return;
            };


            /* console.log(formDataArray); */
            $.ajax({
                url: '{{ route('guardarContactos') }}',
                method: 'POST',
                data: $(this).serialize(),
                beforeSend: function() {
                    Swal.fire({
                        title: 'Enviando...',
                        text: 'Por favor, espere',
                        allowOutsideClick: false,
                        onBeforeOpen: () => {
                            Swal.showLoading();
                        }
                    });
                },
                success: function(response) {
                    Swal.close(); // Close the loading message
                    $('#formContactos')[0].reset();
                    Swal.fire({
                        title: response.message,
                        icon: "success",
                    });

                    if (!window.location.href.includes('#formularioenviado')) {
                        window.location.href = window.location.href.split('#')[0] +
                            '#formularioenviado';
                    }
                    btnEnviar.prop('disabled', false);
                    btnEnviar.text('Enviar Mensaje');
                    btnEnviar.css('cursor', 'pointer');
                },
                error: function(error) {
                    Swal.close(); // Close the loading message
                    const obj = error.responseJSON.message;
                    const keys = Object.keys(error.responseJSON.message);
                    let flag = false;
                    keys.forEach(key => {
                        if (!flag) {
                            const e = obj[key][0];
                            Swal.fire({
                                title: error.message,
                                text: e,
                                icon: "error",
                            });
                            flag = true; // Marcar como mostrado
                        }
                    });
                    btnEnviar.prop('disabled', false);
                    btnEnviar.text('Enviar Mensaje');
                    btnEnviar.css('cursor', 'pointer');
                }
            });
        })
    </script>


    <script>
        let pops = @json($popups);

        function calcularTotal() {
            let articulos = Local.get('carrito')
            let total = articulos.map(item => {
                let monto
                if (Number(item.descuento) !== 0) {
                    monto = item.cantidad * Number(item.descuento)
                } else {
                    monto = item.cantidad * Number(item.precio)

                }
                return monto

            })
            const suma = total.reduce((total, elemento) => total + elemento, 0);

            $('#itemsTotal').text(`S/. ${suma.toFixed(2)} `)

        }
        $(document).ready(function() {
            console.log(pops.length)
            if (pops.length > 0) {
                $('#modalofertas').modal({
                    show: true,
                    fadeDuration: 100
                })

            }


            $(document).ready(function() {
                articulosCarrito = Local.get('carrito') || [];

                // PintarCarrito();
            });

        })
    </script>
    <script>
         $(document).ready(function () {
            
            $('#arrival-date').daterangepicker({
                locale: {
                    format: 'DD/MM/YYYY',
                    cancelLabel: 'Cancelar',
                    applyLabel: 'Aplicar'
                },
                startDate: false, // No establecer fecha inicial
                endDate: false,  // No establecer fecha final
                minDate: moment(), // Bloquear fechas anteriores
                maxDate: moment().add(9, 'months'),
                autoUpdateInput: false, // Evita que se autocomplete
                opens: 'right',
                drops: 'down',
                autoApply: true, // Cierra el calendario y aplica automáticamente al seleccionar
            });

            // Establecer placeholder inicial
            $('#arrival-date').val('Seleccione fecha');

            // Actualizar el campo cuando se selecciona un rango
            $('#arrival-date').on('apply.daterangepicker', function(ev, picker) {
                $(this).val(
                    picker.startDate.format('DD/MM/YYYY') + 
                    ' - ' + 
                    picker.endDate.format('DD/MM/YYYY')
                );
            });

            // Restablecer placeholder si se cancela
            $('#arrival-date').on('cancel.daterangepicker', function(ev, picker) {
                $(this).val('Seleccione fechas');
            });

       
            $('#linkExplirarAlquileres').click(function (e) {
                e.preventDefault();

                // Capturar valores de los filtros
                const lugar = $('#lugar').val();
                const rangoFechas = $('#arrival-date').val();
                const cantidadPersonas = $('#cantidad_personas').val();

                let fechaLlegada = '';
                let fechaSalida = '';
                if (rangoFechas.includes(" - ")) {
                    [fechaLlegada, fechaSalida] = rangoFechas.split(" - ");
                }
                
                // Validación (opcional)
                if (!lugar && !rangoFechas && !cantidadPersonas) {
                    alert("Por favor, selecciona al menos un filtro para realizar la búsqueda.");
                    return;
                }

                // Guardar fechas en localStorage
                if (fechaLlegada && fechaSalida) {
                    localStorage.setItem('fechasBusqueda', JSON.stringify({
                        llegada: fechaLlegada,
                        salida: fechaSalida
                    }));
                } else {
                    localStorage.removeItem('fechasBusqueda');
                }

                const params = new URLSearchParams();
                // Redirigir a Catalogo.jsx con parámetros
                if (lugar) {
                    params.append('lugar', lugar);
                }
                if (fechaLlegada) {
                    params.append('fecha_llegada', fechaLlegada);
                }
                if (fechaSalida) {
                    params.append('fecha_salida', fechaSalida);
                }
                if (cantidadPersonas) {
                    params.append('cantidad_personas', cantidadPersonas);
                }

                 window.location.href = `/catalogo?${params.toString()}`;
            });
        });
    </script>

@stop

@stop
