@extends('components.public.matrix', ['pagina' => 'Agentes'])

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
        @if (count($personal) > 0)
            <section class="w-full px-[5%] py-8 lg:py-16 bg-[#141414]" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
                <div class="flex flex-col gap-6 lg:gap-10">
                    <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] 2xl:text-5xl">Comunícate con
                        nuestros <span class="text-[#C8A049]">agentes</span> </h2>

                    <div class="w-full grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-5">
                            @foreach ($personal as $persona)
                                <div class="flex flex-col bg-[#141414] p-4 md:p-6 rounded-xl min-w-[270px] xl:min-w-[350px] gap-3">
                                    <div class="flex flex-row gap-3 items-center">
                                        <img loading="lazy" src="{{ asset($persona->youtube) }}"
                                            class="object-cover w-12 xl:min-w-16 rounded-full aspect-square" onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';" />
                                        <div class="flex flex-col w-full">
                                            <div class="flex relative gap-2 items-center">
                                                <h2
                                                    class="font-PlusJakartaSans_Medium text-white text-lg xl:text-[22px] 2xl:text-2xl gap-2">
                                                    {{$persona->nombre}}
                                                    
                                                </h2>
                                                <span class="text-[#C8A049] absolute right-0 top-0">
                                                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
                                                        viewBox="0 0 16 16" fill="none">
                                                        <mask id="mask0_3_3930" style="mask-type:alpha"
                                                            maskUnits="userSpaceOnUse" x="0" y="0" width="16"
                                                            height="16">
                                                            <rect width="16" height="16" fill="#D9D9D9" />
                                                        </mask>
                                                        <g mask="url(#mask0_3_3930)">
                                                            <path
                                                                d="M5.73366 15L4.46699 12.8667L2.06699 12.3333L2.30033 9.86667L0.666992 8L2.30033 6.13333L2.06699 3.66667L4.46699 3.13333L5.73366 1L8.00033 1.96667L10.267 1L11.5337 3.13333L13.9337 3.66667L13.7003 6.13333L15.3337 8L13.7003 9.86667L13.9337 12.3333L11.5337 12.8667L10.267 15L8.00033 14.0333L5.73366 15ZM6.30033 13.3L8.00033 12.5667L9.73366 13.3L10.667 11.7L12.5003 11.2667L12.3337 9.4L13.567 8L12.3337 6.56667L12.5003 4.7L10.667 4.3L9.70033 2.7L8.00033 3.43333L6.26699 2.7L5.33366 4.3L3.50033 4.7L3.66699 6.56667L2.43366 8L3.66699 9.4L3.50033 11.3L5.33366 11.7L6.30033 13.3ZM7.30033 10.3667L11.067 6.6L10.1337 5.63333L7.30033 8.46667L5.86699 7.06667L4.93366 8L7.30033 10.3667Z"
                                                                fill="#E9D151" />
                                                        </g>
                                                    </svg>
                                                </span>
                                            </div>
                                            <p
                                                class="font-PlusJakartaSans_Regular text-white text-sm xl:text-base 2xl:text-xl">
                                                {{$persona->cargo}}
                                            </p>
                                        </div>
                                    </div>
                                    <div class="flex flex-row justify-end gap-3">
                                        @php
                                            $numeroWhatsapp = preg_replace('/[^0-9]/', '', $persona->facebook);
                                        @endphp
                                        <a target="_blank" href="https://api.whatsapp.com/send?phone={{ $numeroWhatsapp }}">
                                            <div
                                                class="cursor-pointer bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="32" height="33" viewBox="0 0 32 33" fill="none">
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M12.6 22.4051C13.6 23.0051 14.8 23.3051 16 23.3051C19.7 23.3051 22.6 20.3051 22.6 16.8051C22.6 15.0051 22 13.4051 20.7 12.1051C19.4 10.9051 17.8 10.2051 16 10.2051C12.4 10.2051 9.39999 13.2051 9.39999 16.8051C9.39999 18.0051 9.7 19.2051 10.4 20.3051L10.6 20.6051L9.89999 23.0051L12.4 22.3051L12.6 22.4051ZM18.2 17.7051C18.4 17.7051 19.4 18.2051 19.6 18.3051C19.6311 18.3206 19.6623 18.3338 19.6931 18.3468C19.8599 18.4172 20.0156 18.4829 20.1 18.9051C20.2 18.9051 20.2 19.3051 20 19.8051C19.9 20.2051 19.1 20.7051 18.7 20.7051C18.6322 20.7051 18.5673 20.7108 18.498 20.7169C18.1582 20.747 17.712 20.7865 16.3 20.2051C14.5475 19.5041 13.3325 17.805 12.9913 17.3279C12.9431 17.2605 12.9124 17.2175 12.9 17.2051C12.883 17.171 12.8485 17.1167 12.8031 17.045C12.5819 16.6957 12.1 15.9348 12.1 15.1051C12.1 14.1051 12.6 13.6051 12.8 13.4051C13 13.2051 13.2 13.2051 13.3 13.2051H13.7C13.8 13.2051 14 13.2051 14.1 13.5051C14.3 13.9051 14.7 14.9051 14.7 15.0051C14.7 15.0384 14.7111 15.0717 14.7222 15.1051C14.7445 15.1717 14.7667 15.2384 14.7 15.3051C14.65 15.3551 14.625 15.4051 14.6 15.4551C14.575 15.5051 14.55 15.5551 14.5 15.6051L14.2 15.9051C14.1 16.0051 14 16.1051 14.1 16.3051C14.2 16.5051 14.6 17.2051 15.2 17.7051C15.8751 18.2958 16.4078 18.5304 16.6778 18.6494C16.7278 18.6714 16.7688 18.6895 16.8 18.7051C17 18.7051 17.1 18.7051 17.2 18.6051C17.25 18.5051 17.375 18.3551 17.5 18.2051C17.625 18.0551 17.75 17.9051 17.8 17.8051C17.9 17.6051 18 17.6051 18.2 17.7051Z" fill="url(#paint0_linear_190_251)"/>
                                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M0 16.7051C0 7.86852 7.16344 0.705078 16 0.705078C24.8366 0.705078 32 7.86852 32 16.7051C32 25.5416 24.8366 32.7051 16 32.7051C7.16344 32.7051 0 25.5416 0 16.7051ZM16 8.70508C18.1 8.70508 20.1 9.50508 21.6 11.0051C23.1 12.5051 24 14.5051 24 16.6051C24 21.0051 20.4 24.6051 16 24.6051C14.7 24.6051 13.4 24.2051 12.2 23.6051L8 24.7051L9.10001 20.7051C8.40001 19.5051 8 18.1051 8 16.7051C8 12.3051 11.6 8.70508 16 8.70508Z" fill="url(#paint1_linear_190_251)"/>
                                                    <defs>
                                                    <linearGradient id="paint0_linear_190_251" x1="0" y1="16.7051" x2="32" y2="16.7051" gradientUnits="userSpaceOnUse">
                                                    <stop stop-color="#C8A049"/>
                                                    <stop offset="0.55422" stop-color="#E9D151"/>
                                                    <stop offset="0.935" stop-color="#BE913E"/>
                                                    </linearGradient>
                                                    <linearGradient id="paint1_linear_190_251" x1="0" y1="16.7051" x2="32" y2="16.7051" gradientUnits="userSpaceOnUse">
                                                    <stop stop-color="#C8A049"/>
                                                    <stop offset="0.55422" stop-color="#E9D151"/>
                                                    <stop offset="0.935" stop-color="#BE913E"/>
                                                    </linearGradient>
                                                    </defs>
                                                </svg>
                                            </div>
                                        </a>
                                        {{-- <a onclick="copyEmail('{{$persona->instagram}}'); return false;">
                                            <div
                                                class="cursor-pointer bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] w-10 h-10 rounded-full flex flex-col items-center justify-center">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="21" height="21"
                                                    viewBox="0 0 21 21" fill="none">
                                                    <path d="M6.89746 12.0192H13.5641M6.89746 7.85254H10.2308"
                                                        stroke="#141414" stroke-width="1.25" stroke-linecap="round"
                                                        stroke-linejoin="round" />
                                                    <path
                                                        d="M5.31314 16.6025C4.22971 16.496 3.41809 16.1705 2.87377 15.6262C1.89746 14.65 1.89746 13.0785 1.89746 9.93587V9.51921C1.89746 6.37651 1.89746 4.80516 2.87377 3.82885C3.85009 2.85254 5.42143 2.85254 8.56413 2.85254H11.8975C15.0401 2.85254 16.6115 2.85254 17.5878 3.82885C18.5641 4.80516 18.5641 6.37651 18.5641 9.51921V9.93587C18.5641 13.0785 18.5641 14.65 17.5878 15.6262C16.6115 16.6025 15.0401 16.6025 11.8975 16.6025C11.4304 16.613 11.0584 16.6485 10.693 16.7317C9.69429 16.9616 8.76954 17.4726 7.85569 17.9183C6.55354 18.5532 5.90246 18.8707 5.49387 18.5735C4.7122 17.9913 5.47624 16.1875 5.64746 15.3525"
                                                        stroke="#141414" stroke-width="1.25" stroke-linecap="round" />
                                                </svg>
                                            </div>
                                        </a> --}}
                                    </div>
                                </div>
                            @endforeach  
                    </div>
                </div>
            </section>
        @endif
    </main>

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
