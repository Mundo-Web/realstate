@extends('components.public.matrix', ['pagina' => 'index'])

@section('css_importados')

@stop

<style>
    #Aboutus .prose {
        width: 100%;
        max-width: 100%;
        text-align: justify;
        margin-top: 0 !important;
        margin-bottom: 0 !important;
    }

    .prose p {

        margin-top: 0 !important;
        margin-bottom: 0 !important;

    }

    @media (max-width: 600px) {
        .fixedWhastapp {
            right: 116px !important;
        }
    }
</style>

@section('content')

    <main class="bg-[#FAFCFE]">

        <section class="px-[5%] xl:px-[8%] py-8 lg:py-16 flex flex-col gap-10"
            style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
            <div
                class="flex flex-col gap-3 md:gap-5 items-center justify-center text-center max-w-3xl 2xl:max-w-4xl mx-auto">
                <h2
                    class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] lg:text-5xl 2xl:text-6xl leading-tight">
                    Encuentra tu nuevo <span class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent"> hogar </span> ideal
                </h2>
                <p class="font-PlusJakartaSans_Regular text-white text-base 2xl:text-xl">
                    {{ $nosotrostextos->description1section ?? 'Ingrese un texto' }}
                </p>
            </div>

            <div class="flex flex-row justify-center items-center">
                <img src="{{ asset($nosotrostextos->url_image2section) }}"
                    onerror="this.src='{{ asset('images/img/rs_portadanosotros.png') }}';"
                    class="rounded-xl lg:rounded-3xl h-full lg:h-[550px] w-full object-contain" />
            </div>
        </section>


        @if ($estadisticas->count() > 0)
            <section
                class="flex flex-col lg:flex-row gap-10 lg:gap-20 lg:items-start justify-center px-[5%] xl:px-[8%] py-8 lg:py-16 w-full bg-[#141414]">

                <div class="flex flex-col w-full lg:w-1/2">
                    <div class="flex flex-col relative gap-3 w-full items-start">
                        <h2
                            class="font-PlusJakartaSans_Medium text-white text-3xl md:text-4xl md:text-[44px] leading-tight 2xl:text-5xl">
                            Revisa nuestros <span class="text-[#C8A049]">valores</span> </h2>
                        {{-- <p class="font-PlusJakartaSans_Regular text-white text-base 2xl:text-xl">Donec vehicula purus at diam
                            facilisis tempor. Donec lacinia felis nibh, vel consectetur leo tincidunt nec. Donec vehicula purus
                            at diam facilisis.</p> --}}
                        <div class="flex flex-col justify-start mt-3">
                            <a href="/catalogo"
                                class="max-w-[250px] text-center text-sm 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 2xl:px-6 py-3 leading-normal rounded-xl">
                                Explorar propiedades
                            </a>
                        </div>
                    </div>
                </div>

                <div class="flex flex-col w-full lg:w-1/2">
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-6 2xl:gap-10  items-start w-full">
                        @foreach ($estadisticas as $estadistica)
                            <article class="flex flex-col gap-3 p-4 bg-[#1E1E1E] rounded-xl">
                                <img loading="lazy" src="{{ asset('images/svg/icono_c.svg') }}" class="object-contain w-14" />
                                <div class="flex flex-col gap-2 2xl:gap-4 w-full">
                                    <h3
                                        class="text-xl md:text-2xl 2xl:text-3xl  font-PlusJakartaSans_Semibold tracking-normal leading-tight text-white">
                                        {{$estadistica->title}}
                                    </h3>
                                    <p
                                        class="text-white text-sm 2xl:text-base 3xl:text-lg font-PlusJakartaSans_Regular tracking-normal xl:h-24 2xl:h-28">
                                        {{$estadistica->description}}
                                    </p>
                                </div>
                            </article>
                        @endforeach
                    </div>
                </div>
            </section>
        @endif

        @if ($destacados->count() > 0)
            <section class="px-[5%] xl:px-[8%] pb-8 lg:pb-16 flex flex-col gap-10 bg-[#141414]">
                <div
                    class="flex flex-col gap-3 md:gap-5 items-center justify-center text-center max-w-3xl 2xl:max-w-4xl mx-auto">
                    <h2
                        class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] lg:text-5xl 2xl:text-6xl leading-tight">
                        Clientes  <span class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent"> satisfechos </span> 
                    </h2>
                    <p class="font-PlusJakartaSans_Regular text-white text-base 2xl:text-xl">
                        Nuestra historia es de continuo crecimiento y evolución. Comenzamos como un pequeño equipo con grandes sueños, decididos a crear una plataforma inmobiliaria que trascendiera lo común.
                    </p>
                </div>

                <div class="w-full">
                    <div class="swiper valores">
                        <div class="swiper-wrapper">
                            @foreach ($destacados as $destacado)
                            <div class="swiper-slide">
                                <div class="flex flex-col gap-6">
                                    <img loading="lazy" src="{{ asset($destacado->imagen) }}" onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';" class="rounded-xl overflow-hidden h-full w-full object-cover aspect-[4/3]" />
                                    <h2 class="font-PlusJakartaSans_Medium text-white text-xl lg:text-2xl 2xl:text-3xl leading-tight text-center">
                                        {{$destacado->titulo}}
                                    </h2>
                                    <p class="font-PlusJakartaSans_Regular text-white text-base 2xl:text-lg 3xl:text-xl text-center line-clamp-5">
                                        {{$destacado->descripcion}}
                                    </p>
                                </div>
                            </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </section>
        @endif

        <section class="flex flex-col justify-center items-center px-[5%] xl:px-[8%] w-full" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-5 lg:gap-10">
                <div class="flex flex-col max-w-xl py-10">
                    <div class="flex flex-col w-full gap-5 text-[#006258]">
                        <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] 2xl:text-5xl leading-tight">¿Es usted <span class="text-[#C8A049]">propietario?</span></h2>
                        <p class="font-PlusJakartaSans_Regular text-white text-base 2xl:text-xl">Descubra formas de aumentar el valor de su casa y cotizar en la lista.
                            No es Spam.</p>
                    </div>
        
                    <div class="flex flex-col mt-8 w-full gap-4">
                        <div class="flex flex-col w-full rounded-lg">
                            <form id="subsEmail"
                                class="flex flex-row gap-5 justify-start px-2 py-2.5 w-full bg-[#141414] rounded-2xl">
                                @csrf
                                <input placeholder="Introduce tu correo electrónico" type="email" id="email"
                                    name="email"
                                    class="w-full px-4 py-2 bg-[#141414] text-sm font-PlusJakartaSans_Regular focus:border-0 focus:ring-0 text-white placeholder:text-white border border-transparent rounded-xl"
                                    aria-label="Introduce tu correo electrónico" required>
                                <input type="hidden" name="tipo" value="Inicio" />
                                <button type="submit"
                                    class="self-end px-10 py-3 text-base font-PlusJakartaSans_Medium text-center text-[#141414] bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] rounded-lg">Enviar</button>
                            </form>
                        </div>
                        <p class="text-base font-PlusJakartaSans_Regular text-white">
                            Únese a <span class="text-[#C8A049]"> +1.000 </span> propietarios en nuestra comunidad inmobiliaria.
                        </p>
                    </div>
                </div>
                
                <div>
                    <img loading="lazy" src="{{ asset('images/img/rs_suscripcion.png') }}" onerror="this.src='{{ asset('images/img/rs_suscripcion.png') }}';"
                        class="h-full w-full object-fill object-bottom" />
                </div>
            </div>
        </section>


    </main>

    <!-- Main modal -->

    {{-- 
  <div id="modalofertas" class="modal">
    <!-- Modal body -->
    <div class="p-1 ">
      <x-swipper-card-ofertas :items="$popups" id="modalOfertas" />
    </div>
  </div> --}}


@section('scripts_importados')

    <script>
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

            $('#itemsTotal').text(`S/. ${suma} `)

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

        var swiper = new Swiper(".valores", {
            slidesPerView: 1,
            spaceBetween: 0,
            loop: true,
            grabCursor: false,
            centeredSlides: false,
            initialSlide: 0,
            pagination: {
                el: ".swiper-pagination-valores",
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
                },
                1600: {
                    slidesPerView: 3,
                    spaceBetween: 60,
                }
            },
            
        });
    </script>


@stop

@stop
