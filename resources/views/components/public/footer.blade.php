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
            <img class="w-auto max-h-40 object-contain" src="{{ asset('images/svg/rs_logofooter.svg') }}" />
        </div>

        {{-- <div class="flex flex-col text-sm font-FixelText_Light text-white gap-2 pl-0 md:pl-[10%]">
            <h3 class="text-xl text-white font-Homie_Bold pb-3">Enlaces</h3>
            <a href="{{route('index')}}">Inicio</a>
            <a href="{{route('nosotros')}}">Nosotros</a>
            <a href="{{route('catalogo.all')}}">Propiedades</a>
            <a href="{{route('contacto')}}">Contacto</a>
        </div> --}}

        <div class="flex flex-col text-sm font-PlusJakartaSans_Regular text-white gap-1.5">
            <h3 class="text-lg 2xl:text-xl text-white font-PlusJakartaSans_Semibold pb-3">Ubícanos</h3>
            <p>{{ $datosgenerales->address }} {{ $datosgenerales->inside }}</p>
            <p> {{ $datosgenerales->city }} - {{ $datosgenerales->country }}</p>
            <p>{{ $datosgenerales->cellphone }}</p>
            <p>{{ $datosgenerales->email }}</p>
        </div>

        <div class="flex flex-col text-sm font-PlusJakartaSans_Regular text-white gap-1.5">
            <h3 class="text-lg 2xl:text-xl text-white font-PlusJakartaSans_Semibold pb-3">Aviso legal</h3>
            <a id="linkPoliticas">Políticas de privacidad</a>
            <a id="linkTerminos">Términos y Condiciones</a>
            <a id="linkPoliticasDatos">Politica de cambio</a>
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
                  <a href="{{ $datosgenerales->facebook }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0 16C0 7.16344 7.16344 0 16 0C24.8366 0 32 7.16344 32 16C32 24.8366 24.8366 32 16 32C7.16344 32 0 24.8366 0 16ZM16 8C20.4 8 24 11.6 24 16C24 20 21.1 23.4 17.1 24V18.3H19L19.4 16H17.2V14.5C17.2 13.9 17.5 13.3 18.5 13.3H19.5V11.3C19.5 11.3 18.6 11.1 17.7 11.1C15.9 11.1 14.7 12.2 14.7 14.2V16H12.7V18.3H14.7V23.9C10.9 23.3 8 20 8 16C8 11.6 11.6 8 16 8Z" fill="url(#paint0_linear_4_530)"/>
                        <defs>
                        <linearGradient id="paint0_linear_4_530" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#C8A049"/>
                        <stop offset="0.55422" stop-color="#E9D151"/>
                        <stop offset="0.935" stop-color="#BE913E"/>
                        </linearGradient>
                        </defs>
                    </svg>
                  </a>
                @endif
                @if ($datosgenerales->instagram)
                  <a href="{{ $datosgenerales->instagram }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                        <path d="M16 18.8C14.5 18.8 13.2 17.6 13.2 16C13.2 14.5 14.4 13.2 16 13.2C17.5 13.2 18.8 14.4 18.8 16C18.8 17.5 17.5 18.8 16 18.8Z" fill="url(#paint0_linear_4_532)"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M19.4 9.2H12.6C11.8 9.3 11.4 9.4 11.1 9.5C10.7 9.6 10.4 9.8 10.1 10.1C9.86261 10.3374 9.75045 10.5748 9.61489 10.8617C9.57916 10.9373 9.5417 11.0166 9.5 11.1C9.48453 11.1464 9.46667 11.1952 9.44752 11.2475C9.34291 11.5333 9.2 11.9238 9.2 12.6V19.4C9.3 20.2 9.4 20.6 9.5 20.9C9.6 21.3 9.8 21.6 10.1 21.9C10.3374 22.1374 10.5748 22.2495 10.8617 22.3851C10.9374 22.4209 11.0165 22.4583 11.1 22.5C11.1464 22.5155 11.1952 22.5333 11.2475 22.5525C11.5333 22.6571 11.9238 22.8 12.6 22.8H19.4C20.2 22.7 20.6 22.6 20.9 22.5C21.3 22.4 21.6 22.2 21.9 21.9C22.1374 21.6626 22.2495 21.4252 22.3851 21.1383C22.4209 21.0626 22.4583 20.9835 22.5 20.9C22.5155 20.8536 22.5333 20.8048 22.5525 20.7525C22.6571 20.4667 22.8 20.0762 22.8 19.4V12.6C22.7 11.8 22.6 11.4 22.5 11.1C22.4 10.7 22.2 10.4 21.9 10.1C21.6626 9.86261 21.4252 9.75045 21.1383 9.61488C21.0627 9.57918 20.9833 9.54167 20.9 9.5C20.8536 9.48453 20.8048 9.46666 20.7525 9.44752C20.4667 9.3429 20.0762 9.2 19.4 9.2ZM16 11.7C13.6 11.7 11.7 13.6 11.7 16C11.7 18.4 13.6 20.3 16 20.3C18.4 20.3 20.3 18.4 20.3 16C20.3 13.6 18.4 11.7 16 11.7ZM21.4 11.6C21.4 12.1523 20.9523 12.6 20.4 12.6C19.8477 12.6 19.4 12.1523 19.4 11.6C19.4 11.0477 19.8477 10.6 20.4 10.6C20.9523 10.6 21.4 11.0477 21.4 11.6Z" fill="url(#paint1_linear_4_532)"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0 16C0 7.16344 7.16344 0 16 0C24.8366 0 32 7.16344 32 16C32 24.8366 24.8366 32 16 32C7.16344 32 0 24.8366 0 16ZM12.6 7.7H19.4C20.3 7.8 20.9 7.9 21.4 8.1C22 8.4 22.4 8.6 22.9 9.1C23.4 9.6 23.7 10.1 23.9 10.6C24.1 11.1 24.3 11.7 24.3 12.6V19.4C24.2 20.3 24.1 20.9 23.9 21.4C23.6 22 23.4 22.4 22.9 22.9C22.4 23.4 21.9 23.7 21.4 23.9C20.9 24.1 20.3 24.3 19.4 24.3H12.6C11.7 24.2 11.1 24.1 10.6 23.9C10 23.6 9.6 23.4 9.1 22.9C8.6 22.4 8.3 21.9 8.1 21.4C7.9 20.9 7.7 20.3 7.7 19.4V12.6C7.8 11.7 7.9 11.1 8.1 10.6C8.4 10 8.6 9.6 9.1 9.1C9.6 8.6 10.1 8.3 10.6 8.1C11.1 7.9 11.7 7.7 12.6 7.7Z" fill="url(#paint2_linear_4_532)"/>
                        <defs>
                          <linearGradient id="paint0_linear_4_532" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#C8A049"/>
                            <stop offset="0.55422" stop-color="#E9D151"/>
                            <stop offset="0.935" stop-color="#BE913E"/>
                          </linearGradient>
                          <linearGradient id="paint1_linear_4_532" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#C8A049"/>
                            <stop offset="0.55422" stop-color="#E9D151"/>
                            <stop offset="0.935" stop-color="#BE913E"/>
                          </linearGradient>
                          <linearGradient id="paint2_linear_4_532" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                            <stop stop-color="#C8A049"/>
                            <stop offset="0.55422" stop-color="#E9D151"/>
                            <stop offset="0.935" stop-color="#BE913E"/>
                          </linearGradient>
                        </defs>
                    </svg>
                  </a>
                @endif
                
                @if ($datosgenerales->youtube)
                  <a href="{{ $datosgenerales->youtube }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                        <path d="M18.6 16L14.4 13.6V18.4L18.6 16Z" fill="url(#paint0_linear_4_531)"/>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0 16C0 7.16344 7.16344 0 16 0C24.8366 0 32 7.16344 32 16C32 24.8366 24.8366 32 16 32C7.16344 32 0 24.8366 0 16ZM22.2 10.7C22.9 10.9 23.4 11.4 23.6 12.1C24 13.4 24 16 24 16C24 16 24 18.6 23.7 19.9C23.5 20.6 23 21.1 22.3 21.3C21 21.6 16 21.6 16 21.6C16 21.6 10.9 21.6 9.7 21.3C9 21.1 8.5 20.6 8.3 19.9C8 18.6 8 16 8 16C8 16 8 13.4 8.2 12.1C8.4 11.4 8.90001 10.9 9.60001 10.7C10.9 10.4 15.9 10.4 15.9 10.4C15.9 10.4 21 10.4 22.2 10.7Z" fill="url(#paint1_linear_4_531)"/>
                        <defs>
                        <linearGradient id="paint0_linear_4_531" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#C8A049"/>
                        <stop offset="0.55422" stop-color="#E9D151"/>
                        <stop offset="0.935" stop-color="#BE913E"/>
                        </linearGradient>
                        <linearGradient id="paint1_linear_4_531" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#C8A049"/>
                        <stop offset="0.55422" stop-color="#E9D151"/>
                        <stop offset="0.935" stop-color="#BE913E"/>
                        </linearGradient>
                        </defs>
                    </svg>
                  </a>
                @endif

                @if ($datosgenerales->tiktok)
                  <a href="{{ $datosgenerales->tiktok }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M16 0C7.16345 0 0 7.16344 0 16C0 24.8366 7.16345 32 16 32C24.8365 32 32 24.8366 32 16C32 7.16344 24.8365 0 16 0ZM19.1182 8C19.1182 8.23775 19.1404 8.4719 19.1813 8.69851C19.3781 9.74606 19.998 10.645 20.8592 11.2059C21.4605 11.5997 22.1732 11.8263 22.9415 11.8263L22.9413 12.4393V14.5753C21.516 14.5753 20.1946 14.1184 19.1182 13.3457V18.9366C19.1182 21.7265 16.8466 24 14.0591 24C12.9827 24 11.9805 23.6581 11.1602 23.0824C9.85367 22.1648 9 20.6491 9 18.9366C9 16.143 11.2679 13.8732 14.0554 13.8769C14.2892 13.8769 14.5157 13.8955 14.7384 13.9252V14.5753L14.7302 14.5792L14.7383 14.579V16.7337C14.5231 16.6668 14.2929 16.6259 14.0554 16.6259C12.7823 16.6259 11.7467 17.6624 11.7467 18.9366C11.7467 19.8245 12.2515 20.5934 12.9864 20.9835C12.9933 20.9929 13.0002 21.0023 13.0072 21.0116L13.0195 21.0278C13.0111 21.0115 13.0013 20.9955 12.9901 20.9798C13.313 21.1507 13.6768 21.2473 14.0628 21.2473C15.3062 21.2473 16.3233 20.2554 16.3678 19.0221L16.3715 8H19.1182Z" fill="url(#paint0_linear_4_534)"/>
                        <defs>
                        <linearGradient id="paint0_linear_4_534" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#C8A049"/>
                        <stop offset="0.55422" stop-color="#E9D151"/>
                        <stop offset="0.935" stop-color="#BE913E"/>
                        </linearGradient>
                        </defs>
                    </svg>
                  </a>
                @endif

                @if ($datosgenerales->twitter)
                  <a href="{{ $datosgenerales->twitter }}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0 16C0 7.16344 7.16344 0 16 0C24.8366 0 32 7.16344 32 16C32 24.8366 24.8366 32 16 32C7.16344 32 0 24.8366 0 16ZM22.1 11.5C22.8 11.4 23.4 11.3 24 11C23.6 11.7 23 12.3 22.3 12.7C22.5 17.4 19.1 22.5 13 22.5C11.2 22.5 9.5 21.9 8 21C9.7 21.2 11.5 20.7 12.7 19.8C11.2 19.8 10 18.8 9.6 17.5C10.1 17.6 10.6 17.5 11.1 17.4C9.6 17 8.5 15.6 8.5 14.1C9 14.3 9.5 14.5 10 14.5C8.6 13.5 8.1 11.6 9 10.1C10.7 12.1 13.1 13.4 15.8 13.5C15.3 11.5 16.9 9.5 19 9.5C19.9 9.5 20.8 9.9 21.4 10.5C22.2 10.3 22.9 10.1 23.5 9.7C23.3 10.5 22.8 11.1 22.1 11.5Z" fill="url(#paint0_linear_4_533)"/>
                        <defs>
                        <linearGradient id="paint0_linear_4_533" x1="0" y1="16" x2="32" y2="16" gradientUnits="userSpaceOnUse">
                        <stop stop-color="#C8A049"/>
                        <stop offset="0.55422" stop-color="#E9D151"/>
                        <stop offset="0.935" stop-color="#BE913E"/>
                        </linearGradient>
                        </defs>
                    </svg>
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

    <div id="modalTerminosCondiciones" class="modal" style="max-width: 900px !important;width: 100% !important;  ">
        <!-- Modal body -->
        <div class="p-4 ">
            <h1 class="font-FixelText_Bold text-center text-2xl">Terminos y condiciones</h1>
            <p class="font-Inter_Regular  prose grid grid-cols-1">{!! $terminos->content ?? '' !!}</p>
        </div>
    </div>

    <div id="modalPoliticasDev" class="modal" style="max-width: 900px !important; width: 100% !important;  ">
        <!-- Modal body -->
        <div class="p-4 ">
            <h1 class="font-FixelText_Bold text-center text-2xl">Politicas de Datos</h1>

            <p class="font-Inter_Regular  prose grid grid-cols-1 ">{!! $politicas->content ?? '' !!}</p>


        </div>
    </div>

    <div id="modallinkPoliticasDatos" class="modal" style="max-width: 900px !important; width: 100% !important;  ">
        <!-- Modal body -->
        <div class="p-4 ">
            <h1 class="font-FixelText_Bold text-center text-2xl">Politicas de Cambio y Devolucion</h1>

            <p class="font-Inter_Regular  prose grid grid-cols-1">{!! $politicaDatos->content ?? '' !!}</p>


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
            $('#modalPoliticasDev').modal({
                show: true,
                fadeDuration: 400,


            })
        })

        $(document).on('click', '#linkPoliticas2', function() {
            $('#modalPoliticasDev').modal({
                show: true,
                fadeDuration: 400,


            })
        })

        $(document).on('click', '#linkPoliticasDatos', function() {
            $('#modallinkPoliticasDatos').modal({
                show: true,
                fadeDuration: 400,


            })
        })

        $(document).on('click', '#linkPoliticasDatos2', function() {
            $('#modallinkPoliticasDatos').modal({
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
