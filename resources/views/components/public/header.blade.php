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

<div class="navigation shadow-xl px-5 overflow-y-auto !bg-[#191919]" style="z-index: 9999;">
    <button aria-label="hamburguer" type="button" class="hamburger" id="position" onclick="show()">
        <svg width="20" height="20" viewBox="0 0 20 20" fill="" xmlns="http://www.w3.org/2000/svg">
            <path d="M18 2L2 18M18 18L2 2" stroke="#FFFFFF" stroke-width="2.66667" stroke-linecap="round" />
        </svg>
    </button>

    <nav class="w-full h-full overflow-y-auto py-8 text-white font-PlusJakartaSans_Regular" x-data="{ openCatalogo: true, openSubMenu: null }">
        <ul class="space-y-1">
            <li>
                <a href="/"
                    class="font-medium text-base py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#BE913E] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Inicio
                    </span>
                </a>
            </li>

            <li>
                <a href="/catalogo"
                    class="font-medium text-base py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#BE913E] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Propiedades
                    </span>
                </a>
            </li>

            <li>
                <a href="{{ route('agentes') }}"
                    class="font-medium text-base py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#BE913E] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Agentes
                    </span>
                </a>
            </li>

            <li>
                <a href="/nosotros"
                    class="font-medium text-base py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#BE913E] inline-block w-3 h-3 mb-0.5 me-2"></i>
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
                    class="font-medium text-base py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#BE913E] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Blog
                    </span>
                </a>
            </li>

            <li>
                <a href="/contacto"
                    class="font-medium text-sm py-2 px-3 block hover:opacity-75 transition-opacity duration-300">
                    <span class="underline-this">
                        <i class="fa-solid fa-circle-arrow-right  text-[#BE913E] inline-block w-3 h-3 mb-0.5 me-2"></i>
                        Contacto
                    </span>
                </a>
            </li>

        </ul>
    </nav>
</div>


<header class="bg-[#191919] sticky top-0 z-50">
   
    <div>
        <div class="px-[5%] xl:px-[8%] flex flex-wrap justify-center md:justify-between bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] py-3">
            <div class="flex flex-row gap-2 items-center font-PlusJakartaSans_Regular text-sm">
                <a href="{{route('trabaja')}}"><h3>Trabaja con nosotros</h3></a><span class="px-1">|</span> <a href="{{route('vendeoalquila')}}"><h3>Vende o Alquila</h3></a>
            </div>

            <div class="hidden md:flex flex-row gap-2 text-[#ccc]">
                @if ($datosgenerales[0]->facebook)
                  <a target="_blank" class="relative flex flex-row justify-center items-center" href="{{ $datosgenerales[0]->facebook }}">
                    <div class="bg-black rounded-full p-3 absolute z-10"></div>
                    <svg class="z-20" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="">
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
                @if ($datosgenerales[0]->instagram)
                  <a target="_blank"  class="relative flex flex-row justify-center items-center" href="{{ $datosgenerales[0]->instagram }}">
                    <div class="bg-black rounded-full p-3 absolute z-10"></div>
                    <svg class="z-20" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
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
                
                @if ($datosgenerales[0]->linkedin)
                  <a target="_blank" class="relative flex flex-row justify-center items-center" href="{{ $datosgenerales[0]->linkedin }}">
                    <div class="bg-black rounded-full p-3 absolute z-10"></div>
                    <svg class="z-20" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
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

                @if ($datosgenerales[0]->tiktok)
                  <a target="_blank" class="relative flex flex-row justify-center items-center" href="{{ $datosgenerales[0]->tiktok }}">
                    <div class="bg-black rounded-full p-3 absolute z-10"></div>
                    <svg class="z-20" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
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

                @if ($datosgenerales[0]->twitter)
                  <a target="_blank" class="relative flex flex-row justify-center items-center" href="{{ $datosgenerales[0]->twitter }}">
                    <div class="bg-black rounded-full p-3 absolute z-10"></div>
                    <svg class="z-20" xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 32 32" fill="none">
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
            

            <div class="w-auto flex flex-col justify-center items-center">
                <a href="{{route('index')}}">
                  <img id="logo-realstate" class="w-[260px] 2xl:w-[300px]"
                    src="{{ asset($isIndex ? 'images/svg/rs_logorealstate.svg' : 'images/svg/rs_logorealstate.svg') }}" alt="realstate" />
                </a>
            </div>

            <div class="hidden lg:flex items-center justify-end">
                <div>
                  <nav id="menu-items"
                    class=" text-white text-base 2xl:text-lg font-PlusJakartaSans_Regular flex gap-5 xl:gap-10 items-center justify-center">
                    
                    <a href="/" class="font-medium">
                      <span class="underline-this tracking-wide">Inicio</span>
                    </a>
        
                    <a id="productos-link" href="{{ route('catalogo.all') }}" class="font-medium">
                      <span class="underline-this tracking-wide">Propiedades</span>
                    </a>
                    
                    <a href="{{ route('agentes') }}" class="font-medium">
                        <span class="underline-this tracking-wide">Agentes</span>
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

            <div id="menu-burguer" class="lg:hidden z-10 w-max">
                <img class="h-10 w-10 cursor-pointer" src="{{ asset('images/img/iconors.png') }}"
                  alt="menu hamburguesa" onclick="show()" />
            </div>
            {{-- <div class="flex justify-end md:w-auto md:justify-center items-center gap-1 md:gap-4"> --}}
                    
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

                    {{-- <a href="/contacto" class="hidden md:flex text-base 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 md:px-6 py-3 leading-normal rounded-xl">Contacto</a> --}}
                
                    {{-- <div class="flex justify-center items-center">
                        <div id="open-cart" class="relative inline-block cursor-pointer pr-3">
                            <span id="itemsCount"
                                class="bg-[#00897b] border border-[#73F7AD] text-xs font-medium text-white text-center px-[7px] py-[2px]  rounded-full absolute bottom-0 right-0 ml-3">0</span>
                            <img src="{{ asset('images/svg/bag_boost.svg') }}"
                                class="bg-white rounded-lg p-1 max-w-full h-auto cursor-pointer" />
                        </div>
                    </div> --}}
            {{-- </div> --}}
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

