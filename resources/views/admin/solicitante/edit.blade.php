@extends('admin.template')

@section('content')

<div class="container box box-primary">  

        <div class="page-header  text-center">
           <h1>
           <i class="fa fa-user-secret"style="color:green"></i>
           ID REUNION <small>[Editar ]</small>
          </h1>
        </div><!-- /.box-header -->             
    <div class="page">
        
        @if (count($errors) > 0)
            @include('admin.partials.errors')
        @endif
        
        {!! Form::model($solicitante, array('route' => array('solicitante.update', $solicitante))) !!}

            <input type="hidden" name="_method" value="PUT">
             
            <div class="form-group col-xs-6">
                <label for="ci">ID Reunion:</label>
                 {!! 
                  Form::text(
                      'ci', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
            </div>
            <div class="form-group col-xs-6">
              <label for="nombre">Nombre:</label>
              {!! 
                  Form::text(
                      'nombre', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
          </div>
          <div class="form-group col-xs-6">
              <label for="apellido">Apellido:</label>
              {!! 
                  Form::text(
                      'apellido', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
          </div>
          <div class="form-group col-xs-6">
              <label for="telefono">Telefono:</label>
              {!! 
                  Form::text(
                      'telefono', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
          </div>
          <div class="form-group col-xs-6">
              <label for="direccion">Direccion:</label>
              {!! 
                  Form::text(
                      'direccion', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
          </div>
          <div class="form-group col-xs-6">
              <label for="lat">C.I.:</label>
              {!! 
                  Form::text(
                      'lat', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
          </div>
          <div class="form-group col-xs-6">
              <label for="Lon">Codigo Compartir:</label>
              {!! 
                  Form::text(
                      'lon', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
          </div>
          <div class="box-body col-xs-12">
              <label for="email">Email:</label>
              {!! 
                  Form::text(
                      'email', 
                      null, 
                      array(
                          'class'=>'form-control'
                      )
                  ) 
              !!}
          </div>
            
            <div class="box-body col-xs-12">
                {!! Form::submit('Actualizar', array('class'=>'btn btn-primary')) !!}
                <a href="{{ route('solicitante.index') }}" class="btn btn-warning">Cancelar</a>
            </div>
        
        {!! Form::close() !!}
        
    </div>  
  </div>

@stop