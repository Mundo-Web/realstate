@php
    $pagina = Route::currentRouteName();
    $isIndex = $pagina == 'index';
@endphp


<style>
    .limited-text {
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;  
    overflow: hidden;
    text-overflow: ellipsis;
    }
    
    nav a .underline-this {
        position: relative;
        overflow: hidden;
        display: inline-block;
        text-decoration: none;
        /* padding-bottom: 4px; */
    }

    nav a .underline-this::before,
    nav a .underline-this::after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 2px;
        background-color: #BE913E;
        transform: scaleX(0);
        transition: transform 0.3s ease;
    }

    nav a .underline-this::after {
        transform-origin: right;
    }

    nav a:hover .underline-this::before,
    nav a:hover .underline-this::after {
        transform: scaleX(1);
    }

    nav a:hover .underline-this::before {
        transform-origin: left;
    }

    nav li {
        padding: 0 !important;
        margin: 0 !important;
    }

    .jquery-modal.blocker.current {
        z-index: 30;
    }
</style>

<style>
    .bg-image {
        background-image: url('');
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        z-index: 900;
    }

    .prose{
        max-width: 100%!important;
    }
</style>

<div class="navigation shadow-xl px-5 overflow-y-auto" style="z-index: 9999; background-color: #fff !important ">
    <button aria-label="hamburguer" type="button" class="hamburger" id="position" onclick="show()">
        <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M18 2L2 18M18 18L2 2" stroke="#272727" stroke-width="2.66667" stroke-linecap="round" />
        </svg>
    </button>

    <nav class="w-full h-full overflow-y-auto py-8" x-data="{ openCatalogo: true, openSubMenu: null }">
        <ul class="space-y-1">
            <li>
                <a href="/"
                    class="text-[#272727] font-medium font-FixelText_Bold text-sm py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#006258] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Inicio
                    </span>
                </a>
            </li>

            <li>
                <a href="/catalogo"
                    class="text-[#272727] font-medium font-FixelText_Bold text-sm py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#006258] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Propiedades
                    </span>
                </a>
            </li>

            <li>
                <a href="/nosotros"
                    class="text-[#272727] font-medium font-FixelText_Bold text-sm py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#006258] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Nosotros
                    </span>
                </a>
            </li>

            {{-- <li>
                <a @click="openCatalogo = !openCatalogo" href="javascript:void(0)"
                    class="text-[#272727] flex justify-between items-center font-medium font-poppins text-sm py-2 px-3 hover:opacity-75 transition-opacity duration-300 {{ $pagina == 'catalogo' ? 'text-[#FF5E14]' : '' }}">
                    <span class="underline-this">
                        <svg class="inline-block w-3 h-3 mb-0.5 me-2 text-gray-400 dark:text-gray-500 group-hover:text-blue-600 dark:group-hover:text-blue-500"
                            aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor"
                            viewBox="0 0 18 18">
                            <path
                                d="M15.977.783A1 1 0 0 0 15 0H3a1 1 0 0 0-.977.783L.2 9h4.239a2.99 2.99 0 0 1 2.742 1.8 1.977 1.977 0 0 0 3.638 0A2.99 2.99 0 0 1 13.561 9H17.8L15.977.783ZM6 2h6a1 1 0 1 1 0 2H6a1 1 0 0 1 0-2Zm7 5H5a1 1 0 0 1 0-2h8a1 1 0 1 1 0 2Z" />
                            <path
                                d="M1 18h16a1 1 0 0 0 1-1v-6h-4.439a.99.99 0 0 0-.908.6 3.978 3.978 0 0 1-7.306 0 .99.99 0 0 0-.908-.6H0v6a1 1 0 0 0 1 1Z" />
                        </svg>
                        PRODUCTOS
                    </span>
                    <span :class="{ 'rotate-180': openCatalogo }"
                        class="ms-1 inline-block transform transition-transform duration-300">↓</span>
                </a>
                <ul x-show="openCatalogo" x-transition class="ml-3 mt-1 space-y-1 border-l border-gray-300">
                    <li>
                        <a href="{{ route('Catalogo.jsx') }}"
                            class="text-[#272727] flex items-center py-2 px-3 hover:opacity-75 transition-opacity duration-300">
                            <span class="underline-this">
                                Todas las categorías

                            </span>

                        </a>
                        @if (count($categorias) > 0)


                            <div x-data="{ openCategories: {} }">
                                @foreach ($categorias as $item)
                                    <div class="text-[#272727] flex items-center py-2 px-3 hover:opacity-75 transition-opacity duration-300"
                                        @click="openCategories[{{ $item->id }}] = !openCategories[{{ $item->id }}]">
                                        <span>{{ $item->name }}</span>
                                        <svg class="w-5 h-5 transform transition-transform"
                                            :class="{ 'rotate-180': openCategories[{{ $item->id }}] }"
                                            fill="none" stroke="currentColor" viewBox="0 0 24 24"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                                                d="M19 9l-7 7-7-7"></path>
                                        </svg>
                                    </div>

                                    <div x-show="openCategories[{{ $item->id }}]"
                                        class="p-2  border-t-0 border-gray-200 ">
                                        @foreach ($item->subcategories as $subitem)
                                            <label for="item-category-{{ $subitem->id }}"
                                                class="text-custom-border flex flex-row gap-2 items-center cursor-pointer">
                                                <a href="/catalogo?subcategoria={{ $subitem->id }}"
                                                    id="item-category-{{ $subitem->id }}" name="category"
                                                    class="rounded-sm border-none text-[#272727] flex items-center py-2 px-3 hover:opacity-75 transition-opacity duration-300"
                                                    value="{{ $subitem->id }}">
                                                    {{ $subitem->name }}
                                                </a>
                                            </label>
                                        @endforeach
                                    </div>
                                @endforeach
                            </div>

                        @endif
                    </li>

                </ul>
            </li> --}}

            <li>
                <a href="/blog/0"
                    class="text-[#272727] font-medium font-FixelText_Bold text-sm py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#006258] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Blog
                    </span>
                </a>
            </li>

            <li>
                <a href="/contacto"
                    class="text-[#272727] font-medium font-FixelText_Bold text-sm py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#006258] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Contacto
                    </span>
                </a>
            </li>

            {{-- @if ($tags->count() > 0)
                @foreach ($tags as $item)
                    <li>
                        <a href="/catalogo?tag={{ $item->id }}"
                            class="text-[#272727] font-medium font-poppins text-sm py-2 px-3 block hover:opacity-75 transition-opacity duration-300 {{ $pagina == 'contacto' ? 'text-[#FF5E14]' : '' }}">
                            <span class="underline-this  ">
                                {{ $item->name }} </span>
                        </a>

                    </li>
                @endforeach
            @endif --}}
        </ul>
    </nav>
</div>


<header class="bg-[#191919]">
   
    <div>
        <div class="px-[5%] xl:px-[8%] flex flex-wrap justify-center md:justify-between bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] py-3">
            <div class="flex flex-row gap-2 items-center font-PlusJakartaSans_Regular text-sm">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                    <path d="M11.3481 17.8062C10.9867 18.1445 10.5037 18.3337 10.0009 18.3337C9.49817 18.3337 9.01517 18.1445 8.65375 17.8062C5.34418 14.6887 0.908967 11.2061 3.07189 6.15004C4.24136 3.41629 7.04862 1.66699 10.0009 1.66699C12.9532 1.66699 15.7605 3.41629 16.93 6.15004C19.0902 11.1997 14.6658 14.6994 11.3481 17.8062Z" stroke="#141414" stroke-width="1.25"/>
                    <path d="M12.9163 9.16667C12.9163 10.7775 11.6105 12.0833 9.99967 12.0833C8.38884 12.0833 7.08301 10.7775 7.08301 9.16667C7.08301 7.55583 8.38884 6.25 9.99967 6.25C11.6105 6.25 12.9163 7.55583 12.9163 9.16667Z" stroke="#141414" stroke-width="1.25"/>
                </svg>
                <h3>Av. Javier Prado 2156 San Isidro</h3>
            </div>

            <div class="md:flex flex-wrap gap-6 items-center font-PlusJakartaSans_Regular text-sm hidden">
                <div class="flex flex-row gap-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                        <path d="M3.14932 9.95233C2.3593 8.57474 1.97784 7.44989 1.74783 6.30967C1.40765 4.62331 2.18614 2.976 3.47578 1.92489C4.02084 1.48064 4.64566 1.63243 4.96797 2.21066L5.69562 3.51609C6.27238 4.5508 6.56075 5.06815 6.50355 5.61665C6.44636 6.16515 6.05744 6.61188 5.27961 7.50534L3.14932 9.95233ZM3.14932 9.95233C4.74839 12.7406 7.25783 15.2514 10.0493 16.8523M10.0493 16.8523C11.4269 17.6423 12.5517 18.0238 13.692 18.2538C15.3783 18.594 17.0256 17.8155 18.0767 16.5258C18.521 15.9808 18.3692 15.356 17.791 15.0337L16.4855 14.306C15.4508 13.7292 14.9335 13.4409 14.385 13.4981C13.8365 13.5552 13.3897 13.9442 12.4963 14.722L10.0493 16.8523Z" stroke="#141414" stroke-width="1.25" stroke-linejoin="round"/>
                    </svg>
                    <h3>(+51) 926 811 809 <span class="px-1">|</span> 932 073 345</h3>
                </div>
                <div class="flex flex-row gap-2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 20 20" fill="none">
                        <path d="M1.66797 5L7.42882 8.26414C9.55264 9.4675 10.45 9.4675 12.5738 8.26414L18.3346 5" stroke="#141414" stroke-width="1.25" stroke-linejoin="round"/>
                        <path d="M1.68111 11.23C1.73559 13.7847 1.76283 15.0619 2.70544 16.0082C3.64804 16.9543 4.95991 16.9872 7.58366 17.0532C9.20072 17.0938 10.8019 17.0938 12.419 17.0532C15.0427 16.9872 16.3546 16.9543 17.2972 16.0082C18.2398 15.0619 18.2671 13.7847 18.3215 11.23C18.3391 10.4086 18.3391 9.59208 18.3215 8.77066C18.2671 6.21604 18.2398 4.93873 17.2972 3.99254C16.3546 3.04635 15.0427 3.01339 12.419 2.94747C10.8019 2.90683 9.20072 2.90683 7.58365 2.94746C4.95991 3.01338 3.64804 3.04633 2.70543 3.99253C1.76282 4.93873 1.73559 6.21603 1.6811 8.77066C1.66359 9.59208 1.66359 10.4086 1.68111 11.23Z" stroke="#141414" stroke-width="1.25" stroke-linejoin="round"/>
                    </svg>
                    <h3>mo-realstate@mail.com</h3>
                </div>
            </div>
        </div>
        <div id="header-menu" class="py-3.5 flex justify-between gap-3 w-full px-[5%] xl:px-[8%] text-[17px] relative items-center">
            <div id="menu-burguer" class="lg:hidden z-10 w-max">
                <img class="h-10 w-10 cursor-pointer" src="{{ asset('images/img/menu_hamburguer.png') }}"
                  alt="menu hamburguesa" onclick="show()" />
            </div>

            <div class="w-auto flex flex-col justify-center items-center">
                <a href="{{route('index')}}">
                  <img id="logo-realstate" class="w-[200px] 2xl:w-[250px]"
                    src="{{ asset($isIndex ? 'images/svg/rs_logorealstate.svg' : 'images/svg/rs_logorealstate.svg') }}" alt="realstate" />
                </a>
            </div>

            <div class="hidden lg:flex items-center justify-center">
                <div>
                  <nav id="menu-items"
                    class=" text-white text-base 2xl:text-lg font-PlusJakartaSans_Regular flex gap-5 xl:gap-10 items-center justify-center">
                    
                    <a href="/" class="font-medium">
                      <span class="underline-this tracking-wide">Inicio</span>
                    </a>
        
                    <a id="productos-link" href="{{ route('catalogo.all') }}" class="font-medium">
                      <span class="underline-this tracking-wide">Propiedades</span>
                    </a>
        
                    <a href="/nosotros" class="font-medium">
                      <span class="underline-this tracking-wide">Nosotros</span>
                    </a>

                    <a href="/blog/0" class="font-medium">
                        <span class="underline-this tracking-wide">Blog</span>
                      </a>
        
                    <a href="/contacto" class="font-medium">
                      <span class="underline-this tracking-wide">Contacto</span>
                    </a>
        
                  </nav>
                </div>
            </div>

            <div class="flex justify-end md:w-auto md:justify-center items-center gap-1 md:gap-4">
                    
                    {{-- @if (Auth::user() == null)
                      <a class="text-sm font-FixelText_Semibold tracking-wide border-2 text-white px-2.5 md:px-4 py-2 md:py-3.5 leading-none rounded-full md:rounded-2xl" href="{{ route('login') }}">
                        <span class="hidden md:flex">Iniciar sesion</span>
                        <div class="md:hidden"><i class="fa-solid fa-user text-xl"></i></div>
                      </a>
                    @else
                      
                      <div class="relative md:inline-flex font-FixelText_Semibold" x-data="{ open: false }">
                          <button class="inline-flex justify-center items-center group" aria-haspopup="true"
                              @click.prevent="open = !open" :aria-expanded="open">
                              <div class="flex items-center truncate">
                                <span id="usernamelogin" class="hidden md:flex text-white  truncate ml-2 text-sm font-medium dark:text-slate-300 group-hover:opacity-75 dark:group-hover:text-slate-200">
        
                                </span>
                                
                                <a class="flex md:hidden text-sm font-FixelText_Semibold tracking-wide border-2 text-white px-2.5 md:px-4 py-2 md:py-3.5 leading-none rounded-full md:rounded-2xl" href="{{ route('login') }}">
                                    <div><i class="fa-solid fa-user text-xl"></i></div>
                                </a>
                                
                                <i class="hidden md:flex fas fa-angle-down ms-2 text-white before:hidden before:md:flex"></i>

                              </div>
                          </button>
                          <div
                              class="origin-top-right z-10 text-[#73F7AD] bg-[#00897b] absolute top-full min-w-44  dark:bg-slate-800 border border-slate-200 dark:border-slate-700 py-1.5 rounded shadow-lg overflow-hidden mt-1"
                              @click.outside="open = false" @keydown.escape.window="open = false" x-show="open">
                              <ul>
                              <li class=" hover:bg-[#00897b] hover:text-white transition duration-100 ease-in">
                                  <a class="font-medium text-sm  flex items-center py-1 px-3 " href="/micuenta" @click="open = false"
                                  @focus="open = true" @focusout="open = false">Mi
                                  Cuenta</a>
                              </li>
      
                              <li class=" hover:bg-[#00897b] hover:text-white transition duration-100 ease-in">
                                  <form method="POST" action="{{ route('logout') }}" class="m-0" x-data>
                                  @csrf
                                  <button type="submit" class="font-medium text-sm  flex items-center py-1 px-3"
                                      @click.prevent="$root.submit(); open = false">
                                      {{ __('Cerrar sesión') }}
                                  </button>
                                  </form>
                              </li>
                              </ul>
                          </div>
                      </div>

                    @endif --}}

                    {{-- @else
                      <div class="relative  hidden md:inline-flex" x-data="{ open: false }">
                        <button class="px-3 py-5 inline-flex justify-center items-center group" aria-haspopup="true"
                          @click.prevent="open = !open" :aria-expanded="open">
                          <div class="flex items-center truncate">
                            <span id="username"
                              class="truncate ml-2 text-sm font-medium dark:text-slate-300 group-hover:opacity-75 dark:group-hover:text-slate-200 text-[#272727] ">{{ Auth::user()->name }}</span>
                            <svg class="w-3 h-3 shrink-0 ml-1 fill-current text-slate-400" viewBox="0 0 12 12">
                              <path d="M5.9 11.4L.5 6l1.4-1.4 4 4 4-4L11.3 6z" />
                            </svg>
                          </div>
                        </button>
                        <div
                          class="origin-top-right z-10 absolute top-full min-w-44 bg-white dark:bg-slate-800 border border-slate-200 dark:border-slate-700 py-1.5 rounded shadow-lg overflow-hidden mt-1"
                          @click.outside="open = false" @keydown.escape.window="open = false" x-show="open">
                          <ul>
                            <li class="hover:bg-gray-100">
                              <a class="font-medium text-sm text-black flex items-center py-1 px-3"
                                href="{{ route('micuenta') }}" @click="open = false" @focus="open = true"
                                @focusout="open = false">Mi Cuenta</a>
                            </li>
            
                            <li class="hover:bg-gray-100">
                              <form method="POST" action="{{ route('logout') }}" x-data>
                                @csrf
                                <button type="submit" class="font-medium text-sm text-black flex items-center py-1 px-3"
                                  @click.prevent="$root.submit(); open = false">
                                  {{ __('Cerrar sesión') }}
                                </button>
                              </form>
                            </li>
                          </ul>
                        </div>
                      </div>
                    @endif --}}

                    <a href="/contacto" class="hidden md:flex text-base 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 md:px-6 py-3 leading-normal rounded-xl">Contacto</a>
                
                    {{-- <div class="flex justify-center items-center">
                        <div id="open-cart" class="relative inline-block cursor-pointer pr-3">
                            <span id="itemsCount"
                                class="bg-[#00897b] border border-[#73F7AD] text-xs font-medium text-white text-center px-[7px] py-[2px]  rounded-full absolute bottom-0 right-0 ml-3">0</span>
                            <img src="{{ asset('images/svg/bag_boost.svg') }}"
                                class="bg-white rounded-lg p-1 max-w-full h-auto cursor-pointer" />
                        </div>
                    </div> --}}
            </div>
        </div>
    </div>    
    <div class="flex justify-end relative">
        <div class="fixed bottom-[36px] z-[10] right-[15px] md:right-[25px]">
            <a href="https://api.whatsapp.com/send?phone={{ $datosgenerales[0]->whatsapp }}&text={{ $datosgenerales[0]->mensaje_whatsapp }}"
                class="">
                <img src="{{ asset('images/img/WhatsApp.png') }}" alt="whatsapp" class="w-20" />
            </a>
        </div>
    </div>

</header>


<div id="cart-modal"
    class="bag !absolute top-0 right-0 md:w-[450px] cartContainer border shadow-2xl  !rounded-sm !p-0 !z-30"
    style="display: none">
    <div class="p-4 flex flex-col h-[90vh] justify-between gap-2">
        <div class="flex flex-col">
            <div class="flex justify-between ">
                <h2 class="font-semibold font-FixelText_Semibold text-[28px] text-[#151515] pb-5">Carrito</h2>
                <div id="close-cart" class="cursor-pointer">
                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5"
                        stroke="currentColor" class="w-6 h-6">
                        <path stroke="#272727" stroke-linecap="round" stroke-linejoin="round"
                            d="M6 18 18 6M6 6l12 12" />
                    </svg>
                </div>
            </div>
            <div class="overflow-y-scroll h-[calc(90vh-200px)] scroll__carrito">
                <table class="w-full">
                    <tbody id="itemsCarrito">
                    </tbody>
                </table>
            </div>
        </div>
        <div class="flex flex-col gap-2 pt-2">
            <div class="text-[#111111]  text-xl flex justify-between items-center">
                <p class="font-FixelText_Bold font-semibold">Total</p>
                <p class="font-FixelText_Bold font-semibold" id="itemsTotal">$ 0.00</p>
            </div>
            <div>
                <a href="/carrito"
                    class="font-normal font-FixelText_Semibold text-lg bg-[#00897B]  py-3 px-5 rounded-2xl text-white cursor-pointer w-full inline-block text-center">Ir al
                    carrito</a>
            </div>
        </div>
    </div>
</div>

<script>
    $('#open-cart').on('click', () => {
        $('#cart-modal').modal({
            showClose: false,
            fadeDuration: 100
        })
    })
    $('#close-cart').on('click', () => {
        $('.jquery-modal.blocker.current').trigger('click')
    })
</script>

<script>
  @auth
  $(document).ready(function() {
    let name = "{{ Auth::user()->name }}" ?? ''
    let lastname = "{{ Auth::user()->lastname }}" ?? ''
    console.log()
    lastname = lastname.toLowerCase()
    let [firstName, SecondName] = name.split(' ')
    let [firstLName, SecondLName] = lastname.split(' ')


    firstLName = firstLName ? firstLName.charAt(0).toUpperCase() + firstLName.slice(1) : ''
    SecondLName = SecondLName ? SecondLName.charAt(0).toUpperCase() + SecondLName.slice(1) : ''

    

    $('#usernamelogin').text(
      `${firstName ? firstName : ''} ${SecondName ? SecondName : ''} ${firstLName ? firstLName : ''} ${SecondLName ? SecondLName : ''}`
    )

  })
  @endauth
</script>


<script>
    let clockSearch;

    function openSearch() {
        document.getElementById("myOverlay").style.display = "block";

    }

    function closeSearch() {
        document.getElementById("myOverlay").style.display = "none";
    }

    function imagenError(image) {
        image.onerror = null; // Previene la posibilidad de un bucle infinito si la imagen de error también falla
        image.src = '/images/img/noimagen.jpg'; // Establece la imagen de error
    }

    $('#buscarproducto').keyup(function() {

        clearTimeout(clockSearch);
        var query = $(this).val().trim();

        if (query !== '') {
            clockSearch = setTimeout(() => {
                $.ajax({
                    url: '{{ route('buscar') }}',
                    method: 'GET',
                    data: {
                        query: query
                    },
                    success: function(data) {
                        var resultsHtml = '';
                        var url = '{{ asset('') }}';
                        data.forEach(function(result) {
                            const price = Number(result.precio) || 0
                            const discount = Number(result.descuento) || 0
                            resultsHtml += `<a href="/producto/${result.id}">
              <div class="w-full flex flex-row py-3 px-3 hover:bg-slate-200">
                <div class="w-[15%]">
                  <img class="w-20 rounded-md" src="${url}${result.imagen}" onerror="imagenError(this)" />
                </div>
                <div class="flex flex-col justify-center w-[60%] px-2 line-clamp-2">
                  <h2 class="text-left text-[12px] line-clamp-2">${result.producto}</h2>
                </div>
                <div class="flex flex-col justify-center w-[15%]">
                  <p class="text-right w-max text-[14px] ">S/ ${discount > 0 ? discount.toFixed(2) : price.toFixed(2)}</p>
                  ${discount > 0 ? `<p class="text-[12px] text-right line-through text-slate-500 w-max">S/ ${price.toFixed(2)}</p>` : ''}
                </div>
              </div>
            </a>`;
                        });

                        $('#resultados').html(resultsHtml);
                    }
                });

            }, 300);

        } else {
            $('#resultados').empty();
        }
    });
</script>

<script>
    function mostrarTotalItems() {
        let articulos = Local.get('carrito')
        let contarArticulos = articulos.reduce((total, articulo) => {
            return total + articulo.cantidad;
        }, 0);

        $('#itemsCount').text(contarArticulos)
    }

    $(document).ready(function() {
        if ({{ $isIndex ? 1 : 0 }}) {
            $(window).scroll(function() {
                var scroll = $(window).scrollTop();
                var categoriasOffset = $('#categorias').offset().top;

                const headerMenu = $('#header-menu')
                const logo = $('#logo-decotab')
                const items = $('#menu-items')
                const username = $('#username')
                const burguer = $('#menu-burguer')
                if (scroll >= categoriasOffset) {
                    headerMenu
                        .removeClass('absolute bg-transparent text-white')
                        .addClass('fixed top-0 bg-white shadow-lg');
                    items
                        .removeClass('text-white')
                        .addClass('text-[#272727]')
                    username
                        .removeClass('text-white')
                        .addClass('text-[#272727]')
                    // burguer
                    //   .removeClass('absolute')
                    //   .addClass('fixed')
                    logo.attr('src', 'images/svg/logo_decotab_header.svg')
                    $('#header-menu svg').attr('stroke', '#272727');
                } else {
                    headerMenu
                        .removeClass('fixed bg-white shadow-lg')
                        .addClass('absolute bg-transparent text-white');
                    items
                        .removeClass('text-[#272727]')
                        .addClass('text-white')
                    username
                        .removeClass('text-[#272727]')
                        .addClass('text-white')
                    // burguer
                    //   .removeClass('fixed')
                    //   .addClass('absolute')
                    logo.attr('src', '')
                    $('#header-menu svg').attr('stroke', 'white');
                }
            });
        }
        mostrarTotalItems()
    })
</script>
<script src="{{ asset('js/storage.extend.js') }}"></script>


<script>
    var articulosCarrito = []
    articulosCarrito = Local.get('carrito') || [];

    function addOnCarBtn(id, isCombo) {
        let prodRepetido = articulosCarrito.map(item => {
            if (item.id === id && item.isCombo == isCombo) {

                item.cantidad += 1;
            }
            return item;
        });

        Local.set('carrito', articulosCarrito);
        limpiarHTML();
        PintarCarrito();
    }

    function deleteOnCarBtn(id, isCombo) {
        let prodRepetido = articulosCarrito.map(item => {
            if (item.id === id && item.isCombo == isCombo && item.cantidad > 0) {

                item.cantidad -= 1;
            }
            return item;
        });

        Local.set('carrito', articulosCarrito);
        limpiarHTML();
        PintarCarrito();
    }

    function deleteItem(id, isCombo) {

        let idCount = {};
        let duplicates = [];
        articulosCarrito.forEach(item => {
            if (idCount[item.id]) {
                idCount[item.id]++;
            } else {
                idCount[item.id] = 1;
            }
        });

        for (let id in idCount) {
            if (idCount[id] > 1) {
                duplicates.push(id);
            }
        }

        if (duplicates.length > 0) {
            console.log('Duplicate IDs found:', duplicates);
            let index = articulosCarrito.findIndex(item => item.id === id && item.isCombo == isCombo);
            if (index > -1) {
                articulosCarrito.splice(index, 1);
            }
        } else {
            articulosCarrito = articulosCarrito.filter(objeto => objeto.id !== id);

        }

        // return

        Local.set('carrito', articulosCarrito)
        limpiarHTML()
        PintarCarrito()
    }

    function limpiarHTML() {
        //forma lenta 
        /* contenedorCarrito.innerHTML=''; */
        $('#itemsCarrito').html('')
        $('#itemsCarritoCheck').html('')


    }
    var appUrl = "{{ env('APP_URL') }}";

    $(document).ready(function() {

        PintarCarrito()

        $('#buscarblog').keyup(function() {

            var query = $(this).val().trim();

            if (query !== '') {
                $.ajax({
                    url: '{{ route('buscarblog') }}',
                    method: 'GET',
                    data: {
                        query: query
                    },
                    success: function(data) {
                        var resultsHtml = '';
                        var url = '{{ asset('') }}';
                        data.forEach(function(result) {
                            resultsHtml +=
                                '<a class="z-50" href="/post/' + result.id +
                                '"> <div class=" z-50 w-full flex flex-row py-2 px-3 hover:bg-slate-200"> ' +
                                ' <div class="w-[30%]"><img class="w-full rounded-md" src="' +
                                url + result.url_image + result.name_image +
                                '" /></div>' +
                                ' <div class="flex flex-col justify-center w-[80%] pl-3"> ' +
                                ' <h2 class="text-left line-clamp-1">' + result
                                .title +
                                '</h2> ' +
                                '</div> ' +
                                '</div></a>';
                        });

                        $('#resultadosblog').html(resultsHtml);
                    }
                });
            } else {
                $('#resultadosblog').empty();
            }
        });

        // document.addEventListener('click', function(event) {
        //     var input = document.getElementById('buscarproducto');
        //     var resultados = document.getElementById('resultados');
        //     var isClickInsideInput = input.contains(event.target);
        //     var isClickInsideResultados = resultados.contains(event.target);

        //     if (!isClickInsideInput && !isClickInsideResultados) {
        //         input.value = '';
        //         $('#resultados').empty();
        //     }
        // });
    });
</script>

<script>
    document.addEventListener('click', function(event) {
        var input = document.getElementById('buscarblog');
        var resultados = document.getElementById('resultadosblog');

        // Check if both elements exist
        if (input && resultados) {
            var isClickInsideInput = input.contains(event.target);
            var isClickInsideResultados = resultados.contains(event.target);

            if (!isClickInsideInput && !isClickInsideResultados) {
                input.value = '';
                $('#resultadosblog').empty();
            }
        }
    });
</script>

<script>
    $(document).ready(function() {
        $(document).on('mouseenter', '.other-class', function() {
            console.log('detected hover');
            cerrar()
        });
    })

    const categorias = @json($categorias);
    var activeHover = false
    document.getElementById('productos-link').addEventListener('mouseenter', function(event) {
        if (event.target === this) {
            // mostrar submenú de productos 
            let padre = document.getElementById('productos-link-h');
            let divcontainer = document.createElement('div');
            divcontainer.id = 'productos-link-container';
            divcontainer.className =
                'absolute top-[90px] left-1/2 transform -translate-x-1/2 m-0 flex flex-row bg-white z-[60] rounded-lg shadow-lg gap-4 p-4 w-[80vw] overflow-x-auto';

            divcontainer.addEventListener('mouseenter', function() {
                this.addEventListener('mouseleave', cerrar);
            });

            categorias.forEach(element => {
                if (element.subcategories.length == 0) return;
                let ul = document.createElement('ul');
                ul.className =
                    'text-[#006BF6] font-bold font-poppins text-md py-2 px-3    duration-300 w-full whitespace-nowrap gap-4';

                ul.innerHTML = element.name;
                element.subcategories.forEach(subcategoria => {
                    let li = document.createElement('li');
                    li.style.setProperty('padding-left', '4px', 'important');
                    li.style.setProperty('padding-right', '2px', 'important');

                    li.className =
                        'text-[#272727] px-2 rounded-sm cursor-pointer font-normal font-poppins text-[13px] py-2 px-3 hover:bg-blue-200 hover:opacity-75 transition-opacity duration-300 w-full whitespace-nowrap';
                    // Crear el elemento 'a'
                    let a = document.createElement('a');
                    a.href = `/catalogo?subcategoria=${subcategoria.id}`;
                    a.innerHTML = subcategoria.name;
                    a.className = ' w-full h-full'; // Para que el enlace ocupe todo el 'li'

                    // Añadir el elemento 'a' al 'li'
                    li.appendChild(a);
                    ul.appendChild(li);
                });
                divcontainer.appendChild(ul);
            });



            // limpia sus hijos antes de agregar los nuevos
            if (!activeHover) {
                padre.appendChild(divcontainer);
                activeHover = true;
            }
        }
    });

    function cerrar() {
        console.log('cerrando')
        let padre = document.getElementById('productos-link-h');
        activeHover = false
        padre.innerHTML = '';
    }

    function agregarAlCarrito(item, cantidad, servicios) {
        let costototal = costoTotalFinal;
        let checkin = $('#arrival-date').data('checkin');
        let checkout = $('#arrival-date').data('checkout');
       
        $.ajax({

            url: `{{ route('carrito.buscarProducto') }}`,
            method: 'POST',
            data: {
                _token: $('input[name="_token"]').val(),
                id: item,
                cantidad,
                servicios

            },
            success: function(success) {
                let {
                    producto,
                    id,
                    descuento,
                    precio,
                    imagen,
                    preciolimpieza,
                    color,
                    precio_reseller
                } = success.data
                let is_reseller = success.is_reseller


                if (is_reseller) {
                    descuento = precio_reseller
                }

                let cantidad = Number(success.cantidad)
                let services = success.servicios
                let nombresServicios = success.nombresServicios
                
                let detalleProducto = {
                    id,
                    producto,
                    isCombo: false,
                    descuento,
                    preciolimpieza,
                    precio,
                    imagen,
                    cantidad,
                    checkin,
                    checkout,
                    costototal,
                    color,
                    services,
                    nombresServicios

                }
                let existeArticulo = articulosCarrito.some(item => item.id === detalleProducto.id && item
                    .isCombo ==
                    false, )
                if (existeArticulo) {
                    //sumar al articulo actual
                   
                    // const prodRepetido = articulosCarrito.map(item => {
                    //    if (item.id === detalleProducto.id && item.isCombo == false) {
                    //        item.cantidad += Number(detalleProducto.cantidad);     
                    //    }
                    //    return item; // retorna los objetos que no son duplicados 
                    // });
                    articulosCarrito = articulosCarrito.filter(item => !(item.id === detalleProducto.id && item.isCombo == false));
                    articulosCarrito = [...articulosCarrito, detalleProducto];

                    tipoalerta = "warning";
                    titulo = "Reserva actualizada";
                    mensaje = "Ya existe una reserva en proceso para esta propiedad";
                  
                } else {
                   
                    articulosCarrito = [...articulosCarrito, detalleProducto]
                    tipoalerta = "success"
                    titulo = "Reserva agregada";
                    mensaje = "Reserva se agregó correctamente al carrito";
                }

                // console.log(articulosCarrito);   

                Local.set('carrito', articulosCarrito)
                let itemsCarrito = $('#itemsCarrito')
                let ItemssubTotal = $('#ItemssubTotal')
                let itemsTotal = $('#itemsTotal')
                limpiarHTML()
                PintarCarrito()
                mostrarTotalItems()
                

                Notify.add({
                    icon: '/images/svg/Boost.svg',
                    title: titulo,
                    body: mensaje,
                    type: tipoalerta,
                })

                /* Swal.fire({

                  icon: "success",
                  title: `Producto agregado correctamente`,
                  showConfirmButton: true


                }); */
            },
            error: function(error) {
                console.log(error)
            }

        })
    }
    
    $(document).on('click', '#btnAgregarCarritoPr', function() {
        let url = window.location.href;
        let partesURL = url.split('/');
        let productoEncontrado = partesURL.find(parte => parte === 'producto');
       
        let checkin = $('#arrival-date').data('checkin');
        let checkout = $('#arrival-date').data('checkout');

        if (!checkin || !checkout) {
            Swal.fire({
                title: 'Selección Fallida',
                text: 'Por favor, selecciona un rango de fechas válido.',
                icon: 'warning',
            });
            return;
        }

        let item
        let cantidad
        
        item = partesURL[partesURL.length - 1]
        //cantidad = Number($('#cantidadSpan span').text())
        cantidad = 1;
        item = $(this).data('id')

        try {
            agregarAlCarrito(item, cantidad, serviciosExtras)

        } catch (error) {
            console.log(error)

        }
    })

    $(document).on('click', '#btnAgregarCarrito', function() {

        let item = $(this).data('id')

        let cantidad = 1
        try {
            agregarAlCarrito(item, cantidad)

        } catch (error) {
            console.log(error)

        }
    })

</script>

