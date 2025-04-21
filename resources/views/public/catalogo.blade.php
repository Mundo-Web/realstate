@extends('components.public.matrix', ['pagina' => 'catalogo'])
@section('title', 'Productos | ' . config('app.name', 'Laravel'))

@section('css_importados')
<style>
    .customselect + .select2-container--default .select2-selection--single {
        border: 1px solid #262626 !important;
        border-radius: 0.5rem !important;
        padding: 15px 15px !important;
        background-color: #1A1A1A !important;
        color: white !important;
        
        
    }

    .customselect + .select2-container--default .select2-selection--single {
        box-shadow: none !important;
    }


    .customselect + .select2-container--default .select2-selection--single .select2-selection__rendered {
        color: white !important;
        font-family: "PlusJakartaSans_Medium" !important;
        line-height: inherit !important;
    }

    .customselect + .select2-container--default .select2-selection--single .select2-selection__arrow b {
        display: none;
    }

    .typedepart .customselect + .select2-container--default .select2-selection--single .select2-selection__arrow::after {
        font-family: 'Font Awesome 5 Free';
        content: '\f078'; 
        font-weight: 900;
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        /* Color */    
        background: linear-gradient(90deg, #C8A049 0%, #E9D151 55.42%, #BE913E 93.5%);
        -webkit-background-clip: text;
        background-clip: text;
        -webkit-text-fill-color: transparent;
        color: transparent; 
    }

    .location .customselect + .select2-container--default .select2-selection--single .select2-selection__arrow::after {
        font-family: 'Font Awesome 5 Free';
        content: '\f0ac'; 
        font-weight: 900;
        position: absolute;
        right: 10px;
        top: 50%;
        transform: translateY(-50%);
        /* Color */    
        background: linear-gradient(90deg, #C8A049 0%, #E9D151 55.42%, #BE913E 93.5%);
        -webkit-background-clip: text;
        background-clip: text;
        -webkit-text-fill-color: transparent;
        color: transparent; 
    }

    .select2-dropdown--below{
        background-color: #1A1A1A !important;
        border: 1px solid #262626 !important;
        border-radius: 0.5rem !important;
        padding: 15px !important;
    }

    .select2-results__option{
        color: white !important;
        font-family: "PlusJakartaSans_Medium" !important;
        font-size: 14px !important;
    }
    .select2-search__field{
        background-color: #1A1A1A !important;
        border: 1px solid #262626 !important;
        border-radius: 0.5rem !important;
        padding: 15px !important;
        margin-bottom: 10px !important;
    }
    .select2-search__field:focus{
        border: 1px solid #262626 !important;
        border-radius: 0.5rem !important;
        outline: none !important;
        color: white !important;
        font-family: "PlusJakartaSans_Medium" !important;
        font-size: 14px !important;
    }

    .select2-results__option{
        padding: 10px 10px !important;
    }

    .select2-container--default .select2-results__option--highlighted.select2-results__option--selectable{
        background: linear-gradient(90deg, #C8A049 0%, #E9D151 55.42%, #BE913E 93.5%);
        color: #141414 !important;
    }
</style>

@stop


@section('content')

    <div class="bg-center bg-cover" style="background-image: url({{ asset('images/img/rs_textura.png') }})">
        {{-- <section class="flex flex-col lg:flex-row gap-3 lg:gap-10 justify-center items-center px-[5%] lg:pl-[5%] lg:pr-0 bg-[#5BE3A4]">
                
            
            <div class="w-full lg:w-[55%] text-[#151515] flex flex-col justify-center items-center gap-2 md:gap-10">
                
                
                <div class="w-full flex flex-col gap-5 px-0 lg:pr-[5%] pt-8 lg:pt-0 xl:max-w-4xl">
                    <h1 class="text-[#F8FCFF] font-Homie_Bold text-5xl">
                        {{ $textoshome->title1section ?? 'Propiedades que inspiran, experiencias que marcan la diferencia.' }}
                    </h1>
                </div>
                
                
                <div class="w-full flex flex-col gap-5 px-0 lg:pr-[5%] pt-8 md:pt-0 relative">
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
                                <select name="lugar" id="lugar"
                                    class="w-full min-w-36 py-3 text-sm border-0  font-FixelText_Medium self-stretch my-auto basis-0 bg-transparent focus:ring-0 focus:border-0 border-none selection:text-[#000929] text-[#006258] placeholder:text-opacity-30">
                                            <option class="line-clamp-1" value="">Ubicación</option>
                                        
                                            @foreach ($distritosParaFiltro as $distrito_id => $productos)
                                                @php
                                                    $distrito = $productos->first()->distrito; 
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
                                                    <option value="{{ $i }}"
                                                    @selected($i == $cantidad)
                                                    >{{ $i }}</option>
                                                @endfor
                                        </select>
                                    
                                </div>
                            </div>
                            </div>
                        </div>    
            

                        <div class="flex justify-center items-center w-full md:col-span-1">
                                <div class="flex justify-start items-center">
                                    <a id="linkExplirarAlquileres"
                                        class="bg-[#009A84] rounded-xl font-FixelText_Semibold text-base text-white px-3 py-3 text-center">
                                        <span class="hidden md:flex"><i class="fa-solid fa-magnifying-glass"></i></span>
                                        <span class="flex md:hidden px-7">Buscar</span>
                                    </a>
                                </div>
                        </div>

                    </div>
                    <input type="hidden" name="_token" value="{{ csrf_token() }}">
                    
                    <p class="font-FixelText_Regular underline text-sm text-white mt-2">
                        Propietario, anuncia tu propiedad gratis
                    </p>
                </div>
                </div>   
            </div>

            
            <div class="w-full lg:w-[45%]">
                <div class="w-full h-full flex flex-row items-center justify-center">
                    <img src="{{ asset('images/img/portadacatalogo.png'); }}" class="h-[200px] lg:min-h-[400px] object-contain xl:h-full object-bottom" alt="Portada Catálogo" />
                </div>
            </div>

        </section> --}}
        <section class="px-[5%] xl:px-[8%] pt-10 lg:pt-16 ">
            <div class="flex flex-col md:flex-row gap-10 lg:gap-20 relative bg-[#191919] rounded-3xl overflow-hidden py-8">
                
                <div class="h-full w-full md:w-1/2 bg-opacity-70 rounded-3xl px-5 lg:px-10 2xl:px-14">
                    <div class="max-w-lg 2xl:max-w-none flex flex-col gap-5">
                        <h2 class="font-PlusJakartaSans_Medium text-white text-4xl md:text-[44px] leading-tight 2xl:text-5xl">Alquila o vende tu propiedad <span class="text-[#C8A049]">fácilmente</span> </h2>
                        <p class="font-PlusJakartaSans_Regular text-white text-base md:text-lg 2xl:text-xl">Una gran plataforma para vender o incluso alquilar tus propiedades sin comisiones.</p>
                    </div>
                </div>
                
                <div class="w-full md:w-1/2 max-w-xl 2xl:max-w-2xl px-3 lg:px-10 2xl:px-14">
                    <div class="bg-[#141414] rounded-xl overflow-hidden">
                        
                        <div class="grid grid-cols-2 text-center text-base xl:text-lg 2xl:text-xl font-PlusJakartaSans_Medium">
                            <a class="py-4 px-6 bg-[#141414] border-b border-b-[#C8A049] tab active" data-tab="venta">
                                <p class="bg-gradient-to-r  from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent">Venta</p>
                            </a>
                            <a class="py-4 px-6 bg-[#141414] text-white" data-tab="alquiler">
                                <p class="bg-gradient-to-r  from-[#C8A049] via-[#E9D151] to-[#BE913E] bg-clip-text text-transparent">Alquiler</p>
                            </a>
                        </div>

                       
                        <div class="p-4 lg:p-6 space-y-6">

                            <form id="formbusqueda" class="space-y-4">
                                <input type="hidden" id="tipoOperacion" name="tipoOperacion" value="venta">
                                
                                <div class="flex flex-col gap-1 typedepart">
                                    <label class="text-white text-sm font-PlusJakartaSans_Regular">Seleccione el tipo de propiedad</label>
                                    <select class="customselect w-full focus:ring-0" name="type">
                                        <option value="1">Casa</option>
                                        <option value="2">Departamento</option>
                                        <option value="3">Terreno</option>
                                    </select>
                                </div>

                                <div class="flex flex-col gap-1 location">
                                    <label class="text-white text-sm font-PlusJakartaSans_Regular">Ubicación</label>
                                    <select class="customselect w-full focus:ring-0" name="type">
                                        <option value="1">Lima, Lima Metropolitana - Ate</option>
                                        <option value="2">Lima, Lima Metropolitana - Miraflores</option>
                                        <option value="3">Lima, Lima Metropolitana - La Molina</option>
                                        <option value="3">Lima, Lima Metropolitana - La Montes</option>
                                    </select>
                                </div>
                                
                                <div class="flex flex-col gap-3 pt-2">
                                    <button type="submit" class="w-full flex flex-row items-center justify-center text-base 2xl:text-lg font-PlusJakartaSans_Medium text-center bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 md:px-6 py-3.5 leading-normal rounded-xl border border-[#BE913E]">
                                        Buscar propiedad
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

            </div>
        </section>

        <section id="productosf" class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4 lg:gap-8 px-[5%] xl:px-[8%] py-10 lg:py-16">
        @foreach ($products as $item)
                <x-product.container width="col-span-1 " bgcolor="" :item="$item" />
        @endforeach
        </section>
    </div>


    <section class="flex flex-col justify-center items-center px-[5%] xl:px-[8%] py-10 w-full" style="background-image: url({{ asset('images/img/rs_beneficios.png') }})">
      <div class="flex flex-col max-w-xl">

          <div class="flex flex-col w-full text-center gap-5 text-[#006258]">
            <h2 class="font-PlusJakartaSans_Medium text-white text-3xl md:text-[40px] 2xl:text-5xl leading-tight">¿Es usted <span class="text-[#C8A049]">propietario?</span></h2>
            <p class="font-PlusJakartaSans_Regular text-white text-base 2xl:text-xl">Descubra formas de aumentar el valor de su casa y cotizar en la lista.
                No es Spam.</p>
          </div>

          <div class="flex flex-col mt-8 w-full gap-4">
              <div class="flex flex-col w-full rounded-lg">
                  <form id="subsEmail"
                      class="flex flex-row gap-5 justify-end px-5 py-2.5 w-full bg-[#141414] rounded-2xl">
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
              <p class="text-base text-center font-PlusJakartaSans_Regular text-white">
                    Únese a <span class="text-[#C8A049]"> +1.000 </span> propietarios en nuestra comunidad inmobiliaria.
              </p>
          </div>

      </div>
    </section>





@section('scripts_importados')


  <script src="{{ asset('js/storage.extend.js') }}"></script>
  <script>
        const $select = $(".customselect");
            
        $select.select2({
            placeholder: "Selecciona un tipo de propiedad",
            width: '100%',
            dropdownAutoWidth: true,
            language: {
                 noResults: function() {
                    return "No se encontró el tipo de propiedad";
                 }
            }
        });

        document.addEventListener('DOMContentLoaded', function() {
            const tabVenta = document.querySelector('[data-tab="venta"]');
            const tabAlquiler = document.querySelector('[data-tab="alquiler"]');
            const tipoOperacionInput = document.getElementById('tipoOperacion');
            
            function cambiarPestaña(event) {
                event.preventDefault();
                tabVenta.classList.remove('active', 'border-b', 'border-b-[#C8A049]');
                tabAlquiler.classList.remove('active', 'border-b', 'border-b-[#C8A049]');
                this.classList.add('active', 'border-b', 'border-b-[#C8A049]');
                tipoOperacionInput.value = this.dataset.tab;
            }
            
            tabVenta.addEventListener('click', cambiarPestaña);
            tabAlquiler.addEventListener('click', cambiarPestaña);
        });
  </script>
  <script>
    $(document).ready(function () {
        // Supongamos que tienes las fechas de llegada y salida como variables, por ejemplo, de PHP o JavaScript
        var llegada = '{{ old('fecha_llegada', $llegada ?? '') }}'; // Ejemplo en Laravel con valores pasados
        var salida = '{{ old('fecha_salida', $salida ?? '') }}';
        
        // Si las fechas están disponibles, inicializamos el daterangepicker
        if (llegada && salida) {
            $('#arrival-date').daterangepicker({
                locale: {
                    format: 'DD/MM/YYYY',
                    cancelLabel: 'Cancelar',
                    applyLabel: 'Aplicar'
                },
                startDate: moment(llegada, 'DD/MM/YYYY'), // Fecha de llegada
                endDate: moment(salida, 'DD/MM/YYYY'),   // Fecha de salida
                minDate: moment(),
                maxDate: moment().add(9, 'months'),
            });
        } else {
            // Si no hay fechas de llegada y salida, usa la fecha predeterminada
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
            $('#arrival-date').val('Seleccione fechas');

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
                $(this).val('Seleccione fecha');
            });
        }
    });
</script>

<script>
    $(document).ready(function () {
        // Cuando el usuario hace clic en el botón de búsqueda
        $('#linkExplirarAlquileres').on('click', function (e) {
              e.preventDefault();  // Prevenir el comportamiento por defecto del botón
  
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
              
              // ACTUALIZACIÓN: Guardar las nuevas fechas en localStorage (incluso si son vacías)
                if (fechaLlegada && fechaSalida) {
                    localStorage.setItem('fechasBusqueda', JSON.stringify({
                        llegada: fechaLlegada,
                        salida: fechaSalida
                    }));
                } else {
                    // Si no hay fechas válidas, limpiar el localStorage
                    localStorage.removeItem('fechasBusqueda');
                }
  
              // Mostrar SweetAlert de carga
              Swal.fire({
                  title: 'Buscando departamentos',
                  html: 'Por favor espera...',
                  allowOutsideClick: false,
                  didOpen: () => {
                      Swal.showLoading();
                  }
              });
  
              // Realizar la solicitud AJAX
              $.ajax({
                  url: "{{ route('filtrardepartamentos') }}",  
                  dataType: "json",
                  method:'GET',
                  data: {
                      _token: $('input[name="_token"]').val(),
                      lugar: lugar,  // Enviar el valor de lugar
                      cantidad_personas: cantidadPersonas,  // Enviar el valor de cantidad_personas
                      llegada: fechaLlegada,
                      salida: fechaSalida
                  },
                  success: function (response) {
                      // Cerrar el SweetAlert de carga
                      Swal.close();
                      
                      // Mostrar SweetAlert de búsqueda realizada
                      Swal.fire({
                          title: 'Búsqueda realizada',
                          text: 'Se han encontrado ' + response.data.length + ' departamentos',
                          icon: 'success',
                          timer: 2000,
                          showConfirmButton: false
                      });
                    
                      if (response.length === 0) {
                          $('#productosf').html('<p>No se encontraron departamentos que coincidan con los filtros.</p>');
                          return;
                      }
  
                      let htmlContent = '';
                      const noImageUrl = '/images/img/noimagen.jpg';
                      // Iteramos sobre los departamentos recibidos
                      response.data.forEach(function(item) {
                          htmlContent += `
                          <div class="flex flex-col relative w-full bg-white" data-aos="zoom-in-left">
                              <div class="bg-white product_container basis-4/5 flex flex-col justify-center relative border">
                                  <div>
                                      <div class="relative flex justify-center items-center h-max">
                                          <img 
                                              src="${item.imagen ? item.imagen : 'images/img/noimagen.jpg'}"
                                              alt="${item.producto}"
                                              onerror="this.src='${noImageUrl}';"
                                              class="transition ease-out duration-300 transform w-full aspect-square object-cover inset-0"
                                          />
                                      </div>
                                  </div>
                              </div>
                              
                              <a href="/producto/${item.id}" class="px-1 py-2 flex flex-col gap-3">
                                  <h2 class="block text-lg text-left overflow-hidden font-Homie_Bold text-[#002677]" 
                                      style="display: -webkit-box; -webkit-line-clamp: 2; text-overflow: ellipsis; -webkit-box-orient: vertical; height: 51px;">
                                      ${item.producto}
                                  </h2>
                              </a>
                          </div>`;
                      });
  
                      // Agregamos el contenido generado al contenedor
                      $('#productosf').html(htmlContent);
                  },
                  error: function (xhr, status, error) {
                      Swal.close();
                      Swal.fire({
                          title: 'Hubo un error al realizar la búsqueda',
                          text: error,
                          icon: 'error',
                      }); 
                  }
              });
        });
    });
  </script>
@stop

@stop
