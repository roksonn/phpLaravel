@extends('layouts.guest')
@section('content')
<div id="backgroundlogin"  style="background-color: #4b5f85; height:767px">
    <div id="wrapper-admin">
        <div class="container">
            <div class="row">
                <div class="offset-md-4 ">
                    <div style="margin: 10px">
                        <img src="{{ asset('images/library.png') }}" alt="" style="width: 500px; margin-left:-80px" >
                    </div>
                    <form style = "margin-left:-80px" class="yourform" action="{{ route('login') }}" method="post">
                        @csrf
                        <h3 class="heading">Login</h3>
                        <div class="form-group">
                            <label>Username</label>
                            <input type="text" name="username" class="form-control" value="{{ old('username') }}"
                                required>
                        </div>
                        <div class="form-group">
                            <label>Password</label>
                            <input type="password" name="password" class="form-control" value="" required>
                        </div>
                        <input type="submit" name="login" class="btn btn-danger" value="Login" />
                    </form>
                    @error('username')
                        <div class='alert alert-danger'>{{ $message }}</div>
                    @enderror
                </div>
            </div>
        </div>
    </div>
</div>




@endsection


