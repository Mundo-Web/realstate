@extends('components.public.matrix', ['pagina' => 'Agradecimiento'])

@section('css_importados')
  
@stop

@section('content')

    <main>
        
        <section class="w-full px-[5%] py-8 lg:py-16 bg-[#141414]" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
            <div class="flex flex-col gap-6 lg:gap-10">

                <div class="w-full grid grid-cols-1">
                    <main class="mx-auto max-w-[868px]">
                        <div class="flex flex-col gap-10 py-10 ">
                            <div class="flex flex-col gap-5 items-center">
                                <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] 2xl:text-5xl">Gracias
                                    por  <span class="text-[#C8A049]">contactarnos</span> </h2>
                
                                <p class="text-white font-PlusJakartaSans_Regular font-normal text-center text-xl max-w-2xl mx-auto">
                                    Un asesor pronto se comunicará contigo
                                    para brindarte toda la información necesaria.
                                </p>
                            </div>
                
                            <div class="flex flex-col gap-10">
                                <div class="flex justify-center items-center">
                                    <a href="{{route('index')}}"
                                        class="flex text-base 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 md:px-6 py-3 leading-normal rounded-xl">
                                        Seguir navegando
                                    </a>
                                </div>
                            </div>

                        </div>
                    </main>
                </div>
            </div>
        </section>
        
    </main>

@section('scripts_importados')
    
@stop

@stop
