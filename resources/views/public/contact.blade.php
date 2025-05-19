@extends('components.public.matrix', ['pagina' => 'contacto'])

@section('css_importados')
    <style>
        .select2-container--default .select2-selection--single {
            border: 1px solid #262626 !important;
            border-radius: 0.5rem !important;
            height: auto !important;
            padding: 0.5rem 0.75rem !important;
            background-color: #141414 !important;
        }

        /* Estilo cuando está enfocado */
        .select2-container--default.select2-container--focus .select2-selection--single {
            border-color: #141414 !important;
            outline: 0 !important;
            box-shadow: none !important;
        }

        /* Estilo del texto */
        .select2-container--default .select2-selection--single .select2-selection__rendered {
            color: #ffffff !important;
            font-family: 'Aceh', sans-serif !important;
            font-size: 1rem !important;
            line-height: 1.5 !important;
            padding: 0 !important;
        }

        /* Para pantallas grandes */
        @media (min-width: 1536px) {
            .select2-container--default .select2-selection--single .select2-selection__rendered {
                font-size: 1.25rem !important;
            }
        }

        /* Estilo de la flecha desplegable */
        .select2-container--default .select2-selection--single .select2-selection__arrow {
            height: 100% !important;
        }

        .select2-search__field{
            border-color: #262626 !important;
            outline: 0 !important;
            box-shadow: none !important;
        }

        .select2-results__message{
            font-size: 12px !important;
        }

        /* Estilos para select banderas */
        .js-phone-select + .select2-container--default .select2-selection--single {
            border: 1px solid #262626 !important;
            border-radius: 0.5rem 0 0 0.5rem !important; /* Solo redondeo izquierdo */
            height: auto !important;
            padding: 0.75rem 0.75rem !important;
            margin-top: 0px !important;
            background-color: #141414 !important;
            transition: border-color 0.3s ease;
            
        }
        
        .js-phone-select + .select2-container {
            max-width: 100px!important;
        }
    </style>
@stop

@section('content')

    <main>
        <section class="px-[5%] xl:px-[8%] py-8 lg:py-16 flex flex-col gap-10" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
            <div class="grid grid-cols-1 lg:grid-cols-2 gap-10 xl:gap-20">

                <div class="flex flex-col gap-3 md:gap-5 items-start max-w-3xl 2xl:max-w-4xl w-full">
                    
                    <div class="grid grid-cols-1 gap-4 xl:gap-6 2xl:gap-8 p-4 xl:p-6 2xl:p-8 z-20 bg-[#141414] rounded-xl min-w-[390px] w-full">
                        
                        <h2 class="font-PlusJakartaSans_Semibold text-white text-3xl lg:text-4xl 2xl:text-5xl leading-tight">
                            Ponte en <span class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent"> contacto </span> con nuestro equipo ahora
                        </h2>

                        <div id="form1" class=" rounded-2xl flex flex-col gap-4 formulariocontacto font-PlusJakartaSans_Regular">
                            <form class="flex flex-col gap-2 xl:gap-4" id="formContactos">
                              @csrf

                                <input type="hidden" name="source" value="contacto">

                                <div class="relative">
                                    <input type="text" name="full_name" id="full_name" placeholder=" " 
                                        class="peer border-[#262626] focus:border-[#262626] focus:ring-0 font-aceh w-full py-3 px-3 lg:px-4 rounded-lg text-base 2xl:text-xl text-white bg-[#141414]">
                                    <label for="full_name" class="text-white absolute left-3 top-3 text-sm peer-focus:-top-3 peer-[:not(:placeholder-shown)]:-top-3 transition-all peer-focus:text-sm peer-[:not(:placeholder-shown)]:text-sm peer-focus:bg-[#141414] peer-[:not(:placeholder-shown)]:bg-[#141414] peer-focus:px-1 peer-[:not(:placeholder-shown)]:px-1 2xl:text-lg peer-focus:2xl:text-base peer-[:not(:placeholder-shown)]:2xl:text-base">Nombres y Apellidos</label>
                                </div>

                                <div class="relative">
                                    <input type="text" name="email" id="email" placeholder=" " 
                                        class="peer border-[#262626] focus:border-[#262626] focus:ring-0 font-aceh w-full py-3 px-3 lg:px-4 rounded-lg text-base 2xl:text-xl text-white bg-[#141414]">
                                    <label for="email" class="text-white absolute left-3 top-3 text-sm peer-focus:-top-3 peer-[:not(:placeholder-shown)]:-top-3 transition-all peer-focus:text-sm peer-[:not(:placeholder-shown)]:text-sm peer-focus:bg-[#141414] peer-[:not(:placeholder-shown)]:bg-[#141414] peer-focus:px-1 peer-[:not(:placeholder-shown)]:px-1 2xl:text-lg peer-focus:2xl:text-base peer-[:not(:placeholder-shown)]:2xl:text-base">Correo electrónico</label>
                                </div>
                                
                                <div class="flex flex-row">
                                    <select class="js-phone-select !max-w-[120px]" name="code_country">
                                        @foreach($paises as $pais)
                                            <option value="{{ $pais['iso2'] }}"
                                                    data-phone-code="+{{ $pais['phoneCode'] }}">
                                                {{ $pais['nameES'] }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <div class="relative w-full">
                                        <input type="text" name="phone" id="telefonoContacto" placeholder=" " 
                                            class="peer border-[#262626] focus:border-[#262626] focus:ring-0 font-aceh w-full py-3 px-3 lg:px-4 rounded-lg rounded-l-none text-base 2xl:text-xl text-white bg-[#141414]">
                                        <label for="telefonoContacto" class="text-white absolute left-3 top-3 text-sm peer-focus:-top-3 peer-[:not(:placeholder-shown)]:-top-3 transition-all peer-focus:text-sm peer-[:not(:placeholder-shown)]:text-sm peer-focus:bg-[#141414] peer-[:not(:placeholder-shown)]:bg-[#141414] peer-focus:px-1 peer-[:not(:placeholder-shown)]:px-1 2xl:text-lg peer-focus:2xl:text-base peer-[:not(:placeholder-shown)]:2xl:text-base">Teléfono</label>
                                    </div>
                                </div>

                                
                                <div class="relative">
                                    <textarea rows="4" name="message" id="message" placeholder="" 
                                        class="peer border-[#262626] focus:border-[#262626] focus:ring-0 font-aceh w-full py-3 px-3 lg:px-4 rounded-lg text-base 2xl:text-xl text-white bg-[#141414]"></textarea>
                                    <label for="message" class="text-white absolute left-3 top-3 text-sm peer-focus:-top-3 peer-[:not(:placeholder-shown)]:-top-3 transition-all peer-focus:text-sm peer-[:not(:placeholder-shown)]:text-sm peer-focus:bg-[#141414] peer-[:not(:placeholder-shown)]:bg-[#141414] peer-focus:px-1 peer-[:not(:placeholder-shown)]:px-1 2xl:text-lg peer-focus:2xl:text-base peer-[:not(:placeholder-shown)]:2xl:text-base">Escribe un mensaje</label>
                                </div>
                    
                                 
                               <button type="submit" class="w-full text-[#141414] text-center text-lg px-6 py-3 font-PlusJakartaSans_Medium rounded-xl bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] flex flex-row gap-2 justify-center items-center">
                                    Enviar formulario
                                    <svg xmlns="http://www.w3.org/2000/svg" width="25" height="24" viewBox="0 0 25 24" fill="none">
                                        <mask id="mask0_2002_48" style="mask-type:alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="25" height="24">
                                        <rect x="0.5" width="24" height="24" fill="white"/>
                                        </mask>
                                        <g mask="url(#mask0_2002_48)">
                                        <path d="M16.675 13.001H4.5V11.001H16.675L11.075 5.40098L12.5 4.00098L20.5 12.001L12.5 20.001L11.075 18.601L16.675 13.001Z" fill="#141414"/>
                                        </g>
                                    </svg>
                                </button>

                                <p class="col-span-4 -mb-2 text-white font-PlusJakartaSans_Regular text-base 2xl:text-xl">Al enviar el formulario estoy aceptando<span class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent"><a id="linkTerminos2" class="underline"> Términos y Condiciones</a> y <a id="linkPoliticasDatos2" class="underline">Políticas de privacidad</a></span></p>

                            </form>

                        </div>
                        
                    </div>
                </div>

                <div class="flex flex-row justify-center items-center">
                    {{-- @if ($general[0]->htop && $general[0]->ig_token) --}}
                        <div class="h-[600px] w-full rounded-2xl overflow-hidden" id="map">
                            <img src="{{ asset('images/img/mapafinal.png') }}" alt="Imagen de fondo del mapa" class="w-full h-full object-cover">
                        </div>
                    {{-- @endif --}}
                </div>

            </div>
        </section>

        <section class="px-[5%] xl:px-[8%] py-8 lg:py-16 flex flex-col bg-[#1E1E1E]">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-5 md:gap-7 lg:gap-10">
                <h2 class="md:col-span-2 lg:col-span-3 font-PlusJakartaSans_Semibold text-white text-3xl lg:text-4xl 2xl:text-5xl leading-tight">
                    Hablemos <span class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent"> hoy... </span>
                </h2>
                
                <article class="flex flex-col gap-3 p-4 lg:p-6 bg-[#141414] rounded-xl">
                    <img loading="lazy" src="{{ asset('images/svg/sms.svg') }}" class="object-contain w-14" />
                    <div class="flex flex-col gap-2 2xl:gap-4 w-full">
                        <h3
                            class="text-xl md:text-2xl 2xl:text-3xl  font-PlusJakartaSans_Semibold tracking-normal leading-tight text-white">
                            Correo electrónico
                        </h3>
                        <p
                            class="text-white text-sm 2xl:text-base 3xl:text-lg font-PlusJakartaSans_Regular tracking-normal">
                            Escríbenos para recibir atención personalizada y resolver tus dudas.
                        </p>
                        <p class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent font-PlusJakartaSans_Medium">mo-realstate@mail.com</p>
                    </div>
                </article>

                <article class="flex flex-col gap-3 p-4 lg:p-6 bg-[#141414] rounded-xl">
                    <img loading="lazy" src="{{ asset('images/svg/phone.svg') }}" class="object-contain w-14" />
                    <div class="flex flex-col gap-2 2xl:gap-4 w-full">
                        <h3
                            class="text-xl md:text-2xl 2xl:text-3xl  font-PlusJakartaSans_Semibold tracking-normal leading-tight text-white">
                            Teléfono
                        </h3>
                        <p
                            class="text-white text-sm 2xl:text-base 3xl:text-lg font-PlusJakartaSans_Regular tracking-normal">
                            Llámanos para obtener soporte inmediato y asistencia profesional.
                        </p>
                        <p class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent font-PlusJakartaSans_Medium">(+51) 000-000-000</p>
                    </div>
                </article>

                <article class="flex flex-col gap-3 p-4 lg:p-6 bg-[#141414] rounded-xl">
                    <img loading="lazy" src="{{ asset('images/svg/address.svg') }}" class="object-contain w-14" />
                    <div class="flex flex-col gap-2 2xl:gap-4 w-full">
                        <h3
                            class="text-xl md:text-2xl 2xl:text-3xl  font-PlusJakartaSans_Semibold tracking-normal leading-tight text-white">
                            Oficina
                        </h3>
                        <p
                            class="text-white text-sm 2xl:text-base 3xl:text-lg font-PlusJakartaSans_Regular tracking-normal">
                            Visítanos en nuestra oficina para conocer nuestras soluciones.
                        </p>
                        <p class="bg-gradient-to-r from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent font-PlusJakartaSans_Medium">Av. Javier Prado 2156 San Isidro</p>
                    </div>
                </article>

            </div>
        </section>
    </main>


    {{-- <div class="flex flex-col p-10  w-full md:w-1/2 bg-[#5BE3A5] shadow-lg">
          <div class="flex flex-col w-full">
            <h2 class="text-3xl font-Homie_Bold text-[#006258]">{{$textoshome->title7section ?? 'Ingrese un texto'}}</h2>
            <p class="mt-4 text-base font-FixelText_Regular text-[#006258]">
                {{$textoshome->description7section ?? 'Ingrese un texto'}}
            </p>
          </div>
          <div class="flex flex-col justify-center mt-10 w-full  ">

            <div class="flex gap-2 items-start w-full  ">
              <img loading="lazy" src="{{asset('images/img/ubicacion_contact.png')}}" class="object-contain shrink-0 w-6 aspect-square" alt="Icono de dirección">
              <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                <h3 class="text-lg font-FixelText_Bold text-[#006258]">Dirección</h3>
                <p class="mt-2 text-base font-FixelText_Regular text-[#006258]">
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
                <img loading="lazy" src="{{asset('images/img/phone_contact.png')}}" class="object-contain shrink-0 w-6 aspect-square" alt="Icono de teléfono">
                <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                    <h3 class="text-lg font-FixelText_Bold text-[#006258]">Número de Teléfono</h3>
                    <p class="mt-2 text-base font-FixelText_Regular text-[#006258]">{{ $general->cellphone }}</p>
                </div>
                </div>
            @endif
            
            @if (!empty($general->email))
                <div class="flex gap-2 items-start mt-8 w-full  ">
                <img loading="lazy" src="{{asset('images/img/mail_contact.png')}}" class="object-contain shrink-0 w-6 aspect-square" alt="Icono de correo electrónico">
                <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                    <h3 class="text-lg font-FixelText_Bold text-[#006258]">Correo Electrónico</h3>
                    <p class="mt-2 text-base font-FixelText_Regular text-[#006258]">{{ $general->email }}</p>
                </div>
                </div>
            @endif

            @if (!empty($general->schedule))
                <div class="flex gap-2 items-start mt-8 w-full  ">
                <img loading="lazy" src="{{asset('images/img/reloj_contact.png')}}" class="object-contain shrink-0 w-6 aspect-square" alt="Icono de horario de atención">
                <div class="flex flex-col flex-1 shrink basis-0 min-w-[240px]">
                    <h3 class="text-lg font-FixelText_Bold text-[#006258]">Horario de Atención</h3>
                    <p class="mt-2 text-base font-FixelText_Regular text-[#006258]">
                        @foreach (explode(',', $general->schedule) as $item)
                                    {{ $item }}<br>
                        @endforeach
                    </p>
                </div>
                </div>
            @endif    
          </div>
   </div> --}}


@section('scripts_importados')
    
    <script>
       
        function formatState(state) {
            if (!state.id) return state.text;
            
            // CDN de banderas (flag-icon-css)
            const baseUrl = "https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.5.0/flags/4x3";
            const phoneCode = $(state.element).data('phone-code') || '';
            const countryName = state.text || '';
            
            return $(
                `<span class="flex flex-row font-aceh">
                    <img src="${baseUrl}/${state.id.toLowerCase()}.svg" 
                        class="img-flag w-5 mr-2 object-contain" 
                        alt="${countryName}" 
                        onerror="this.src='https://via.placeholder.com/20x15?text=flag'"/>
                    <span class="text-base">${phoneCode}</span>
                </span>`
            );
        }

        // Inicialización mejorada de Select2
        function initCountrySelect() {
            const $select = $(".js-phone-select");
            
            $select.select2({
                templateResult: formatState,
                templateSelection: formatState,
                placeholder: "Selecciona un país",
                width: '100%',
                dropdownAutoWidth: true,
                escapeMarkup: function(m) { return m; },
                language: {
                    noResults: function() {
                        return "No se encontraron países";
                    }
                }
            });

            // Auto-seleccionar país local
            detectLocalCountry().then(countryCode => {
                if (countryCode && $select.find(`option[value="${countryCode}"]`).length) {
                    $select.val(countryCode).trigger('change');
                }
            });
        }

        // Función para detectar país local (versión mejorada)
        async function detectLocalCountry() {
            try {
                // 1. Primero intentar con API IP simple
                const ipResponse = await fetch('https://ipapi.co/json/');
                if (ipResponse.ok) {
                    const { country_code } = await ipResponse.json();
                    if (country_code) return country_code;
                }
                
                // 2. Fallback a geolocalización del navegador
                if (navigator.geolocation) {
                    const position = await new Promise((res, rej) => 
                        navigator.geolocation.getCurrentPosition(res, rej));
                    const geoResponse = await fetch(
                        `https://api.bigdatacloud.net/data/reverse-geocode-client?latitude=${position.coords.latitude}&longitude=${position.coords.longitude}&localityLanguage=es`
                    );
                    const { countryCode } = await geoResponse.json();
                    return countryCode;
                }
                
                // 3. Fallback a idioma del navegador
                const lang = navigator.language || navigator.userLanguage || 'es-PE';
                return lang.includes('es') ? 'PE' : 'US';

            } catch (error) {
                console.error('Error detecting country:', error);
                return 'PE'; // Valor por defecto (Peru)
            }
        }

        // Inicializar cuando el DOM esté listo
        $(document).ready(function() {
            initCountrySelect();
            
            // Opcional: Actualizar campo de teléfono al cambiar país
            $('.js-phone-select').on('change', function() {
                const phoneCode = $(this).find(':selected').data('phone-code') || '';
                $('#phone_number').val(phoneCode ? `${phoneCode} ` : '').focus();
            });
        });

    </script>
    <script>
        function alerta(message) {
            Swal.fire({
                title: message,
                icon: "info",
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
            let btnEnviar = $('#btnEnviar');
            btnEnviar.prop('disabled', true);
            btnEnviar.text('Enviando...');
            btnEnviar.css('cursor', 'not-allowed');

            event.preventDefault();
            let formDataArray = $(this).serializeArray();

            if (!validarEmail($('#email').val())) {
                btnEnviar.prop('disabled', false);
                btnEnviar.text('Enviar Mensaje');
                btnEnviar.css('cursor', 'pointer');
                return;
            };

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
                                icon: "info",
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
        $(document).ready(function() {
            function capitalizeFirstLetter(string) {
                string = string.toLowerCase()
                return string.charAt(0).toUpperCase() + string.slice(1);
            }
        })
        $('#disminuir').on('click', function() {
            console.log('disminuyendo')
            let cantidad = Number($('#cantidadSpan span').text())
            if (cantidad > 0) {
                cantidad--
                $('#cantidadSpan span').text(cantidad)
            }


        })
        // cantidadSpan
        $('#aumentar').on('click', function() {
            console.log('aumentando')
            let cantidad = Number($('#cantidadSpan span').text())
            cantidad++
            $('#cantidadSpan span').text(cantidad)

        })
    </script>
    <script>
        let articulosCarrito = [];


        function deleteOnCarBtn(id, operacion) {
            console.log('Elimino un elemento del carrito');
            console.log(id, operacion)
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


        }

        function calcularTotal() {
            let articulos = Local.get('carrito')
            console.log(articulos)
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

        function addOnCarBtn(id, operacion) {
            console.log('agrego un elemento del cvarrio');
            console.log(id, operacion)

            const prodRepetido = articulosCarrito.map(item => {
                if (item.id === id) {
                    item.cantidad += Number(1);
                    return item; // retorna el objeto actualizado 
                } else {
                    return item; // retorna los objetos que no son duplicados 
                }

            });
            console.log(articulosCarrito)
            Local.set('carrito', articulosCarrito)
            // localStorage.setItem('carrito', JSON.stringify(articulosCarrito));
            limpiarHTML()
            PintarCarrito()


        }

        function deleteItem(id) {
            console.log('borrando elemento')
            articulosCarrito = articulosCarrito.filter(objeto => objeto.id !== id);

            Local.set('carrito', articulosCarrito)
            limpiarHTML()
            PintarCarrito()
        }

        var appUrl = <?php echo json_encode($url_env); ?>;
        console.log(appUrl);
        $(document).ready(function() {
            articulosCarrito = Local.get('carrito') || [];

            PintarCarrito();
        });

        function limpiarHTML() {
            //forma lenta 
            /* contenedorCarrito.innerHTML=''; */
            $('#itemsCarrito').html('')


        }



        // function PintarCarrito() {
        //   console.log('pintando carrito ')

        //   let itemsCarrito = $('#itemsCarrito')

        //   articulosCarrito.forEach(element => {
        //     let plantilla = `<div class="flex justify-between bg-white font-Inter_Regular border-b-[1px] border-[#E8ECEF] pb-5">
    //         <div class="flex justify-center items-center gap-5">
    //           <div class="bg-[#F3F5F7] rounded-md p-4">
    //             <img src="${appUrl}/${element.imagen}" alt="producto" class="w-24" />
    //           </div>
    //           <div class="flex flex-col gap-3 py-2">
    //             <h3 class="font-semibold text-[14px] text-[#151515]">
    //               ${element.producto}
    //             </h3>
    //             <p class="font-normal text-[12px] text-[#6C7275]">

    //             </p>
    //             <div class="flex w-20 justify-center text-[#151515] border-[1px] border-[#6C7275] rounded-md">
    //               <button type="button" onClick="(deleteOnCarBtn(${element.id}, '-'))" class="  w-8 h-8 flex justify-center items-center ">
    //                 <span  class="text-[20px]">-</span>
    //               </button>
    //               <div class="w-8 h-8 flex justify-center items-center">
    //                 <span  class="font-semibold text-[12px]">${element.cantidad }</span>
    //               </div>
    //               <button type="button" onClick="(addOnCarBtn(${element.id}, '+'))" class="  w-8 h-8 flex justify-center items-center ">
    //                 <span class="text-[20px]">+</span>
    //               </button>
    //             </div>
    //           </div>
    //         </div>
    //         <div class="flex flex-col justify-start py-2 gap-5 items-center pr-2">
    //           <p class="font-semibold text-[14px] text-[#151515]">
    //             S/ ${Number(element.descuento) !== 0 ? element.descuento : element.precio}
    //           </p>
    //           <div class="flex items-center">
    //             <button type="button" onClick="(deleteItem(${element.id}))" class="  w-8 h-8 flex justify-center items-center ">
    //             <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
    //               <path stroke-linecap="round" stroke-linejoin="round" d="m14.74 9-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 0 1-2.244 2.077H8.084a2.25 2.25 0 0 1-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 0 0-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 0 1 3.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 0 0-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 0 0-7.5 0" />
    //             </svg>
    //             </button>

    //           </div>
    //         </div>
    //       </div>`

        //     itemsCarrito.append(plantilla)

        //   });

        //   calcularTotal()
        // }


        $('#btnAgregarCarrito').on('click', function() {
            let url = window.location.href;
            let partesURl = url.split('/')
            let item = partesURl[partesURl.length - 1]
            let cantidad = Number($('#cantidadSpan span').text())
            item = item.replace('#', '')
            // id='nodescuento'
            $.ajax({

                url: `{{ route('carrito.buscarProducto') }}`,
                method: 'POST',
                data: {
                    _token: $('input[name="_token"]').val(),
                    id: item,
                    cantidad

                },
                success: function(success) {
                    console.log(success)
                    let {
                        producto,
                        id,
                        descuento,
                        precio,
                        imagen,
                        color
                    } = success.data
                    let cantidad = Number(success.cantidad)
                    let detalleProducto = {
                        id,
                        producto,
                        descuento,
                        precio,
                        imagen,
                        cantidad,
                        color

                    }
                    let existeArticulo = articulosCarrito.some(item => item.id === detalleProducto.id)
                    if (existeArticulo) {
                        //sumar al articulo actual 
                        const prodRepetido = articulosCarrito.map(item => {
                            if (item.id === detalleProducto.id) {
                                item.cantidad += Number(detalleProducto.cantidad);
                                return item; // retorna el objeto actualizado 
                            } else {
                                return item; // retorna los objetos que no son duplicados 
                            }

                        });
                    } else {
                        articulosCarrito = [...articulosCarrito, detalleProducto]

                    }

                    Local.set('carrito', articulosCarrito)
                    let itemsCarrito = $('#itemsCarrito')
                    let ItemssubTotal = $('#ItemssubTotal')
                    let itemsTotal = $('#itemsTotal')
                    limpiarHTML()
                    PintarCarrito()

                },
                error: function(error) {
                    console.log(error)
                }

            })



            // articulosCarrito = {...articulosCarrito , detalleProducto }
        })
        // $('#openCarrito').on('click', function() {
        //   console.log('abriendo carrito ');
        //   $('.main').addClass('blur')
        // })
        // $('#closeCarrito').on('click', function() {
        //   console.log('cerrando  carrito ');

        //   $('.cartContainer').addClass('hidden')
        //   $('#check').prop('checked', false);
        //   $('.main').removeClass('blur')
        // })
    </script>

    <script src="{{ asset('js/storage.extend.js') }}"></script>
@stop

@stop
