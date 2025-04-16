 @php
     $category = $post->categoria();
 @endphp
 
 <div class="flex flex-col relative w-full rounded-2xl overflow-hidden bg-[#1D1D1D]">
    <div class="relative">
      <a href="{{ route('detalleBlog', $post->id) }}" class="w-full">
        <img src="{{ asset($post->url_image . $post->name_image) }}"
          class="w-full object-cover h-56 sm:h-64 md:h-64" alt="blog">
      </a>
    </div>
  
    <div class="p-4 flex flex-col gap-3 bg-[#1D1D1D]">
      <div class="flex flex-col gap-2">
        <div class="text-[#C8A049] font-FixelText_Bold text-sm">
          {{ $category->name }}
        </div>
  
        <a href="{{ route('detalleBlog', $post->id) }}">
          <h2 class="text-xl font-FixelText_Bold text-white leading-tight">
            {{ $post->title }}
          </h2>
        </a>
  
        <div class="text-sm text-white font-FixelText_Regular opacity-80 line-clamp-2">
          {{ mb_strimwidth($post->extract, 0, 95, '...') }}
        </div>
      </div>
  
      <div class="flex flex-row items-center gap-2 text-xs text-white opacity-70 font-FixelText_Regular mt-2">
        <span>{{ \Carbon\Carbon::parse($post->created_at)->format('d \d\e F \d\e Y') }}</span>
        <span class="mx-2">|</span>
        <span>Leído hace {{ \Carbon\Carbon::parse($post->created_at)->diffForHumans(['parts' => 1]) }}</span>
      </div>
    </div>
  </div>
