@extends('layouts.app')
@section('content')
    <div id="admin-content">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <h2 class="admin-heading">Toți autorii</h2>
                </div>
                <div class="offset-md-7 col-md-2">
                    <a class="add-new" href="{{ route('authors.create') }}">Adaugă autor</a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="message"></div>
                    <table class="content-table">
                        <thead>
                            <th>S.No</th>
                            <th>Nume</th>
                            <th>Editează</th>
                            <th>Șterge</th>
                        </thead>
                        <tbody>
                            @forelse ($authors as $auther)
                                <tr>
                                    <td>{{ $auther->id }}</td>
                                    <td>{{ $auther->name }}</td>
                                    <td class="edit">
                                        <a href="{{ route('authors.edit', $auther) }}"style="background-color:#28A745" class="btn btn-success">Editează</a>
                                    </td>
                                    <td class="delete">
                                        <form action="{{ route('authors.destroy', $auther->id) }}" method="post"
                                            class="form-hidden">
                                            <button class="btn btn-danger delete-author">Șterge</button>
                                            @csrf
                                        </form>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="4">Niciun autor găsit</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                    {{ $authors->links('vendor/pagination/bootstrap-4') }}
                </div>
            </div>
        </div>
    </div>
@endsection
