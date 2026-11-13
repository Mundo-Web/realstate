<x-app-layout>
<div class="container py-8 max-w-2xl">
    <h1 class="text-2xl font-bold mb-6">Crear Usuario</h1>

    @if($errors->any())
        <div class="mb-4 p-4 bg-red-100 text-red-800 rounded">
            <ul class="list-disc pl-5">
                @foreach($errors->all() as $error)
                <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form action="{{ route('admin.users.store') }}" method="POST" class="bg-white p-6 rounded shadow space-y-4">
        @csrf
        <div>
            <label class="block mb-1">Nombre</label>
            <input type="text" name="name" value="{{ old('name') }}" class="w-full border rounded px-3 py-2" required>
        </div>
        <div>
            <label class="block mb-1">Apellido</label>
            <input type="text" name="lastname" value="{{ old('lastname') }}" class="w-full border rounded px-3 py-2">
        </div>
        <div>
            <label class="block mb-1">Email</label>
            <input type="email" name="email" value="{{ old('email') }}" class="w-full border rounded px-3 py-2" required>
        </div>
        <div>
            <label class="block mb-1">Teléfono</label>
            <input type="text" name="phone" value="{{ old('phone') }}" class="w-full border rounded px-3 py-2">
        </div>
        <div>
            <label class="block mb-1">Rol</label>
            <select name="role" class="w-full border rounded px-3 py-2" required>
                <option value="">Seleccione rol</option>
                @foreach($roles as $role)
                <option value="{{ $role->name }}" {{ old('role')==$role->name ? 'selected' : '' }}>{{ $role->name }}</option>
                @endforeach
            </select>
        </div>
        <div>
            <label class="block mb-1">Contraseña</label>
            <input type="password" name="password" class="w-full border rounded px-3 py-2" required>
        </div>
        <div>
            <label class="block mb-1">Confirmar Contraseña</label>
            <input type="password" name="password_confirmation" class="w-full border rounded px-3 py-2" required>
        </div>

        <div class="flex gap-3 pt-2">
            <button class="px-4 py-2 bg-blue-600 text-white rounded">Crear</button>
            <a href="{{ route('admin.users.index') }}" class="px-4 py-2 bg-gray-200 rounded">Cancelar</a>
        </div>
    </form>
</div>
</x-app-layout>
