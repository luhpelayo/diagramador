@extends('admin.template')

@section('content')
<div class="container box box-primary">
     <div class="page-header  text-center">
      <h1>
        <i class="fa fa-user"style="color:green"></i>
        LISTA DE CONTACTOS <small>[Agregar]</small>
      </h1>
    </div>
  <div class="col-xs-12 col-md-8 col-md-offset-2 col-xl-6 col-xl-offset-3">
    @if (count($errors) > 0)
        @include('admin.partials.errors')
    @endif
    
      {!! Form::open(['route'=>'area.store']) !!}
          
          <div class="box-body col-xs-12">
              <label for="description">Username:</label>
              {!! 
                  Form::text(
                      'descripcion', 
                      null, 
                      array(
                          'class'=>'form-control',
                          'placeholder' => 'Ingrese descripción...',
                                        'autofocus' => 'autofocus'
                      )
                  ) 
              !!}
          </div>
          <div class="box-body col-xs-12">
              {!! Form::submit('Guardar', array('class'=>'btn btn-primary')) !!}
              <a href="{{ route('area.index') }}" class="btn btn-warning">Cancelar</a>
          </div>
      
      {!! Form::close() !!}
 </div>
</div>

@stop