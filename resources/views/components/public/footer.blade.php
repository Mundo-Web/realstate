<footer class="bg-[#141414]">
    <style>
        #modalPoliticasDev #modalTerminosCondiciones #modallinkPoliticasDatos {
            height: 70vh;
            overflow-y: auto;
        }

        #modalPoliticasDev .prose,
        #modalTerminosCondiciones .prose,
        #modallinkPoliticasDatos .prose {
            max-width: 100%;
            text-align: justify;
        }

        .prose * {
            margin-bottom: 0% !important;
            margin-top: 0% !important;
        }
    </style>

    <div class="grid grid-cols-1 sm:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-5 sm:gap-10 md:justify-center w-full px-[5%] xl:px-[8%] py-8 lg:py-16 ">

        <div class="flex flex-col text-white text-base justify-start items-start gap-5">
            <img class="w-auto max-h-40 object-contain" src="{{ asset('images/img/logorealstate.png') }}" />
        </div>

        {{-- <div class="flex flex-col text-sm font-FixelText_Light text-white gap-2 pl-0 md:pl-[10%]">
            <h3 class="text-xl text-white font-Homie_Bold pb-3">Enlaces</h3>
            <a href="{{route('index')}}">Inicio</a>
            <a href="{{route('nosotros')}}">Nosotros</a>
            <a href="{{route('catalogo.all')}}">Propiedades</a>
            <a href="{{route('contacto')}}">Contacto</a>
        </div> --}}

        <div class="flex flex-col text-sm  font-PlusJakartaSans_Regular text-white gap-1.5">
            <h3 class="text-lg 2xl:text-xl text-white font-PlusJakartaSans_Semibold pb-3">Ubícanos</h3>
            <p>{{ $datosgenerales->address }} {{ $datosgenerales->inside }}</p>
            <p> {{ $datosgenerales->city }} - {{ $datosgenerales->country }}</p>
            <p>{{ $datosgenerales->cellphone }}</p>
            <p>{{ $datosgenerales->email }}</p>
        </div>

        <div class="flex flex-col text-sm font-PlusJakartaSans_Regular text-white gap-1.5">
            <h3 class="text-lg 2xl:text-xl text-white font-PlusJakartaSans_Semibold pb-3">Aviso legal</h3>
            <a id="linkPoliticas">Políticas de Datos</a>
            <a id="linkTerminos">Términos y Condiciones</a>
            <a id="linkPoliticasDatos">Politica de Cambio y Devolucion</a>
            <a href="{{ route('librodereclamaciones') }}">Libro de reclamaciones</a>
        </div>


        <div class="sm:col-span-2 lg:col-span-1 flex flex-col text-sm font-PlusJakartaSans_Regular text-white gap-1.5">
            <h3 class="text-lg 2xl:text-xl text-white font-PlusJakartaSans_Semibold pb-3">Horario de atención</h3>
            <p id="schedule" class="leading-normal">{{ $datosgenerales->schedule }}</p>
        </div>

        <div class="flex flex-col text-sm font-PlusJakartaSans_Regular text-white gap-1.5">
            <h3 class="text-lg 2xl:text-xl text-white font-PlusJakartaSans_Semibold pb-3">Nuestras redes</h3>
            <div class="flex flex-row gap-2 text-[#ccc]">
                @if ($datosgenerales->facebook)
                  <a target="_blank" href="{{ $datosgenerales->facebook }}">
                    <img class="w-auto max-h-40 object-contain" src="{{ asset('images/img/fb.png') }}" />
                  </a>
                @endif
                @if ($datosgenerales->instagram)
                  <a target="_blank" href="{{ $datosgenerales->instagram }}">
                    <img class="w-auto max-h-40 object-contain" src="{{ asset('images/img/ig.png') }}" />
                  </a>
                @endif
                
                @if ($datosgenerales->youtube)
                  <a target="_blank" href="{{ $datosgenerales->youtube }}">
                    <img class="w-auto max-h-40 object-contain" src="{{ asset('images/img/youtube.png') }}" />
                  </a>
                @endif

                @if ($datosgenerales->tiktok)
                  <a target="_blank" href="{{ $datosgenerales->tiktok }}">
                    <img class="w-auto max-h-40 object-contain" src="{{ asset('images/img/tik_tok.png') }}" />
                  </a>
                @endif

                @if ($datosgenerales->twitter)
                  <a target="_blank" href="{{ $datosgenerales->twitter }}">
                    <img class="w-auto max-h-40 object-contain" src="{{ asset('images/img/twitter.png') }}" />
                  </a>
                @endif
            </div>
        </div>

    </div>

    <div class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] py-3 flex items-center justify-center">
        <div class="flex flex-col lg:flex-row items-center justify-center gap-5 w-full">
          <div class="text-center">
            <p class="font-PlusJakartaSans_Semibold text-sm text-[#040404]">
                Copyright &copy; 2023 {{ config('app.name') }}. Reservados todos los derechos. Powered by <a
                href="https://www.mundoweb.pe" target="_blank" class="text-[#040404] hover:border-b hover:border-[#040404]"> Mundo Web
              </a>
            </p>
          </div>
        </div>
    </div>

    <div id="modalTerminosCondiciones" class="modal z-[9999]" style="max-width: 900px !important;width: 100% !important;  ">
        <!-- Modal body -->
        <div class="p-4 ">
            <h1 class="font-PlusJakartaSans_Bold text-center text-2xl">Términos y Condiciones</h1>
            <div class="font-PlusJakartaSans_Regular grid grid-cols-1">{!! $terminos->content ?? '' !!}</div>
        </div>
    </div>

    <div id="modalPoliticasDev" class="modal z-[999999]" style="max-width: 900px !important; width: 100% !important;  ">
        <!-- Modal body -->
        <div class="p-4 ">
            <h1 class="font-PlusJakartaSans_Bold text-center text-2xl">Políticas de Cambio y Devolución</h1>
            <div class="font-PlusJakartaSans_Regular grid grid-cols-1 ">{!! $politicas->content ?? '' !!}</div>
        </div>
    </div>

    <div id="modallinkPoliticasDatos" class="modal z-[9999]" style="max-width: 900px !important; width: 100% !important;  ">
        <!-- Modal body -->
        <div class="p-4 ">
            <h1 class="font-PlusJakartaSans_Bold text-center text-2xl">Políticas de Datos</h1>
            <div class="font-PlusJakartaSans_Regular grid grid-cols-1">{!! $politicaDatos->content ?? '' !!}</div>
        </div>
    </div>

</footer>


<script>
    $(document).ready(function() {


        $(document).on('click', '#linkTerminos', function() {
            $('#modalTerminosCondiciones').modal({
                show: true,
                fadeDuration: 400,

            })
        })

        $(document).on('click', '#linkTerminos2', function() {
            $('#modalTerminosCondiciones').modal({
                show: true,
                fadeDuration: 400,

            })
        })

        $(document).on('click', '#linkPoliticas', function() {
            $('#modallinkPoliticasDatos').modal({
                show: true,
                fadeDuration: 400,


            })
        })

        $(document).on('click', '#linkPoliticas2', function() {
            $('modallinkPoliticasDatos').modal({
                show: true,
                fadeDuration: 400,


            })
        })

        $(document).on('click', '#linkPoliticasDatos', function() {
            $('#modalPoliticasDev').modal({
                show: true,
                fadeDuration: 400,


            })
        })

        $(document).on('click', '#linkPoliticasDatos2', function() {
            $('#modalPoliticasDev').modal({
                show: true,
                fadeDuration: 400,


            })
        })

        function alerta(message) {
            Swal.fire({
                title: message,
                icon: "error",
            });
        }

        function validarEmail(value) {
            const regex =
                /^(([^<>()\[\]\\.,;:\s@”]+(\.[^<>()\[\]\\.,;:\s@”]+)*)|(“.+”))@((\[[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}\.[0–9]{1,3}])|(([a-zA-Z\-0–9]+\.)+[a-zA-Z]{2,}))$/

            if (!regex.test(value)) {
                alerta("Por favor, asegúrate de ingresar una dirección de correo electrónico válida");
                return false;
            }
            return true;
        }

        $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
        });

        $("#subsEmail").submit(function(e) {

            console.log('enviando subscripcion');

            e.preventDefault();

            Swal.fire({

                title: 'Realizando suscripción',
                html: `Registrando... 
          <div class="max-w-2xl mx-auto overflow-hidden flex justify-center items-center mt-4">
              <div role="status">
              <svg aria-hidden="true" class="w-8 h-8 text-blue-600 animate-spin dark:text-gray-600 " viewBox="0 0 100 101" fill="none" xmlns="http://www.w3.org/2000/svg">
                <path d="M100 50.5908C100 78.2051 77.6142 100.591 50 100.591C22.3858 100.591 0 78.2051 0 50.5908C0 22.9766 22.3858 0.59082 50 0.59082C77.6142 0.59082 100 22.9766 100 50.5908ZM9.08144 50.5908C9.08144 73.1895 27.4013 91.5094 50 91.5094C72.5987 91.5094 90.9186 73.1895 90.9186 50.5908C90.9186 27.9921 72.5987 9.67226 50 9.67226C27.4013 9.67226 9.08144 27.9921 9.08144 50.5908Z" fill="currentColor"/>
                <path d="M93.9676 39.0409C96.393 38.4038 97.8624 35.9116 97.0079 33.5539C95.2932 28.8227 92.871 24.3692 89.8167 20.348C85.8452 15.1192 80.8826 10.7238 75.2124 7.41289C69.5422 4.10194 63.2754 1.94025 56.7698 1.05124C51.7666 0.367541 46.6976 0.446843 41.7345 1.27873C39.2613 1.69328 37.813 4.19778 38.4501 6.62326C39.0873 9.04874 41.5694 10.4717 44.0505 10.1071C47.8511 9.54855 51.7191 9.52689 55.5402 10.0491C60.8642 10.7766 65.9928 12.5457 70.6331 15.2552C75.2735 17.9648 79.3347 21.5619 82.5849 25.841C84.9175 28.9121 86.7997 32.2913 88.1811 35.8758C89.083 38.2158 91.5421 39.6781 93.9676 39.0409Z" fill="currentFill"/>
              </svg>

              </div>
          </div>
          `,
                allowOutsideClick: false,
                onBeforeOpen: () => {
                    Swal.showLoading();
                }
            });


            if (!validarEmail($('#email').val())) {
                return;
            };
            $.ajax({
                url: '{{ route('guardarUserNewsLetter') }}',
                method: 'POST',
                data: $(this).serialize(),
                success: function(response) {
                    Swal.close();
                    Swal.fire({
                        title: response.message,
                        icon: "success",
                    });
                    $('#subsEmail')[0].reset();
                },
                error: function(response) {
                    let message = ''

                    let isDuplicado = response.responseJSON.message.includes(
                        'Duplicate entry')
                    console.log(isDuplicado)

                    if (isDuplicado) {
                        message =
                            'El correo que ha ingresado ya existe. Utilice otra dirección de correo'
                    } else {
                        message = response.responseJSON.message
                    }
                    Swal.close();
                    Swal.fire({
                        title: message,
                        icon: "warning",
                    });
                }
            });

        })
    })
</script>
