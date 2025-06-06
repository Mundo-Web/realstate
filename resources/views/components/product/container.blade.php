<div x-data="{ showAmbiente: false }" @mouseenter="showAmbiente = true" @mouseleave="showAmbiente = false"
  class="flex flex-col relative w-full md:{{ $width }} {{ $bgcolor }} md:min-h-[425px] bg-[#1A1A1A] rounded-2xl">
  
  <div class="{{ $bgcolor }} product_container flex flex-col justify-center relative bg-[#1A1A1A]">
      <a href="{{ route('producto', $item->id) }}" class="flex flex-col bg-[#1A1A1A]">
        <div class="relative flex justify-center items-center h-full w-full aspect-[5/4] rounded-xl overflow-hidden">
          @php
            $category = $item->categoria();
          @endphp
          @if ($item->imagen)
            <img 
              {{-- x-show="{{ isset($item->imagen_ambiente) }} || !showAmbiente" --}}
              x-transition:enter="transition ease-out duration-300 transform"
              x-transition:enter-start="opacity-0 scale-95" x-transition:enter-end="opacity-100 scale-100"
              x-transition:leave="transition ease-in duration-300 transform"
              x-transition:leave-start="opacity-100 scale-100" x-transition:leave-end="opacity-0 scale-95"
              src="{{ asset($item->imagen) }}" alt="{{ $item->name }}"
              class="w-full h-full object-cover md:object-cover absolute inset-0"
              onerror="this.onerror=null;this.src='/images/img/noimagen.jpg';" />
          @else
            <img x-show="{{ isset($item->imagen_ambiente) }} || !showAmbiente"
              x-transition:enter="transition ease-out duration-300 transform"
              x-transition:enter-start="opacity-0 scale-95" x-transition:enter-end="opacity-100 scale-100"
              x-transition:leave="transition ease-in duration-300 transform"
              x-transition:leave-start="opacity-100 scale-100" x-transition:leave-end="opacity-0 scale-95"
              src="{{ asset('images/img/noimagen.jpg') }}" alt="imagen_alternativa"
              class="w-full h-full object-cover md:object-cover absolute inset-0" />
          @endif
        </div>
      </a>
  </div>

  <div class="p-4 lg:p-5 2xl:p-6 flex flex-col gap-2 bg-[#1A1A1A] rounded-b-xl">
    
    
    <h2 id="h2Container" class="text-lg 2xl:text-xl text-left line-clamp-2 text-white text-ellipsis font-PlusJakartaSans_Medium tracking-tight  cortartexto tippy max-h-12 md:min-h-12 mt-3 md:mt-0"
      title="{{ $item->producto }}">
      {{$item->producto}}
    </h2>
    
    <div class="text-sm 2xl:text-lg text-left overflow-hidden font-PlusJakartaSans_Regular text-white cortartexto">
      {!! mb_strimwidth($item->extract ?: $item->description, 0, 90, '...') !!}
    </div> 
    
    @if ($item->cuartos || $item->banios || $item->area)
      <div class="flex flex-wrap gap-1 mt-2 text-sm">
          @if ($item->cuartos)
            <div class="flex flex-row items-center gap-2 rounded-3xl border border-[#262626] px-3 py-1 font-PlusJakartaSans_Regular text-white">
              <svg class="w-4" xmlns="http://www.w3.org/2000/svg" width="22" height="18" viewBox="0 0 22 18" fill="none">
                <g clip-path="url(#clip0_3_3212)">
                <path d="M11.0119 15.9599C8.01369 15.9599 5.01627 15.9599 2.01806 15.9599C1.71493 15.9599 1.57479 16.0987 1.57479 16.3979C1.57479 16.4754 1.57872 16.553 1.574 16.6297C1.5677 16.7227 1.55825 16.8157 1.54093 16.9064C1.47637 17.2374 1.15907 17.5026 0.779568 17.4987C0.398493 17.4948 0.0827672 17.2119 0.025291 16.8483C0.0119061 16.763 0.00482004 16.6754 0.00482004 16.5894C0.00403269 14.8281 -0.00777748 13.0661 0.00875676 11.3049C0.0182049 10.2785 0.397705 9.38551 1.12521 8.6421C1.56691 8.19094 2.09207 7.87001 2.69282 7.66536C3.16522 7.50489 3.65338 7.45605 4.15098 7.45605C8.76246 7.45761 13.3739 7.45373 17.9854 7.45915C19.3365 7.46071 20.4309 7.99714 21.2419 9.06381C21.6403 9.58861 21.8781 10.1847 21.9592 10.8359C21.9867 11.0553 21.9985 11.2785 21.9993 11.5002C22.0025 13.2103 22.0017 14.9204 22.0009 16.6305C22.0009 16.8979 21.934 17.1413 21.7104 17.3181C21.4741 17.5049 21.2104 17.5537 20.9293 17.4398C20.66 17.3297 20.49 17.1274 20.4514 16.8382C20.4317 16.6925 20.4341 16.5429 20.4301 16.3956C20.4238 16.1576 20.3238 16.0142 20.1239 15.97C20.0798 15.9599 20.0333 15.9607 19.9876 15.9607C16.9965 15.9607 14.0054 15.9607 11.0135 15.9607L11.0119 15.9599Z" fill="white"/>
                <path d="M10.902 0.5C12.8467 0.5 14.7907 0.5 16.7346 0.5C17.3858 0.5 17.9944 0.643411 18.5195 1.03953C19.1951 1.54884 19.5895 2.21938 19.6226 3.06124C19.651 3.77519 19.6384 4.4907 19.6415 5.20543C19.6439 5.66589 19.6415 6.12636 19.6415 6.58682C19.6415 6.62791 19.6391 6.67132 19.6281 6.71085C19.5943 6.83566 19.5258 6.88527 19.3966 6.86124C19.2557 6.83488 19.1195 6.77829 18.9786 6.76279C18.6471 6.72713 18.3148 6.70233 17.9818 6.68527C17.7597 6.67364 17.6913 6.63411 17.6598 6.41938C17.559 5.73876 16.9189 5.12636 16.1 5.13566C15.1867 5.14574 14.2734 5.13798 13.3609 5.13798C12.6814 5.13798 12.1011 5.53643 11.8704 6.16434C11.8373 6.25426 11.8247 6.35194 11.8074 6.44651C11.7751 6.61628 11.7114 6.67984 11.5397 6.68217C11.1799 6.68605 10.8193 6.68605 10.4595 6.68217C10.2941 6.68062 10.2288 6.61628 10.1989 6.42791C10.1571 6.16357 10.0532 5.92791 9.88315 5.72093C9.5753 5.34574 9.1769 5.14186 8.6856 5.13953C7.74315 5.13488 6.80069 5.13721 5.85745 5.13876C5.06538 5.13953 4.44574 5.74884 4.34496 6.41783C4.31268 6.63411 4.24733 6.67209 4.0253 6.68605C3.65761 6.71008 3.28992 6.74419 2.92302 6.78295C2.81043 6.79457 2.70256 6.84264 2.59076 6.86124C2.4703 6.88062 2.41439 6.84031 2.38054 6.72403C2.36715 6.67829 2.36085 6.62946 2.36085 6.5814C2.36007 5.47674 2.34511 4.37209 2.364 3.26744C2.38369 2.11163 2.92617 1.26202 3.98751 0.748062C4.40795 0.545736 4.86382 0.5 5.32521 0.5C7.18413 0.5 9.04305 0.5 10.902 0.5Z" fill="white"/>
                </g>
                <defs>
                <clipPath id="clip0_3_3212">
                <rect width="22" height="17" fill="white" transform="translate(0 0.5)"/>
                </clipPath>
                </defs>
              </svg>
              <span>{{$item->cuartos}}</span>
            </div>
          @endif
          
          @if ($item->banios)
            <div class="flex flex-row items-center gap-2 rounded-3xl border border-[#262626] px-3 py-1 font-PlusJakartaSans_Regular text-white">
              <svg class="w-4" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22" fill="none">
                <g clip-path="url(#clip0_3_3218)">
                <path d="M1.26946 14.2617H11.11V16.0698H17.2615V14.2657H19.7054C19.8637 16.416 19.8761 18.3305 17.6707 19.7899C17.6437 19.8076 17.6221 19.8319 17.5623 19.8851C17.8335 20.1104 18.1009 20.333 18.3655 20.5531C18.0082 20.8946 17.7212 21.1691 17.3922 21.4844C17.1019 21.1849 16.7879 20.8374 16.4458 20.5209C16.3453 20.4276 16.1673 20.3895 16.0215 20.3803C15.7831 20.3659 15.5414 20.4046 15.301 20.4053C12.1057 20.4072 8.91048 20.4066 5.71457 20.4066C5.56154 20.4066 5.398 20.4361 5.25679 20.3935C4.83054 20.2654 4.55994 20.4631 4.30642 20.7685C4.09034 21.0286 3.84405 21.263 3.61877 21.5008C3.31468 21.1809 3.03949 20.8919 2.73474 20.5708C2.939 20.3902 3.19843 20.1603 3.49004 19.9015C3.28906 19.7577 3.13866 19.6579 2.99614 19.5475C1.92821 18.7246 1.3509 17.633 1.27537 16.2925C1.23793 15.6285 1.2688 14.9605 1.2688 14.2617H1.26946Z" fill="white"/>
                <path d="M1.27554 9.28721C1.27029 9.16834 1.26109 9.06128 1.26109 8.95423C1.26044 7.21375 1.25847 5.47393 1.26109 3.73345C1.26372 1.8209 2.59108 0.486313 4.50101 0.500106C5.14203 0.504703 5.80275 0.491568 6.41882 0.636717C7.5117 0.894833 8.20001 1.65276 8.53235 2.72069C8.59671 2.92824 8.68012 3.02872 8.90803 3.09046C10.194 3.43921 11.0964 4.64113 11.1128 5.98228C11.1155 6.19836 11.1128 6.41444 11.1128 6.64891H5.02578C4.73548 5.11401 5.56959 3.52985 7.31335 3.03529C7.15573 2.35027 6.48121 1.7723 5.7732 1.74734C5.23792 1.72829 4.70067 1.72632 4.16539 1.74734C3.24261 1.78346 2.50044 2.63071 2.4965 3.64676C2.48994 5.39774 2.49453 7.14938 2.49453 8.90037C2.49453 9.0199 2.49453 9.13944 2.49453 9.28656H1.27423L1.27554 9.28721Z" fill="white"/>
                <path d="M11.0926 13.0328C10.9639 13.0328 10.8673 13.0328 10.7708 13.0328C7.64317 13.0328 4.51491 13.0335 1.38731 13.0321C0.714102 13.0321 0.230053 12.7136 0.0599459 12.1698C-0.1962 11.3514 0.38374 10.5633 1.26777 10.5515C2.20829 10.539 3.1488 10.5482 4.08931 10.5482C6.29873 10.5482 8.5075 10.5482 10.7169 10.5482C10.8351 10.5482 10.9534 10.5482 11.0926 10.5482V13.0321V13.0328Z" fill="white"/>
                <path d="M16.0237 14.8712H12.3634C12.3575 14.7556 12.3477 14.6506 12.3477 14.5455C12.3464 13.2772 12.3464 12.0083 12.3477 10.7401C12.3483 9.82254 12.8494 9.31813 13.763 9.31419C14.1019 9.31288 14.4408 9.30565 14.7797 9.31616C15.5409 9.34046 16.0381 9.85209 16.0401 10.6153C16.044 11.9387 16.0414 13.2615 16.0401 14.5849C16.0401 14.6709 16.0309 14.7563 16.0237 14.8712Z" fill="white"/>
                <path d="M17.2832 13.0213V10.5485C17.8782 10.5485 18.4648 10.5465 19.0506 10.5491C19.356 10.5504 19.668 10.5255 19.9668 10.5747C20.619 10.6824 21.0433 11.2164 21.0164 11.8397C20.9901 12.4512 20.5389 12.9759 19.8985 13.0094C19.0394 13.0547 18.1764 13.0206 17.2839 13.0206L17.2832 13.0213Z" fill="white"/>
                </g>
                <defs>
                <clipPath id="clip0_3_3218">
                <rect width="21.0171" height="21" fill="white" transform="translate(0 0.5)"/>
                </clipPath>
                </defs>
              </svg>
              <span>{{$item->banios}}</span>
            </div>
          @endif

          @if ($item->area)
            <div class="flex flex-row items-center gap-2 rounded-3xl border border-[#262626] px-3 py-1 font-PlusJakartaSans_Regular text-white">
              <svg class="w-4" xmlns="http://www.w3.org/2000/svg" width="22" height="22" viewBox="0 0 22 22" fill="none">
                <g clip-path="url(#clip0_3_3227)">
                <path d="M1.83729 3.76581C1.61265 4.02998 1.38735 4.29348 1.16798 4.55106C0.737154 4.11627 0.36166 3.73815 0 3.37385C0.916996 2.45554 1.85244 1.51944 2.77602 0.595194C3.70026 1.52141 4.63505 2.45751 5.55072 3.37517C5.19302 3.73288 4.81489 4.11035 4.40382 4.52141C4.16601 4.25593 3.91041 3.97069 3.59025 3.6143V7.40415C5.31555 5.67622 7.08234 3.90811 8.8386 2.14921C8.37549 2.14921 7.85112 2.11693 7.33333 2.15909C6.88472 2.19533 6.57115 2.04776 6.27866 1.71706C5.92358 1.31588 5.51976 0.957513 5.08235 0.527341C5.24769 0.514825 5.33794 0.502308 5.42885 0.502308C9.82148 0.50165 14.2141 0.499673 18.6067 0.502308C20.0086 0.502967 21.0079 1.47991 21.0099 2.87319C21.0171 7.28887 21.0125 11.7039 21.0125 16.1196C21.0125 16.1808 21.0059 16.2428 20.9209 16.3627C20.5231 15.9463 20.143 15.5109 19.72 15.1215C19.4453 14.8686 19.3347 14.6051 19.357 14.2335C19.3887 13.7138 19.365 13.1907 19.365 12.6742C17.6008 14.4404 15.8544 16.1881 14.112 17.9325H17.9091C17.554 17.6426 17.2615 17.4042 16.9743 17.1696C17.4453 16.7164 17.8287 16.3475 18.2016 15.9878C19.0837 16.8798 20.0152 17.8211 20.9401 18.7559C20.0441 19.6453 19.1047 20.5781 18.1752 21.5003C17.8261 21.1446 17.4545 20.7665 17.0586 20.3633C17.2813 20.167 17.5349 19.943 17.7885 19.719C17.7727 19.6802 17.7569 19.6413 17.7404 19.6031H17.3775C13.0507 19.6031 8.72398 19.6044 4.39723 19.6024C3.21278 19.6024 2.35903 19.028 2.03294 17.9832C1.94335 17.696 1.91765 17.3798 1.917 17.0761C1.90975 12.7704 1.91238 8.46476 1.91238 4.15909C1.91238 4.04315 1.91238 3.92655 1.91238 3.81061C1.88669 3.79546 1.861 3.78096 1.83531 3.76581H1.83729ZM3.56258 16.6828C8.40975 11.835 13.249 6.9944 18.0935 2.14921C17.4032 2.14921 16.6937 2.14328 15.9842 2.15646C15.8933 2.15843 15.7879 2.24144 15.7154 2.3139C11.7167 6.30863 7.72003 10.306 3.72596 14.306C3.65415 14.3785 3.57115 14.4839 3.56917 14.5748C3.55599 15.2836 3.56192 15.9924 3.56192 16.6821L3.56258 16.6828ZM19.365 3.45751C14.5296 8.2915 9.69499 13.1255 4.86693 17.9522C5.52569 17.9522 6.22464 17.9582 6.92358 17.945C7.01449 17.943 7.11858 17.8567 7.19104 17.7836C11.1963 13.7823 15.1996 9.77833 19.1996 5.7724C19.2721 5.69994 19.3557 5.59454 19.357 5.50363C19.3702 4.80534 19.3643 4.10639 19.3643 3.45751H19.365ZM19.365 8.08729C16.0758 11.3739 12.7833 14.6637 9.49144 17.9522C10.1588 17.9522 10.857 17.9582 11.556 17.945C11.6462 17.943 11.749 17.8528 11.8221 17.7796C14.2846 15.3218 16.7444 12.8613 19.2016 10.3982C19.2734 10.3258 19.3557 10.2197 19.3577 10.1281C19.3709 9.42919 19.365 8.73024 19.365 8.08663V8.08729ZM3.56258 12.0227C6.861 8.72563 10.1462 5.44104 13.4387 2.14921C12.7793 2.14921 12.1028 2.14328 11.4262 2.1558C11.334 2.15778 11.2266 2.23485 11.1548 2.306C8.67589 4.77965 6.20026 7.25593 3.72727 9.73485C3.65547 9.80731 3.5718 9.91206 3.56983 10.0036C3.55665 10.6815 3.56258 11.3594 3.56258 12.0227Z" fill="white"/>
                </g>
                <defs>
                <clipPath id="clip0_3_3227">
                <rect width="21.0145" height="21" fill="white" transform="translate(0 0.5)"/>
                </clipPath>
                </defs>
              </svg>
              <span>{{$item->area}} m²</span>
            </div>
          @endif
      </div> 
    @endif
    

    <div class="border my-1 border-[#262626] w-full"></div>

    <div class="flex flex-wrap justify-between items-end w-full gap-1">
      @if($item->precio > 0)
      @php
          $precio_formateado = number_format($item->precio, 0, '.', ',');
      @endphp
        <div class="flex flex-col gap-1 text-white font-PlusJakartaSans_Regular">
            <span class="text-sm 2xl:text-lg">Precio</span>
            <span class="text-base md:text-lg 2xl:text-xl font-PlusJakartaSans_Bold">S/ {{ $precio_formateado }}</span>
        </div>
      @endif
      
      @if($item->preciomin > 0)
        @php
            $precio_formateadodolar = number_format($item->preciomin, 0, '.', ',');
        @endphp
        <div class="flex flex-col gap-1 text-white font-PlusJakartaSans_Regular">
            <span class="text-base md:text-lg 2xl:text-xl font-PlusJakartaSans_Bold">$ {{ $precio_formateadodolar }}</span>
        </div>
      @endif
    </div>

    
    <div class="w-full flex flex-row justify-center mt-2 2xl:mt-3">
      <a href="{{route('producto', $item->id)}}" class="text-center w-full text-sm 2xl:text-lg font-PlusJakartaSans_Medium tracking-wide bg-gradient-to-r from-[#C8A049] via-[#E9D151] via-55% to-[#BE913E] text-[#141414] px-4 2xl:px-6 py-3 leading-normal rounded-xl">
        Ver propiedad
      </a>
    </div>
   

  </div>

</div>

<style>
  .cortartexto {
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    text-overflow: ellipsis;
    max-height: 70px;
  }
</style>

<script>
  $(document).ready(function() {
    tippy('.tippy', {
      arrow: true,
      followCursor: true,
      placement: 'right',

    })
  })
</script>
