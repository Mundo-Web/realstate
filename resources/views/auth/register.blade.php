@extends('components.public.matrix', ['pagina' => 'index'])
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
@section('content')
    
    <section class="px-[5%] xl:px-[8%] py-10 lg:py-16 bg-[#1A1A1A]">
        <div class="flex flex-col sm:flex-row lg:gap-20 relative bg-[#191919] rounded-3xl overflow-hidden bg-cover" style="background-image: url({{ asset('images/img/login_rs.png') }})">
            
            <div class="w-full sm:w-1/3 md:w-1/2"></div>   

            <div class="w-full sm:w-2/3 md:w-1/2 px-3 lg:px-10 2xl:px-14 bg-[#191919] bg-opacity-70 py-8 rounded-3xl flex flex-col gap-4">
                
                <div class="flex flex-col gap-1 text-center">
                    <h1 class="text-white font-PlusJakartaSans_Semibold text-4xl 2xl:text-5xl">Crear una cuenta</h1>
                    <p class="text-white text-base 2xl:text-lg font-PlusJakartaSans_Regular">
                        ¿Ya tienes una cuenta?
                        <a href="{{ route('login') }}"
                            class="text-white text-base font-PlusJakartaSans_Regular">Iniciar
                            Sesión</a>
                    </p>
                </div>

                <div class="w-full flex flex-col gap-5 p-[5%] shadow-lg bg-[#1A1A1A] rounded-2xl max-w-xl mx-auto">
                        <div class="">
                            <form method="POST" action="{{ route('register') }}" class="flex flex-col gap-5">
                                @csrf
                                @php
                                    if ($errors->any()) {
                                        // dd($errors);
                                    }
                                @endphp
        
                                <div>
                                    <input type="text" placeholder="Nombre completo" id="name" name="name"
                                        :value="old('name')" required autofocus
                                        class="bg-[#1A1A1A] px-4 py-3.5 w-full text-sm 2xl:text-lg font-PlusJakartaSans_Regular focus:border-[#262626] focus:ring-[#262626] text-white placeholder:text-white border border-[#262626] rounded-xl" />
                                    @error('name')
                                        <span class="text-red-500 text-sm">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div>
                                    <input type="text" placeholder="Correo electrónico" id="email" name="email"
                                        :value="old('email')" required
                                        class="bg-[#1A1A1A] px-4 py-3.5 w-full text-sm 2xl:text-lg font-PlusJakartaSans_Regular focus:border-[#262626] focus:ring-[#262626] text-white placeholder:text-white border border-[#262626] rounded-xl" />
                                    @error('email')
                                        <span class="text-red-500 text-sm">{{ $message }}</span>
                                    @enderror
                                </div>
        
                                <div class="relative w-full">
                                    <!-- Input -->
                                    <input type="password" placeholder="Contraseña" id="password" name="password" required
                                        autocomplete="new-password"
                                        class="bg-[#1A1A1A] px-4 py-3.5 w-full text-sm 2xl:text-lg font-PlusJakartaSans_Regular focus:border-[#262626] focus:ring-[#262626] text-white placeholder:text-white border border-[#262626] rounded-xl" />
        
                                    <!-- Imagen -->
                                    <img src="./images/svg/pass_eyes.svg" alt="password"
                                        class="absolute right-4 top-1/2 transform -translate-y-1/2 cursor-pointer ojopassWord" />
                                    @error('password')
                                        <span class="text-red-500 text-sm">{{ $message }}</span>
                                    @enderror
                                </div>
        
                                <div class="relative w-full">
                                    <!-- Input -->
                                    <input type="password" placeholder="Confirmar contraseña" id="password_confirmation"
                                        name="password_confirmation" required autocomplete="new-password"
                                        class="bg-[#1A1A1A] px-4 py-3.5 w-full text-sm 2xl:text-lg font-PlusJakartaSans_Regular focus:border-[#262626] focus:ring-[#262626] text-white placeholder:text-white border border-[#262626] rounded-xl" />
                                    <!-- Imagen -->
                                    <img src="./images/svg/pass_eyes.svg" alt="password"
                                        class="absolute right-4 top-1/2 transform -translate-y-1/2 cursor-pointer ojopassWord_confirmation" />
                                    @error('password_confirmation')
                                        <span class="text-red-500 text-sm">{{ $message }}</span>
                                    @enderror
                                </div>
        
                                <div class="flex gap-3">
                                    <input type="checkbox" id="acepto_terminos" class="w-4 h-4 rounded-sm text-[#C8A049] border-[#C8A049] focus:border-[#C8A049] ring-0 focus:ring-0" required />
                                    <label name="newsletter" id="newsletter" class="text-white font-normal text-sm 2xl:text-base font-PlusJakartaSans_Regular">
                                        Acepto la
                                        <span class="font-bold font-PlusJakartaSans_Semibold cursor-pointer open-modal"
                                            data-tipo='PoliticaPriv'> Política de
                                            Privacidad</span>
                                    </label>
                                </div>
        
                                <div class="px-4">
                                    <input type="submit" value="Crear Cuenta"
                                        class="w-full flex text-base 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 md:px-6 py-3 leading-normal rounded-xl" />
                                </div>
                            </form>
                            {{-- <x-validation-errors class="mt-4" /> --}}
                        </div>
                </div>
                
            </div>

        </div>
    </section>


  <div id="modaalpoliticas" class="modal modalbanner">
    <div class="p-2" id="modal-content">
      <h1 id="modal-title">MODAL POLITICAS</h1>
      <div id="modal-body-content"></div>
    </div>
  </div>

  <script>
    const politicas = @json($politicas);
    const terminos = @json($terminos);

    $(document).on('click', '.open-modal', function() {
      var tipo = $(this).data('tipo');
      var title = '';
      var content = '';
      console.log(politicas)
      console.log(terminos)

      if (tipo == 'PoliticaPriv') {
        title = 'Política de Privacidad';
        content = politicas.content;
      } else if (tipo == 'terminosUso') {
        title = 'Términos y condiciones';
        content = terminos.content;
      }

      $('#modal-title').text(title);
      $('#modal-body-content').html(content);

      $('#modaalpoliticas').modal({
        show: true,
        fadeDuration: 100
      });
    });

    $(document).on("click", '.ojopassWord', function() {


      var input = $(this).siblings('input');

      // Alterna el tipo de entrada entre 'password' y 'text'
      if (input.attr('type') === 'password') {
        input.attr('type', 'text');
      } else {
        input.attr('type', 'password');
      }

    })
    $(document).on("click", '.ojopassWord_confirmation', function() {
      var input = $(this).siblings('input');

      // Alterna el tipo de entrada entre 'password' y 'text'
      if (input.attr('type') === 'password') {
        input.attr('type', 'text');
      } else {
        input.attr('type', 'password');
      }


    })
  </script>

@stop
